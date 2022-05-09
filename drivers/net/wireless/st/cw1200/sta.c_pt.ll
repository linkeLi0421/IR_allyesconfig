; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/sta.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/sta.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.wsm_mib_beacon_filter_table = type { i32, [10 x %struct.wsm_beacon_filter_table_entry] }
%struct.wsm_beacon_filter_table_entry = type { i8, i8, [3 x i8], [3 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.cw1200_common = type <{ ptr, ptr, ptr, %struct.ieee80211_low_level_stats, [6 x i8], [2 x i8], ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr, ptr, %struct.mutex, [4 x %struct.cw1200_queue], %struct.cw1200_queue_stats, i32, i32, i32, ptr, ptr, ptr, %struct.wsm_edca_params, %struct.wsm_tx_queue_params, %struct.wsm_mib_association_mode, %struct.wsm_set_bss_params, %struct.cw1200_ht_info, %struct.wsm_set_pm, %struct.wsm_set_pm, i32, i32, i8, [3 x i8], i32, i32, %struct.wait_queue_head, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, %struct.wsm_rx_filter, %struct.wsm_mib_multicast_filter, i8, i8, i8, %struct.work_struct, %struct.work_struct, i8, i8, [2 x i8], %struct.cw1200_pm_state, %struct.wsm_p2p_ps_modeinfo, %struct.wsm_uapsd_info, i8, i8, i8, i8, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.cw1200_scan, %struct.atomic_t, %struct.delayed_work, %struct.wsm_startup_ind, %struct.mutex, %struct.wsm_buf, %struct.wsm_cmd, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.atomic_t, i32, i32, i32, i8, [3 x i8], %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, i32, i8, i8, [2 x i8], %struct.work_struct, i32, [11 x %struct.wsm_add_key], i32, [5 x %struct.cw1200_link_entry], %struct.work_struct, %struct.delayed_work, i32, i32, i8, [3 x i8], %struct.spinlock, i8, i8, [2 x i8], %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i32, i32, i32, %struct.work_struct, %struct.tx_policy_cache, %struct.work_struct, i32, %struct.wait_queue_head, %struct.work_struct, [6 x i8], i8, i8 }>
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.cw1200_queue = type { ptr, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.spinlock, i8, i8, %struct.timer_list, i32 }
%struct.cw1200_queue_stats = type { %struct.spinlock, ptr, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wsm_edca_params = type { [4 x %struct.wsm_edca_queue_params], [4 x i8] }
%struct.wsm_edca_queue_params = type { i16, i16, i16, i16, i32 }
%struct.wsm_tx_queue_params = type { [4 x %struct.wsm_set_tx_queue_params] }
%struct.wsm_set_tx_queue_params = type { i8, i16, i32 }
%struct.wsm_mib_association_mode = type { i8, i8, i8, i8, i32 }
%struct.wsm_set_bss_params = type { i8, i8, i16, i32 }
%struct.cw1200_ht_info = type { %struct.ieee80211_sta_ht_cap, i32, i16 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.wsm_set_pm = type { i8, i8, i8, i8 }
%struct.wsm_rx_filter = type { i8, i8, i8, i8 }
%struct.wsm_mib_multicast_filter = type { i32, i32, [8 x [6 x i8]] }
%struct.cw1200_pm_state = type { ptr, %struct.timer_list, ptr, %struct.spinlock }
%struct.wsm_p2p_ps_modeinfo = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_uapsd_info = type { i16, i16, i16, i16 }
%struct.cw1200_scan = type { %struct.semaphore, %struct.work_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x %struct.wsm_ssid], i32, i32, i32, %struct.atomic_t, %struct.delayed_work, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wsm_ssid = type { [32 x i8], i32 }
%struct.wsm_startup_ind = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [128 x i8], [4 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wsm_buf = type { ptr, ptr, ptr }
%struct.wsm_cmd = type { %struct.spinlock, i32, ptr, i32, ptr, i32, i16 }
%struct.wsm_add_key = type { i8, i8, i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.135 }
%struct.anon.135 = type { [6 x i8], i16, [16 x i8], [8 x i8], [8 x i8] }
%struct.cw1200_link_entry = type { i32, i32, i32, [6 x i8], [8 x i8], %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.tx_policy_cache = type { [8 x %struct.tx_policy_cache_entry], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy_cache_entry = type { %struct.tx_policy, %struct.list_head }
%struct.tx_policy = type { %union.anon.141, i8, i8, i8, i8 }
%union.anon.141 = type { [3 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.wsm_rcpi_rssi_threshold = type { i8, i8, i8, i8 }
%struct.wsm_configuration = type { i32, i32, i32, ptr, ptr, i32, i8, i32, [2 x %struct.wsm_tx_power_range] }
%struct.wsm_tx_power_range = type { i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.wsm_reset = type { i32, i8 }
%struct.wsm_start = type { i8, i8, i16, i32, i32, i8, i8, i8, i8, [32 x i8], i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.wsm_switch_channel = type { i8, i8, i16 }
%struct.wsm_set_bssid_filtering = type { i8, [3 x i8] }
%struct.anon.150 = type { i32, i32 }
%struct.anon.151 = type { i8, i8, i16 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_key_seq = type { %union.anon.143 }
%union.anon.143 = type { %struct.anon.144, [12 x i8] }
%struct.anon.144 = type { i32, i16 }
%struct.wsm_remove_key = type { i8 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.anon.133 = type { [6 x i8], i8, i8, [16 x i8] }
%struct.anon.134 = type { i8, i8, i16, [16 x i8] }
%struct.anon.136 = type { [16 x i8], [8 x i8], i8, [3 x i8], [8 x i8] }
%struct.anon.137 = type { [6 x i8], i16, [16 x i8] }
%struct.anon.138 = type { [16 x i8], i8, [3 x i8], [8 x i8] }
%struct.anon.139 = type { [6 x i8], i8, i8, [16 x i8], [16 x i8] }
%struct.anon.140 = type { [16 x i8], [16 x i8], i8, [3 x i8] }
%struct.cw1200_wsm_event = type { %struct.list_head, %struct.wsm_event }
%struct.wsm_event = type { i32, i32 }
%struct.wsm_mib_block_ack_policy = type { i8, i8, i8, i8 }
%struct.wsm_keep_alive_period = type { i16, [2 x i8] }
%struct.wsm_update_ie = type { i16, i16, ptr, i32 }
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
%struct.wsm_beacon_transmit = type { i8 }
%struct.wsm_mib_arp_ipv4_filter = type { i32, [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wsm_override_internal_txrate = type { i8, i8, [2 x i8] }
%struct.wsm_join = type { i8, i8, i16, [6 x i8], i16, i8, i8, i8, i8, i32, [32 x i8], i32, i32 }
%struct.wsm_suspend_resume = type { i32, i8, i8, i32 }

@cw1200_stop.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cw1200_core\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cw1200_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/st/cw1200/sta.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[STA] TX is force-unlocked due to stop request.\0A\00", [47 x i8] zeroinitializer }, align 32
@__param_str_cw1200_bssloss_mitigation = internal constant [38 x i8] c"cw1200_core.cw1200_bssloss_mitigation\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cw1200_bssloss_mitigation = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_cw1200_bssloss_mitigation = internal constant %struct.kernel_param { ptr @__param_str_cw1200_bssloss_mitigation, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @cw1200_bssloss_mitigation } }, section "__param", align 4
@__UNIQUE_ID_cw1200_bssloss_mitigationtype349 = internal constant [51 x i8] c"cw1200_core.parmtype=cw1200_bssloss_mitigation:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cw1200_bssloss_mitigation350 = internal constant [102 x i8] c"cw1200_core.parm=cw1200_bssloss_mitigation:BSS Loss mitigation. 0 == disabled, 1 == enabled (default)\00", section ".modinfo", align 1
@__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__cw1200_cqm_bssloss_sm\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[STA] CQM BSSLOSS_SM: state: %d init %d good %d bad: %d txlock: %d uj: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cw1200_change_interface.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw1200_change_interface\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"change_interface new: %d (%d), old: %d (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@cw1200_config.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cw1200_config\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CONFIG CHANGED:  %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_config.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[STA] TX power: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cw1200_config.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[STA] Freq %d (wsm ch: %d).\0A\00", [35 x i8] zeroinitializer }, align 32
@cw1200_power_mode = external dso_local local_unnamed_addr global i32, align 4
@cw1200_config.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[STA] Retry limits: %d (long), %d (short).\0A\00", [52 x i8] zeroinitializer }, align 32
@cw1200_update_filtering.bf_ctrl.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cw1200_update_filtering.bf_ctrl.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cw1200_update_filtering.bf_tbl = internal global { %struct.wsm_mib_beacon_filter_table, [44 x i8] } { %struct.wsm_mib_beacon_filter_table { i32 0, [10 x %struct.wsm_beacon_filter_table_entry] [%struct.wsm_beacon_filter_table_entry { i8 -35, i8 7, [3 x i8] c"Po\9A", [3 x i8] zeroinitializer }, %struct.wsm_beacon_filter_table_entry { i8 61, i8 7, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.wsm_beacon_filter_table_entry { i8 42, i8 7, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.wsm_beacon_filter_table_entry zeroinitializer, %struct.wsm_beacon_filter_table_entry zeroinitializer, %struct.wsm_beacon_filter_table_entry zeroinitializer, %struct.wsm_beacon_filter_table_entry zeroinitializer, %struct.wsm_beacon_filter_table_entry zeroinitializer, %struct.wsm_beacon_filter_table_entry zeroinitializer, %struct.wsm_beacon_filter_table_entry zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@cw1200_update_filtering._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 507, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Update filtering failed: %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw1200_update_filtering\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cw1200_update_filtering._entry_ptr = internal global ptr @cw1200_update_filtering._entry, section ".printk_index", align 4
@cw1200_prepare_multicast.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cw1200_prepare_multicast\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[STA] multicast: %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@cw1200_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014Unhandled key type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cw1200_set_key\00", [17 x i8] zeroinitializer }, align 32
@cw1200_set_key._entry_ptr = internal global ptr @cw1200_set_key._entry, section ".printk_index", align 4
@cw1200_set_key._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014Unhandled key command %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cw1200_set_key._entry_ptr.23 = internal global ptr @cw1200_set_key._entry.21, section ".printk_index", align 4
@cw1200_wep_key_work.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_wep_key_work\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[STA] Setting default WEP key: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cw1200_set_rts_threshold.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cw1200_set_rts_threshold\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[STA] Setting RTS threshold: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cw1200_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Unhandled WSM Error from LMAC\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_event_handler\00", [43 x i8] zeroinitializer }, align 32
@cw1200_event_handler._entry_ptr = internal global ptr @cw1200_event_handler._entry, section ".printk_index", align 4
@cw1200_event_handler.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[CQM] BSS lost.\0A\00", [47 x i8] zeroinitializer }, align 32
@cw1200_event_handler.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[CQM] BSS regained.\0A\00", [43 x i8] zeroinitializer }, align 32
@cw1200_event_handler._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.2, i32 1001, ptr @.str.34, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radar pulse detected\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cw1200_event_handler._entry_ptr.35 = internal global ptr @cw1200_event_handler._entry.32, section ".printk_index", align 4
@cw1200_event_handler.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.36, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[CQM] RSSI event: %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_event_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Unhandled BT INACTIVE from LMAC\0A\00", [61 x i8] zeroinitializer }, align 32
@cw1200_event_handler._entry_ptr.39 = internal global ptr @cw1200_event_handler._entry.37, section ".printk_index", align 4
@cw1200_event_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Unhandled BT ACTIVE from LMAC\0A\00", [63 x i8] zeroinitializer }, align 32
@cw1200_event_handler._entry_ptr.42 = internal global ptr @cw1200_event_handler._entry.40, section ".printk_index", align 4
@cw1200_bss_loss_work.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_bss_loss_work\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[CQM] Reporting connection loss.\0A\00", [62 x i8] zeroinitializer }, align 32
@cw1200_setup_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Can't load sdd file %s.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_setup_mac\00", [47 x i8] zeroinitializer }, align 32
@cw1200_setup_mac._entry_ptr = internal global ptr @cw1200_setup_mac._entry, section ".printk_index", align 4
@cw1200_join_complete_cb.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw1200_join_complete_cb\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[STA] cw1200_join_complete_cb called, status=%d.\0A\00", [46 x i8] zeroinitializer }, align 32
@cw1200_join_timeout.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 1, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_join_timeout\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[WSM] Join timed out.\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_sta_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1554, ptr @.str.34, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[AP] No more link IDs available.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cw1200_sta_add\00", [17 x i8] zeroinitializer }, align 32
@cw1200_sta_add._entry_ptr = internal global ptr @cw1200_sta_add._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__const.cw1200_set_cts_work.erp_ie = private unnamed_addr constant [3 x i8] c"*\01\00", align 1
@cw1200_set_cts_work.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 1, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_set_cts_work\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[STA] ERP information 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw1200_bss_info_changed\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BSS CHANGED:  %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 1, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[STA] BSS_CHANGED_ARP_FILTER cnt: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.58, i8 1, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[STA] addr[%d]: 0x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.59, i8 1, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[STA] arp ip filter enable: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.60, i8 1, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BSS_CHANGED_BEACON\0A\00", [44 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.61, i8 1, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BSS_CHANGED_BEACON_ENABLED (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.62, i8 1, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CHANGED_BEACON_INT\0A\00", [44 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.63, i8 1, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BSS_CHANGED_BSSID\0A\00", [45 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.64, i8 1, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BSS_CHANGED_ASSOC\0A\00", [45 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.65, i8 1, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[STA] DTIM %d, interval: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.66, i8 1, i8 -19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[STA] Preamble: %d, Greenfield: %d, Aid: %d, Rates: 0x%.8X, Basic: 0x%.8X\0A\00", [53 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.67, i8 1, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[STA] Setting p2p powersave configuration.\0A\00", [52 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.68, i8 1, i8 -9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[STA] ERP Protection: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.69, i8 1, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[STA] Slot time: %d us.\0A\00", [39 x i8] zeroinitializer }, align 32
@cw1200_bss_info_changed.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.70, i8 1, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[CQM] RSSI threshold subscribe: %d +- %d\0A\00", [54 x i8] zeroinitializer }, align 32
@cw1200_mcast_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 2117, ptr @.str.73, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Multicast delivery timeout.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_mcast_timeout\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cw1200_mcast_timeout._entry_ptr = internal global ptr @cw1200_mcast_timeout._entry, section ".printk_index", align 4
@cw1200_suspend_resume.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 2, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cw1200_suspend_resume\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[AP] %s: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"broadcast\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unicast\00", [24 x i8] zeroinitializer }, align 32
@cw1200_parse_sdd_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014Malformed sdd structure\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cw1200_parse_sdd_file\00", [42 x i8] zeroinitializer }, align 32
@cw1200_parse_sdd_file._entry_ptr = internal global ptr @cw1200_parse_sdd_file._entry, section ".printk_index", align 4
@cw1200_parse_sdd_file._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014SDD_PTA_CFG_ELT_ID malformed\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_parse_sdd_file._entry_ptr.84 = internal global ptr @cw1200_parse_sdd_file._entry.82, section ".printk_index", align 4
@cw1200_parse_sdd_file.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.85, i8 1, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PTA found; Listen Interval %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cw1200_parse_sdd_file._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.81, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014SDD file doesn't match configured refclk (%d vs %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_parse_sdd_file._entry_ptr.88 = internal global ptr @cw1200_parse_sdd_file._entry.86, section ".printk_index", align 4
@cw1200_parse_sdd_file.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.89, i8 1, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PTA element NOT found.\0A\00", [40 x i8] zeroinitializer }, align 32
@cw1200_join_complete.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_join_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[STA] Join complete (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@cw1200_do_unjoin.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 1, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_do_unjoin\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Delayed unjoin is already scheduled.\0A\00", [58 x i8] zeroinitializer }, align 32
@cw1200_do_unjoin.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.2, ptr @.str.94, i8 1, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[STA] Unjoin completed.\0A\00", [39 x i8] zeroinitializer }, align 32
@__cw1200_sta_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cw1200_set_tim_impl.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 1, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_set_tim_impl\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[AP] mcast: %s.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ena\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.102 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 1, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cw1200_set_btcoexinfo\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[STA] STA has ERP rates\0A\00", [39 x i8] zeroinitializer }, align 32
@cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.105, i8 1, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[STA] STA has non ERP rates\0A\00", [35 x i8] zeroinitializer }, align 32
@cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.106, i8 1, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"[STA] BTCOEX_INFO MODE %d, internalTxRate : %x, nonErpInternalTxRate: %x\0A\00", [54 x i8] zeroinitializer }, align 32
@cw1200_do_join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014[STA] - Join request already pending, skipping..\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cw1200_do_join\00", [17 x i8] zeroinitializer }, align 32
@cw1200_do_join._entry_ptr = internal global ptr @cw1200_do_join._entry, section ".printk_index", align 4
@cw1200_do_join.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 1, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[STA] Join BSSID: %pM DTIM: %d, interval: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cw1200_do_join._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.108, ptr @.str.2, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[STA] cw1200_join_work: wsm_join failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@cw1200_do_join._entry_ptr.112 = internal global ptr @cw1200_do_join._entry.110, section ".printk_index", align 4
@cw1200_ps_notify.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 1, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_ps_notify\00", [47 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s for LinkId: %d. STAs asleep: %.8X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Stop\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Start\00", [26 x i8] zeroinitializer }, align 32
@cw1200_update_beaconing.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 2, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw1200_update_beaconing\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ap restarting\0A\00", [17 x i8] zeroinitializer }, align 32
@cw1200_update_beaconing.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.119, i8 2, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ap started join_status: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cw1200_start_ap.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 2, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cw1200_start_ap\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[AP] ch: %d(%d), bcn: %d(%d), brt: 0x%.8X, ssid: %.*s.\0A\00", [40 x i8] zeroinitializer }, align 32
@cw1200_start_ap.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.122, i8 2, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[AP] Setting p2p powersave configuration.\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.123 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.126 = internal global [7 x i64] [i64 5, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1339905]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.128 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 197, i64 235]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 6]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 137, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"cw1200_bssloss_mitigation\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 143, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 156, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 311, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 330, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 339, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 349, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 423, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [34 x i8] c"cw1200_update_filtering.bf_ctrl.0\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [34 x i8] c"cw1200_update_filtering.bf_ctrl.1\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"bf_tbl\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 447, i32 44 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 506, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 554, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 810, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 833, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 850, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 876, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 977, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 980, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 996, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1001, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1018, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1024, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1027, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1039, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1145, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1194, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1370, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1553, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1741, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1806, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1815, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1825, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1831, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1843, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1850, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1859, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1874, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1884, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1966, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1968, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1984, i32 5 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2012, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2022, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2032, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2116, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2145, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1072, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1079, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1089, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1096, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1107, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1165, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1389, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1431, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1671, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 695, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 778, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 723, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1769, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1774, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1785, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1220, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1283, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1338, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1654, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2375, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2383, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2342, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.512 = private constant [40 x i8] c"../drivers/net/wireless/st/cw1200/sta.c\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2351, i32 3 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_cw1200_bssloss_mitigation350, ptr @__UNIQUE_ID_cw1200_bssloss_mitigationtype349, ptr @__param_cw1200_bssloss_mitigation, ptr @cw1200_do_join._entry, ptr @cw1200_do_join._entry.110, ptr @cw1200_do_join._entry_ptr, ptr @cw1200_do_join._entry_ptr.112, ptr @cw1200_event_handler._entry, ptr @cw1200_event_handler._entry.32, ptr @cw1200_event_handler._entry.37, ptr @cw1200_event_handler._entry.40, ptr @cw1200_event_handler._entry_ptr, ptr @cw1200_event_handler._entry_ptr.35, ptr @cw1200_event_handler._entry_ptr.39, ptr @cw1200_event_handler._entry_ptr.42, ptr @cw1200_mcast_timeout._entry, ptr @cw1200_mcast_timeout._entry_ptr, ptr @cw1200_parse_sdd_file._entry, ptr @cw1200_parse_sdd_file._entry.82, ptr @cw1200_parse_sdd_file._entry.86, ptr @cw1200_parse_sdd_file._entry_ptr, ptr @cw1200_parse_sdd_file._entry_ptr.84, ptr @cw1200_parse_sdd_file._entry_ptr.88, ptr @cw1200_set_key._entry, ptr @cw1200_set_key._entry.21, ptr @cw1200_set_key._entry_ptr, ptr @cw1200_set_key._entry_ptr.23, ptr @cw1200_setup_mac._entry, ptr @cw1200_setup_mac._entry_ptr, ptr @cw1200_sta_add._entry, ptr @cw1200_sta_add._entry_ptr, ptr @cw1200_update_filtering._entry, ptr @cw1200_update_filtering._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cw1200_bssloss_mitigation, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @cw1200_update_filtering.bf_ctrl.0, ptr @cw1200_update_filtering.bf_ctrl.1, ptr @cw1200_update_filtering.bf_tbl, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bssloss_mitigation to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_update_filtering.bf_ctrl.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_update_filtering.bf_ctrl.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_update_filtering.bf_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_update_filtering._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_set_key._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_event_handler._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_event_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_event_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_setup_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_sta_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_mcast_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_parse_sdd_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_parse_sdd_file._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_parse_sdd_file._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_do_join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_do_join._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_start(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %pm_state = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 58
  tail call void @cw1200_pm_stay_awake(ptr noundef %pm_state, i32 noundef 100) #11
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %edca = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %edca to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 3, ptr %edca, align 4
  %cwmax = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %cwmax to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 7, ptr %cwmax, align 2
  %aifns = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %aifns to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %aifns, align 4
  %txop_limit = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 3
  %5 = ptrtoint ptr %txop_limit to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1504, ptr %txop_limit, align 2
  %max_rx_lifetime = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %max_rx_lifetime to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 200, ptr %max_rx_lifetime, align 4
  %uapsd_enable = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 1
  %7 = ptrtoint ptr %uapsd_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %uapsd_enable, align 4
  %arrayidx8 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 7, ptr %arrayidx8, align 4
  %cwmax10 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %cwmax10 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 15, ptr %cwmax10, align 2
  %aifns11 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %aifns11 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %aifns11, align 4
  %txop_limit12 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %txop_limit12 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 3008, ptr %txop_limit12, align 2
  %max_rx_lifetime13 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %max_rx_lifetime13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 200, ptr %max_rx_lifetime13, align 4
  %arrayidx16 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx16, align 1
  %arrayidx23 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 15, ptr %arrayidx23, align 4
  %cwmax25 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %cwmax25 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1023, ptr %cwmax25, align 2
  %aifns26 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %aifns26 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %aifns26, align 4
  %txop_limit27 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %txop_limit27 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %txop_limit27, align 2
  %max_rx_lifetime28 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %max_rx_lifetime28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 200, ptr %max_rx_lifetime28, align 4
  %arrayidx31 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx31, align 2
  %arrayidx38 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 15, ptr %arrayidx38, align 4
  %cwmax40 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %cwmax40 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1023, ptr %cwmax40, align 2
  %aifns41 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %aifns41 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 7, ptr %aifns41, align 4
  %txop_limit42 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %txop_limit42 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %txop_limit42, align 2
  %max_rx_lifetime43 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %max_rx_lifetime43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 200, ptr %max_rx_lifetime43, align 4
  %arrayidx46 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 1, i32 3
  %25 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx46, align 1
  %call = tail call i32 @wsm_set_edca_params(ptr noundef %1, ptr noundef %edca) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %26 = ptrtoint ptr %uapsd_enable to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %uapsd_enable, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  %spec.select.i = select i1 %tobool.not.i, i16 0, i16 8
  %28 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx16, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool4.not.i = icmp eq i8 %29, 0
  %30 = or i16 %spec.select.i, 4
  %uapsd_flags.1.i = select i1 %tobool4.not.i, i16 %spec.select.i, i16 %30
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx31, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool12.not.i = icmp eq i8 %32, 0
  %33 = or i16 %uapsd_flags.1.i, 2
  %uapsd_flags.2.i = select i1 %tobool12.not.i, i16 %uapsd_flags.1.i, i16 %33
  %34 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx46, align 1, !range !283
  %36 = zext i8 %35 to i16
  %uapsd_flags.3.i = or i16 %uapsd_flags.2.i, %36
  %37 = shl nuw nsw i16 %uapsd_flags.3.i, 8
  %uapsd_info.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60
  %38 = ptrtoint ptr %uapsd_info.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %uapsd_info.i, align 4
  %min_auto_trigger_interval.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60, i32 1
  %39 = ptrtoint ptr %min_auto_trigger_interval.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %min_auto_trigger_interval.i, align 2
  %max_auto_trigger_interval.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60, i32 2
  %40 = ptrtoint ptr %max_auto_trigger_interval.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %max_auto_trigger_interval.i, align 4
  %auto_trigger_step.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60, i32 3
  %41 = ptrtoint ptr %auto_trigger_step.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %auto_trigger_step.i, align 2
  %call.i.i = tail call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4115, ptr noundef %uapsd_info.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool52.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool52.not, label %if.end54, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end54:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %setbssparams_done = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 61
  %42 = ptrtoint ptr %setbssparams_done to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %setbssparams_done, align 4
  %mac_addr = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %43 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy, align 8
  %perm_addr = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 1
  %45 = call ptr @memcpy(ptr %mac_addr, ptr %perm_addr, i32 6)
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %46 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %mode, align 4
  %wep_default_key_id = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 107
  %47 = ptrtoint ptr %wep_default_key_id to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %wep_default_key_id, align 1
  %cqm_beacon_loss_count = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 37
  %48 = ptrtoint ptr %cqm_beacon_loss_count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 10, ptr %cqm_beacon_loss_count, align 4
  %call56 = tail call i32 @cw1200_setup_mac(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end54, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call.i.i, %if.end.out_crit_edge ], [ %call56, %if.end54 ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_pm_stay_awake(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_set_edca_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_set_uapsd_param(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %uapsd_enable = getelementptr inbounds %struct.wsm_edca_params, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %uapsd_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uapsd_enable, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 8
  %arrayidx3 = getelementptr %struct.wsm_edca_params, ptr %arg, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %4 = or i16 %spec.select, 4
  %uapsd_flags.1 = select i1 %tobool4.not, i16 %spec.select, i16 %4
  %arrayidx11 = getelementptr %struct.wsm_edca_params, ptr %arg, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx11, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  %7 = or i16 %uapsd_flags.1, 2
  %uapsd_flags.2 = select i1 %tobool12.not, i16 %uapsd_flags.1, i16 %7
  %arrayidx19 = getelementptr %struct.wsm_edca_params, ptr %arg, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19, align 1, !range !283
  %10 = zext i8 %9 to i16
  %uapsd_flags.3 = or i16 %uapsd_flags.2, %10
  %11 = shl nuw nsw i16 %uapsd_flags.3, 8
  %uapsd_info = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 60
  %12 = ptrtoint ptr %uapsd_info to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %uapsd_info, align 4
  %min_auto_trigger_interval = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 60, i32 1
  %13 = ptrtoint ptr %min_auto_trigger_interval to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %min_auto_trigger_interval, align 2
  %max_auto_trigger_interval = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 60, i32 2
  %14 = ptrtoint ptr %max_auto_trigger_interval to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %max_auto_trigger_interval, align 4
  %auto_trigger_step = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 60, i32 3
  %15 = ptrtoint ptr %auto_trigger_step to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %auto_trigger_step, align 2
  %call.i = tail call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4115, ptr noundef %uapsd_info, i32 noundef 8) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_setup_mac(ptr noundef %priv) local_unnamed_addr #0 align 64 {
if.end:
  %threshold = alloca %struct.wsm_rcpi_rssi_threshold, align 4
  %cfg = alloca %struct.wsm_configuration, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %threshold) #11
  %0 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 218103824, ptr %threshold, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cfg) #11
  %1 = call ptr @memset(ptr %cfg, i32 0, i32 56)
  %dot11StationId = getelementptr inbounds %struct.wsm_configuration, ptr %cfg, i32 0, i32 3
  %mac_addr = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %dot11StationId to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mac_addr, ptr %dot11StationId, align 4
  %sdd = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 13
  %3 = ptrtoint ptr %sdd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdd, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %sdd_path = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %sdd_path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdd_path, align 4
  %pdev = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %call = tail call i32 @request_firmware(ptr noundef %sdd, ptr noundef %6, ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %sdd_path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdd_path, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %10) #14
  br label %cleanup

if.end8:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cw1200_parse_sdd_file(ptr noundef %priv)
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end.if.end10_crit_edge
  %11 = ptrtoint ptr %sdd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdd, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %dpdData = getelementptr inbounds %struct.wsm_configuration, ptr %cfg, i32 0, i32 4
  %15 = ptrtoint ptr %dpdData to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dpdData, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %12, align 4
  %dpdData_size = getelementptr inbounds %struct.wsm_configuration, ptr %cfg, i32 0, i32 5
  %18 = ptrtoint ptr %dpdData_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dpdData_size, align 4
  %call13 = call i32 @wsm_configuration(ptr noundef %priv, ptr noundef nonnull %cfg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4105, ptr noundef nonnull %threshold, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call, %do.end ], [ %call13, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cfg) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %threshold) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_stop(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  call void @wsm_lock_tx(ptr noundef %1) #11
  %scan = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85
  %call60 = call i32 @down_trylock(ptr noundef %scan) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool.not61 = icmp eq i32 %call60, 0
  br i1 %tobool.not61, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %req = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %req, align 4
  call void @schedule() #11
  %call = call i32 @down_trylock(ptr noundef %scan) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @up(ptr noundef %scan) #11
  %probe_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 12
  %call6 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %probe_work) #11
  %timeout = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 2
  %call8 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout) #11
  %clear_recent_scan_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 87
  %call9 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %clear_recent_scan_work) #11
  %join_timeout = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 101
  %call10 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %join_timeout) #11
  %bss_loss_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 133
  call void @_raw_spin_lock(ptr noundef %bss_loss_lock.i) #11
  %delayed_link_loss.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 136
  %6 = ptrtoint ptr %delayed_link_loss.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %delayed_link_loss.i, align 4
  %bss_params_work.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 137
  %call.i = call zeroext i1 @cancel_work_sync(ptr noundef %bss_params_work.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_stop, %if.then.i58)) #11
          to label %do.end.i [label %if.then.i58], !srcloc !284

if.then.i58:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_state.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 134
  %7 = ptrtoint ptr %bss_loss_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bss_loss_state.i, align 4
  %tx_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 95
  %call.i.i.i57 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_lock.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %tx_lock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tx_lock.i, align 4
  %delayed_unjoin.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 106
  %11 = ptrtoint ptr %delayed_unjoin.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %delayed_unjoin.i, align 4, !range !283
  %13 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef %13) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i58, %while.end
  %delayed_unjoin6.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 106
  %14 = ptrtoint ptr %delayed_unjoin6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %delayed_unjoin6.i, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not.i = icmp eq i8 %15, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i.__cw1200_cqm_bssloss_sm.exit_crit_edge

do.end.i.__cw1200_cqm_bssloss_sm.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_cqm_bssloss_sm.exit

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_work36.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 132
  %call37.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bss_loss_work36.i) #11
  %bss_loss_state38.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 134
  %16 = ptrtoint ptr %bss_loss_state38.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bss_loss_state38.i, align 4
  br label %__cw1200_cqm_bssloss_sm.exit

__cw1200_cqm_bssloss_sm.exit:                     ; preds = %if.end9.i, %do.end.i.__cw1200_cqm_bssloss_sm.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %bss_loss_lock.i) #11
  %unjoin_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 102
  %call11 = call zeroext i1 @cancel_work_sync(ptr noundef %unjoin_work) #11
  %link_id_gc_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 115
  %call12 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %link_id_gc_work) #11
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %workqueue, align 4
  call void @flush_workqueue(ptr noundef %18) #11
  %mcast_timeout = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 128
  %call13 = call i32 @del_timer_sync(ptr noundef %mcast_timeout) #11
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mode, align 4
  %listening = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 47
  %20 = ptrtoint ptr %listening to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %listening, align 4
  %event_queue_lock = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 129
  call void @_raw_spin_lock(ptr noundef %event_queue_lock) #11
  %event_queue = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 130
  %21 = ptrtoint ptr %event_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %event_queue, align 4
  %cmp.i.not.i = icmp eq ptr %22, %event_queue
  br i1 %cmp.i.not.i, label %__cw1200_cqm_bssloss_sm.exit.list_splice_init.exit_crit_edge, label %if.then.i

__cw1200_cqm_bssloss_sm.exit.list_splice_init.exit_crit_edge: ; preds = %__cw1200_cqm_bssloss_sm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %__cw1200_cqm_bssloss_sm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 130, i32 1
  %25 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %22, ptr %list, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %24, ptr %26, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev6.i.i, align 4
  %30 = ptrtoint ptr %event_queue to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %event_queue, ptr %event_queue, align 4
  store ptr %event_queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %__cw1200_cqm_bssloss_sm.exit.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %event_queue_lock) #11
  %31 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %list, align 4
  %cmp.not18.i = icmp eq ptr %32, %list
  br i1 %cmp.not18.i, label %list_splice_init.exit.__cw1200_free_event_queue.exit_crit_edge, label %list_splice_init.exit.for.body.i_crit_edge

list_splice_init.exit.for.body.i_crit_edge:       ; preds = %list_splice_init.exit
  br label %for.body.i

list_splice_init.exit.__cw1200_free_event_queue.exit_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_free_event_queue.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %list_splice_init.exit.for.body.i_crit_edge
  %event.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %32, %list_splice_init.exit.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %event.019.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %tmp.0.i = load ptr, ptr %event.019.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %event.019.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %event.019.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %event.019.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %event.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %40 = ptrtoint ptr %event.019.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %event.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %event.019.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %event.019.i) #11
  %cmp.not.i = icmp eq ptr %tmp.0.i, %list
  br i1 %cmp.not.i, label %list_del.exit.i.__cw1200_free_event_queue.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.__cw1200_free_event_queue.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_free_event_queue.exit

__cw1200_free_event_queue.exit:                   ; preds = %list_del.exit.i.__cw1200_free_event_queue.exit_crit_edge, %list_splice_init.exit.__cw1200_free_event_queue.exit_crit_edge
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %42 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %join_status, align 4
  %join_pending = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 99
  %43 = ptrtoint ptr %join_pending to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %join_pending, align 4
  %arrayidx = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 18, i32 0
  %call15 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx) #11
  %arrayidx.1 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 18, i32 1
  %call15.1 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.1) #11
  %arrayidx.2 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 18, i32 2
  %call15.2 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.2) #11
  %arrayidx.3 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 18, i32 3
  %call15.3 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.3) #11
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  call void @tx_policy_clean(ptr noundef %1) #11
  %tx_lock = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 95
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !285
  call void @llvm.prefetch.p0(ptr %tx_lock, i32 1, i32 3, i32 1) #11
  %44 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %tx_lock) #11, !srcloc !286
  %asmresult.i.i = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i)
  %cmp18.not = icmp eq i32 %asmresult.i.i, 1
  br i1 %cmp18.not, label %__cw1200_free_event_queue.exit.if.end24_crit_edge, label %do.body

__cw1200_free_event_queue.exit.if.end24_crit_edge: ; preds = %__cw1200_free_event_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.body:                                          ; preds = %__cw1200_free_event_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_stop.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_stop, %if.then23)) #11
          to label %if.end24 [label %if.then23], !srcloc !284

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_stop.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.3) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %do.body, %__cw1200_free_event_queue.exit.if.end24_crit_edge
  call void @wsm_unlock_tx(ptr noundef %1) #11
  %call.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_lock, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !285
  call void @llvm.prefetch.p0(ptr %tx_lock, i32 1, i32 3, i32 1) #11
  %45 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %tx_lock) #11, !srcloc !286
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !287
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_lock_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tx_policy_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_unlock_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cw1200_cqm_bssloss_sm(ptr noundef %priv, i32 noundef %init, i32 noundef %good, i32 noundef %bad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_link_loss = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 136
  %0 = ptrtoint ptr %delayed_link_loss to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %delayed_link_loss, align 4
  %bss_params_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 137
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %bss_params_work) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cw1200_cqm_bssloss_sm, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_state = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %1 = ptrtoint ptr %bss_loss_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bss_loss_state, align 4
  %tx_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_lock, i32 noundef 4) #11
  %3 = ptrtoint ptr %tx_lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %tx_lock, align 4
  %delayed_unjoin = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 106
  %5 = ptrtoint ptr %delayed_unjoin to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %delayed_unjoin, align 4, !range !283
  %7 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.5, i32 noundef %2, i32 noundef %init, i32 noundef %good, i32 noundef %bad, i32 noundef %4, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delayed_unjoin6 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 106
  %8 = ptrtoint ptr %delayed_unjoin6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %delayed_unjoin6, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init)
  %tobool10.not = icmp eq i32 %init, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %10 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workqueue, align 4
  %bss_loss_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 132
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %bss_loss_work, i32 noundef 100) #11
  %bss_loss_state13 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %12 = ptrtoint ptr %bss_loss_state13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bss_loss_state13, align 4
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vif, align 4
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p2p, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %tx_lock15 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_lock15, i32 noundef 4) #11
  %17 = ptrtoint ptr %tx_lock15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tx_lock15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br label %if.end41

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %good)
  %tobool20.not = icmp eq i32 %good, 0
  br i1 %tobool20.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_work22 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 132
  %call23 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bss_loss_work22) #11
  %bss_loss_state24 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %19 = ptrtoint ptr %bss_loss_state24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bss_loss_state24, align 4
  %workqueue25 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %20 = ptrtoint ptr %workqueue25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %workqueue25, align 4
  %call.i117 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %bss_params_work) #11
  br label %cleanup

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bad)
  %tobool29.not = icmp eq i32 %bad, 0
  br i1 %tobool29.not, label %if.else35, label %if.then30

if.then30:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_state31 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %22 = ptrtoint ptr %bss_loss_state31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bss_loss_state31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp = icmp slt i32 %23, 3
  br label %if.end41

if.else35:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_work36 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 132
  %call37 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bss_loss_work36) #11
  %bss_loss_state38 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %24 = ptrtoint ptr %bss_loss_state38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bss_loss_state38, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.then30, %land.lhs.true
  %tx.0.shrunk = phi i1 [ %tobool17.not, %land.lhs.true ], [ %cmp, %if.then30 ]
  %25 = load i32, ptr @cw1200_bssloss_mitigation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool42.not = icmp eq i32 %25, 0
  %tobool45.not119 = xor i1 %tx.0.shrunk, true
  %tobool45.not = select i1 %tobool42.not, i1 true, i1 %tobool45.not119
  br i1 %tobool45.not, label %if.end41.cleanup_crit_edge, label %if.then46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then46:                                        ; preds = %if.end41
  %bss_loss_state47 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %26 = ptrtoint ptr %bss_loss_state47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bss_loss_state47, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %bss_loss_state47, align 4
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  %vif48 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %30 = ptrtoint ptr %vif48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vif48, align 4
  %call49 = tail call ptr @ieee80211_nullfunc_get(ptr noundef %29, ptr noundef %31, i1 noundef zeroext false) #11
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %do.end68, label %if.then83.critedge, !prof !288

do.end68:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 199, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.then83.critedge:                               ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  tail call void @cw1200_tx(ptr noundef %33, ptr noundef null, ptr noundef nonnull %call49) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then83.critedge, %do.end68, %if.end41.cleanup_crit_edge, %if.else35, %if.then21, %if.then11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_nullfunc_get(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_add_interface(ptr nocapture noundef readonly %dev, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %2 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_flags, align 8
  %or = or i32 %3, 7
  store i32 %or, ptr %driver_flags, align 8
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.not = icmp eq i32 %5, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge22
    i32 7, label %if.end.sw.bb_crit_edge23
    i32 3, label %if.end.sw.bb_crit_edge24
  ]

if.end.sw.bb_crit_edge24:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge23:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge22:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge22, %if.end.sw.bb_crit_edge23, %if.end.sw.bb_crit_edge24
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %mode, align 4
  %vif6 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %vif6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vif, ptr %vif6, align 4
  %mac_addr = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %mac_addr, ptr %addr, i32 6)
  %call = tail call i32 @cw1200_setup_mac(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_remove_interface(ptr nocapture noundef readonly %dev, ptr nocapture readnone %vif) local_unnamed_addr #0 align 64 {
entry:
  %reset.i.i = alloca %struct.wsm_reset, align 8
  %reset = alloca %struct.wsm_reset, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset) #11
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 16777216, ptr %reset, align 8
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %3 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %join_status, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge64
    i32 4, label %entry.sw.bb_crit_edge65
    i32 5, label %entry.sw.bb_crit_edge66
    i32 6, label %for.cond.preheader
    i32 1, label %if.then9.i
  ]

entry.sw.bb_crit_edge66:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge65:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge64:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %link_id_map = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 112
  %6 = ptrtoint ptr %link_id_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_id_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not57 = icmp eq i32 %7, 0
  br i1 %tobool.not57, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge64, %entry.sw.bb_crit_edge65, %entry.sw.bb_crit_edge66
  tail call void @wsm_lock_tx(ptr noundef %1) #11
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workqueue, align 4
  %unjoin_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 102
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %unjoin_work) #11
  br i1 %call.i, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wsm_unlock_tx(ptr noundef %1) #11
  br label %sw.epilog

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %10 = phi i32 [ %15, %for.inc.for.body_crit_edge ], [ %7, %for.cond.preheader.for.body_crit_edge ]
  %i.058 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.058
  %and = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.incthread-pre-split, label %if.then6

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.058, ptr %reset, align 8
  %call7 = call i32 @wsm_reset(ptr noundef %1, ptr noundef nonnull %reset) #11
  %neg = xor i32 %shl, -1
  %12 = ptrtoint ptr %link_id_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link_id_map, align 4
  %and10 = and i32 %13, %neg
  store i32 %and10, ptr %link_id_map, align 4
  br label %for.inc

for.incthread-pre-split:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %link_id_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %link_id_map, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.incthread-pre-split, %if.then6
  %15 = phi i32 [ %.pr, %for.incthread-pre-split ], [ %and10, %if.then6 ]
  %inc = add i32 %i.058, 1
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %link_id_db = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 113
  %16 = call ptr @memset(ptr %link_id_db, i32 0, i32 420)
  %sta_asleep_mask = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 116
  %17 = ptrtoint ptr %sta_asleep_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sta_asleep_mask, align 4
  %enable_beacon = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 44
  %18 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %enable_beacon, align 4
  %tx_multicast = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 122
  %19 = ptrtoint ptr %tx_multicast to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %tx_multicast, align 1
  %aid0_bit_set = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 118
  %20 = ptrtoint ptr %aid0_bit_set to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %aid0_bit_set, align 4
  %buffered_multicasts = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 121
  %21 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %buffered_multicasts, align 4
  %pspoll_mask = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 117
  %22 = ptrtoint ptr %pspoll_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pspoll_mask, align 4
  %23 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %reset, align 8
  %call13 = call i32 @wsm_reset(ptr noundef %1, ptr noundef nonnull %reset) #11
  br label %sw.epilog

if.then9.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset.i.i) #11
  %24 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 16777216, ptr %reset.i.i, align 8
  %call.i25.i = call i32 @wsm_reset(ptr noundef %1, ptr noundef nonnull %reset.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool11.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool11.not.i, label %if.end17.sink.split.sink.split.i, label %if.then9.i.cw1200_update_listening.exit_crit_edge

if.then9.i.cw1200_update_listening.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_update_listening.exit

if.end17.sink.split.sink.split.i:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %join_status, align 4
  br label %cw1200_update_listening.exit

cw1200_update_listening.exit:                     ; preds = %if.end17.sink.split.sink.split.i, %if.then9.i.cw1200_update_listening.exit_crit_edge
  %call15.i = call i32 @wsm_set_probe_responder(ptr noundef %1, i1 noundef zeroext false) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %cw1200_update_listening.exit, %for.end, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %vif15 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %vif15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %vif15, align 4
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %mode, align 4
  %mac_addr = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 4
  %28 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  %p2p_ps_modeinfo = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 59
  %29 = call ptr @memset(ptr %p2p_ps_modeinfo, i32 0, i32 16)
  call void @cw1200_free_keys(ptr noundef %1) #11
  %call17 = call i32 @cw1200_setup_mac(ptr noundef %1)
  %listening = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 47
  %30 = ptrtoint ptr %listening to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %listening, align 4
  %31 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %join_status, align 4
  %tx_queue_stats.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 19
  %arrayidx.i = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 18, i32 0
  %arrayidx.1.i = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 18, i32 1
  %arrayidx.2.i = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 18, i32 2
  %arrayidx.3.i = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 18, i32 3
  %call.i5659 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.i) #11
  %call.1.i60 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.1.i) #11
  %call.2.i61 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.2.i) #11
  %call.3.i62 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.3.i) #11
  call void @wsm_lock_tx(ptr noundef %1) #11
  %call52.i63 = call zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef %tx_queue_stats.i, i32 noundef -1) #11
  br i1 %call52.i63, label %sw.epilog.if.end22_crit_edge, label %sw.epilog.if.then53.i_crit_edge

sw.epilog.if.then53.i_crit_edge:                  ; preds = %sw.epilog
  br label %if.then53.i

sw.epilog.if.end22_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then53.i:                                      ; preds = %if.then53.i.if.then53.i_crit_edge, %sw.epilog.if.then53.i_crit_edge
  call void @wsm_unlock_tx(ptr noundef %1) #11
  %call.i56 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.i) #11
  %call.1.i = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.1.i) #11
  %call.2.i = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.2.i) #11
  %call.3.i = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.3.i) #11
  call void @wsm_lock_tx(ptr noundef %1) #11
  %call52.i = call zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef %tx_queue_stats.i, i32 noundef -1) #11
  br i1 %call52.i, label %if.then53.i.if.end22_crit_edge, label %if.then53.i.if.then53.i_crit_edge

if.then53.i.if.then53.i_crit_edge:                ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53.i

if.then53.i.if.end22_crit_edge:                   ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %if.then53.i.if.end22_crit_edge, %sw.epilog.if.end22_crit_edge
  call void @wsm_unlock_tx(ptr noundef %1) #11
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_update_listening(ptr noundef %priv, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  %reset.i = alloca %struct.wsm_reset, align 8
  %start.i = alloca %struct.wsm_start, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %0 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %join_status, align 4
  br i1 %enabled, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then1:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %start.i) #11
  %2 = getelementptr inbounds i8, ptr %start.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 44)
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %start.i, align 4
  %5 = getelementptr inbounds %struct.wsm_start, ptr %start.i, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wsm_start, ptr %start.i, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %7, align 4
  %9 = getelementptr inbounds %struct.wsm_start, ptr %start.i, i32 0, i32 10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 15, ptr %9, align 4
  %channel.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 25
  %11 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then1.cw1200_enable_listening.exit_crit_edge, label %if.then.i

if.then1.cw1200_enable_listening.exit_crit_edge:  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_enable_listening.exit

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  %conv.i = zext i1 %cmp.i to i8
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hw_value.i, align 2
  br label %cw1200_enable_listening.exit

cw1200_enable_listening.exit:                     ; preds = %if.then.i, %if.then1.cw1200_enable_listening.exit_crit_edge
  %conv.sink.i = phi i8 [ %conv.i, %if.then.i ], [ 0, %if.then1.cw1200_enable_listening.exit_crit_edge ]
  %.sink.i = phi i16 [ %16, %if.then.i ], [ 1, %if.then1.cw1200_enable_listening.exit_crit_edge ]
  %17 = getelementptr inbounds %struct.wsm_start, ptr %start.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.sink.i, ptr %17, align 1
  %19 = getelementptr inbounds %struct.wsm_start, ptr %start.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink.i, ptr %19, align 2
  %call.i = call i32 @wsm_start(ptr noundef %priv, ptr noundef nonnull %start.i) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %start.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %cw1200_enable_listening.exit.if.end17.sink.split.sink.split_crit_edge, label %cw1200_enable_listening.exit.if.end17.sink.split_crit_edge

cw1200_enable_listening.exit.if.end17.sink.split_crit_edge: ; preds = %cw1200_enable_listening.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split

cw1200_enable_listening.exit.if.end17.sink.split.sink.split_crit_edge: ; preds = %cw1200_enable_listening.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp8 = icmp eq i32 %1, 1
  br i1 %cmp8, label %if.then9, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then9:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset.i) #11
  %21 = ptrtoint ptr %reset.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 16777216, ptr %reset.i, align 8
  %call.i25 = call i32 @wsm_reset(ptr noundef %priv, ptr noundef nonnull %reset.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool11.not = icmp eq i32 %call.i25, 0
  br i1 %tobool11.not, label %if.then9.if.end17.sink.split.sink.split_crit_edge, label %if.then9.if.end17.sink.split_crit_edge

if.then9.if.end17.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split

if.then9.if.end17.sink.split.sink.split_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.sink.split

if.end17.sink.split.sink.split:                   ; preds = %if.then9.if.end17.sink.split.sink.split_crit_edge, %cw1200_enable_listening.exit.if.end17.sink.split.sink.split_crit_edge
  %.sink26 = phi i32 [ 1, %cw1200_enable_listening.exit.if.end17.sink.split.sink.split_crit_edge ], [ 0, %if.then9.if.end17.sink.split.sink.split_crit_edge ]
  %22 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink26, ptr %join_status, align 4
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.end17.sink.split.sink.split, %if.then9.if.end17.sink.split_crit_edge, %cw1200_enable_listening.exit.if.end17.sink.split_crit_edge
  %.sink = phi i1 [ true, %cw1200_enable_listening.exit.if.end17.sink.split_crit_edge ], [ false, %if.then9.if.end17.sink.split_crit_edge ], [ %enabled, %if.end17.sink.split.sink.split ]
  %call15 = call i32 @wsm_set_probe_responder(ptr noundef %priv, i1 noundef zeroext %.sink) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge, %if.then.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_free_keys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cw1200_flush(ptr noundef %priv, i1 noundef zeroext %drop) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queue_stats = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 19
  %wait_link_id_empty = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 19, i32 4
  %drop.not = xor i1 %drop, true
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 0
  %arrayidx.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 1
  %arrayidx.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 2
  %arrayidx.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.then53, %entry
  br i1 %drop, label %if.end44.thread, label %if.else

if.end44.thread:                                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call = call i32 @cw1200_queue_clear(ptr noundef %arrayidx) #11
  %call.1 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.1) #11
  %call.2 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.2) #11
  %call.3 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.3) #11
  br label %if.else49

if.else:                                          ; preds = %for.cond
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 907) #11
  %call5 = call zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef %tx_queue_stats, i32 noundef -1) #11
  br i1 %call5, label %if.else.if.else49_crit_edge, label %if.then13

if.else.if.else49_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else49

if.then13:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call1785 = call i32 @prepare_to_wait_event(ptr noundef %wait_link_id_empty, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call2086 = call zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef %tx_queue_stats, i32 noundef -1) #11
  br i1 %call2086, label %if.end44.thread94, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  br label %cleanup

if.end44.thread94:                                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %wait_link_id_empty, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.else49

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %__ret14.187 = phi i32 [ %__ret14.1, %cleanup.cleanup_crit_edge ], [ 200, %if.then13.cleanup_crit_edge ]
  %call37 = call i32 @schedule_timeout(i32 noundef %__ret14.187) #11
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %wait_link_id_empty, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call20 = call zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef %tx_queue_stats, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool24.not = icmp eq i32 %call37, 0
  %1 = select i1 %call20, i1 %tobool24.not, i1 false
  %__ret14.1 = select i1 %1, i32 1, i32 %call37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool30.not = icmp eq i32 %__ret14.1, 0
  %2 = select i1 %call20, i1 true, i1 %tobool30.not
  br i1 %2, label %if.end44, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end44:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef %wait_link_id_empty, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret14.1)
  %cmp47 = icmp slt i32 %__ret14.1, 1
  %or.cond = select i1 %drop.not, i1 %cmp47, i1 false
  br i1 %or.cond, label %if.end44.for.end55_crit_edge, label %if.end44.if.else49_crit_edge

if.end44.if.else49_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else49

if.end44.for.end55_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end55

if.else49:                                        ; preds = %if.end44.if.else49_crit_edge, %if.end44.thread94, %if.else.if.else49_crit_edge, %if.end44.thread
  call void @wsm_lock_tx(ptr noundef %priv) #11
  %call52 = call zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef %tx_queue_stats, i32 noundef -1) #11
  br i1 %call52, label %if.else49.for.end55_crit_edge, label %if.then53

if.else49.for.end55_crit_edge:                    ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end55

if.then53:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  call void @wsm_unlock_tx(ptr noundef %priv) #11
  br label %for.cond

for.end55:                                        ; preds = %if.else49.for.end55_crit_edge, %if.end44.for.end55_crit_edge
  %ret.2 = phi i32 [ 0, %if.else49.for.end55_crit_edge ], [ -110, %if.end44.for.end55_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_change_interface(ptr nocapture noundef readonly %dev, ptr noundef %vif, i32 noundef %new_type, i1 noundef zeroext %p2p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %p2p to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_change_interface.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_change_interface, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i1 %p2p to i32
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %p2p5 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %2 = ptrtoint ptr %p2p5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p2p5, align 2, !range !283
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_change_interface.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.7, i32 noundef %new_type, i32 noundef %conv, i32 noundef %1, i32 noundef %4) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %new_type)
  %cmp.not = icmp eq i32 %6, %new_type
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.if.then17_crit_edge

do.end.if.then17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false:                                    ; preds = %do.end
  %p2p10 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %7 = ptrtoint ptr %p2p10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %p2p10, align 2, !range !283
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %frombool)
  %cmp15.not = icmp eq i8 %8, %frombool
  br i1 %cmp15.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %do.end.if.then17_crit_edge
  tail call void @cw1200_remove_interface(ptr noundef %dev, ptr undef)
  %9 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %new_type, ptr %vif, align 8
  %p2p20 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %10 = ptrtoint ptr %p2p20 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %p2p20, align 2
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv1.i, align 8
  %driver_flags.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %13 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_flags.i, align 8
  %or.i = or i32 %14, 7
  store i32 %or.i, ptr %driver_flags.i, align 8
  %conf_mutex.i = getelementptr inbounds %struct.cw1200_common, ptr %12, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex.i, i32 noundef 0) #11
  %mode.i = getelementptr inbounds %struct.cw1200_common, ptr %12, i32 0, i32 43
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 6
  br i1 %cmp.not.i, label %if.end.i, label %if.then17.cw1200_add_interface.exit_crit_edge

if.then17.cw1200_add_interface.exit_crit_edge:    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_add_interface.exit

if.end.i:                                         ; preds = %if.then17
  %17 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vif, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %18, label %if.end.i.cw1200_add_interface.exit_crit_edge [
    i32 2, label %if.end.i.sw.bb.i_crit_edge
    i32 1, label %if.end.i.sw.bb.i_crit_edge38
    i32 7, label %if.end.i.sw.bb.i_crit_edge39
    i32 3, label %if.end.i.sw.bb.i_crit_edge40
  ]

if.end.i.sw.bb.i_crit_edge40:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge39:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge38:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i.cw1200_add_interface.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_add_interface.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge38, %if.end.i.sw.bb.i_crit_edge39, %if.end.i.sw.bb.i_crit_edge40
  %20 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %mode.i, align 4
  %vif6.i = getelementptr inbounds %struct.cw1200_common, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %vif6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vif, ptr %vif6.i, align 4
  %mac_addr.i = getelementptr inbounds %struct.cw1200_common, ptr %12, i32 0, i32 4
  %addr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %22 = call ptr @memcpy(ptr %mac_addr.i, ptr %addr.i, i32 6)
  %call.i = tail call i32 @cw1200_setup_mac(ptr noundef %12) #11
  br label %cw1200_add_interface.exit

cw1200_add_interface.exit:                        ; preds = %sw.bb.i, %if.end.i.cw1200_add_interface.exit_crit_edge, %if.then17.cw1200_add_interface.exit_crit_edge
  %retval.0.i36 = phi i32 [ %call.i, %sw.bb.i ], [ -95, %if.then17.cw1200_add_interface.exit_crit_edge ], [ -95, %if.end.i.cw1200_add_interface.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex.i) #11
  br label %if.end23

if.end23:                                         ; preds = %cw1200_add_interface.exit, %lor.lhs.false.if.end23_crit_edge
  %ret.0 = phi i32 [ %retval.0.i36, %cw1200_add_interface.exit ], [ 0, %lor.lhs.false.if.end23_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_config(ptr nocapture noundef readonly %dev, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  %val.i304 = alloca i8, align 1
  %reset.i = alloca %struct.wsm_reset, align 8
  %pm.i = alloca %struct.wsm_set_pm, align 4
  %val.i = alloca i32, align 4
  %channel32 = alloca %struct.wsm_switch_channel, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_config.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_config, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_config.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.9, i32 noundef %changed) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %scan = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85
  tail call void @down(ptr noundef %scan) #11
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %and = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end.if.end26_crit_edge, label %if.then6

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then6:                                         ; preds = %do.end
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_level, align 4
  %output_power = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %output_power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %output_power, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_config.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_config, %if.then19)) #11
          to label %do.end23 [label %if.then19], !srcloc !284

if.then19:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %output_power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %output_power, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_config.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.10, i32 noundef %6) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %if.then6
  %7 = ptrtoint ptr %output_power to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %output_power, align 4
  %mul = mul i32 %8, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %mul) #11
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val.i, align 4
  %call.i = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 6, ptr noundef nonnull %val.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %do.end.if.end26_crit_edge
  %and27 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end118_crit_edge, label %land.lhs.true

if.end26.if.end118_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

land.lhs.true:                                    ; preds = %if.end26
  %channel = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 7
  %13 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chandef, align 4
  %cmp.not = icmp eq ptr %12, %14
  br i1 %cmp.not, label %land.lhs.true.if.end118_crit_edge, label %if.then29

land.lhs.true.if.end118_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then29:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel32) #11
  %15 = getelementptr inbounds %struct.wsm_switch_channel, ptr %channel32, i32 0, i32 1
  %16 = getelementptr inbounds %struct.wsm_switch_channel, ptr %channel32, i32 0, i32 2
  %17 = ptrtoint ptr %channel32 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %channel32, align 2
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %15, align 1
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hw_value, align 2
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %16, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_config.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_config, %if.then45)) #11
          to label %do.end49 [label %if.then45], !srcloc !284

if.then45:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %center_freq, align 4
  %24 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %25 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_config.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.11, i32 noundef %23, i32 noundef %conv) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %if.then29
  %call50 = call fastcc i32 @__cw1200_flush(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %do.end49.if.end117_crit_edge

do.end49.if.end117_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then52:                                        ; preds = %do.end49
  %call53 = call i32 @wsm_switch_channel(ptr noundef %1, ptr noundef nonnull %channel32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %if.else115

if.then55:                                        ; preds = %if.then52
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 357) #11
  %channel_switch_in_progress = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 38
  %26 = ptrtoint ptr %channel_switch_in_progress to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_switch_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool62.not = icmp eq i32 %27, 0
  br i1 %tobool62.not, label %if.then55.if.then112_crit_edge, label %if.then79

if.then55.if.then112_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then112

if.then79:                                        ; preds = %if.then55
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %28 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %channel_switch_done = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 39
  %call81320 = call i32 @prepare_to_wait_event(ptr noundef %channel_switch_done, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %29 = ptrtoint ptr %channel_switch_in_progress to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel_switch_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool84.not321 = icmp eq i32 %30, 0
  br i1 %tobool84.not321, label %if.end109.thread, label %if.then79.cleanup_crit_edge

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  br label %cleanup

if.end109.thread:                                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %channel_switch_done, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.then112

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then79.cleanup_crit_edge
  %__ret80.1322 = phi i32 [ %__ret80.1, %cleanup.cleanup_crit_edge ], [ 300, %if.then79.cleanup_crit_edge ]
  %call106 = call i32 @schedule_timeout(i32 noundef %__ret80.1322) #11
  %call81 = call i32 @prepare_to_wait_event(ptr noundef %channel_switch_done, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %31 = ptrtoint ptr %channel_switch_in_progress to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channel_switch_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool84.not = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool91.not = icmp eq i32 %call106, 0
  %33 = select i1 %tobool84.not, i1 %tobool91.not, i1 false
  %__ret80.1 = select i1 %33, i32 1, i32 %call106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret80.1)
  %tobool98.not = icmp eq i32 %__ret80.1, 0
  %34 = select i1 %tobool84.not, i1 true, i1 %tobool98.not
  br i1 %34, label %if.end109, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end109:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret80.1)
  %phi.cmp = icmp eq i32 %__ret80.1, 0
  call void @finish_wait(ptr noundef %channel_switch_done, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br i1 %phi.cmp, label %if.end109.if.end117_crit_edge, label %if.end109.if.then112_crit_edge

if.end109.if.then112_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then112

if.end109.if.end117_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then112:                                       ; preds = %if.end109.if.then112_crit_edge, %if.end109.thread, %if.then55.if.then112_crit_edge
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %14, ptr %channel, align 4
  br label %if.end117

if.else115:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  call void @wsm_unlock_tx(ptr noundef %1) #11
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %if.then112, %if.end109.if.end117_crit_edge, %do.end49.if.end117_crit_edge
  %ret.0 = phi i32 [ 0, %do.end49.if.end117_crit_edge ], [ 0, %if.else115 ], [ 0, %if.then112 ], [ -110, %if.end109.if.end117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel32) #11
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %land.lhs.true.if.end118_crit_edge, %if.end26.if.end118_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end117 ], [ 0, %land.lhs.true.if.end118_crit_edge ], [ 0, %if.end26.if.end118_crit_edge ]
  %and119 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end157_crit_edge, label %if.then121

if.end118.if.end157_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then121:                                       ; preds = %if.end118
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dev, align 4
  %and122 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.then124, label %if.else126

if.then124:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  %powersave_mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 31
  %38 = ptrtoint ptr %powersave_mode to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %powersave_mode, align 4
  br label %if.end136

if.else126:                                       ; preds = %if.then121
  %dynamic_ps_timeout = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 2
  %39 = ptrtoint ptr %dynamic_ps_timeout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dynamic_ps_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp127 = icmp slt i32 %40, 1
  %powersave_mode130 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 31
  br i1 %cmp127, label %if.then129, label %if.else132

if.then129:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %powersave_mode130 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %powersave_mode130, align 4
  br label %if.end136

if.else132:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %powersave_mode130 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -127, ptr %powersave_mode130, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.else132, %if.then129, %if.then124
  %dynamic_ps_timeout137 = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 2
  %43 = ptrtoint ptr %dynamic_ps_timeout137 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dynamic_ps_timeout137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %44)
  %cmp138 = icmp sgt i32 %44, 127
  %.tr = trunc i32 %44 to i8
  %conv144 = shl i8 %.tr, 1
  %conv144.sink = select i1 %cmp138, i8 -1, i8 %conv144
  %45 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 31, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv144.sink, ptr %45, align 1
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %47 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp148 = icmp eq i32 %48, 4
  br i1 %cmp148, label %land.lhs.true150, label %if.end136.if.end157_crit_edge

if.end136.if.end157_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

land.lhs.true150:                                 ; preds = %if.end136
  %aid = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 29, i32 2
  %49 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %aid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool152.not = icmp eq i16 %50, 0
  br i1 %tobool152.not, label %land.lhs.true150.if.end157_crit_edge, label %if.then153

land.lhs.true150.if.end157_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then153:                                       ; preds = %land.lhs.true150
  %powersave_mode154 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm.i) #11
  %51 = ptrtoint ptr %powersave_mode154 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %powersave_mode154, align 1
  %53 = ptrtoint ptr %pm.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %pm.i, align 4
  %uapsd_info.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60
  %54 = ptrtoint ptr %uapsd_info.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %uapsd_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp.not.i = icmp eq i16 %55, 0
  br i1 %cmp.not.i, label %if.then153.if.end.i_crit_edge, label %if.then.i

if.then153.if.end.i_crit_edge:                    ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %pm.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pm.i, align 4
  %58 = and i8 %57, 127
  store i8 %58, ptr %pm.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then153.if.end.i_crit_edge
  %firmware_ps_mode.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 32
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %pm.i, ptr noundef dereferenceable(4) %firmware_ps_mode.i, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end.i.cw1200_set_pm.exit_crit_edge, label %if.then4.i

if.end.i.cw1200_set_pm.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_set_pm.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pm.i, align 4
  %61 = ptrtoint ptr %firmware_ps_mode.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %firmware_ps_mode.i, align 4
  %call6.i = call i32 @wsm_set_pm(ptr noundef %1, ptr noundef nonnull %pm.i) #11
  br label %cw1200_set_pm.exit

cw1200_set_pm.exit:                               ; preds = %if.then4.i, %if.end.i.cw1200_set_pm.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm.i) #11
  br label %if.end157

if.end157:                                        ; preds = %cw1200_set_pm.exit, %land.lhs.true150.if.end157_crit_edge, %if.end136.if.end157_crit_edge, %if.end118.if.end157_crit_edge
  %and162 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end157.if.end180_crit_edge, label %if.then164

if.end157.if.end180_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

if.then164:                                       ; preds = %if.end157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cw1200_power_mode to i32))
  %62 = load i32, ptr @cw1200_power_mode, align 4
  call void @wsm_lock_tx(ptr noundef %1) #11
  %join_status166 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %63 = ptrtoint ptr %join_status166 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %join_status166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp167 = icmp eq i32 %64, 1
  br i1 %cmp167, label %land.lhs.true169, label %if.then164.wsm_set_operational_mode.exit_crit_edge

if.then164.wsm_set_operational_mode.exit_crit_edge: ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  br label %wsm_set_operational_mode.exit

land.lhs.true169:                                 ; preds = %if.then164
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dev, align 4
  %and171 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %land.lhs.true169.wsm_set_operational_mode.exit_crit_edge, label %land.lhs.true173

land.lhs.true169.wsm_set_operational_mode.exit_crit_edge: ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #13
  br label %wsm_set_operational_mode.exit

land.lhs.true173:                                 ; preds = %land.lhs.true169
  %listening = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 47
  %67 = ptrtoint ptr %listening to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %listening, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool174.not = icmp eq i8 %68, 0
  br i1 %tobool174.not, label %if.then175, label %land.lhs.true173.wsm_set_operational_mode.exit_crit_edge

land.lhs.true173.wsm_set_operational_mode.exit_crit_edge: ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #13
  br label %wsm_set_operational_mode.exit

if.then175:                                       ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset.i) #11
  %69 = ptrtoint ptr %reset.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 16777216, ptr %reset.i, align 8
  %call.i303 = call i32 @wsm_reset(ptr noundef %1, ptr noundef nonnull %reset.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset.i) #11
  %70 = ptrtoint ptr %join_status166 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %join_status166, align 4
  br label %wsm_set_operational_mode.exit

wsm_set_operational_mode.exit:                    ; preds = %if.then175, %land.lhs.true173.wsm_set_operational_mode.exit_crit_edge, %land.lhs.true169.wsm_set_operational_mode.exit_crit_edge, %if.then164.wsm_set_operational_mode.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i304) #11
  %conv.i = trunc i32 %62 to i8
  %conv2.i = or i8 %conv.i, 16
  %71 = ptrtoint ptr %val.i304 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv2.i, ptr %val.i304, align 1
  %call.i309 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4102, ptr noundef nonnull %val.i304, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i304) #11
  call void @wsm_unlock_tx(ptr noundef %1) #11
  br label %if.end180

if.end180:                                        ; preds = %wsm_set_operational_mode.exit, %if.end157.if.end180_crit_edge
  %and181 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end180.if.end216_crit_edge, label %do.body184

if.end180.if.end216_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end216

do.body184:                                       ; preds = %if.end180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_config.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_config, %if.then196)) #11
          to label %do.end201 [label %if.then196], !srcloc !284

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #13
  %long_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 5
  %72 = ptrtoint ptr %long_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %long_frame_max_tx_count, align 1
  %conv197 = zext i8 %73 to i32
  %short_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 6
  %74 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %short_frame_max_tx_count, align 4
  %conv198 = zext i8 %75 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_config.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.12, i32 noundef %conv197, i32 noundef %conv198) #11
  br label %do.end201

do.end201:                                        ; preds = %if.then196, %do.body184
  %lock202 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 138, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock202) #11
  %long_frame_max_tx_count203 = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 5
  %76 = ptrtoint ptr %long_frame_max_tx_count203 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %long_frame_max_tx_count203, align 1
  %long_frame_max_tx_count204 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 40
  %78 = ptrtoint ptr %long_frame_max_tx_count204 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %long_frame_max_tx_count204, align 4
  %short_frame_max_tx_count205 = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 6
  %79 = ptrtoint ptr %short_frame_max_tx_count205 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %short_frame_max_tx_count205, align 4
  %81 = call i8 @llvm.umin.i8(i8 %80, i8 15)
  %short_frame_max_tx_count212 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 41
  %82 = ptrtoint ptr %short_frame_max_tx_count212 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %short_frame_max_tx_count212, align 1
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %81, ptr %max_rate_tries, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %lock202) #11
  br label %if.end216

if.end216:                                        ; preds = %do.end201, %if.end180.if.end216_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  call void @up(ptr noundef %scan) #11
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_switch_channel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_set_pm(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  %pm = alloca %struct.wsm_set_pm, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm) #11
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %arg, align 1
  %2 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %pm, align 4
  %uapsd_info = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 60
  %3 = ptrtoint ptr %uapsd_info to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %uapsd_info, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm, align 4
  %7 = and i8 %6, 127
  store i8 %7, ptr %pm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %firmware_ps_mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 32
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %pm, ptr noundef dereferenceable(4) %firmware_ps_mode, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pm, align 4
  %10 = ptrtoint ptr %firmware_ps_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %firmware_ps_mode, align 4
  %call6 = call i32 @wsm_set_pm(ptr noundef %priv, ptr noundef nonnull %pm) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_disable_listening(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %reset = alloca %struct.wsm_reset, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset) #11
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 16777216, ptr %reset, align 8
  %call = call i32 @wsm_reset(ptr noundef %priv, ptr noundef nonnull %reset) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_update_filtering(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %arg.i = alloca %struct.wsm_set_bssid_filtering, align 1
  %val.i78 = alloca %struct.anon.150, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_filter = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 48
  %bssid = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 48, i32 1
  %0 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bssid, align 1, !range !283
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %entry.land.end9_crit_edge, label %land.rhs7

entry.land.end9_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end9

land.rhs7:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p2p, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3 = icmp ne i8 %5, 0
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ne i32 %7, 2
  br label %land.end9

land.end9:                                        ; preds = %land.rhs7, %entry.land.end9_crit_edge
  %8 = phi i1 [ %tobool3, %land.rhs7 ], [ false, %entry.land.end9_crit_edge ]
  %9 = phi i1 [ %cmp, %land.rhs7 ], [ true, %entry.land.end9_crit_edge ]
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %10 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %land.end9.cleanup_crit_edge, label %if.else

land.end9.cleanup_crit_edge:                      ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %land.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp13 = icmp eq i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %extract.t75 = icmp eq i8 %1, 1
  %disable_beacon_filter = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 51
  %12 = ptrtoint ptr %disable_beacon_filter to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %disable_beacon_filter, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  %brmerge = select i1 %8, i1 true, i1 %9
  %. = select i1 %brmerge, i32 3, i32 1
  %.94 = select i1 %brmerge, i32 33554432, i32 50331648
  %.sink93 = select i1 %tobool16.not, i32 %., i32 0
  %not.tobool16.not = xor i1 %tobool16.not, true
  %.sink92 = zext i1 %not.tobool16.not to i32
  %.sink = select i1 %tobool16.not, i32 %.94, i32 0
  store i32 %.sink93, ptr @cw1200_update_filtering.bf_ctrl.0, align 4
  store i32 %.sink92, ptr @cw1200_update_filtering.bf_ctrl.1, align 4
  store i32 %.sink, ptr @cw1200_update_filtering.bf_tbl, align 4
  %not.91 = select i1 %8, i1 true, i1 %cmp13
  %spec.select76 = select i1 %not.91, i1 true, i1 %extract.t75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %14 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx_filter, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 0, i32 16777216
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select.i, ptr %val.i, align 4
  %17 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bssid, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %if.else.if.end4.i_crit_edge, label %if.then2.i

if.else.if.end4.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %or3.i = or i32 %spec.store.select.i, 33554432
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or3.i, ptr %val.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.else.if.end4.i_crit_edge
  %fcs.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 48, i32 2
  %20 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fcs.i, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not.i = icmp eq i8 %21, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %or7.i = or i32 %23, 67108864
  store i32 %or7.i, ptr %val.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %probeResponder.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 48, i32 3
  %24 = ptrtoint ptr %probeResponder.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %probeResponder.i, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool9.not.i = icmp eq i8 %25, 0
  br i1 %tobool9.not.i, label %if.end8.i.wsm_set_rx_filter.exit_crit_edge, label %if.then10.i

if.end8.i.wsm_set_rx_filter.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wsm_set_rx_filter.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  %or11.i = or i32 %27, 134217728
  store i32 %or11.i, ptr %val.i, align 4
  br label %wsm_set_rx_filter.exit

wsm_set_rx_filter.exit:                           ; preds = %if.then10.i, %if.end8.i.wsm_set_rx_filter.exit_crit_edge
  %call.i = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4099, ptr noundef nonnull %val.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end32, label %wsm_set_rx_filter.exit.do.end_crit_edge

wsm_set_rx_filter.exit.do.end_crit_edge:          ; preds = %wsm_set_rx_filter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end32:                                         ; preds = %wsm_set_rx_filter.exit
  %28 = load i32, ptr @cw1200_update_filtering.bf_tbl, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #11
  %mul.i = shl i32 %29, 3
  %add.i = or i32 %mul.i, 4
  %call.i77 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4100, ptr noundef nonnull @cw1200_update_filtering.bf_tbl, i32 noundef %add.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool33.not = icmp eq i32 %call.i77, 0
  br i1 %tobool33.not, label %if.end36, label %if.end32.do.end_crit_edge

if.end32.do.end_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end36:                                         ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i78) #11
  %30 = getelementptr inbounds %struct.anon.150, ptr %val.i78, i32 0, i32 1
  %31 = load i32, ptr @cw1200_update_filtering.bf_ctrl.0, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #11
  %33 = ptrtoint ptr %val.i78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val.i78, align 4
  %34 = load i32, ptr @cw1200_update_filtering.bf_ctrl.1, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #11
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %30, align 4
  %call.i79 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4101, ptr noundef nonnull %val.i78, i32 noundef 8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i78) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool37.not = icmp eq i32 %call.i79, 0
  br i1 %tobool37.not, label %if.end41, label %if.end36.do.end_crit_edge

if.end36.do.end_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end41:                                         ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg.i) #11
  %37 = getelementptr inbounds %struct.wsm_set_bssid_filtering, ptr %arg.i, i32 0, i32 1
  %conv.i = zext i1 %spec.select76 to i8
  %38 = ptrtoint ptr %arg.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i, ptr %arg.i, align 1
  %39 = call ptr @memset(ptr %37, i32 0, i32 3)
  %call.i80 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4134, ptr noundef nonnull %arg.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool42.not = icmp eq i32 %call.i80, 0
  br i1 %tobool42.not, label %if.end45, label %if.end41.do.end_crit_edge

if.end41.do.end_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end45:                                         ; preds = %if.end41
  %multicast_filter = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 49
  %call.i81 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4, ptr noundef %multicast_filter, i32 noundef 56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool46.not = icmp eq i32 %call.i81, 0
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %if.end45.do.end_crit_edge

if.end45.do.end_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end45.do.end_crit_edge, %if.end41.do.end_crit_edge, %if.end36.do.end_crit_edge, %if.end32.do.end_crit_edge, %wsm_set_rx_filter.exit.do.end_crit_edge
  %ret.390 = phi i32 [ %call.i81, %if.end45.do.end_crit_edge ], [ %call.i80, %if.end41.do.end_crit_edge ], [ %call.i79, %if.end36.do.end_crit_edge ], [ %call.i77, %if.end32.do.end_crit_edge ], [ %call.i, %wsm_set_rx_filter.exit.do.end_crit_edge ]
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %ret.390) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end45.cleanup_crit_edge, %land.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_update_filtering_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1240
  tail call void @cw1200_update_filtering(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_set_beacon_wakeup_period_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca %struct.anon.151, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_int = getelementptr i8, ptr %work, i32 -112
  %0 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beacon_int, align 4
  %join_dtim_period = getelementptr i8, ptr %work, i32 1540
  %2 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %join_dtim_period, align 4
  %mul = mul i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul)
  %cmp = icmp sgt i32 %mul, 1000
  %spec.select = select i1 %cmp, i32 1, i32 %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %4 = getelementptr inbounds %struct.anon.151, ptr %val.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.151, ptr %val.i, i32 0, i32 2
  %conv.i = trunc i32 %spec.select to i8
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %val.i, align 2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %spec.select)
  %cmp.i = icmp ugt i32 %spec.select, 255
  br i1 %cmp.i, label %entry.wsm_set_beacon_wakeup_period.exit_crit_edge, label %if.else.i

entry.wsm_set_beacon_wakeup_period.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %wsm_set_beacon_wakeup_period.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %work, i32 -1284
  %call.i = call i32 @wsm_write_mib(ptr noundef %add.ptr, i16 noundef zeroext 4103, ptr noundef nonnull %val.i, i32 noundef 4) #11
  br label %wsm_set_beacon_wakeup_period.exit

wsm_set_beacon_wakeup_period.exit:                ; preds = %if.else.i, %entry.wsm_set_beacon_wakeup_period.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @cw1200_prepare_multicast(ptr nocapture noundef readonly %hw, ptr noundef readonly %mc_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %has_multicast_subscription = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 50
  %multicast_filter = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 49
  %count2 = getelementptr inbounds %struct.netdev_hw_addr_list, ptr %mc_list, i32 0, i32 1
  %2 = call ptr @memset(ptr %multicast_filter, i32 0, i32 57)
  %3 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp sgt i32 %4, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.060 = load ptr, ptr %mc_list, align 4
  %cmp5.not61 = icmp eq ptr %ha.060, %mc_list
  br i1 %cmp5.not61, label %for.cond.preheader.if.end33_crit_edge, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

for.cond.preheader.if.end33_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.body:                                          ; preds = %if.end23.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %ha.063 = phi ptr [ %ha.0, %if.end23.do.body_crit_edge ], [ %ha.060, %for.cond.preheader.do.body_crit_edge ]
  %count.062 = phi i32 [ %inc, %if.end23.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_prepare_multicast.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_prepare_multicast, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !284

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.063, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_prepare_multicast.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.18, ptr noundef %addr) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %arrayidx = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 49, i32 2, i32 %count.062
  %addr13 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.063, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %arrayidx, ptr %addr13, i32 6)
  %7 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr13, align 4
  %xor.i = xor i32 %8, 16801280
  %add.ptr.i = getelementptr %struct.netdev_hw_addr, ptr %ha.063, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %xor37.i = xor i16 %10, 1
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %do.end.if.end23_crit_edge, label %land.lhs.true

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true:                                    ; preds = %do.end
  %xor37.i55 = xor i16 %10, 1
  %xor3.i56 = zext i16 %xor37.i55 to i32
  %11 = or i32 %8, %xor3.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 858980352, i32 %11)
  %cmp.i58 = icmp eq i32 %11, 858980352
  br i1 %cmp.i58, label %land.lhs.true.if.end23_crit_edge, label %if.then21

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %has_multicast_subscription to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %has_multicast_subscription, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge, %do.end.if.end23_crit_edge
  %inc = add i32 %count.062, 1
  %13 = ptrtoint ptr %ha.063 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0 = load ptr, ptr %ha.063, align 4
  %cmp5.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp5.not, label %for.end, label %if.end23.do.body_crit_edge

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool29.not = icmp eq i32 %inc, 0
  br i1 %tobool29.not, label %for.end.if.end33_crit_edge, label %if.then30

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %multicast_filter to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 16777216, ptr %multicast_filter, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %inc)
  %num_addrs = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 49, i32 1
  %16 = ptrtoint ptr %num_addrs to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %num_addrs, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %for.end.if.end33_crit_edge, %for.cond.preheader.if.end33_crit_edge
  %17 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count2, align 4
  %conv = sext i32 %18 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.end33 ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_configure_filter(ptr nocapture noundef readonly %dev, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) local_unnamed_addr #0 align 64 {
entry:
  %reset.i.i = alloca %struct.wsm_reset, align 8
  %start.i.i = alloca %struct.wsm_start, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_flags, align 4
  %and = and i32 %3, 336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %and3 = and i32 %3, 340
  %4 = ptrtoint ptr %total_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and3, ptr %total_flags, align 4
  %scan = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85
  tail call void @down(ptr noundef %scan) #11
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %rx_filter = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %rx_filter, align 1
  %6 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_flags, align 4
  %and4 = and i32 %7, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5 = icmp ne i32 %and4, 0
  %bssid = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 48, i32 1
  %frombool8 = zext i1 %tobool5 to i8
  %8 = ptrtoint ptr %bssid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool8, ptr %bssid, align 1
  %9 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_flags, align 4
  %fcs = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 48, i32 2
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %fcs to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %fcs, align 1
  %15 = load i32, ptr %total_flags, align 4
  %and15 = and i32 %15, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %disable_beacon_filter = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 51
  %frombool18 = zext i1 %tobool16.not to i8
  %16 = ptrtoint ptr %disable_beacon_filter to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool18, ptr %disable_beacon_filter, align 2
  %listening19 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 47
  %17 = ptrtoint ptr %listening19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %listening19, align 4, !range !283
  %19 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %19)
  %cmp.not = icmp eq i8 %18, %19
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %20 = ptrtoint ptr %listening19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %listening19, align 4
  tail call void @wsm_lock_tx(ptr noundef %1) #11
  %join_status.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %21 = ptrtoint ptr %join_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %join_status.i, align 4
  br i1 %tobool, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.cw1200_update_listening.exit_crit_edge

if.then.i.cw1200_update_listening.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_update_listening.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %start.i.i) #11
  %23 = getelementptr inbounds i8, ptr %start.i.i, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 44)
  %25 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %start.i.i, align 4
  %26 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 100, ptr %26, align 4
  %28 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %28, align 4
  %30 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 15, ptr %30, align 4
  %channel.i.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 25
  %32 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channel.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.then1.i.cw1200_enable_listening.exit.i_crit_edge, label %if.then.i.i

if.then1.i.cw1200_enable_listening.exit.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_enable_listening.exit.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 1
  %conv.i.i = zext i1 %cmp.i.i to i8
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hw_value.i.i, align 2
  br label %cw1200_enable_listening.exit.i

cw1200_enable_listening.exit.i:                   ; preds = %if.then.i.i, %if.then1.i.cw1200_enable_listening.exit.i_crit_edge
  %conv.sink.i.i = phi i8 [ %conv.i.i, %if.then.i.i ], [ 0, %if.then1.i.cw1200_enable_listening.exit.i_crit_edge ]
  %.sink.i.i = phi i16 [ %37, %if.then.i.i ], [ 1, %if.then1.i.cw1200_enable_listening.exit.i_crit_edge ]
  %38 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.sink.i.i, ptr %38, align 1
  %40 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %.sink.i.i, ptr %40, align 2
  %call.i.i = call i32 @wsm_start(ptr noundef %1, ptr noundef nonnull %start.i.i) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %start.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %cw1200_enable_listening.exit.i.if.end17.sink.split.sink.split.i_crit_edge, label %cw1200_enable_listening.exit.i.if.end17.sink.split.i_crit_edge

cw1200_enable_listening.exit.i.if.end17.sink.split.i_crit_edge: ; preds = %cw1200_enable_listening.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.i

cw1200_enable_listening.exit.i.if.end17.sink.split.sink.split.i_crit_edge: ; preds = %cw1200_enable_listening.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.sink.split.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp8.i = icmp eq i32 %22, 1
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i.cw1200_update_listening.exit_crit_edge

if.else.i.cw1200_update_listening.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_update_listening.exit

if.then9.i:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset.i.i) #11
  %42 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 16777216, ptr %reset.i.i, align 8
  %call.i25.i = call i32 @wsm_reset(ptr noundef %1, ptr noundef nonnull %reset.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool11.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.if.end17.sink.split.sink.split.i_crit_edge, label %if.then9.i.if.end17.sink.split.i_crit_edge

if.then9.i.if.end17.sink.split.i_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.i

if.then9.i.if.end17.sink.split.sink.split.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.sink.split.i

if.end17.sink.split.sink.split.i:                 ; preds = %if.then9.i.if.end17.sink.split.sink.split.i_crit_edge, %cw1200_enable_listening.exit.i.if.end17.sink.split.sink.split.i_crit_edge
  %.sink26.i = phi i32 [ 1, %cw1200_enable_listening.exit.i.if.end17.sink.split.sink.split.i_crit_edge ], [ 0, %if.then9.i.if.end17.sink.split.sink.split.i_crit_edge ]
  %43 = ptrtoint ptr %join_status.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink26.i, ptr %join_status.i, align 4
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.end17.sink.split.sink.split.i, %if.then9.i.if.end17.sink.split.i_crit_edge, %cw1200_enable_listening.exit.i.if.end17.sink.split.i_crit_edge
  %call15.i = call i32 @wsm_set_probe_responder(ptr noundef %1, i1 noundef zeroext %tobool) #11
  br label %cw1200_update_listening.exit

cw1200_update_listening.exit:                     ; preds = %if.end17.sink.split.i, %if.else.i.cw1200_update_listening.exit_crit_edge, %if.then.i.cw1200_update_listening.exit_crit_edge
  call void @wsm_unlock_tx(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %cw1200_update_listening.exit, %entry.if.end_crit_edge
  call void @cw1200_update_filtering(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  call void @up(ptr noundef %scan) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_conf_tx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %conv = zext i16 %queue to i32
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queues, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %queue)
  %cmp = icmp ugt i16 %3, %queue
  br i1 %cmp, label %if.then, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then:                                          ; preds = %entry
  %uapsd_info = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %uapsd_info to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %uapsd_info, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool = icmp ne i16 %5, 0
  %tx_queue_params = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 27
  %arrayidx = getelementptr [4 x %struct.wsm_set_tx_queue_params], ptr %tx_queue_params, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 4
  %allowedMediumTime = getelementptr [4 x %struct.wsm_set_tx_queue_params], ptr %tx_queue_params, i32 0, i32 %conv, i32 1
  %7 = ptrtoint ptr %allowedMediumTime to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %allowedMediumTime, align 2
  %maxTransmitLifetime = getelementptr [4 x %struct.wsm_set_tx_queue_params], ptr %tx_queue_params, i32 0, i32 %conv, i32 2
  %8 = ptrtoint ptr %maxTransmitLifetime to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %maxTransmitLifetime, align 4
  %conv9 = trunc i16 %queue to i8
  %call = tail call i32 @wsm_set_tx_queue_params(ptr noundef %1, ptr noundef %arrayidx, i8 noundef zeroext %conv9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %do.body12, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body12:                                        ; preds = %if.then
  %edca = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 26
  %arrayidx16 = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %edca, i32 0, i32 %conv
  %cw_min = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cw_min, align 2
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx16, align 4
  %cw_max = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %12 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cw_max, align 2
  %cwmax = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %edca, i32 0, i32 %conv, i32 1
  %14 = ptrtoint ptr %cwmax to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %cwmax, align 2
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %15 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %aifs, align 2
  %conv17 = zext i8 %16 to i16
  %aifns = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %edca, i32 0, i32 %conv, i32 2
  %17 = ptrtoint ptr %aifns to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv17, ptr %aifns, align 4
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %params, align 2
  %mul = shl i16 %19, 5
  %txop_limit = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %edca, i32 0, i32 %conv, i32 3
  %20 = ptrtoint ptr %txop_limit to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %mul, ptr %txop_limit, align 2
  %max_rx_lifetime = getelementptr [4 x %struct.wsm_edca_queue_params], ptr %edca, i32 0, i32 %conv, i32 4
  %21 = ptrtoint ptr %max_rx_lifetime to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 200, ptr %max_rx_lifetime, align 4
  %uapsd = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 5
  %22 = ptrtoint ptr %uapsd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %uapsd, align 2, !range !283
  %arrayidx23 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 1, i32 %conv
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx23, align 1
  %call28 = tail call i32 @wsm_set_edca_params(ptr noundef %1, ptr noundef %edca) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %do.body12.out_crit_edge

do.body12.out_crit_edge:                          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end31:                                         ; preds = %do.body12
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp32 = icmp eq i32 %26, 2
  br i1 %cmp32, label %if.then34, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then34:                                        ; preds = %if.end31
  %uapsd_enable.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 1
  %27 = ptrtoint ptr %uapsd_enable.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %uapsd_enable.i, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  %spec.select.i = select i1 %tobool.not.i, i16 0, i16 8
  %arrayidx3.i = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3.i, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool4.not.i = icmp eq i8 %30, 0
  %31 = or i16 %spec.select.i, 4
  %uapsd_flags.1.i = select i1 %tobool4.not.i, i16 %spec.select.i, i16 %31
  %arrayidx11.i = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx11.i, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool12.not.i = icmp eq i8 %33, 0
  %34 = or i16 %uapsd_flags.1.i, 2
  %uapsd_flags.2.i = select i1 %tobool12.not.i, i16 %uapsd_flags.1.i, i16 %34
  %arrayidx19.i = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 26, i32 1, i32 3
  %35 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx19.i, align 1, !range !283
  %37 = zext i8 %36 to i16
  %uapsd_flags.3.i = or i16 %uapsd_flags.2.i, %37
  %38 = shl nuw nsw i16 %uapsd_flags.3.i, 8
  %39 = ptrtoint ptr %uapsd_info to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %uapsd_info, align 4
  %min_auto_trigger_interval.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60, i32 1
  %40 = ptrtoint ptr %min_auto_trigger_interval.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %min_auto_trigger_interval.i, align 2
  %max_auto_trigger_interval.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60, i32 2
  %41 = ptrtoint ptr %max_auto_trigger_interval.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %max_auto_trigger_interval.i, align 4
  %auto_trigger_step.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60, i32 3
  %42 = ptrtoint ptr %auto_trigger_step.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %auto_trigger_step.i, align 2
  %call.i.i = tail call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4115, ptr noundef %uapsd_info, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool37.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool37.not, label %land.lhs.true, label %if.then34.out_crit_edge

if.then34.out_crit_edge:                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true:                                    ; preds = %if.then34
  %setbssparams_done = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 61
  %43 = ptrtoint ptr %setbssparams_done to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %setbssparams_done, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool38.not = icmp eq i8 %44, 0
  br i1 %tobool38.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true40

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true40:                                  ; preds = %land.lhs.true
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %45 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp41 = icmp eq i32 %46, 4
  br i1 %cmp41, label %land.lhs.true43, label %land.lhs.true40.out_crit_edge

land.lhs.true40.out_crit_edge:                    ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %47 = ptrtoint ptr %uapsd_info to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %uapsd_info, align 4
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %50 = zext i1 %tobool to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %50)
  %cmp49.not = icmp eq i16 %49, %50
  br i1 %cmp49.not, label %land.lhs.true43.out_crit_edge, label %if.then51

land.lhs.true43.out_crit_edge:                    ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then51:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  %powersave_mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 31
  %call52 = tail call i32 @cw1200_set_pm(ptr noundef %1, ptr noundef %powersave_mode)
  br label %out

out:                                              ; preds = %if.then51, %land.lhs.true43.out_crit_edge, %land.lhs.true40.out_crit_edge, %land.lhs.true.out_crit_edge, %if.then34.out_crit_edge, %if.end31.out_crit_edge, %do.body12.out_crit_edge, %if.then.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %if.then34.out_crit_edge ], [ %call52, %if.then51 ], [ 0, %land.lhs.true43.out_crit_edge ], [ 0, %land.lhs.true40.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.end31.out_crit_edge ], [ -22, %if.then.out_crit_edge ], [ -22, %do.body12.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_set_tx_queue_params(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cw1200_get_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stats) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %stats2 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %stats, ptr %stats2, i32 16)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_set_pm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_set_key(ptr nocapture noundef readonly %dev, i32 noundef %cmd, ptr nocapture noundef readnone %vif, ptr noundef readonly %sta, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca %struct.ieee80211_key_seq, align 4
  %wsm_key193 = alloca %struct.wsm_remove_key, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq) #11
  %2 = call ptr @memset(ptr %seq, i32 255, i32 20)
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %cmd, label %do.end210 [
    i32 0, label %if.then
    i32 1, label %if.then192
  ]

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 8
  %6 = and i16 %5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  %call = tail call i32 @cw1200_alloc_key(ptr noundef %1) #11
  %arrayidx = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 111, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.finally_crit_edge, label %if.end

if.then.finally_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %finally

if.end:                                           ; preds = %if.then
  %tobool5.not = icmp eq ptr %sta, null
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %spec.select = select i1 %tobool5.not, ptr null, ptr %addr
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 8
  %9 = or i16 %8, 160
  store i16 %9, ptr %flags, align 8
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %10 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cipher, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %11, label %do.end [
    i32 1027073, label %if.end.sw.bb_crit_edge
    i32 1027077, label %if.end.sw.bb_crit_edge323
    i32 1027074, label %sw.bb36
    i32 1027076, label %sw.bb104
    i32 1339905, label %sw.bb150
  ]

if.end.sw.bb_crit_edge323:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge323
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %13 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %keylen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %14)
  %cmp12 = icmp ugt i8 %14, 16
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cw1200_free_key(ptr noundef %1, i32 noundef %call) #11
  br label %finally

if.end15:                                         ; preds = %sw.bb
  br i1 %tobool.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx, align 1
  %16 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 111, i32 %call, i32 3
  %17 = call ptr @memcpy(ptr %16, ptr %spec.select, i32 6)
  %keydata = getelementptr inbounds %struct.anon.133, ptr %16, i32 0, i32 3
  %key20 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %18 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %keylen, align 2
  %conv23 = zext i8 %19 to i32
  %20 = call ptr @memcpy(ptr %keydata, ptr %key20, i32 %conv23)
  %21 = load i8, ptr %keylen, align 2
  %keylen25 = getelementptr inbounds %struct.anon.133, ptr %16, i32 0, i32 2
  %22 = ptrtoint ptr %keylen25 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %keylen25, align 1
  br label %sw.epilog

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx, align 1
  %24 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 111, i32 %call, i32 3
  %keydata27 = getelementptr inbounds %struct.anon.134, ptr %24, i32 0, i32 3
  %key29 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %25 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %keylen, align 2
  %conv32 = zext i8 %26 to i32
  %27 = call ptr @memcpy(ptr %keydata27, ptr %key29, i32 %conv32)
  %28 = load i8, ptr %keylen, align 2
  %keylen34 = getelementptr inbounds %struct.anon.134, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %keylen34 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %keylen34, align 1
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %30 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %keyidx, align 1
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %24, align 1
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 0, ptr noundef nonnull %seq) #11
  br i1 %tobool.not, label %if.else52, label %if.then38

if.then38:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %arrayidx, align 1
  %34 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 111, i32 %call, i32 3
  %35 = call ptr @memcpy(ptr %34, ptr %spec.select, i32 6)
  %keydata42 = getelementptr inbounds %struct.anon.135, ptr %34, i32 0, i32 2
  %key44 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %36 = call ptr @memcpy(ptr %keydata42, ptr %key44, i32 16)
  %tx_mic_key = getelementptr inbounds %struct.anon.135, ptr %34, i32 0, i32 4
  %arrayidx48 = getelementptr [0 x i8], ptr %key44, i32 0, i32 16
  %37 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %arrayidx48, align 1
  %39 = ptrtoint ptr %tx_mic_key to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %tx_mic_key, align 1
  %rx_mic_key = getelementptr inbounds %struct.anon.135, ptr %34, i32 0, i32 3
  %arrayidx51 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %40 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %arrayidx51, align 1
  %42 = ptrtoint ptr %rx_mic_key to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %rx_mic_key, align 1
  br label %sw.epilog

if.else52:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp53 = icmp eq i32 %44, 3
  %cond55 = select i1 %cmp53, i32 16, i32 24
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %arrayidx, align 1
  %46 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 111, i32 %call, i32 3
  %key59 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %47 = call ptr @memcpy(ptr %46, ptr %key59, i32 16)
  %rx_mic_key61 = getelementptr inbounds %struct.anon.136, ptr %46, i32 0, i32 1
  %arrayidx64 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8, i32 %cond55
  %48 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %arrayidx64, align 1
  %50 = ptrtoint ptr %rx_mic_key61 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %rx_mic_key61, align 1
  %iv16 = getelementptr inbounds %struct.anon.144, ptr %seq, i32 0, i32 1
  %51 = ptrtoint ptr %iv16 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %iv16, align 4
  %conv67 = trunc i16 %52 to i8
  %rx_seqnum = getelementptr inbounds %struct.anon.136, ptr %46, i32 0, i32 4
  %53 = ptrtoint ptr %rx_seqnum to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv67, ptr %rx_seqnum, align 1
  %54 = load i16, ptr %iv16, align 4
  %55 = lshr i16 %54, 8
  %conv72 = trunc i16 %55 to i8
  %arrayidx74 = getelementptr %struct.anon.136, ptr %46, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv72, ptr %arrayidx74, align 1
  %57 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %seq, align 4
  %conv76 = trunc i32 %58 to i8
  %arrayidx78 = getelementptr %struct.anon.136, ptr %46, i32 0, i32 4, i32 2
  %59 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv76, ptr %arrayidx78, align 1
  %60 = load i32, ptr %seq, align 4
  %shr80 = lshr i32 %60, 8
  %conv82 = trunc i32 %shr80 to i8
  %arrayidx84 = getelementptr %struct.anon.136, ptr %46, i32 0, i32 4, i32 3
  %61 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv82, ptr %arrayidx84, align 1
  %62 = load i32, ptr %seq, align 4
  %shr86 = lshr i32 %62, 16
  %conv88 = trunc i32 %shr86 to i8
  %arrayidx90 = getelementptr %struct.anon.136, ptr %46, i32 0, i32 4, i32 4
  %63 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv88, ptr %arrayidx90, align 1
  %64 = load i32, ptr %seq, align 4
  %shr92 = lshr i32 %64, 24
  %conv94 = trunc i32 %shr92 to i8
  %arrayidx96 = getelementptr %struct.anon.136, ptr %46, i32 0, i32 4, i32 5
  %65 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv94, ptr %arrayidx96, align 1
  %arrayidx98 = getelementptr %struct.anon.136, ptr %46, i32 0, i32 4, i32 6
  %66 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx98, align 1
  %arrayidx100 = getelementptr %struct.anon.136, ptr %46, i32 0, i32 4, i32 7
  %67 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx100, align 1
  %keyidx101 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %68 = ptrtoint ptr %keyidx101 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %keyidx101, align 1
  %keyid102 = getelementptr inbounds %struct.anon.136, ptr %46, i32 0, i32 2
  %70 = ptrtoint ptr %keyid102 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %keyid102, align 1
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.end
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 0, ptr noundef nonnull %seq) #11
  br i1 %tobool.not, label %if.else114, label %if.then106

if.then106:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 5, ptr %arrayidx, align 1
  %72 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 111, i32 %call, i32 3
  %73 = call ptr @memcpy(ptr %72, ptr %spec.select, i32 6)
  %keydata110 = getelementptr inbounds %struct.anon.137, ptr %72, i32 0, i32 2
  %key112 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %74 = call ptr @memcpy(ptr %keydata110, ptr %key112, i32 16)
  br label %sw.epilog

if.else114:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %arrayidx, align 1
  %76 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 111, i32 %call, i32 3
  %key118 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %77 = call ptr @memcpy(ptr %76, ptr %key118, i32 16)
  %arrayidx120 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 5
  %78 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx120, align 1
  %rx_seqnum121 = getelementptr inbounds %struct.anon.138, ptr %76, i32 0, i32 3
  %80 = ptrtoint ptr %rx_seqnum121 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %rx_seqnum121, align 1
  %arrayidx124 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 4
  %81 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx124, align 4
  %arrayidx126 = getelementptr %struct.anon.138, ptr %76, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx126, align 1
  %arrayidx128 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx128, align 1
  %arrayidx130 = getelementptr %struct.anon.138, ptr %76, i32 0, i32 3, i32 2
  %86 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx130, align 1
  %arrayidx132 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx132, align 2
  %arrayidx134 = getelementptr %struct.anon.138, ptr %76, i32 0, i32 3, i32 3
  %89 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx134, align 1
  %arrayidx136 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 1
  %90 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx136, align 1
  %arrayidx138 = getelementptr %struct.anon.138, ptr %76, i32 0, i32 3, i32 4
  %92 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx138, align 1
  %93 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %seq, align 4
  %arrayidx142 = getelementptr %struct.anon.138, ptr %76, i32 0, i32 3, i32 5
  %95 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx142, align 1
  %arrayidx144 = getelementptr %struct.anon.138, ptr %76, i32 0, i32 3, i32 6
  %96 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx144, align 1
  %arrayidx146 = getelementptr %struct.anon.138, ptr %76, i32 0, i32 3, i32 7
  %97 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx146, align 1
  %keyidx147 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %98 = ptrtoint ptr %keyidx147 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %keyidx147, align 1
  %keyid148 = getelementptr inbounds %struct.anon.138, ptr %76, i32 0, i32 1
  %100 = ptrtoint ptr %keyid148 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %keyid148, align 1
  br label %sw.epilog

sw.bb150:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.else165, label %if.then152

if.then152:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 7, ptr %arrayidx, align 1
  %102 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 111, i32 %call, i32 3
  %103 = call ptr @memcpy(ptr %102, ptr %spec.select, i32 6)
  %keydata156 = getelementptr inbounds %struct.anon.139, ptr %102, i32 0, i32 3
  %key158 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %104 = call ptr @memcpy(ptr %keydata156, ptr %key158, i32 16)
  %mic_key = getelementptr inbounds %struct.anon.139, ptr %102, i32 0, i32 4
  %arrayidx162 = getelementptr [0 x i8], ptr %key158, i32 0, i32 16
  %105 = call ptr @memcpy(ptr %mic_key, ptr %arrayidx162, i32 16)
  %keyidx163 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %106 = ptrtoint ptr %keyidx163 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %keyidx163, align 1
  %keyid164 = getelementptr inbounds %struct.anon.139, ptr %102, i32 0, i32 1
  %108 = ptrtoint ptr %keyid164 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %keyid164, align 1
  br label %sw.epilog

if.else165:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 6, ptr %arrayidx, align 1
  %110 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 111, i32 %call, i32 3
  %key169 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %111 = call ptr @memcpy(ptr %110, ptr %key169, i32 16)
  %mic_key171 = getelementptr inbounds %struct.anon.140, ptr %110, i32 0, i32 1
  %arrayidx174 = getelementptr [0 x i8], ptr %key169, i32 0, i32 16
  %112 = call ptr @memcpy(ptr %mic_key171, ptr %arrayidx174, i32 16)
  %keyidx175 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %113 = ptrtoint ptr %keyidx175 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %keyidx175, align 1
  %keyid176 = getelementptr inbounds %struct.anon.140, ptr %110, i32 0, i32 2
  %115 = ptrtoint ptr %keyid176 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %keyid176, align 1
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %11) #14
  tail call void @cw1200_free_key(ptr noundef %1, i32 noundef %call) #11
  br label %finally

sw.epilog:                                        ; preds = %if.else165, %if.then152, %if.else114, %if.then106, %if.else52, %if.then38, %if.else, %if.then17
  %call180 = call i32 @wsm_add_key(ptr noundef %1, ptr noundef %arrayidx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then182, label %if.else184

if.then182:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %conv183 = trunc i32 %call to i8
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %116 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv183, ptr %hw_key_idx, align 2
  br label %finally

if.else184:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call void @cw1200_free_key(ptr noundef %1, i32 noundef %call) #11
  br label %finally

if.then192:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wsm_key193) #11
  %hw_key_idx194 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %117 = ptrtoint ptr %hw_key_idx194 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %hw_key_idx194, align 2
  %119 = ptrtoint ptr %wsm_key193 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %wsm_key193, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %118)
  %cmp197 = icmp ugt i8 %118, 10
  br i1 %cmp197, label %if.then192.cleanup204_crit_edge, label %if.end200

if.then192.cleanup204_crit_edge:                  ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup204

if.end200:                                        ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  %conv196 = zext i8 %118 to i32
  tail call void @cw1200_free_key(ptr noundef %1, i32 noundef %conv196) #11
  %call203 = call i32 @wsm_remove_key(ptr noundef %1, ptr noundef nonnull %wsm_key193) #11
  br label %cleanup204

cleanup204:                                       ; preds = %if.end200, %if.then192.cleanup204_crit_edge
  %ret.1 = phi i32 [ %call203, %if.end200 ], [ -22, %if.then192.cleanup204_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wsm_key193) #11
  br label %finally

do.end210:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %cmd) #14
  br label %finally

finally:                                          ; preds = %do.end210, %cleanup204, %if.else184, %if.then182, %do.end, %if.then14, %if.then.finally_crit_edge
  %ret.2 = phi i32 [ %ret.1, %cleanup204 ], [ -95, %do.end210 ], [ -95, %do.end ], [ -22, %if.then14 ], [ -22, %if.then.finally_crit_edge ], [ %call180, %if.else184 ], [ 0, %if.then182 ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq) #11
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_alloc_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_free_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_key_rx_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_add_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_remove_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_wep_key_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %wep_default_key_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_frame_id = getelementptr i8, ptr %work, i32 -208
  %0 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_frame_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wep_default_key_id) #11
  %wep_default_key_id1 = getelementptr i8, ptr %work, i32 -3
  %2 = ptrtoint ptr %wep_default_key_id1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wep_default_key_id1, align 1
  %conv = sext i8 %3 to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %5 = ptrtoint ptr %wep_default_key_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %wep_default_key_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_wep_key_work.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_wep_key_work, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %wep_default_key_id1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wep_default_key_id1, align 1
  %conv7 = sext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_wep_key_work.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.25, i32 noundef %conv7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shr.i = lshr i32 %1, 16
  %add.ptr = getelementptr i8, ptr %work, i32 -2832
  %tx_queue = getelementptr i8, ptr %work, i32 -2664
  %idxprom = and i32 %shr.i, 255
  %arrayidx = getelementptr [4 x %struct.cw1200_queue], ptr %tx_queue, i32 0, i32 %idxprom
  %call8 = tail call zeroext i1 @wsm_flush_tx(ptr noundef %add.ptr) #11
  %call9 = call i32 @wsm_write_mib(ptr noundef %add.ptr, i16 noundef zeroext 5, ptr noundef nonnull %wep_default_key_id, i32 noundef 4) #11
  %8 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending_frame_id, align 4
  %call11 = call i32 @cw1200_queue_requeue(ptr noundef %arrayidx, i32 noundef %9) #11
  call void @wsm_unlock_tx(ptr noundef %add.ptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wep_default_key_id) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wsm_flush_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_write_mib(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_requeue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %val32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #11
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %value)
  %cmp2.not = icmp eq i32 %value, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %value)
  %storemerge = select i1 %cmp2.not, i32 0, i32 %4
  %5 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %val32, align 4
  %rts_threshold = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 67
  %6 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rts_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %value)
  %cmp5 = icmp eq i32 %7, %value
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_set_rts_threshold.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_set_rts_threshold, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !284

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rts_threshold, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_set_rts_threshold.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.27, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %call13 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 7, ptr noundef nonnull %val32, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %value, ptr %rts_threshold, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call13, %do.end.cleanup_crit_edge ], [ 0, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_flush(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %enable_beacon = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_beacon, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %spec.select = or i1 %tobool.not, %drop
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %drop.addr.0.shrunk = phi i1 [ %drop, %entry.sw.epilog_crit_edge ], [ true, %sw.bb ], [ %spec.select, %sw.bb2 ]
  %call = tail call fastcc i32 @__cw1200_flush(ptr noundef %1, i1 noundef zeroext %drop.addr.0.shrunk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %sw.epilog.if.end6_crit_edge

sw.epilog.if.end6_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wsm_unlock_tx(ptr noundef %1) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %sw.epilog.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_free_event_queue(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %event_queue_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 129
  call void @_raw_spin_lock(ptr noundef %event_queue_lock) #11
  %event_queue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 130
  %3 = ptrtoint ptr %event_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %event_queue, align 4
  %cmp.i.not.i = icmp eq ptr %4, %event_queue
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 130, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %event_queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %event_queue, ptr %event_queue, align 4
  store ptr %event_queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %event_queue_lock) #11
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %cmp.not18.i = icmp eq ptr %14, %list
  br i1 %cmp.not18.i, label %list_splice_init.exit.__cw1200_free_event_queue.exit_crit_edge, label %list_splice_init.exit.for.body.i_crit_edge

list_splice_init.exit.for.body.i_crit_edge:       ; preds = %list_splice_init.exit
  br label %for.body.i

list_splice_init.exit.__cw1200_free_event_queue.exit_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_free_event_queue.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %list_splice_init.exit.for.body.i_crit_edge
  %event.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %14, %list_splice_init.exit.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %event.019.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.0.i = load ptr, ptr %event.019.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %event.019.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %event.019.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %event.019.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %event.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %event.019.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %event.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %event.019.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %event.019.i) #11
  %cmp.not.i = icmp eq ptr %tmp.0.i, %list
  br i1 %cmp.not.i, label %list_del.exit.i.__cw1200_free_event_queue.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.__cw1200_free_event_queue.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_free_event_queue.exit

__cw1200_free_event_queue.exit:                   ; preds = %list_del.exit.i.__cw1200_free_event_queue.exit_crit_edge, %list_splice_init.exit.__cw1200_free_event_queue.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_event_handler(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4268
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %event_queue_lock = getelementptr i8, ptr %work, i32 -52
  call void @_raw_spin_lock(ptr noundef %event_queue_lock) #11
  %event_queue = getelementptr i8, ptr %work, i32 -8
  %3 = ptrtoint ptr %event_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %event_queue, align 4
  %cmp.i.not.i = icmp eq ptr %4, %event_queue
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %event_queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %event_queue, ptr %event_queue, align 4
  store ptr %event_queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %event_queue_lock) #11
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %event.0125 = load ptr, ptr %list, align 4
  %cmp.not126 = icmp eq ptr %event.0125, %list
  br i1 %cmp.not126, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %cqm_use_rssi = getelementptr i8, ptr %work, i32 -3172
  %cqm_rssi_thold = getelementptr i8, ptr %work, i32 -3180
  %vif = getelementptr i8, ptr %work, i32 -4264
  %bss_loss_lock.i118 = getelementptr i8, ptr %work, i32 144
  %delayed_link_loss.i = getelementptr i8, ptr %work, i32 196
  %bss_params_work.i = getelementptr i8, ptr %work, i32 200
  %bss_loss_state.i = getelementptr i8, ptr %work, i32 188
  %tx_lock.i = getelementptr i8, ptr %work, i32 -1656
  %delayed_unjoin.i = getelementptr i8, ptr %work, i32 -1440
  %bss_loss_work36.i = getelementptr i8, ptr %work, i32 44
  %unjoin_work41 = getelementptr i8, ptr %work, i32 -1536
  %scan = getelementptr i8, ptr %work, i32 -2612
  %workqueue = getelementptr i8, ptr %work, i32 -4196
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %event.0127 = phi ptr [ %event.0125, %for.body.lr.ph ], [ %event.0, %for.inc.for.body_crit_edge ]
  %evt = getelementptr inbounds %struct.cw1200_wsm_event, ptr %event.0127, i32 0, i32 1
  %14 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %evt, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %15, label %for.body.for.inc_crit_edge [
    i32 0, label %do.end
    i32 1, label %do.body8
    i32 2, label %do.body25
    i32 3, label %do.end46
    i32 4, label %sw.bb47
    i32 5, label %do.end75
    i32 6, label %do.end81
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  br label %for.inc

do.body8:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_event_handler.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_event_handler, %if.then)) #11
          to label %do.end15 [label %if.then], !srcloc !284

if.then:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_event_handler.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.30) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then, %do.body8
  %call16 = call zeroext i1 @cancel_work_sync(ptr noundef %unjoin_work41) #11
  %call17 = call i32 @down_trylock(ptr noundef %scan) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_lock(ptr noundef %bss_loss_lock.i118) #11
  call void @__cw1200_cqm_bssloss_sm(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @_raw_spin_unlock(ptr noundef %bss_loss_lock.i118) #11
  call void @up(ptr noundef %scan) #11
  br label %for.inc

if.else:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %delayed_link_loss.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %delayed_link_loss.i, align 4
  %18 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %workqueue, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %bss_loss_work36.i, i32 noundef 500) #11
  br label %for.inc

do.body25:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_event_handler.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_event_handler, %if.then37)) #11
          to label %do.end40 [label %if.then37], !srcloc !284

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_event_handler.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.31) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25
  call void @_raw_spin_lock(ptr noundef %bss_loss_lock.i118) #11
  %20 = ptrtoint ptr %delayed_link_loss.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %delayed_link_loss.i, align 4
  %call.i119 = call zeroext i1 @cancel_work_sync(ptr noundef %bss_params_work.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_event_handler, %if.then.i121)) #11
          to label %do.end.i [label %if.then.i121], !srcloc !284

if.then.i121:                                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %bss_loss_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bss_loss_state.i, align 4
  %call.i.i.i120 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_lock.i, i32 noundef 4) #11
  %23 = ptrtoint ptr %tx_lock.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %tx_lock.i, align 4
  %25 = ptrtoint ptr %delayed_unjoin.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %delayed_unjoin.i, align 4, !range !283
  %27 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.5, i32 noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %24, i32 noundef %27) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i121, %do.end40
  %28 = ptrtoint ptr %delayed_unjoin.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %delayed_unjoin.i, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool7.not.i = icmp eq i8 %29, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i.__cw1200_cqm_bssloss_sm.exit_crit_edge

do.end.i.__cw1200_cqm_bssloss_sm.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_cqm_bssloss_sm.exit

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call37.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bss_loss_work36.i) #11
  %30 = ptrtoint ptr %bss_loss_state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bss_loss_state.i, align 4
  br label %__cw1200_cqm_bssloss_sm.exit

__cw1200_cqm_bssloss_sm.exit:                     ; preds = %if.end9.i, %do.end.i.__cw1200_cqm_bssloss_sm.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %bss_loss_lock.i118) #11
  %call42 = call zeroext i1 @cancel_work_sync(ptr noundef %unjoin_work41) #11
  br label %for.inc

do.end46:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33) #14
  br label %for.inc

sw.bb47:                                          ; preds = %for.body
  %data = getelementptr inbounds %struct.cw1200_wsm_event, ptr %event.0127, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data, align 4
  %37 = ptrtoint ptr %cqm_use_rssi to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cqm_use_rssi, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool49.not = icmp eq i8 %38, 0
  %sext = shl i32 %36, 24
  %conv51 = ashr exact i32 %sext, 24
  %and = lshr i32 %36, 1
  %div111 = and i32 %and, 127
  %sub = add nsw i32 %div111, -110
  %rcpi_rssi.0 = select i1 %tobool49.not, i32 %sub, i32 %conv51
  %39 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cqm_rssi_thold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rcpi_rssi.0, i32 %40)
  %cmp54.not = icmp sgt i32 %rcpi_rssi.0, %40
  %cond = zext i1 %cmp54.not to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_event_handler.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_event_handler, %if.then68)) #11
          to label %do.end71 [label %if.then68], !srcloc !284

if.then68:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_event_handler.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.36, i32 noundef %rcpi_rssi.0) #11
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %sw.bb47
  %41 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vif, align 4
  call void @ieee80211_cqm_rssi_notify(ptr noundef %42, i32 noundef %cond, i32 noundef %rcpi_rssi.0, i32 noundef 3264) #11
  br label %for.inc

do.end75:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #14
  br label %for.inc

do.end81:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end81, %do.end75, %do.end71, %do.end46, %__cw1200_cqm_bssloss_sm.exit, %if.else, %if.then19, %do.end, %for.body.for.inc_crit_edge
  %43 = ptrtoint ptr %event.0127 to i32
  call void @__asan_load4_noabort(i32 %43)
  %event.0 = load ptr, ptr %event.0127, align 4
  %cmp.not = icmp eq ptr %event.0, %list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %44 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list, align 4
  %cmp.not18.i = icmp eq ptr %45, %list
  br i1 %cmp.not18.i, label %for.end.__cw1200_free_event_queue.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.__cw1200_free_event_queue.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_free_event_queue.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %event.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %45, %for.end.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %event.019.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %tmp.0.i = load ptr, ptr %event.019.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %event.019.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %event.019.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %event.019.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %event.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %53 = ptrtoint ptr %event.019.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %event.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %event.019.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %event.019.i) #11
  %cmp.not.i = icmp eq ptr %tmp.0.i, %list
  br i1 %cmp.not.i, label %list_del.exit.i.__cw1200_free_event_queue.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.__cw1200_free_event_queue.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_free_event_queue.exit

__cw1200_free_event_queue.exit:                   ; preds = %list_del.exit.i.__cw1200_free_event_queue.exit_crit_edge, %for.end.__cw1200_free_event_queue.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_bss_loss_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_loss_work.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_loss_work, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_loss_work.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.44) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @wsm_lock_tx(ptr noundef %add.ptr) #11
  %workqueue = getelementptr i8, ptr %work, i32 -4240
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 4
  %unjoin_work = getelementptr i8, ptr %work, i32 -1580
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %unjoin_work) #11
  br i1 %call.i, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wsm_unlock_tx(ptr noundef %add.ptr) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_bss_params_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4468
  %conf_mutex = getelementptr i8, ptr %work, i32 -4392
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %bss_params = getelementptr i8, ptr %work, i32 -3428
  %0 = ptrtoint ptr %bss_params to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %bss_params, align 4
  %call = tail call i32 @wsm_set_bss_params(ptr noundef %add.ptr, ptr noundef %bss_params) #11
  %1 = ptrtoint ptr %bss_params to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bss_params, align 4
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_set_bss_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_parse_sdd_file(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdd = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %sdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdd, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.ptr49 = getelementptr i8, ptr %3, i32 %5
  %cmp.not10 = icmp ugt ptr %add.ptr7, %add.ptr49
  br i1 %cmp.not10, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %hw_refclk = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 10
  %conf_listen_interval = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 63
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %add.ptr415 = phi ptr [ %add.ptr49, %while.body.lr.ph ], [ %add.ptr4, %sw.epilog.while.body_crit_edge ]
  %add.ptr14 = phi ptr [ %add.ptr7, %while.body.lr.ph ], [ %add.ptr, %sw.epilog.while.body_crit_edge ]
  %p.012 = phi ptr [ %3, %while.body.lr.ph ], [ %add.ptr62, %sw.epilog.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %p.012, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %add.ptr5 = getelementptr i8, ptr %p.012, i32 2
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 %conv
  %cmp12 = icmp ugt ptr %add.ptr6, %add.ptr415
  br i1 %cmp12, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #14
  br label %cleanup83

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %p.012 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %p.012, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %9, label %if.end.sw.epilog_crit_edge [
    i8 -21, label %sw.bb
    i8 -59, label %sw.bb45
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp18 = icmp ult i8 %7, 4
  br i1 %cmp18, label %do.end23, label %if.end26

do.end23:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #14
  br label %sw.epilog

if.end26:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.end26.sw.epilog_crit_edge, label %if.end29

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr30 = getelementptr i8, ptr %p.012, i32 4
  %13 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr30, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = lshr i16 %15, 7
  %17 = trunc i16 %16 to i8
  %conv32 = and i8 %17, 31
  %18 = ptrtoint ptr %conf_listen_interval to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv32, ptr %conf_listen_interval, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_parse_sdd_file.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_parse_sdd_file, %if.then39)) #11
          to label %sw.epilog [label %if.then39], !srcloc !284

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %conf_listen_interval to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %conf_listen_interval, align 2
  %conv41 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_parse_sdd_file.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.85, i32 noundef %conv41) #11
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end
  %21 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr14, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv47 = zext i16 %23 to i32
  %24 = ptrtoint ptr %hw_refclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_refclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv47)
  %cmp48.not = icmp eq i32 %25, %conv47
  br i1 %cmp48.not, label %sw.bb45.sw.epilog_crit_edge, label %do.end53

sw.bb45.sw.epilog_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end53:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %conv47, i32 noundef %25) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end53, %sw.bb45.sw.epilog_crit_edge, %if.then39, %if.end29, %if.end26.sw.epilog_crit_edge, %do.end23, %if.end.sw.epilog_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv61 = zext i8 %27 to i32
  %add = add nuw nsw i32 %conv61, 2
  %add.ptr62 = getelementptr i8, ptr %p.012, i32 %add
  %add.ptr = getelementptr i8, ptr %add.ptr62, i32 2
  %28 = ptrtoint ptr %sdd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdd, align 4
  %data2 = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data2, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %add.ptr4 = getelementptr i8, ptr %31, i32 %33
  %cmp.not = icmp ugt ptr %add.ptr, %add.ptr4
  br i1 %cmp.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  %bt_present = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 62
  %34 = ptrtoint ptr %bt_present to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bt_present, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool63.not = icmp eq i8 %35, 0
  br i1 %tobool63.not, label %do.body65, label %while.end.cleanup83_crit_edge

while.end.cleanup83_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup83

do.body65:                                        ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_parse_sdd_file.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_parse_sdd_file, %if.then77)) #11
          to label %do.end80 [label %if.then77], !srcloc !284

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_parse_sdd_file.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.89) #11
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %do.body65
  %conf_listen_interval81 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 63
  %36 = ptrtoint ptr %conf_listen_interval81 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %conf_listen_interval81, align 2
  br label %cleanup83

cleanup83:                                        ; preds = %do.end80, %while.end.cleanup83_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_configuration(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_join_complete_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2776
  %conf_mutex = getelementptr i8, ptr %work, i32 -2700
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  tail call fastcc void @cw1200_join_complete(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_join_complete(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %start.i.i = alloca %struct.wsm_start, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_join_complete.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_join_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %join_complete_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 104
  %0 = ptrtoint ptr %join_complete_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %join_complete_status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_join_complete.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.91, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %join_pending = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 99
  %2 = ptrtoint ptr %join_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %join_pending, align 4
  %join_complete_status3 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 104
  %3 = ptrtoint ptr %join_complete_status3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %join_complete_status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %5 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %join_status, align 4
  %listening = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 47
  %6 = ptrtoint ptr %listening to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %listening, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.then5.cw1200_update_listening.exit_crit_edge, label %if.then1.i

if.then5.cw1200_update_listening.exit_crit_edge:  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_update_listening.exit

if.then1.i:                                       ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %start.i.i) #11
  %8 = getelementptr inbounds i8, ptr %start.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 44)
  %10 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %start.i.i, align 4
  %11 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %13, align 4
  %15 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 15, ptr %15, align 4
  %channel.i.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 25
  %17 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then1.i.cw1200_enable_listening.exit.i_crit_edge, label %if.then.i.i

if.then1.i.cw1200_enable_listening.exit.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_enable_listening.exit.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 1
  %conv.i.i = zext i1 %cmp.i.i to i8
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_value.i.i, align 2
  br label %cw1200_enable_listening.exit.i

cw1200_enable_listening.exit.i:                   ; preds = %if.then.i.i, %if.then1.i.cw1200_enable_listening.exit.i_crit_edge
  %conv.sink.i.i = phi i8 [ %conv.i.i, %if.then.i.i ], [ 0, %if.then1.i.cw1200_enable_listening.exit.i_crit_edge ]
  %.sink.i.i = phi i16 [ %22, %if.then.i.i ], [ 1, %if.then1.i.cw1200_enable_listening.exit.i_crit_edge ]
  %23 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.sink.i.i, ptr %23, align 1
  %25 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %.sink.i.i, ptr %25, align 2
  %call.i.i = call i32 @wsm_start(ptr noundef %priv, ptr noundef nonnull %start.i.i) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %start.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end17.sink.split.sink.split.i, label %cw1200_enable_listening.exit.i.if.end17.sink.split.i_crit_edge

cw1200_enable_listening.exit.i.if.end17.sink.split.i_crit_edge: ; preds = %cw1200_enable_listening.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.i

if.end17.sink.split.sink.split.i:                 ; preds = %cw1200_enable_listening.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %join_status, align 4
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.end17.sink.split.sink.split.i, %cw1200_enable_listening.exit.i.if.end17.sink.split.i_crit_edge
  %call15.i = call i32 @wsm_set_probe_responder(ptr noundef %priv, i1 noundef zeroext true) #11
  br label %cw1200_update_listening.exit

cw1200_update_listening.exit:                     ; preds = %if.end17.sink.split.i, %if.then5.cw1200_update_listening.exit_crit_edge
  call fastcc void @cw1200_do_unjoin(ptr noundef %priv)
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vif, align 4
  call void @ieee80211_connection_loss(ptr noundef %29) #11
  br label %if.end12

if.else:                                          ; preds = %do.end
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 43
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp eq i32 %31, 1
  %join_status8 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  br i1 %cmp, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %join_status8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %join_status8, align 4
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %join_status8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %join_status8, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then7, %cw1200_update_listening.exit
  call void @wsm_unlock_tx(ptr noundef %priv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_join_complete_cb(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_join_complete_cb.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_join_complete_cb, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_join_complete_cb.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.48, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %join_timeout = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 101
  %call3 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %join_timeout) #11
  br i1 %call3, label %if.then4, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  %join_complete_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 104
  %4 = ptrtoint ptr %join_complete_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %join_complete_status, align 4
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %5 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue, align 4
  %join_complete_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 103
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %join_complete_work) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_join_timeout(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2632
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_join_timeout.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_join_timeout, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_join_timeout.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.50) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @wsm_lock_tx(ptr noundef %add.ptr) #11
  %workqueue = getelementptr i8, ptr %work, i32 -2560
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 4
  %unjoin_work = getelementptr i8, ptr %work, i32 100
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %unjoin_work) #11
  br i1 %call.i, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wsm_unlock_tx(ptr noundef %add.ptr) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_unjoin_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2732
  tail call fastcc void @cw1200_do_unjoin(ptr noundef %add.ptr)
  %vif = getelementptr i8, ptr %work, i32 -2728
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  tail call void @ieee80211_connection_loss(ptr noundef %1) #11
  tail call void @wsm_unlock_tx(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_do_unjoin(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %val.i83 = alloca %struct.wsm_mib_block_ack_policy, align 4
  %reset.i.i = alloca %struct.wsm_reset, align 8
  %start.i.i = alloca %struct.wsm_start, align 4
  %val.i = alloca i32, align 4
  %arg.i = alloca %struct.wsm_keep_alive_period, align 2
  %reset = alloca %struct.wsm_reset, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset) #11
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 16777216, ptr %reset, align 8
  %join_timeout = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 101
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %join_timeout) #11
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %join_pending = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 99
  %1 = ptrtoint ptr %join_pending to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %join_pending, align 4
  %in_progress = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_progress, i32 noundef 4) #11
  %2 = ptrtoint ptr %in_progress to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %delayed_unjoin = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 106
  %4 = ptrtoint ptr %delayed_unjoin to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %delayed_unjoin, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_do_unjoin.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_do_unjoin, %if.then8)) #11
          to label %done [label %if.then8], !srcloc !284

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw1200_do_unjoin.__UNIQUE_ID_ddebug370, ptr noundef %dev, ptr noundef nonnull @.str.93) #11
  br label %done

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %delayed_unjoin to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %delayed_unjoin, align 4
  br label %done

if.end11:                                         ; preds = %entry
  %delayed_link_loss = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 136
  %11 = ptrtoint ptr %delayed_link_loss to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %delayed_link_loss, align 4
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %12 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %join_status, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %13, label %if.end17 [
    i32 0, label %if.end11.done_crit_edge
    i32 6, label %if.end11.done_crit_edge90
  ]

if.end11.done_crit_edge90:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end11.done_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end17:                                         ; preds = %if.end11
  %update_filtering_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 53
  %call18 = tail call zeroext i1 @cancel_work_sync(ptr noundef %update_filtering_work) #11
  %set_beacon_wakeup_period_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 54
  %call19 = tail call zeroext i1 @cancel_work_sync(ptr noundef %set_beacon_wakeup_period_work) #11
  %15 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %join_status, align 4
  %call21 = tail call zeroext i1 @wsm_flush_tx(ptr noundef %priv) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg.i) #11
  %16 = getelementptr inbounds %struct.wsm_keep_alive_period, ptr %arg.i, i32 0, i32 1
  %17 = ptrtoint ptr %arg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %arg.i, align 2
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %16, align 2
  %call.i = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4133, ptr noundef nonnull %arg.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg.i) #11
  %call23 = call i32 @wsm_reset(ptr noundef %priv, ptr noundef nonnull %reset) #11
  %output_power = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 22
  %19 = ptrtoint ptr %output_power to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output_power, align 4
  %mul = mul i32 %20, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %21 = call i32 @llvm.bswap.i32(i32 %mul) #11
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val.i, align 4
  %call.i81 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 6, ptr noundef nonnull %val.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %join_dtim_period = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 105
  %23 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %join_dtim_period, align 4
  %call25 = call i32 @cw1200_setup_mac(ptr noundef %priv)
  call void @cw1200_free_event_queue(ptr noundef %priv)
  %event_handler = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 131
  %call26 = call zeroext i1 @cancel_work_sync(ptr noundef %event_handler) #11
  %listening = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 47
  %24 = ptrtoint ptr %listening to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %listening, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27 = icmp ne i8 %25, 0
  %26 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %join_status, align 4
  br i1 %tobool27, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.cw1200_update_listening.exit_crit_edge

if.then.i.cw1200_update_listening.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_update_listening.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %start.i.i) #11
  %28 = getelementptr inbounds i8, ptr %start.i.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 44)
  %30 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %start.i.i, align 4
  %31 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 100, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %33, align 4
  %35 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 15, ptr %35, align 4
  %channel.i.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 25
  %37 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %channel.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.then1.i.cw1200_enable_listening.exit.i_crit_edge, label %if.then.i.i

if.then1.i.cw1200_enable_listening.exit.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_enable_listening.exit.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 1
  %conv.i.i = zext i1 %cmp.i.i to i8
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %38, i32 0, i32 3
  %41 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hw_value.i.i, align 2
  br label %cw1200_enable_listening.exit.i

cw1200_enable_listening.exit.i:                   ; preds = %if.then.i.i, %if.then1.i.cw1200_enable_listening.exit.i_crit_edge
  %conv.sink.i.i = phi i8 [ %conv.i.i, %if.then.i.i ], [ 0, %if.then1.i.cw1200_enable_listening.exit.i_crit_edge ]
  %.sink.i.i = phi i16 [ %42, %if.then.i.i ], [ 1, %if.then1.i.cw1200_enable_listening.exit.i_crit_edge ]
  %43 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.sink.i.i, ptr %43, align 1
  %45 = getelementptr inbounds %struct.wsm_start, ptr %start.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %.sink.i.i, ptr %45, align 2
  %call.i.i82 = call i32 @wsm_start(ptr noundef %priv, ptr noundef nonnull %start.i.i) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %start.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82)
  %tobool2.not.i = icmp eq i32 %call.i.i82, 0
  br i1 %tobool2.not.i, label %cw1200_enable_listening.exit.i.if.end17.sink.split.sink.split.i_crit_edge, label %cw1200_enable_listening.exit.i.if.end17.sink.split.i_crit_edge

cw1200_enable_listening.exit.i.if.end17.sink.split.i_crit_edge: ; preds = %cw1200_enable_listening.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.i

cw1200_enable_listening.exit.i.if.end17.sink.split.sink.split.i_crit_edge: ; preds = %cw1200_enable_listening.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.sink.split.i

if.else.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp8.i = icmp eq i32 %27, 1
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i.cw1200_update_listening.exit_crit_edge

if.else.i.cw1200_update_listening.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_update_listening.exit

if.then9.i:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset.i.i) #11
  %47 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 16777216, ptr %reset.i.i, align 8
  %call.i25.i = call i32 @wsm_reset(ptr noundef %priv, ptr noundef nonnull %reset.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool11.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.if.end17.sink.split.sink.split.i_crit_edge, label %if.then9.i.if.end17.sink.split.i_crit_edge

if.then9.i.if.end17.sink.split.i_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.i

if.then9.i.if.end17.sink.split.sink.split.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.sink.split.i

if.end17.sink.split.sink.split.i:                 ; preds = %if.then9.i.if.end17.sink.split.sink.split.i_crit_edge, %cw1200_enable_listening.exit.i.if.end17.sink.split.sink.split.i_crit_edge
  %.sink26.i = phi i32 [ 1, %cw1200_enable_listening.exit.i.if.end17.sink.split.sink.split.i_crit_edge ], [ 0, %if.then9.i.if.end17.sink.split.sink.split.i_crit_edge ]
  %48 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink26.i, ptr %join_status, align 4
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.end17.sink.split.sink.split.i, %if.then9.i.if.end17.sink.split.i_crit_edge, %cw1200_enable_listening.exit.i.if.end17.sink.split.i_crit_edge
  %call15.i = call i32 @wsm_set_probe_responder(ptr noundef %priv, i1 noundef zeroext %tobool27) #11
  br label %cw1200_update_listening.exit

cw1200_update_listening.exit:                     ; preds = %if.end17.sink.split.i, %if.else.i.cw1200_update_listening.exit_crit_edge, %if.then.i.cw1200_update_listening.exit_crit_edge
  %bss_loss_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 133
  call void @_raw_spin_lock(ptr noundef %bss_loss_lock.i) #11
  %49 = ptrtoint ptr %delayed_link_loss to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %delayed_link_loss, align 4
  %bss_params_work.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 137
  %call.i85 = call zeroext i1 @cancel_work_sync(ptr noundef %bss_params_work.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_do_unjoin, %if.then.i86)) #11
          to label %do.end.i [label %if.then.i86], !srcloc !284

if.then.i86:                                      ; preds = %cw1200_update_listening.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_state.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %50 = ptrtoint ptr %bss_loss_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bss_loss_state.i, align 4
  %tx_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 95
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tx_lock.i, i32 noundef 4) #11
  %52 = ptrtoint ptr %tx_lock.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %tx_lock.i, align 4
  %delayed_unjoin.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 106
  %54 = ptrtoint ptr %delayed_unjoin.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %delayed_unjoin.i, align 4, !range !283
  %56 = zext i8 %55 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.5, i32 noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %53, i32 noundef %56) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i86, %cw1200_update_listening.exit
  %delayed_unjoin6.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 106
  %57 = ptrtoint ptr %delayed_unjoin6.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %delayed_unjoin6.i, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool7.not.i = icmp eq i8 %58, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i.__cw1200_cqm_bssloss_sm.exit_crit_edge

do.end.i.__cw1200_cqm_bssloss_sm.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_cqm_bssloss_sm.exit

if.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_work36.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 132
  %call37.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bss_loss_work36.i) #11
  %bss_loss_state38.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %59 = ptrtoint ptr %bss_loss_state38.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %bss_loss_state38.i, align 4
  br label %__cw1200_cqm_bssloss_sm.exit

__cw1200_cqm_bssloss_sm.exit:                     ; preds = %if.end9.i, %do.end.i.__cw1200_cqm_bssloss_sm.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %bss_loss_lock.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i83) #11
  %60 = ptrtoint ptr %val.i83 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %val.i83, align 4
  %call.i84 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4110, ptr noundef nonnull %val.i83, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i83) #11
  %disable_beacon_filter = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 51
  %61 = ptrtoint ptr %disable_beacon_filter to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %disable_beacon_filter, align 2
  call void @cw1200_update_filtering(ptr noundef %priv)
  %association_mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 28
  %setbssparams_done = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 61
  %62 = ptrtoint ptr %setbssparams_done to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %setbssparams_done, align 4
  %firmware_ps_mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 32
  %63 = ptrtoint ptr %firmware_ps_mode to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %firmware_ps_mode, align 4
  %64 = call ptr @memset(ptr %association_mode, i32 0, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_do_unjoin.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_do_unjoin, %if.then41)) #11
          to label %done [label %if.then41], !srcloc !284

if.then41:                                        ; preds = %__cw1200_cqm_bssloss_sm.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_do_unjoin.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.94) #11
  br label %done

done:                                             ; preds = %if.then41, %__cw1200_cqm_bssloss_sm.exit, %if.end11.done_crit_edge, %if.end11.done_crit_edge90, %if.else, %if.then8, %do.body
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_connection_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_enable_listening(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %start = alloca %struct.wsm_start, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %start) #11
  %0 = getelementptr inbounds i8, ptr %start, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 44)
  %2 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %start, align 4
  %3 = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %3, align 4
  %5 = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 15, ptr %7, align 4
  %channel = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 25
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channel, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  %conv = zext i1 %cmp to i8
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hw_value, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv.sink = phi i8 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %.sink = phi i16 [ %14, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %15 = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.sink, ptr %15, align 1
  %17 = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink, ptr %17, align 2
  %call = call i32 @wsm_start(ptr noundef %priv, ptr noundef nonnull %start) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %start) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_set_probe_responder(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_sta_add(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %call = tail call i32 @cw1200_find_link_id(ptr noundef %1, ptr noundef %addr) #11
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %drv_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end32, !prof !288

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1552, i32 noundef 9, ptr noundef null) #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.51) #14
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %sub = add i32 %call, -1
  %ps_state_lock = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #11
  %uapsd_queues = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 11
  %9 = ptrtoint ptr %uapsd_queues to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %uapsd_queues, align 1
  %11 = and i8 %10, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %11)
  %cmp34 = icmp eq i8 %11, 15
  br i1 %cmp34, label %if.then36, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %drv_priv, align 4
  %shl = shl nuw i32 1, %13
  %sta_asleep_mask = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 116
  %14 = ptrtoint ptr %sta_asleep_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sta_asleep_mask, align 4
  %or = or i32 %15, %shl
  store i32 %or, ptr %sta_asleep_mask, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  %status = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 113, i32 %sub, i32 1
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %status, align 4
  %rx_queue = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 113, i32 %sub, i32 5
  %call3960 = tail call ptr @skb_dequeue(ptr noundef %rx_queue) #11
  %tobool40.not61 = icmp eq ptr %call3960, null
  br i1 %tobool40.not61, label %if.end38.while.end_crit_edge, label %if.end38.while.body_crit_edge

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  br label %while.body

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end38.while.body_crit_edge
  %call3962 = phi ptr [ %call39, %while.body.while.body_crit_edge ], [ %call3960, %if.end38.while.body_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void @ieee80211_rx_irqsafe(ptr noundef %18, ptr noundef nonnull %call3962) #11
  %call39 = tail call ptr @skb_dequeue(ptr noundef %rx_queue) #11
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end38.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ 0, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_find_link_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_sta_remove(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %drv_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = add i32 %5, -1
  %arrayidx = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 113, i32 %sub
  %ps_state_lock = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #11
  %status = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 113, i32 %sub, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  tail call void @wsm_lock_tx_async(ptr noundef %1) #11
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workqueue, align 4
  %link_id_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 114
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %link_id_work) #11
  br i1 %call.i, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wsm_unlock_tx(ptr noundef %1) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #11
  %11 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_lock_tx_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_sta_notify(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif, i32 noundef %notify_cmd, ptr nocapture noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %ps_state_lock = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #11
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drv_priv, align 4
  tail call fastcc void @__cw1200_sta_notify(ptr noundef %dev, i32 noundef %notify_cmd, i32 noundef %3)
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cw1200_sta_notify(ptr nocapture noundef readonly %dev, i32 noundef %notify_cmd, i32 noundef %link_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_id)
  %tobool.not = icmp eq i32 %link_id, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw i32 1, %link_id
  br label %if.end42

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %notify_cmd)
  %cmp.not = icmp eq i32 %notify_cmd, 1
  br i1 %cmp.not, label %if.end42.thread, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %.b1 = load i1, ptr @__cw1200_sta_notify.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.end42_crit_edge, label %if.then9, !prof !289

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__cw1200_sta_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1604, i32 noundef 9, ptr noundef null) #11
  br label %if.end42

if.end42.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %link_id_map = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 112
  %2 = ptrtoint ptr %link_id_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_id_map, align 4
  %sta_asleep_mask5 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 116
  %4 = ptrtoint ptr %sta_asleep_mask5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sta_asleep_mask5, align 4
  %and6 = and i32 %5, %3
  br label %sw.bb52

if.end42:                                         ; preds = %if.then9, %land.rhs.if.end42_crit_edge, %if.then
  %bit.0 = phi i32 [ %shl, %if.then ], [ 0, %if.then9 ], [ 0, %land.rhs.if.end42_crit_edge ]
  %sta_asleep_mask = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 116
  %6 = ptrtoint ptr %sta_asleep_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sta_asleep_mask, align 4
  %and = and i32 %7, %bit.0
  %8 = zext i32 %notify_cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %notify_cmd, label %if.end42.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end42.sw.bb52_crit_edge
  ]

if.end42.sw.bb52_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb52

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %if.then44, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then44:                                        ; preds = %sw.bb
  %buffered_multicasts = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 121
  %9 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buffered_multicasts, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool45.not = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool47.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool45.not, i1 %tobool47.not, i1 false
  br i1 %or.cond, label %if.then48, label %if.then44.if.end49_crit_edge

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue, align 4
  %multicast_start_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 126
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %multicast_start_work) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then44.if.end49_crit_edge
  %13 = ptrtoint ptr %sta_asleep_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sta_asleep_mask, align 4
  %or = or i32 %14, %bit.0
  store i32 %or, ptr %sta_asleep_mask, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end42.sw.bb52_crit_edge, %if.end42.thread
  %and9 = phi i32 [ %and6, %if.end42.thread ], [ %and, %if.end42.sw.bb52_crit_edge ]
  %15 = phi i32 [ %5, %if.end42.thread ], [ %7, %if.end42.sw.bb52_crit_edge ]
  %sta_asleep_mask8 = phi ptr [ %sta_asleep_mask5, %if.end42.thread ], [ %sta_asleep_mask, %if.end42.sw.bb52_crit_edge ]
  %bit.07 = phi i32 [ %3, %if.end42.thread ], [ %bit.0, %if.end42.sw.bb52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool53.not = icmp eq i32 %and9, 0
  br i1 %tobool53.not, label %sw.bb52.sw.epilog_crit_edge, label %if.then54

sw.bb52.sw.epilog_crit_edge:                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then54:                                        ; preds = %sw.bb52
  %neg = xor i32 %bit.07, -1
  %and56 = and i32 %15, %neg
  %16 = ptrtoint ptr %sta_asleep_mask8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and56, ptr %sta_asleep_mask8, align 4
  %pspoll_mask = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 117
  %17 = ptrtoint ptr %pspoll_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pspoll_mask, align 4
  %and58 = and i32 %18, %neg
  store i32 %and58, ptr %pspoll_mask, align 4
  %tx_multicast = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 122
  %19 = ptrtoint ptr %tx_multicast to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_multicast, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool59.not = icmp eq i8 %20, 0
  %brmerge = or i1 %tobool.not, %tobool59.not
  %brmerge.not = xor i1 %brmerge, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool64.not = icmp eq i32 %and56, 0
  %or.cond10 = select i1 %brmerge.not, i1 %tobool64.not, i1 false
  br i1 %or.cond10, label %if.then65, label %if.then54.if.end68_crit_edge

if.then54.if.end68_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then65:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %workqueue66 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %workqueue66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workqueue66, align 4
  %multicast_stop_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 127
  %call.i3 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %multicast_stop_work) #11
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.then54.if.end68_crit_edge
  tail call void @cw1200_bh_wakeup(ptr noundef %1) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end68, %sw.bb52.sw.epilog_crit_edge, %if.end49, %sw.bb.sw.epilog_crit_edge, %if.end42.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_set_tim_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3992
  %aid0_bit_set = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %aid0_bit_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aid0_bit_set, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  tail call fastcc void @cw1200_set_tim_impl(ptr noundef %add.ptr, i1 noundef zeroext %tobool)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_set_tim_impl(ptr noundef %priv, i1 noundef zeroext %aid0_bit_set) unnamed_addr #0 align 64 {
entry:
  %update_ie = alloca %struct.wsm_update_ie, align 4
  %tim_offset = alloca i16, align 2
  %tim_length = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %update_ie) #11
  %0 = ptrtoint ptr %update_ie to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65537, ptr %update_ie, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_offset) #11
  %1 = ptrtoint ptr %tim_offset to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %tim_offset, align 2, !annotation !290
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_length) #11
  %2 = ptrtoint ptr %tim_length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tim_length, align 2, !annotation !290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_set_tim_impl.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_set_tim_impl, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %aid0_bit_set, ptr @.str.97, ptr @.str.98
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_set_tim_impl.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.96, ptr noundef nonnull %cond) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vif, align 4
  %call5 = call ptr @ieee80211_beacon_get_tim(ptr noundef %4, ptr noundef %6, ptr noundef nonnull %tim_offset, ptr noundef nonnull %tim_length) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end12

if.then7:                                         ; preds = %do.end
  %tx_queue_stats.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 19
  %arrayidx.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 0
  %arrayidx.1.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 1
  %arrayidx.2.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 2
  %arrayidx.3.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 3
  %call.i2 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.i) #11
  %call.1.i3 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.1.i) #11
  %call.2.i4 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.2.i) #11
  %call.3.i5 = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.3.i) #11
  call void @wsm_lock_tx(ptr noundef %priv) #11
  %call52.i6 = call zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef %tx_queue_stats.i, i32 noundef -1) #11
  br i1 %call52.i6, label %if.then7.if.then10_crit_edge, label %if.then7.if.then53.i_crit_edge

if.then7.if.then53.i_crit_edge:                   ; preds = %if.then7
  br label %if.then53.i

if.then7.if.then10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then53.i:                                      ; preds = %if.then53.i.if.then53.i_crit_edge, %if.then7.if.then53.i_crit_edge
  call void @wsm_unlock_tx(ptr noundef %priv) #11
  %call.i = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.i) #11
  %call.1.i = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.1.i) #11
  %call.2.i = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.2.i) #11
  %call.3.i = call i32 @cw1200_queue_clear(ptr noundef %arrayidx.3.i) #11
  call void @wsm_lock_tx(ptr noundef %priv) #11
  %call52.i = call zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef %tx_queue_stats.i, i32 noundef -1) #11
  br i1 %call52.i, label %if.then53.i.if.then10_crit_edge, label %if.then53.i.if.then53.i_crit_edge

if.then53.i.if.then53.i_crit_edge:                ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53.i

if.then53.i.if.then10_crit_edge:                  ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10:                                        ; preds = %if.then53.i.if.then10_crit_edge, %if.then7.if.then10_crit_edge
  call void @wsm_unlock_tx(ptr noundef %priv) #11
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %7 = ptrtoint ptr %tim_offset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tim_offset, align 2
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool13.not = icmp eq i16 %8, 0
  br i1 %tobool13.not, label %if.end12.if.end33_crit_edge, label %land.lhs.true

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end12
  %9 = ptrtoint ptr %tim_length to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tim_length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %10)
  %cmp = icmp ugt i16 %10, 5
  br i1 %cmp, label %if.then16, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %add = add nuw nsw i32 %conv, 2
  %arrayidx = getelementptr i8, ptr %12, i32 %add
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %tim_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tim_offset, align 2
  %conv21 = zext i16 %16 to i32
  %add22 = add nuw nsw i32 %conv21, 4
  %arrayidx23 = getelementptr i8, ptr %14, i32 %add22
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23, align 1
  %19 = and i8 %18, -2
  %masksel = zext i1 %aid0_bit_set to i8
  %.sink = or i8 %19, %masksel
  store i8 %.sink, ptr %arrayidx23, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then16, %land.lhs.true.if.end33_crit_edge, %if.end12.if.end33_crit_edge
  %data34 = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 19
  %20 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data34, align 4
  %22 = ptrtoint ptr %tim_offset to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tim_offset, align 2
  %idxprom = zext i16 %23 to i32
  %arrayidx35 = getelementptr i8, ptr %21, i32 %idxprom
  %ies = getelementptr inbounds %struct.wsm_update_ie, ptr %update_ie, i32 0, i32 2
  %24 = ptrtoint ptr %ies to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx35, ptr %ies, align 4
  %25 = ptrtoint ptr %tim_length to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tim_length, align 2
  %conv36 = zext i16 %26 to i32
  %length = getelementptr inbounds %struct.wsm_update_ie, ptr %update_ie, i32 0, i32 3
  %27 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv36, ptr %length, align 4
  %call37 = call i32 @wsm_update_ie(ptr noundef %priv, ptr noundef nonnull %update_ie) #11
  call void @consume_skb(ptr noundef nonnull %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_length) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_offset) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %update_ie) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_set_tim(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %sta, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 4
  %set_tim_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 124
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %set_tim_work) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_set_cts_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %erp_ie = alloca [3 x i8], align 1
  %update_ie = alloca %struct.wsm_update_ie, align 4
  %use_cts_prot = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %erp_ie) #11
  %0 = call ptr @memcpy(ptr %erp_ie, ptr @__const.cw1200_set_cts_work.erp_ie, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %update_ie) #11
  %1 = getelementptr inbounds %struct.wsm_update_ie, ptr %update_ie, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wsm_update_ie, ptr %update_ie, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wsm_update_ie, ptr %update_ie, i32 0, i32 3
  %4 = ptrtoint ptr %update_ie to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %update_ie, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %1, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %erp_ie, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %use_cts_prot) #11
  %conf_mutex = getelementptr i8, ptr %work, i32 -3960
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %erp_info1 = getelementptr i8, ptr %work, i32 -2572
  %8 = ptrtoint ptr %erp_info1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erp_info1, align 4
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  %and = shl i32 %9, 23
  %10 = and i32 %and, 16777216
  %11 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %use_cts_prot, align 4
  %conv = trunc i32 %9 to i8
  %arrayidx = getelementptr inbounds [3 x i8], ptr %erp_ie, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_set_cts_work.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_set_cts_work, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_set_cts_work.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.54, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -4036
  %call7 = call i32 @wsm_write_mib(ptr noundef %add.ptr, i16 noundef zeroext 4096, ptr noundef nonnull %use_cts_prot, i32 noundef 4) #11
  %call8 = call i32 @wsm_update_ie(ptr noundef %add.ptr, ptr noundef nonnull %update_ie) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %use_cts_prot) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %update_ie) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %erp_ie) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_update_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_bss_info_changed(ptr nocapture noundef readonly %dev, ptr noundef %vif, ptr noundef readonly %info, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  %pm.i = alloca %struct.wsm_set_pm, align 4
  %val.i.i = alloca %struct.anon.151, align 2
  %arg.i = alloca %struct.wsm_keep_alive_period, align 2
  %transmit.i = alloca %struct.wsm_beacon_transmit, align 1
  %tim_offset.i = alloca i16, align 2
  %tim_len.i = alloca i16, align 2
  %filter = alloca %struct.wsm_mib_arp_ipv4_filter, align 8
  %htprot = alloca i32, align 4
  %slot_time = alloca i32, align 4
  %threshold = alloca %struct.wsm_rcpi_rssi_threshold, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.56, i32 noundef %changed) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %changed, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end66_crit_edge, label %if.then5

do.end.if.end66_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then5:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter) #11
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %filter, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then18)) #11
          to label %do.end21 [label %if.then18], !srcloc !284

if.then18:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %arp_addr_cnt = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 35
  %3 = ptrtoint ptr %arp_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arp_addr_cnt, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.57, i32 noundef %4) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %if.then5
  %arp_addr_cnt22 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 35
  %5 = ptrtoint ptr %arp_addr_cnt22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arp_addr_cnt22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp24 = icmp eq i32 %6, 1
  br i1 %cmp24, label %for.cond.preheader, label %do.end21.do.body48_crit_edge

do.end21.do.body48_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body48

for.cond.preheader:                               ; preds = %do.end21
  %7 = ptrtoint ptr %arp_addr_cnt22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arp_addr_cnt22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp27779 = icmp sgt i32 %8, 0
  br i1 %cmp27779, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0780 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 34, i32 %i.0780
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx28 = getelementptr %struct.wsm_mib_arp_ipv4_filter, ptr %filter, i32 0, i32 1, i32 %i.0780
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx28, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then41)) #11
          to label %for.inc [label %if.then41], !srcloc !284

if.then41:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx28, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.58, i32 noundef %i.0780, i32 noundef %13) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then41, %for.body
  %inc = add nuw nsw i32 %i.0780, 1
  %14 = ptrtoint ptr %arp_addr_cnt22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arp_addr_cnt22, align 8
  %cmp27 = icmp slt i32 %inc, %15
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16777216, ptr %filter, align 8
  br label %do.body48

do.body48:                                        ; preds = %for.end, %do.end21.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then60)) #11
          to label %do.end64 [label %if.then60], !srcloc !284

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %filter, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.59, i32 noundef %19) #11
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body48
  %call.i721 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4097, ptr noundef nonnull %filter, i32 noundef 8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter) #11
  br label %if.end66

if.end66:                                         ; preds = %do.end64, %do.end.if.end66_crit_edge
  %and67 = and i32 %changed, 100736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end89_crit_edge, label %do.body70

if.end66.if.end89_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

do.body70:                                        ; preds = %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then82)) #11
          to label %do.end85 [label %if.then82], !srcloc !284

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.60) #11
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %do.body70
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 19
  %20 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %21 to i32
  %beacon_int86 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 46
  %22 = ptrtoint ptr %beacon_int86 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %beacon_int86, align 4
  call fastcc void @cw1200_update_beaconing(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_offset.i) #11
  %23 = ptrtoint ptr %tim_offset.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %tim_offset.i, align 2, !annotation !290
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_len.i) #11
  %24 = ptrtoint ptr %tim_len.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %tim_len.i, align 2, !annotation !290
  %mode.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %26, label %if.end.i [
    i32 2, label %do.end85.done.i_crit_edge
    i32 6, label %do.end85.done.i_crit_edge782
    i32 0, label %do.end85.done.i_crit_edge783
  ]

do.end85.done.i_crit_edge783:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

do.end85.done.i_crit_edge782:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

do.end85.done.i_crit_edge:                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end.i:                                         ; preds = %do.end85
  %vif.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vif.i, align 4
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %p2p.i, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i722 = icmp eq i8 %31, 0
  %spec.select.i = select i1 %tobool.not.i722, i8 0, i8 6
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i723 = call ptr @ieee80211_beacon_get_tim(ptr noundef %33, ptr noundef %29, ptr noundef nonnull %tim_offset.i, ptr noundef nonnull %tim_len.i) #11
  %tobool10.not.i = icmp eq ptr %call.i723, null
  br i1 %tobool10.not.i, label %if.end.i.cw1200_upload_beacon.exit_crit_edge, label %if.end12.i

if.end.i.cw1200_upload_beacon.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_upload_beacon.exit

if.end12.i:                                       ; preds = %if.end.i
  %call.i.i = call ptr @skb_push(ptr noundef nonnull %call.i723, i32 noundef 4) #11
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %call.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i.i, i32 1
  %35 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select.i, ptr %arrayidx1.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i723, i32 0, i32 6
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i, align 4
  %38 = trunc i32 %37 to i16
  %conv.i.i = add i16 %38, -4
  %39 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %arrayidx3.i.i = getelementptr i16, ptr %call.i.i, i32 1
  %40 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx3.i.i, align 2
  %41 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i, align 4
  %call6.i.i = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4098, ptr noundef %call.i.i, i32 noundef %42) #11
  %call8.i.i = call ptr @skb_pull(ptr noundef nonnull %call.i723, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool14.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.done.i_crit_edge

if.end12.i.done.i_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end16.i:                                       ; preds = %if.end12.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i723, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 20480, ptr %44, align 2
  %46 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vif.i, align 4
  %p2p19.i = getelementptr inbounds %struct.ieee80211_vif, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %p2p19.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %p2p19.i, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool20.not.i = icmp eq i8 %49, 0
  br i1 %tobool20.not.i, label %if.else.i, label %if.end16.i.done.sink.split.i_crit_edge

if.end16.i.done.sink.split.i_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.sink.split.i

if.else.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i2.i = call ptr @skb_push(ptr noundef nonnull %call.i723, i32 noundef 4) #11
  %50 = ptrtoint ptr %call.i2.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 5, ptr %call.i2.i, align 1
  %arrayidx1.i4.i = getelementptr i8, ptr %call.i2.i, i32 1
  %51 = ptrtoint ptr %arrayidx1.i4.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select.i, ptr %arrayidx1.i4.i, align 1
  %52 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i, align 4
  %54 = trunc i32 %53 to i16
  %conv.i6.i = add i16 %54, -4
  %55 = call i16 @llvm.bswap.i16(i16 %conv.i6.i) #11
  %arrayidx3.i7.i = getelementptr i16, ptr %call.i2.i, i32 1
  %56 = ptrtoint ptr %arrayidx3.i7.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %arrayidx3.i7.i, align 2
  %57 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i.i, align 4
  %call6.i9.i = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4098, ptr noundef %call.i2.i, i32 noundef %58) #11
  %call8.i10.i = call ptr @skb_pull(ptr noundef nonnull %call.i723, i32 noundef 4) #11
  br label %done.sink.split.i

done.sink.split.i:                                ; preds = %if.else.i, %if.end16.i.done.sink.split.i_crit_edge
  %59 = xor i1 %tobool20.not.i, true
  %call22.i = call i32 @wsm_set_probe_responder(ptr noundef %1, i1 noundef zeroext %59) #11
  br label %done.i

done.i:                                           ; preds = %done.sink.split.i, %if.end12.i.done.i_crit_edge, %do.end85.done.i_crit_edge, %do.end85.done.i_crit_edge782, %do.end85.done.i_crit_edge783
  %frame.sroa.9.0.i = phi ptr [ %call.i723, %if.end12.i.done.i_crit_edge ], [ null, %do.end85.done.i_crit_edge ], [ null, %do.end85.done.i_crit_edge782 ], [ null, %do.end85.done.i_crit_edge783 ], [ %call.i723, %done.sink.split.i ]
  call void @consume_skb(ptr noundef %frame.sroa.9.0.i) #11
  br label %cw1200_upload_beacon.exit

cw1200_upload_beacon.exit:                        ; preds = %done.i, %if.end.i.cw1200_upload_beacon.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_len.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_offset.i) #11
  br label %if.end89

if.end89:                                         ; preds = %cw1200_upload_beacon.exit, %if.end66.if.end89_crit_edge
  %and90 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end128_crit_edge, label %do.body93

if.end89.if.end128_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

do.body93:                                        ; preds = %if.end89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then105)) #11
          to label %do.end110 [label %if.then105], !srcloc !284

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #13
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %60 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %enable_beacon, align 1, !range !283
  %62 = zext i8 %61 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.61, i32 noundef %62) #11
  br label %do.end110

do.end110:                                        ; preds = %if.then105, %do.body93
  %enable_beacon111 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 44
  %63 = ptrtoint ptr %enable_beacon111 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %enable_beacon111, align 4, !range !283
  %enable_beacon114 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %65 = ptrtoint ptr %enable_beacon114 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %enable_beacon114, align 1, !range !283
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp117.not = icmp eq i8 %64, %66
  br i1 %cmp117.not, label %do.end110.if.end128_crit_edge, label %if.then119

do.end110.if.end128_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then119:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %transmit.i) #11
  %67 = ptrtoint ptr %transmit.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %transmit.i, align 1
  %call.i724 = call i32 @wsm_beacon_transmit(ptr noundef %1, ptr noundef nonnull %transmit.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %transmit.i) #11
  %68 = ptrtoint ptr %enable_beacon114 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %enable_beacon114, align 1, !range !283
  %70 = ptrtoint ptr %enable_beacon111 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %enable_beacon111, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then119, %do.end110.if.end128_crit_edge, %if.end89.if.end128_crit_edge
  %and129 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end156_crit_edge, label %do.body132

if.end128.if.end156_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

do.body132:                                       ; preds = %if.end128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then144)) #11
          to label %do.end147 [label %if.then144], !srcloc !284

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.62) #11
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %do.body132
  %ibss_joined = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 11
  %71 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ibss_joined, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool148.not = icmp eq i8 %72, 0
  br i1 %tobool148.not, label %if.else, label %do.end147.if.end156_crit_edge

do.end147.if.end156_crit_edge:                    ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.else:                                          ; preds = %do.end147
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %73 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %74)
  %cmp150 = icmp eq i32 %74, 6
  br i1 %cmp150, label %if.then152, label %if.else.if.end156_crit_edge

if.else.if.end156_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.then152:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @cw1200_update_beaconing(ptr noundef %1)
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %if.else.if.end156_crit_edge, %do.end147.if.end156_crit_edge, %if.end128.if.end156_crit_edge
  %do_join.0.off0 = phi i1 [ false, %if.then152 ], [ false, %if.else.if.end156_crit_edge ], [ false, %if.end128.if.end156_crit_edge ], [ true, %do.end147.if.end156_crit_edge ]
  %and157 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end156.if.end160_crit_edge, label %if.then159

if.end156.if.end160_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  call void @wsm_lock_tx(ptr noundef %1) #11
  %wep_default_key_id = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 107
  %75 = ptrtoint ptr %wep_default_key_id to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %wep_default_key_id, align 1
  call void @wsm_unlock_tx(ptr noundef %1) #11
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end156.if.end160_crit_edge
  %and161 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end160.if.end180_crit_edge, label %do.body164

if.end160.if.end180_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

do.body164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then176)) #11
          to label %if.end180 [label %if.then176], !srcloc !284

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.63) #11
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %do.body164, %if.end160.if.end180_crit_edge
  %do_join.1.off0 = phi i1 [ %do_join.0.off0, %if.end160.if.end180_crit_edge ], [ true, %if.then176 ], [ true, %do.body164 ]
  %and181 = and i32 %changed, 2225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end180.if.end377_crit_edge, label %do.body184

if.end180.if.end377_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end377

do.body184:                                       ; preds = %if.end180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then196)) #11
          to label %do.end199 [label %if.then196], !srcloc !284

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.64) #11
  br label %do.end199

do.end199:                                        ; preds = %if.then196, %do.body184
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 10
  %76 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %assoc, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool200.not = icmp eq i8 %77, 0
  br i1 %tobool200.not, label %do.end199.lor.lhs.false_crit_edge, label %if.then201

do.end199.lor.lhs.false_crit_edge:                ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.then201:                                       ; preds = %do.end199
  %join_status202 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %78 = ptrtoint ptr %join_status202 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %join_status202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp203 = icmp ult i32 %79, 3
  br i1 %cmp203, label %if.then205, label %if.else207

if.then205:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #13
  call void @ieee80211_connection_loss(ptr noundef %vif) #11
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  br label %cleanup

if.else207:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp209 = icmp eq i32 %79, 3
  br i1 %cmp209, label %if.then211, label %if.else207.if.end216_crit_edge

if.else207.if.end216_crit_edge:                   ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end216

if.then211:                                       ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %join_status202 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %join_status202, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then211, %if.else207.if.end216_crit_edge
  %81 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %81)
  %.pr = load i8, ptr %assoc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool218.not = icmp eq i8 %.pr, 0
  br i1 %tobool218.not, label %if.end216.lor.lhs.false_crit_edge, label %if.end216.if.then223_crit_edge

if.end216.if.then223_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then223

if.end216.lor.lhs.false_crit_edge:                ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end216.lor.lhs.false_crit_edge, %do.end199.lor.lhs.false_crit_edge
  %do_join.2.off0770 = phi i1 [ %do_join.1.off0, %if.end216.lor.lhs.false_crit_edge ], [ true, %do.end199.lor.lhs.false_crit_edge ]
  %ibss_joined220 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 11
  %82 = ptrtoint ptr %ibss_joined220 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ibss_joined220, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool221.not = icmp eq i8 %83, 0
  br i1 %tobool221.not, label %if.else373, label %lor.lhs.false.if.then223_crit_edge

lor.lhs.false.if.then223_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then223

if.then223:                                       ; preds = %lor.lhs.false.if.then223_crit_edge, %if.end216.if.then223_crit_edge
  %do_join.2.off0769 = phi i1 [ %do_join.2.off0770, %lor.lhs.false.if.then223_crit_edge ], [ %do_join.1.off0, %if.end216.if.then223_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %htprot) #11
  %84 = ptrtoint ptr %htprot to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %htprot, align 4
  %dtim_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 18
  %85 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dtim_period, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool224.not = icmp eq i8 %86, 0
  br i1 %tobool224.not, label %if.then223.if.end228_crit_edge, label %if.then225

if.then223.if.end228_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228

if.then225:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #13
  %conv227 = zext i8 %86 to i32
  %join_dtim_period = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 105
  %87 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv227, ptr %join_dtim_period, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.then225, %if.then223.if.end228_crit_edge
  %beacon_int229 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 19
  %88 = ptrtoint ptr %beacon_int229 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %beacon_int229, align 2
  %conv230 = zext i16 %89 to i32
  %beacon_int231 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 46
  %90 = ptrtoint ptr %beacon_int231 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv230, ptr %beacon_int231, align 4
  %91 = call i32 @llvm.read_register.i32(metadata !273) #11
  %and.i.i.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %94, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !291
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end228.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end228.rcu_read_lock.exit_crit_edge:           ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end228
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.99, i32 noundef 696, ptr noundef nonnull @.str.100) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end228.rcu_read_lock.exit_crit_edge
  %95 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %info, align 8
  %tobool232.not = icmp eq ptr %96, null
  br i1 %tobool232.not, label %rcu_read_lock.exit.if.else248_crit_edge, label %land.lhs.true233

rcu_read_lock.exit.if.else248_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else248

land.lhs.true233:                                 ; preds = %rcu_read_lock.exit
  %ibss_joined234 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 11
  %97 = ptrtoint ptr %ibss_joined234 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ibss_joined234, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool235.not = icmp eq i8 %98, 0
  br i1 %tobool235.not, label %if.end239, label %land.lhs.true233.if.else248_crit_edge

land.lhs.true233.if.else248_crit_edge:            ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else248

if.end239:                                        ; preds = %land.lhs.true233
  %call238 = call ptr @ieee80211_find_sta(ptr noundef %vif, ptr noundef nonnull %96) #11
  %tobool240.not = icmp eq ptr %call238, null
  br i1 %tobool240.not, label %if.end239.if.else248_crit_edge, label %if.then241

if.end239.if.else248_crit_edge:                   ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else248

if.then241:                                       ; preds = %if.end239
  %ht_info = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 30
  %ht_cap242 = getelementptr inbounds %struct.ieee80211_sta, ptr %call238, i32 0, i32 3
  %99 = call ptr @memcpy(ptr %ht_info, ptr %ht_cap242, i32 22)
  %channel = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 25
  %100 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %channel, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %arrayidx243 = getelementptr [6 x i32], ptr %call238, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx243, align 4
  %call244 = call i32 @cw1200_rate_mask_to_wsm(ptr noundef %1, i32 noundef %105) #11
  %operational_rate_set = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 29, i32 3
  %106 = ptrtoint ptr %operational_rate_set to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call244, ptr %operational_rate_set, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 7, i32 1
  %107 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %width.i, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %108, label %do.end.i [
    i32 0, label %if.then241.cfg80211_get_chandef_type.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

if.then241.cfg80211_get_chandef_type.exit_crit_edge: ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  br label %cfg80211_get_chandef_type.exit

sw.bb1.i:                                         ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  br label %cfg80211_get_chandef_type.exit

sw.bb2.i:                                         ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 7
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 7, i32 2
  %110 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %center_freq1.i, align 4
  %112 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %chandef, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %115)
  %cmp.i = icmp ugt i32 %111, %115
  %..i = select i1 %cmp.i, i32 3, i32 2
  br label %cfg80211_get_chandef_type.exit

do.end.i:                                         ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.101, i32 noundef 778, i32 noundef 9, ptr noundef null) #11
  br label %cfg80211_get_chandef_type.exit

cfg80211_get_chandef_type.exit:                   ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %if.then241.cfg80211_get_chandef_type.exit_crit_edge
  %retval.0.i725 = phi i32 [ 0, %do.end.i ], [ 1, %sw.bb1.i ], [ %108, %if.then241.cfg80211_get_chandef_type.exit_crit_edge ], [ %..i, %sw.bb2.i ]
  %channel_type = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 30, i32 1
  %116 = ptrtoint ptr %channel_type to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %retval.0.i725, ptr %channel_type, align 4
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 27
  %117 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %ht_operation_mode, align 8
  %operation_mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 30, i32 2
  %119 = ptrtoint ptr %operation_mode to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %operation_mode, align 4
  br label %if.end252

if.else248:                                       ; preds = %if.end239.if.else248_crit_edge, %land.lhs.true233.if.else248_crit_edge, %rcu_read_lock.exit.if.else248_crit_edge
  %ht_info249 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 30
  %120 = call ptr @memset(ptr %ht_info249, i32 0, i32 32)
  %operational_rate_set251 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 29, i32 3
  %121 = ptrtoint ptr %operational_rate_set251 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %operational_rate_set251, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.else248, %cfg80211_get_chandef_type.exit
  %call.i726 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i726, label %if.end252.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i729

if.end252.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i729:                               ; preds = %if.end252
  %call1.i727 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i727)
  %tobool.not.i728 = icmp eq i32 %call1.i727, 0
  br i1 %tobool.not.i728, label %land.lhs.true.i729.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i731

land.lhs.true.i729.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i729
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i731:                              ; preds = %land.lhs.true.i729
  %.b4.i730 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i730, label %land.lhs.true2.i731.rcu_read_unlock.exit_crit_edge, label %if.then.i732

land.lhs.true2.i731.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i731
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i732:                                     ; preds = %land.lhs.true2.i731
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.99, i32 noundef 724, ptr noundef nonnull @.str.102) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i732, %land.lhs.true2.i731.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i729.rcu_read_unlock.exit_crit_edge, %if.end252.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !292
  %122 = call i32 @llvm.read_register.i32(metadata !273) #11
  %and.i.i.i.i.i733 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i733 to ptr
  %preempt_count.i.i.i.i734 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i734 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i734, align 4
  %sub.i.i.i = add i32 %125, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i734, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %ht_info253 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 30
  %operation_mode254 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 30, i32 2
  %126 = ptrtoint ptr %operation_mode254 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %operation_mode254, align 4
  %128 = and i16 %127, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool257.not = icmp eq i16 %128, 0
  br i1 %tobool257.not, label %rcu_read_unlock.exit.if.end259_crit_edge, label %if.then258

rcu_read_unlock.exit.if.end259_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end259

if.then258:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %htprot to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %htprot, align 4
  %or = or i32 %130, 33554432
  store i32 %or, ptr %htprot, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then258, %rcu_read_unlock.exit.if.end259_crit_edge
  %131 = ptrtoint ptr %operation_mode254 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %operation_mode254, align 4
  %133 = shl i16 %132, 2
  %134 = and i16 %133, 12
  %shl = zext i16 %134 to i32
  %135 = shl nuw nsw i32 %shl, 24
  %136 = ptrtoint ptr %htprot to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %htprot, align 4
  %or264 = or i32 %135, %137
  store i32 %or264, ptr %htprot, align 4
  %call265 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4129, ptr noundef nonnull %htprot, i32 noundef 4) #11
  %channel_type.i.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 30, i32 1
  %138 = ptrtoint ptr %channel_type.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %channel_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp.i.not.i = icmp eq i32 %139, 0
  br i1 %cmp.i.not.i, label %if.end259.cw1200_ht_greenfield.exit_crit_edge, label %land.lhs.true.i736

if.end259.cw1200_ht_greenfield.exit_crit_edge:    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_ht_greenfield.exit

land.lhs.true.i736:                               ; preds = %if.end259
  %140 = ptrtoint ptr %ht_info253 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %ht_info253, align 4
  %142 = and i16 %141, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %tobool1.not.i = icmp eq i16 %142, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i736.cw1200_ht_greenfield.exit_crit_edge, label %land.rhs.i

land.lhs.true.i736.cw1200_ht_greenfield.exit_crit_edge: ; preds = %land.lhs.true.i736
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_ht_greenfield.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i736
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %operation_mode254 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %operation_mode254, align 4
  %145 = trunc i16 %144 to i8
  %146 = lshr i8 %145, 2
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  br label %cw1200_ht_greenfield.exit

cw1200_ht_greenfield.exit:                        ; preds = %land.rhs.i, %land.lhs.true.i736.cw1200_ht_greenfield.exit_crit_edge, %if.end259.cw1200_ht_greenfield.exit_crit_edge
  %149 = phi i8 [ 0, %land.lhs.true.i736.cw1200_ht_greenfield.exit_crit_edge ], [ 0, %if.end259.cw1200_ht_greenfield.exit_crit_edge ], [ %148, %land.rhs.i ]
  %association_mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 28
  %greenfield = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 28, i32 2
  %150 = ptrtoint ptr %greenfield to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %greenfield, align 2
  %151 = ptrtoint ptr %association_mode to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 31, ptr %association_mode, align 4
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 15
  %152 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %use_short_preamble, align 1, !range !283
  %preamble = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 28, i32 1
  %154 = ptrtoint ptr %preamble to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %preamble, align 1
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 24
  %155 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %basic_rates, align 8
  %call274 = call i32 @cw1200_rate_mask_to_wsm(ptr noundef %1, i32 noundef %156) #11
  %157 = call i32 @llvm.bswap.i32(i32 %call274)
  %basic_rate_set = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 28, i32 4
  %158 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %basic_rate_set, align 4
  %159 = ptrtoint ptr %channel_type.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %channel_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.i.not.i738 = icmp eq i32 %160, 0
  br i1 %cmp.i.not.i738, label %cw1200_ht_greenfield.exit.cw1200_ht_ampdu_density.exit_crit_edge, label %if.end.i739

cw1200_ht_greenfield.exit.cw1200_ht_ampdu_density.exit_crit_edge: ; preds = %cw1200_ht_greenfield.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_ht_ampdu_density.exit

if.end.i739:                                      ; preds = %cw1200_ht_greenfield.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ampdu_density.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 30, i32 0, i32 3
  %161 = ptrtoint ptr %ampdu_density.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ampdu_density.i, align 4
  br label %cw1200_ht_ampdu_density.exit

cw1200_ht_ampdu_density.exit:                     ; preds = %if.end.i739, %cw1200_ht_greenfield.exit.cw1200_ht_ampdu_density.exit_crit_edge
  %retval.0.i740 = phi i8 [ %162, %if.end.i739 ], [ 0, %cw1200_ht_greenfield.exit.cw1200_ht_ampdu_density.exit_crit_edge ]
  %mpdu_start_spacing = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 28, i32 3
  %163 = ptrtoint ptr %mpdu_start_spacing to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %retval.0.i740, ptr %mpdu_start_spacing, align 1
  %bss_loss_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 133
  call void @_raw_spin_lock(ptr noundef %bss_loss_lock.i) #11
  %delayed_link_loss.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 136
  %164 = ptrtoint ptr %delayed_link_loss.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %delayed_link_loss.i, align 4
  %bss_params_work.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 137
  %call.i754 = call zeroext i1 @cancel_work_sync(ptr noundef %bss_params_work.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then.i755)) #11
          to label %do.end.i756 [label %if.then.i755], !srcloc !284

if.then.i755:                                     ; preds = %cw1200_ht_ampdu_density.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_state.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 134
  %165 = ptrtoint ptr %bss_loss_state.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %bss_loss_state.i, align 4
  %tx_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 95
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tx_lock.i, i32 noundef 4) #11
  %167 = ptrtoint ptr %tx_lock.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %tx_lock.i, align 4
  %delayed_unjoin.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 106
  %169 = ptrtoint ptr %delayed_unjoin.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %delayed_unjoin.i, align 4, !range !283
  %171 = zext i8 %170 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.5, i32 noundef %166, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %168, i32 noundef %171) #11
  br label %do.end.i756

do.end.i756:                                      ; preds = %if.then.i755, %cw1200_ht_ampdu_density.exit
  %delayed_unjoin6.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 106
  %172 = ptrtoint ptr %delayed_unjoin6.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %delayed_unjoin6.i, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool7.not.i = icmp eq i8 %173, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i756.__cw1200_cqm_bssloss_sm.exit_crit_edge

do.end.i756.__cw1200_cqm_bssloss_sm.exit_crit_edge: ; preds = %do.end.i756
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cw1200_cqm_bssloss_sm.exit

if.end9.i:                                        ; preds = %do.end.i756
  call void @__sanitizer_cov_trace_pc() #13
  %bss_loss_work36.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 132
  %call37.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bss_loss_work36.i) #11
  %bss_loss_state38.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 134
  %174 = ptrtoint ptr %bss_loss_state38.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %bss_loss_state38.i, align 4
  br label %__cw1200_cqm_bssloss_sm.exit

__cw1200_cqm_bssloss_sm.exit:                     ; preds = %if.end9.i, %do.end.i756.__cw1200_cqm_bssloss_sm.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %bss_loss_lock.i) #11
  %unjoin_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 102
  %call280 = call zeroext i1 @cancel_work_sync(ptr noundef %unjoin_work) #11
  %cqm_beacon_loss_count = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 37
  %175 = ptrtoint ptr %cqm_beacon_loss_count to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %cqm_beacon_loss_count, align 4
  %conv281 = trunc i32 %176 to i8
  %bss_params282 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 29
  %beacon_lost_count = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 29, i32 1
  %177 = ptrtoint ptr %beacon_lost_count to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv281, ptr %beacon_lost_count, align 1
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 13
  %178 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %aid, align 2
  %aid284 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 29, i32 2
  %180 = ptrtoint ptr %aid284 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %aid284, align 2
  %join_dtim_period285 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 105
  %181 = ptrtoint ptr %join_dtim_period285 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %join_dtim_period285, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp286 = icmp slt i32 %182, 1
  br i1 %cmp286, label %if.then288, label %__cw1200_cqm_bssloss_sm.exit.do.body291_crit_edge

__cw1200_cqm_bssloss_sm.exit.do.body291_crit_edge: ; preds = %__cw1200_cqm_bssloss_sm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body291

if.then288:                                       ; preds = %__cw1200_cqm_bssloss_sm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %join_dtim_period285 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %join_dtim_period285, align 4
  br label %do.body291

do.body291:                                       ; preds = %if.then288, %__cw1200_cqm_bssloss_sm.exit.do.body291_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then303)) #11
          to label %do.body309 [label %if.then303], !srcloc !284

if.then303:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #13
  %184 = ptrtoint ptr %join_dtim_period285 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %join_dtim_period285, align 4
  %186 = ptrtoint ptr %beacon_int231 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %beacon_int231, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.65, i32 noundef %185, i32 noundef %187) #11
  br label %do.body309

do.body309:                                       ; preds = %if.then303, %do.body291
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then321)) #11
          to label %do.end337 [label %if.then321], !srcloc !284

if.then321:                                       ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #13
  %188 = ptrtoint ptr %preamble to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %preamble, align 1
  %conv324 = zext i8 %189 to i32
  %190 = ptrtoint ptr %greenfield to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %greenfield, align 2
  %conv327 = zext i8 %191 to i32
  %192 = ptrtoint ptr %aid284 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %aid284, align 2
  %conv330 = zext i16 %193 to i32
  %operational_rate_set332 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 29, i32 3
  %194 = ptrtoint ptr %operational_rate_set332 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %operational_rate_set332, align 4
  %196 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %basic_rate_set, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.66, i32 noundef %conv324, i32 noundef %conv327, i32 noundef %conv330, i32 noundef %195, i32 noundef %197) #11
  br label %do.end337

do.end337:                                        ; preds = %if.then321, %do.body309
  %call.i741 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4112, ptr noundef %association_mode, i32 noundef 8) #11
  %ibss_joined340 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 11
  %198 = ptrtoint ptr %ibss_joined340 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %ibss_joined340, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool341.not = icmp eq i8 %199, 0
  br i1 %tobool341.not, label %if.then342, label %do.end337.if.end347_crit_edge

do.end337.if.end347_crit_edge:                    ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end347

if.then342:                                       ; preds = %do.end337
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg.i) #11
  %200 = getelementptr inbounds %struct.wsm_keep_alive_period, ptr %arg.i, i32 0, i32 1
  %201 = ptrtoint ptr %arg.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 7680, ptr %arg.i, align 2
  %202 = ptrtoint ptr %200 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 0, ptr %200, align 2
  %call.i742 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4133, ptr noundef nonnull %arg.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg.i) #11
  %call345 = call i32 @wsm_set_bss_params(ptr noundef %1, ptr noundef %bss_params282) #11
  %setbssparams_done = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 61
  %203 = ptrtoint ptr %setbssparams_done to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 1, ptr %setbssparams_done, align 4
  %204 = ptrtoint ptr %beacon_int231 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %beacon_int231, align 4
  %206 = ptrtoint ptr %join_dtim_period285 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %join_dtim_period285, align 4
  %mul.i = mul i32 %207, %205
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul.i)
  %cmp.i743 = icmp sgt i32 %mul.i, 1000
  %spec.select.i744 = select i1 %cmp.i743, i32 1, i32 %207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %208 = getelementptr inbounds %struct.anon.151, ptr %val.i.i, i32 0, i32 1
  %209 = getelementptr inbounds %struct.anon.151, ptr %val.i.i, i32 0, i32 2
  %conv.i.i745 = trunc i32 %spec.select.i744 to i8
  %210 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv.i.i745, ptr %val.i.i, align 2
  %211 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %208, align 1
  %212 = ptrtoint ptr %209 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 0, ptr %209, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %spec.select.i744)
  %cmp.i.i = icmp ugt i32 %spec.select.i744, 255
  br i1 %cmp.i.i, label %if.then342.cw1200_set_beacon_wakeup_period_work.exit_crit_edge, label %if.else.i.i

if.then342.cw1200_set_beacon_wakeup_period_work.exit_crit_edge: ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_set_beacon_wakeup_period_work.exit

if.else.i.i:                                      ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i746 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4103, ptr noundef nonnull %val.i.i, i32 noundef 4) #11
  br label %cw1200_set_beacon_wakeup_period_work.exit

cw1200_set_beacon_wakeup_period_work.exit:        ; preds = %if.else.i.i, %if.then342.cw1200_set_beacon_wakeup_period_work.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %powersave_mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm.i) #11
  %213 = ptrtoint ptr %powersave_mode to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %powersave_mode, align 1
  %215 = ptrtoint ptr %pm.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %pm.i, align 4
  %uapsd_info.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 60
  %216 = ptrtoint ptr %uapsd_info.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %uapsd_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %217)
  %cmp.not.i = icmp eq i16 %217, 0
  br i1 %cmp.not.i, label %cw1200_set_beacon_wakeup_period_work.exit.if.end.i749_crit_edge, label %if.then.i747

cw1200_set_beacon_wakeup_period_work.exit.if.end.i749_crit_edge: ; preds = %cw1200_set_beacon_wakeup_period_work.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i749

if.then.i747:                                     ; preds = %cw1200_set_beacon_wakeup_period_work.exit
  call void @__sanitizer_cov_trace_pc() #13
  %218 = ptrtoint ptr %pm.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %pm.i, align 4
  %220 = and i8 %219, 127
  store i8 %220, ptr %pm.i, align 4
  br label %if.end.i749

if.end.i749:                                      ; preds = %if.then.i747, %cw1200_set_beacon_wakeup_period_work.exit.if.end.i749_crit_edge
  %firmware_ps_mode.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 32
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %pm.i, ptr noundef dereferenceable(4) %firmware_ps_mode.i, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i748 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i748, label %if.end.i749.cw1200_set_pm.exit_crit_edge, label %if.then4.i

if.end.i749.cw1200_set_pm.exit_crit_edge:         ; preds = %if.end.i749
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_set_pm.exit

if.then4.i:                                       ; preds = %if.end.i749
  call void @__sanitizer_cov_trace_pc() #13
  %221 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pm.i, align 4
  %223 = ptrtoint ptr %firmware_ps_mode.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %firmware_ps_mode.i, align 4
  %call6.i = call i32 @wsm_set_pm(ptr noundef %1, ptr noundef nonnull %pm.i) #11
  br label %cw1200_set_pm.exit

cw1200_set_pm.exit:                               ; preds = %if.then4.i, %if.end.i749.cw1200_set_pm.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm.i) #11
  br label %if.end347

if.end347:                                        ; preds = %cw1200_set_pm.exit, %do.end337.if.end347_crit_edge
  %vif348 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 1
  %224 = ptrtoint ptr %vif348 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %vif348, align 4
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %225, i32 0, i32 3
  %226 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %p2p, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool349.not = icmp eq i8 %227, 0
  br i1 %tobool349.not, label %if.end347.if.end368_crit_edge, label %do.body351

if.end347.if.end368_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end368

do.body351:                                       ; preds = %if.end347
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then363)) #11
          to label %do.end366 [label %if.then363], !srcloc !284

if.then363:                                       ; preds = %do.body351
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.67) #11
  br label %do.end366

do.end366:                                        ; preds = %if.then363, %do.body351
  %p2p_ps_modeinfo = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 59
  %call.i751 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4121, ptr noundef %p2p_ps_modeinfo, i32 noundef 16) #11
  br label %if.end368

if.end368:                                        ; preds = %do.end366, %if.end347.if.end368_crit_edge
  %bt_present = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 62
  %228 = ptrtoint ptr %bt_present to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %bt_present, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool369.not = icmp eq i8 %229, 0
  br i1 %tobool369.not, label %if.end368.if.end372_crit_edge, label %if.then370

if.end368.if.end372_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end372

if.then370:                                       ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @cw1200_set_btcoexinfo(ptr noundef %1)
  br label %if.end372

if.end372:                                        ; preds = %if.then370, %if.end368.if.end372_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %htprot) #11
  br label %if.end377

if.else373:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %association_mode374 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 28
  %230 = call ptr @memset(ptr %association_mode374, i32 0, i32 16)
  br label %if.end377

if.end377:                                        ; preds = %if.else373, %if.end372, %if.end180.if.end377_crit_edge
  %do_join.3.off0 = phi i1 [ %do_join.2.off0769, %if.end372 ], [ %do_join.2.off0770, %if.else373 ], [ %do_join.1.off0, %if.end180.if.end377_crit_edge ]
  %and378 = and i32 %changed, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378)
  %tobool379.not = icmp eq i32 %and378, 0
  br i1 %tobool379.not, label %if.end377.if.end425_crit_edge, label %if.then380

if.end377.if.end425_crit_edge:                    ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end425

if.then380:                                       ; preds = %if.end377
  %erp_info = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 66
  %231 = ptrtoint ptr %erp_info to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %erp_info, align 4
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 14
  %233 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %use_cts_prot, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool381.not = icmp eq i8 %234, 0
  br i1 %tobool381.not, label %if.else385, label %if.then382

if.then382:                                       ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #13
  %or384 = or i32 %232, 2
  br label %if.end392.sink.split

if.else385:                                       ; preds = %if.then380
  %and386 = and i32 %232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and386)
  %tobool387.not = icmp eq i32 %and386, 0
  br i1 %tobool387.not, label %if.then388, label %if.else385.if.end392_crit_edge

if.else385.if.end392_crit_edge:                   ; preds = %if.else385
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end392

if.then388:                                       ; preds = %if.else385
  call void @__sanitizer_cov_trace_pc() #13
  %and390 = and i32 %232, -3
  br label %if.end392.sink.split

if.end392.sink.split:                             ; preds = %if.then388, %if.then382
  %and390.sink = phi i32 [ %and390, %if.then388 ], [ %or384, %if.then382 ]
  %235 = ptrtoint ptr %erp_info to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %and390.sink, ptr %erp_info, align 4
  br label %if.end392

if.end392:                                        ; preds = %if.end392.sink.split, %if.else385.if.end392_crit_edge
  %use_short_preamble393 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 15
  %236 = ptrtoint ptr %use_short_preamble393 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %use_short_preamble393, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool394.not = icmp eq i8 %237, 0
  %238 = ptrtoint ptr %erp_info to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %erp_info, align 4
  %and400 = and i32 %239, -5
  %masksel = select i1 %tobool394.not, i32 0, i32 4
  %storemerge = or i32 %and400, %masksel
  store i32 %storemerge, ptr %erp_info, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then414)) #11
          to label %do.end418 [label %if.then414], !srcloc !284

if.then414:                                       ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #13
  %240 = ptrtoint ptr %erp_info to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %erp_info, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.68, i32 noundef %241) #11
  br label %do.end418

do.end418:                                        ; preds = %if.then414, %if.end392
  %242 = ptrtoint ptr %erp_info to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %erp_info, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %243)
  %cmp420.not = icmp eq i32 %232, %243
  br i1 %cmp420.not, label %do.end418.if.end425_crit_edge, label %if.then422

do.end418.if.end425_crit_edge:                    ; preds = %do.end418
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end425

if.then422:                                       ; preds = %do.end418
  call void @__sanitizer_cov_trace_pc() #13
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %244 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %workqueue, align 4
  %set_cts_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 125
  %call.i752 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %245, ptr noundef %set_cts_work) #11
  br label %if.end425

if.end425:                                        ; preds = %if.then422, %do.end418.if.end425_crit_edge, %if.end377.if.end425_crit_edge
  %and426 = and i32 %changed, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and426)
  %tobool427.not = icmp eq i32 %and426, 0
  br i1 %tobool427.not, label %if.end425.if.end449_crit_edge, label %if.then428

if.end425.if.end449_crit_edge:                    ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end449

if.then428:                                       ; preds = %if.end425
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot_time) #11
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %246 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %use_short_slot, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool429.not = icmp eq i8 %247, 0
  %cond431 = select i1 %tobool429.not, i32 335544320, i32 150994944
  %248 = ptrtoint ptr %slot_time to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %cond431, ptr %slot_time, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then444)) #11
          to label %do.end447 [label %if.then444], !srcloc !284

if.then444:                                       ; preds = %if.then428
  call void @__sanitizer_cov_trace_pc() #13
  %249 = ptrtoint ptr %slot_time to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %slot_time, align 4
  %251 = call i32 @llvm.bswap.i32(i32 %250)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug391, ptr noundef nonnull @.str.69, i32 noundef %251) #11
  br label %do.end447

do.end447:                                        ; preds = %if.then444, %if.then428
  %call448 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %slot_time, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot_time) #11
  br label %if.end449

if.end449:                                        ; preds = %do.end447, %if.end425.if.end449_crit_edge
  %and450 = and i32 %changed, 1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and450)
  %tobool451.not = icmp eq i32 %and450, 0
  br i1 %tobool451.not, label %if.end449.if.end521_crit_edge, label %if.then452

if.end449.if.end521_crit_edge:                    ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end521

if.then452:                                       ; preds = %if.end449
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %threshold) #11
  %252 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 8, ptr %threshold, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bss_info_changed, %if.then465)) #11
          to label %do.end468 [label %if.then465], !srcloc !284

if.then465:                                       ; preds = %if.then452
  call void @__sanitizer_cov_trace_pc() #13
  %cqm_rssi_thold = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 28
  %253 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %cqm_rssi_thold, align 4
  %cqm_rssi_hyst = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 29
  %255 = ptrtoint ptr %cqm_rssi_hyst to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %cqm_rssi_hyst, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bss_info_changed.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.70, i32 noundef %254, i32 noundef %256) #11
  br label %do.end468

do.end468:                                        ; preds = %if.then465, %if.then452
  %cqm_rssi_thold469 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 28
  %257 = ptrtoint ptr %cqm_rssi_thold469 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %cqm_rssi_thold469, align 4
  %cqm_rssi_thold470 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 33
  %259 = ptrtoint ptr %cqm_rssi_thold470 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %cqm_rssi_thold470, align 4
  %cqm_rssi_hyst471 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 29
  %260 = ptrtoint ptr %cqm_rssi_hyst471 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %cqm_rssi_hyst471, align 8
  %cqm_rssi_hyst472 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 34
  %262 = ptrtoint ptr %cqm_rssi_hyst472 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %cqm_rssi_hyst472, align 4
  %263 = load i32, ptr %cqm_rssi_thold469, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool474.not = icmp eq i32 %263, 0
  br i1 %tobool474.not, label %lor.lhs.false475, label %do.end468.if.then478_crit_edge

do.end468.if.then478_crit_edge:                   ; preds = %do.end468
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then478

lor.lhs.false475:                                 ; preds = %do.end468
  %264 = ptrtoint ptr %cqm_rssi_hyst471 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %cqm_rssi_hyst471, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool477.not = icmp eq i32 %265, 0
  br i1 %tobool477.not, label %if.else506, label %lor.lhs.false475.if.then478_crit_edge

lor.lhs.false475.if.then478_crit_edge:            ; preds = %lor.lhs.false475
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then478

if.then478:                                       ; preds = %lor.lhs.false475.if.then478_crit_edge, %do.end468.if.then478_crit_edge
  %cqm_use_rssi = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 35
  %266 = ptrtoint ptr %cqm_use_rssi to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %cqm_use_rssi, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool479.not = icmp eq i8 %267, 0
  %268 = ptrtoint ptr %cqm_rssi_hyst471 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %cqm_rssi_hyst471, align 8
  %add492 = add i32 %269, %263
  %add492.tr = trunc i32 %add492 to i8
  br i1 %tobool479.not, label %if.else489, label %if.then480

if.then480:                                       ; preds = %if.then478
  call void @__sanitizer_cov_trace_pc() #13
  %conv485 = trunc i32 %263 to i8
  %270 = ptrtoint ptr %threshold to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %threshold, align 4
  %272 = or i8 %271, 2
  store i8 %272, ptr %threshold, align 4
  br label %if.end501

if.else489:                                       ; preds = %if.then478
  call void @__sanitizer_cov_trace_pc() #13
  %273 = shl i8 %add492.tr, 1
  %conv494 = add i8 %273, -36
  %.tr = trunc i32 %263 to i8
  %274 = shl i8 %.tr, 1
  %conv499 = add i8 %274, -36
  br label %if.end501

if.end501:                                        ; preds = %if.else489, %if.then480
  %conv483.sink = phi i8 [ %conv494, %if.else489 ], [ %add492.tr, %if.then480 ]
  %conv485.sink = phi i8 [ %conv499, %if.else489 ], [ %conv485, %if.then480 ]
  %275 = getelementptr inbounds %struct.wsm_rcpi_rssi_threshold, ptr %threshold, i32 0, i32 2
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %conv483.sink, ptr %275, align 2
  %277 = getelementptr inbounds %struct.wsm_rcpi_rssi_threshold, ptr %threshold, i32 0, i32 1
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %conv485.sink, ptr %277, align 1
  %279 = ptrtoint ptr %threshold to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %threshold, align 4
  %281 = or i8 %280, 1
  store i8 %281, ptr %threshold, align 4
  br label %if.end519

if.else506:                                       ; preds = %lor.lhs.false475
  %282 = ptrtoint ptr %threshold to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %threshold, align 4
  %284 = or i8 %283, 13
  store i8 %284, ptr %threshold, align 4
  %cqm_use_rssi511 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 35
  %285 = ptrtoint ptr %cqm_use_rssi511 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %cqm_use_rssi511, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool512.not = icmp eq i8 %286, 0
  br i1 %tobool512.not, label %if.else506.if.end519_crit_edge, label %if.then513

if.else506.if.end519_crit_edge:                   ; preds = %if.else506
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end519

if.then513:                                       ; preds = %if.else506
  call void @__sanitizer_cov_trace_pc() #13
  %287 = or i8 %283, 15
  %288 = ptrtoint ptr %threshold to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %threshold, align 4
  br label %if.end519

if.end519:                                        ; preds = %if.then513, %if.else506.if.end519_crit_edge, %if.end501
  %call.i753 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4105, ptr noundef nonnull %threshold, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %threshold) #11
  br label %if.end521

if.end521:                                        ; preds = %if.end519, %if.end449.if.end521_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  br i1 %do_join.3.off0, label %if.then524, label %if.end521.cleanup_crit_edge

if.end521.cleanup_crit_edge:                      ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then524:                                       ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #13
  call void @wsm_lock_tx(ptr noundef %1) #11
  call fastcc void @cw1200_do_join(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then524, %if.end521.cleanup_crit_edge, %if.then205
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_update_beaconing(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %reset = alloca %struct.wsm_reset, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset) #11
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 16777216, ptr %reset, align 8
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 43
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then:                                          ; preds = %entry
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %5 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp1.not = icmp eq i32 %6, 6
  br i1 %cmp1.not, label %lor.lhs.false, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %beacon_int = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 46
  %7 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %beacon_int, align 4
  %beacon_int2 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 19
  %9 = ptrtoint ptr %beacon_int2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %beacon_int2, align 2
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp3.not = icmp eq i32 %8, %conv
  br i1 %cmp3.not, label %do.body17, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_update_beaconing.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_update_beaconing, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !284

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_update_beaconing.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.118) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void @wsm_lock_tx(ptr noundef %priv) #11
  %11 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10.not = icmp eq i32 %12, 0
  br i1 %cmp10.not, label %do.end.if.end14_crit_edge, label %if.then12

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = call i32 @wsm_reset(ptr noundef %priv, ptr noundef nonnull %reset) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end.if.end14_crit_edge
  %13 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %join_status, align 4
  call fastcc void @cw1200_start_ap(ptr noundef %priv)
  call void @wsm_unlock_tx(ptr noundef %priv) #11
  br label %if.end35

do.body17:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_update_beaconing.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_update_beaconing, %if.then29)) #11
          to label %if.end35 [label %if.then29], !srcloc !284

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %join_status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_update_beaconing.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.119, i32 noundef %15) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %do.body17, %if.end14, %entry.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_rate_mask_to_wsm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_set_btcoexinfo(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.wsm_override_internal_txrate, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #11
  %0 = getelementptr inbounds %struct.wsm_override_internal_txrate, ptr %arg, i32 0, i32 1
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 43
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %vif.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vif.i, align 4
  %call.i = tail call ptr @ieee80211_pspoll_get(ptr noundef %4, ptr noundef %6) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cw1200_upload_pspoll.exit_crit_edge, label %if.end.i

if.then.cw1200_upload_pspoll.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_upload_pspoll.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %call.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %call.i.i, i32 1
  %8 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx1.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %11 = trunc i32 %10 to i16
  %conv.i.i = add i16 %11, -4
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %arrayidx3.i.i = getelementptr i16, ptr %call.i.i, i32 1
  %13 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx3.i.i, align 2
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %call6.i.i = tail call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4098, ptr noundef %call.i.i, i32 noundef %15) #11
  %call8.i.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i, i32 noundef 4) #11
  tail call void @consume_skb(ptr noundef nonnull %call.i) #11
  br label %cw1200_upload_pspoll.exit

cw1200_upload_pspoll.exit:                        ; preds = %if.end.i, %if.then.cw1200_upload_pspoll.exit_crit_edge
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %18 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vif.i, align 4
  %call.i9 = tail call ptr @ieee80211_nullfunc_get(ptr noundef %17, ptr noundef %19, i1 noundef zeroext false) #11
  %tobool.not.i10 = icmp eq ptr %call.i9, null
  br i1 %tobool.not.i10, label %cw1200_upload_pspoll.exit.cw1200_upload_null.exit_crit_edge, label %if.end.i18

cw1200_upload_pspoll.exit.cw1200_upload_null.exit_crit_edge: ; preds = %cw1200_upload_pspoll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_upload_null.exit

if.end.i18:                                       ; preds = %cw1200_upload_pspoll.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i11 = tail call ptr @skb_push(ptr noundef nonnull %call.i9, i32 noundef 4) #11
  %20 = ptrtoint ptr %call.i.i11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %call.i.i11, align 1
  %arrayidx1.i.i12 = getelementptr i8, ptr %call.i.i11, i32 1
  %21 = ptrtoint ptr %arrayidx1.i.i12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %arrayidx1.i.i12, align 1
  %len.i.i13 = getelementptr inbounds %struct.sk_buff, ptr %call.i9, i32 0, i32 6
  %22 = ptrtoint ptr %len.i.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i13, align 4
  %24 = trunc i32 %23 to i16
  %conv.i.i14 = add i16 %24, -4
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i14) #11
  %arrayidx3.i.i15 = getelementptr i16, ptr %call.i.i11, i32 1
  %26 = ptrtoint ptr %arrayidx3.i.i15 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayidx3.i.i15, align 2
  %27 = ptrtoint ptr %len.i.i13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i13, align 4
  %call6.i.i16 = tail call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4098, ptr noundef %call.i.i11, i32 noundef %28) #11
  %call8.i.i17 = tail call ptr @skb_pull(ptr noundef nonnull %call.i9, i32 noundef 4) #11
  tail call void @consume_skb(ptr noundef nonnull %call.i9) #11
  br label %cw1200_upload_null.exit

cw1200_upload_null.exit:                          ; preds = %if.end.i18, %cw1200_upload_pspoll.exit.cw1200_upload_null.exit_crit_edge
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arg, align 4
  %30 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vif.i, align 4
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %p2p, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  %operational_rate_set = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 29, i32 3
  %34 = ptrtoint ptr %operational_rate_set to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %operational_rate_set, align 4
  br i1 %tobool.not, label %if.then3, label %if.else41

if.then3:                                         ; preds = %cw1200_upload_null.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %35)
  %tobool4.not = icmp ult i32 %35, 16
  br i1 %tobool4.not, label %do.body17, label %do.body

do.body:                                          ; preds = %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_set_btcoexinfo, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !284

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.104) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %36 = ptrtoint ptr %operational_rate_set to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %operational_rate_set, align 4
  %and14 = and i32 %37, -16
  br label %if.end36

do.body17:                                        ; preds = %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_set_btcoexinfo, %if.then29)) #11
          to label %do.end32 [label %if.then29], !srcloc !284

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.105) #11
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body17
  %basic_rate_set = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 28, i32 4
  %38 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %basic_rate_set, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  br label %if.end36

if.end36:                                         ; preds = %do.end32, %do.end
  %.sink = phi i32 [ %40, %do.end32 ], [ %and14, %do.end ]
  %41 = tail call i32 @llvm.cttz.i32(i32 %.sink, i1 false) #11, !range !293
  %storemerge1 = trunc i32 %41 to i8
  %42 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %storemerge1, ptr %arg, align 4
  %basic_rate_set38 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 28, i32 4
  %43 = ptrtoint ptr %basic_rate_set38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %basic_rate_set38, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = tail call i32 @llvm.cttz.i32(i32 %45, i1 false) #11, !range !293
  %.pre = trunc i32 %46 to i8
  br label %do.body55

if.else41:                                        ; preds = %cw1200_upload_null.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and44 = and i32 %35, -16
  %47 = tail call i32 @llvm.cttz.i32(i32 %and44, i1 false) #11, !range !293
  %conv46 = trunc i32 %47 to i8
  %48 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv46, ptr %arg, align 4
  br label %do.body55

do.body55:                                        ; preds = %if.else41, %if.end36
  %storemerge.pre-phi = phi i8 [ %.pre, %if.end36 ], [ %conv46, %if.else41 ]
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %storemerge.pre-phi, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_set_btcoexinfo, %if.then67)) #11
          to label %do.end75 [label %if.then67], !srcloc !284

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mode, align 4
  %52 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arg, align 4
  %conv70 = zext i8 %53 to i32
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %0, align 1
  %conv72 = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.106, i32 noundef %51, i32 noundef %conv70, i32 noundef %conv72) #11
  br label %do.end75

do.end75:                                         ; preds = %if.then67, %do.body55
  %call76 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4111, ptr noundef nonnull %arg, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_do_join(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %val.i242 = alloca i32, align 4
  %val.i = alloca %struct.wsm_mib_block_ack_policy, align 1
  %reset.i.i = alloca %struct.wsm_reset, align 8
  %join = alloca %struct.wsm_join, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %join) #11
  %2 = call ptr @memset(ptr %join, i32 0, i32 56)
  %ibss_joined = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 11
  %3 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ibss_joined, align 8, !range !283
  %5 = xor i8 %4, 1
  %6 = ptrtoint ptr %join to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %join, align 4
  %probe_for_join = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 6
  %7 = ptrtoint ptr %probe_for_join to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %probe_for_join, align 1
  %basic_rate_set = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 12
  %basic_rates = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 24
  %8 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %basic_rates, align 8
  %call = tail call i32 @cw1200_rate_mask_to_wsm(ptr noundef %priv, i32 noundef %9) #11
  %10 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %basic_rate_set, align 4
  %join_timeout = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 101
  %11 = ptrtoint ptr %join_timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %join_timeout, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #14
  tail call void @wsm_unlock_tx(ptr noundef %priv) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %13 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cw1200_do_unjoin(ptr noundef %priv)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vif, align 4
  %bss_conf9 = getelementptr inbounds %struct.ieee80211_vif, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %bss_conf9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bss_conf9, align 8
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy, align 8
  %channel = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 25
  %23 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel, align 4
  %call11 = tail call ptr @cfg80211_get_bss(ptr noundef %22, ptr noundef %24, ptr noundef %18, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 2) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %land.lhs.true, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end7
  %25 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ibss_joined, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool14.not = icmp eq i8 %26, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wsm_unlock_tx(ptr noundef %priv) #11
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #11
  %in_progress = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_progress, i32 noundef 4) #11
  %27 = ptrtoint ptr %in_progress to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool18.not = icmp eq i32 %28, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wsm_unlock_tx(ptr noundef %priv) #11
  br label %done_put

if.end20:                                         ; preds = %if.end16
  %join_pending = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 99
  %29 = ptrtoint ptr %join_pending to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %join_pending, align 4
  %30 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %basic_rate_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool22.not = icmp eq i32 %31, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %basic_rate_set, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %beacon_int = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 46
  %33 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %beacon_int, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool26.not = icmp eq i32 %34, 0
  br i1 %tobool26.not, label %if.then27, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %beacon_int to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %beacon_int, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %36 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %beacon_int, align 4
  %beacon_interval = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 11
  %38 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %beacon_interval, align 4
  %bt_present = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 62
  %39 = ptrtoint ptr %bt_present to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bt_present, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool31.not = icmp eq i8 %40, 0
  br i1 %tobool31.not, label %if.end29.if.end48_crit_edge, label %if.then32

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %conf_listen_interval = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 63
  %41 = ptrtoint ptr %conf_listen_interval to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %conf_listen_interval, align 2
  %conv33 = zext i8 %42 to i32
  %mul = mul nuw nsw i32 %conv33, 100
  %mul.frozen = freeze i32 %mul
  %.frozen = freeze i32 %37
  %div = sdiv i32 %mul.frozen, %.frozen
  %43 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %mul.frozen, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp = icmp ne i32 %rem.decomposed, 0
  %add = zext i1 %cmp to i32
  %div.sink = add nsw i32 %div, %add
  %listen_interval = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 65
  %44 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div.sink, ptr %listen_interval, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then32, %if.end29.if.end48_crit_edge
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 4
  %ps_dtim_period = getelementptr inbounds %struct.ieee80211_conf, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %ps_dtim_period to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ps_dtim_period, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool51.not = icmp eq i8 %48, 0
  br i1 %tobool51.not, label %if.end48.if.end57_crit_edge, label %if.then52

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %conv56 = zext i8 %48 to i32
  %join_dtim_period = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 105
  %49 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv56, ptr %join_dtim_period, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end48.if.end57_crit_edge
  %join_dtim_period58 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 105
  %50 = ptrtoint ptr %join_dtim_period58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %join_dtim_period58, align 4
  %conv59 = trunc i32 %51 to i8
  %dtim_period = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 7
  %52 = ptrtoint ptr %dtim_period to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv59, ptr %dtim_period, align 2
  %53 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %channel, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hw_value, align 2
  %channel_number = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 2
  %57 = ptrtoint ptr %channel_number to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %channel_number, align 2
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp62 = icmp eq i32 %59, 1
  %conv65 = zext i1 %cmp62 to i8
  %band66 = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 1
  %60 = ptrtoint ptr %band66 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv65, ptr %band66, align 1
  %bssid67 = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 3
  %61 = call ptr @memcpy(ptr %bssid67, ptr %18, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_do_join.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_do_join, %if.then74)) #11
          to label %do.end82 [label %if.then74], !srcloc !284

if.then74:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dtim_period, align 2
  %conv78 = zext i8 %63 to i32
  %64 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %beacon_int, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_do_join.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.109, ptr noundef %bssid67, i32 noundef %conv78, i32 noundef %65) #11
  br label %do.end82

do.end82:                                         ; preds = %if.then74, %if.end57
  %66 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ibss_joined, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool84.not = icmp eq i8 %67, 0
  br i1 %tobool84.not, label %if.then85, label %do.end82.if.end94_crit_edge

do.end82.if.end94_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then85:                                        ; preds = %do.end82
  %68 = call i32 @llvm.read_register.i32(metadata !273) #11
  %and.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %71, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !291
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then85.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then85.rcu_read_lock.exit_crit_edge:           ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then85
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.99, i32 noundef 696, ptr noundef nonnull @.str.100) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then85.rcu_read_lock.exit_crit_edge
  %call.i230 = call ptr @ieee80211_bss_get_elem(ptr noundef %call11, i8 noundef zeroext 0) #11
  %tobool87.not = icmp eq ptr %call.i230, null
  br i1 %tobool87.not, label %rcu_read_lock.exit.if.end93_crit_edge, label %if.then88

rcu_read_lock.exit.if.end93_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then88:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i8, ptr %call.i230, i32 1
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx, align 1
  %conv89 = zext i8 %73 to i32
  %ssid_len = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 9
  %74 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv89, ptr %ssid_len, align 4
  %ssid = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 10
  %arrayidx91 = getelementptr i8, ptr %call.i230, i32 2
  %75 = call ptr @memcpy(ptr %ssid, ptr %arrayidx91, i32 %conv89)
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %rcu_read_lock.exit.if.end93_crit_edge
  %call.i231 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i231, label %if.end93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i234

if.end93.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i234:                               ; preds = %if.end93
  %call1.i232 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i232)
  %tobool.not.i233 = icmp eq i32 %call1.i232, 0
  br i1 %tobool.not.i233, label %land.lhs.true.i234.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i236

land.lhs.true.i234.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i234
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i236:                              ; preds = %land.lhs.true.i234
  %.b4.i235 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i235, label %land.lhs.true2.i236.rcu_read_unlock.exit_crit_edge, label %if.then.i237

land.lhs.true2.i236.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i236
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i237:                                     ; preds = %land.lhs.true2.i236
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.99, i32 noundef 724, ptr noundef nonnull @.str.102) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i237, %land.lhs.true2.i236.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i234.rcu_read_unlock.exit_crit_edge, %if.end93.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !292
  %76 = call i32 @llvm.read_register.i32(metadata !273) #11
  %and.i.i.i.i.i238 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i238 to ptr
  %preempt_count.i.i.i.i239 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i239, align 4
  %sub.i.i.i = add i32 %79, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i239, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %if.end94

if.end94:                                         ; preds = %rcu_read_unlock.exit, %do.end82.if.end94_crit_edge
  %80 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vif, align 4
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %p2p, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool96.not = icmp eq i8 %83, 0
  br i1 %tobool96.not, label %if.end94.if.end102_crit_edge, label %if.then97

if.end94.if.end102_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 8
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %flags, align 1
  %86 = or i8 %85, 2
  store i8 %86, ptr %flags, align 1
  %call100 = call i32 @cw1200_rate_mask_to_wsm(ptr noundef %priv, i32 noundef 4080) #11
  %87 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call100, ptr %basic_rate_set, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %if.end94.if.end102_crit_edge
  %88 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ibss_joined, align 8, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool104.not = icmp eq i8 %89, 0
  br i1 %tobool104.not, label %if.then105, label %if.end102.if.end114_crit_edge

if.end102.if.end114_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %flags106 = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 8
  %90 = ptrtoint ptr %flags106 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %flags106, align 1
  %92 = or i8 %91, 36
  store i8 %92, ptr %flags106, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then105, %if.end102.if.end114_crit_edge
  %call115 = call zeroext i1 @wsm_flush_tx(ptr noundef %priv) #11
  %pm_state = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 58
  call void @cw1200_pm_stay_awake(ptr noundef %pm_state, i32 noundef 600) #11
  %93 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp8.i = icmp eq i32 %94, 1
  br i1 %cmp8.i, label %if.then9.i, label %if.end114.cw1200_update_listening.exit_crit_edge

if.end114.cw1200_update_listening.exit_crit_edge: ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_update_listening.exit

if.then9.i:                                       ; preds = %if.end114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset.i.i) #11
  %95 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 16777216, ptr %reset.i.i, align 8
  %call.i25.i = call i32 @wsm_reset(ptr noundef %priv, ptr noundef nonnull %reset.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool11.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool11.not.i, label %if.end17.sink.split.sink.split.i, label %if.then9.i.if.end17.sink.split.i_crit_edge

if.then9.i.if.end17.sink.split.i_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.i

if.end17.sink.split.sink.split.i:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %join_status, align 4
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.end17.sink.split.sink.split.i, %if.then9.i.if.end17.sink.split.i_crit_edge
  %call15.i = call i32 @wsm_set_probe_responder(ptr noundef %priv, i1 noundef zeroext false) #11
  br label %cw1200_update_listening.exit

cw1200_update_listening.exit:                     ; preds = %if.end17.sink.split.i, %if.end114.cw1200_update_listening.exit_crit_edge
  %ba_tx_tid_mask = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 56
  %97 = ptrtoint ptr %ba_tx_tid_mask to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ba_tx_tid_mask, align 1
  %ba_rx_tid_mask = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 55
  %99 = ptrtoint ptr %ba_rx_tid_mask to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ba_rx_tid_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %101 = getelementptr inbounds %struct.wsm_mib_block_ack_policy, ptr %val.i, i32 0, i32 1
  %102 = getelementptr inbounds %struct.wsm_mib_block_ack_policy, ptr %val.i, i32 0, i32 2
  %103 = getelementptr inbounds %struct.wsm_mib_block_ack_policy, ptr %val.i, i32 0, i32 3
  %104 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %98, ptr %val.i, align 1
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %101, align 1
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %100, ptr %102, align 1
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %103, align 1
  %call.i240 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4110, ptr noundef nonnull %val.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %flags117 = getelementptr inbounds %struct.wsm_join, ptr %join, i32 0, i32 8
  %108 = ptrtoint ptr %flags117 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %flags117, align 1
  %110 = and i8 %109, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool119.not = icmp eq i8 %110, 0
  br i1 %tobool119.not, label %cw1200_update_listening.exit.wsm_set_protected_mgmt_policy.exit_crit_edge, label %if.then120

cw1200_update_listening.exit.wsm_set_protected_mgmt_policy.exit_crit_edge: ; preds = %cw1200_update_listening.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %wsm_set_protected_mgmt_policy.exit

if.then120:                                       ; preds = %cw1200_update_listening.exit
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2, ptr %join_status, align 4
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %112 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %workqueue, align 4
  %call.i241 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %113, ptr noundef %join_timeout, i32 noundef 100) #11
  br label %wsm_set_protected_mgmt_policy.exit

wsm_set_protected_mgmt_policy.exit:               ; preds = %if.then120, %cw1200_update_listening.exit.wsm_set_protected_mgmt_policy.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i242) #11
  %114 = ptrtoint ptr %val.i242 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 100663296, ptr %val.i242, align 4
  %call.i244 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4128, ptr noundef nonnull %val.i242, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i242) #11
  %call126 = call i32 @wsm_join(ptr noundef %priv, ptr noundef nonnull %join) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.else144, label %do.end131

do.end131:                                        ; preds = %wsm_set_protected_mgmt_policy.exit
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #14
  %call135 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %join_timeout) #11
  %listening = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 47
  %115 = ptrtoint ptr %listening to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %listening, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool136 = icmp ne i8 %116, 0
  call void @cw1200_update_listening(ptr noundef %priv, i1 noundef zeroext %tobool136)
  %workqueue137 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %117 = ptrtoint ptr %workqueue137 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %workqueue137, align 4
  %unjoin_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 102
  %call.i245 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %118, ptr noundef %unjoin_work) #11
  br i1 %call.i245, label %do.end131.if.end152_crit_edge, label %if.then142

do.end131.if.end152_crit_edge:                    ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

if.then142:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #13
  call void @wsm_unlock_tx(ptr noundef %priv) #11
  br label %if.end152

if.else144:                                       ; preds = %wsm_set_protected_mgmt_policy.exit
  %119 = ptrtoint ptr %flags117 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %flags117, align 1
  %121 = and i8 %120, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool148.not = icmp eq i8 %121, 0
  br i1 %tobool148.not, label %if.then149, label %if.else144.if.end150_crit_edge

if.else144.if.end150_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then149:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @cw1200_join_complete(ptr noundef %priv)
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.else144.if.end150_crit_edge
  %call151 = call i32 @cw1200_upload_keys(ptr noundef %priv) #11
  %disable_beacon_filter = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 51
  %122 = ptrtoint ptr %disable_beacon_filter to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %disable_beacon_filter, align 2
  br label %if.end152

if.end152:                                        ; preds = %if.end150, %if.then142, %do.end131.if.end152_crit_edge
  call void @cw1200_update_filtering(ptr noundef %priv)
  br label %done_put

done_put:                                         ; preds = %if.end152, %if.then19
  call void @mutex_unlock(ptr noundef %conf_mutex) #11
  br i1 %tobool12.not, label %done_put.cleanup_crit_edge, label %if.then155

done_put.cleanup_crit_edge:                       ; preds = %done_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then155:                                       ; preds = %done_put
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %priv, align 4
  %wiphy157 = getelementptr inbounds %struct.ieee80211_hw, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %wiphy157 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wiphy157, align 8
  call void @cfg80211_put_bss(ptr noundef %126, ptr noundef nonnull %call11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then155, %done_put.cleanup_crit_edge, %if.then15, %do.end
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %join) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_multicast_start_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %join_dtim_period = getelementptr i8, ptr %work, i32 -1256
  %0 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %join_dtim_period, align 4
  %beacon_int = getelementptr i8, ptr %work, i32 -2908
  %2 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beacon_int, align 4
  %multicast_stop_work = getelementptr i8, ptr %work, i32 44
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %multicast_stop_work) #11
  %aid0_bit_set = getelementptr i8, ptr %work, i32 -140
  %4 = ptrtoint ptr %aid0_bit_set to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aid0_bit_set, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %work, i32 -4080
  %add = add i32 %3, 20
  %mul = mul i32 %1, 100
  %mul1 = mul i32 %mul, %add
  %div = sdiv i32 %mul1, 1024
  tail call void @wsm_lock_tx(ptr noundef %add.ptr) #11
  tail call fastcc void @cw1200_set_tim_impl(ptr noundef %add.ptr, i1 noundef zeroext true)
  %6 = ptrtoint ptr %aid0_bit_set to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %aid0_bit_set, align 4
  %mcast_timeout = getelementptr i8, ptr %work, i32 88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add4 = add i32 %7, %div
  %call5 = tail call i32 @mod_timer(ptr noundef %mcast_timeout, i32 noundef %add4) #11
  tail call void @wsm_unlock_tx(ptr noundef %add.ptr) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_multicast_stop_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aid0_bit_set = getelementptr i8, ptr %work, i32 -184
  %0 = ptrtoint ptr %aid0_bit_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aid0_bit_set, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %work, i32 -4124
  %mcast_timeout = getelementptr i8, ptr %work, i32 44
  %call = tail call i32 @del_timer_sync(ptr noundef %mcast_timeout) #11
  tail call void @wsm_lock_tx(ptr noundef %add.ptr) #11
  %2 = ptrtoint ptr %aid0_bit_set to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %aid0_bit_set, align 4
  tail call fastcc void @cw1200_set_tim_impl(ptr noundef %add.ptr, i1 noundef zeroext false)
  tail call void @wsm_unlock_tx(ptr noundef %add.ptr) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_mcast_timeout(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4168
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.71) #14
  %ps_state_lock = getelementptr i8, ptr %t, i32 -224
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #11
  %aid0_bit_set = getelementptr i8, ptr %t, i32 -228
  %4 = ptrtoint ptr %aid0_bit_set to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aid0_bit_set, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.critedge, label %land.rhs

land.rhs:                                         ; preds = %entry
  %buffered_multicasts = getelementptr i8, ptr %t, i32 -180
  %6 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffered_multicasts, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  %tx_multicast = getelementptr i8, ptr %t, i32 -179
  %8 = ptrtoint ptr %tx_multicast to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tx_multicast, align 1
  br i1 %tobool1.not, label %land.rhs.if.end_crit_edge, label %if.then

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cw1200_bh_wakeup(ptr noundef %add.ptr) #11
  br label %if.end

if.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tx_multicast.c = getelementptr i8, ptr %t, i32 -179
  %9 = ptrtoint ptr %tx_multicast.c to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tx_multicast.c, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %if.then, %land.rhs.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_bh_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cw1200_ampdu_action(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %params) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_suspend_resume(ptr noundef %priv, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_suspend_resume.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_suspend_resume, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %stop = getelementptr inbounds %struct.wsm_suspend_resume, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %stop to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stop, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool3.not, ptr @.str.77, ptr @.str.76
  %multicast = getelementptr inbounds %struct.wsm_suspend_resume, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %multicast to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multicast, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.79, ptr @.str.78
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_suspend_resume.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.75, ptr noundef nonnull %cond, ptr noundef nonnull %cond5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %multicast6 = getelementptr inbounds %struct.wsm_suspend_resume, ptr %arg, i32 0, i32 2
  %4 = ptrtoint ptr %multicast6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multicast6, align 1, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  %ps_state_lock28 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock28) #11
  br i1 %tobool7.not, label %if.else27, label %if.then8

if.then8:                                         ; preds = %do.end
  %stop9 = getelementptr inbounds %struct.wsm_suspend_resume, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %stop9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stop9, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %tx_multicast = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 122
  %8 = ptrtoint ptr %tx_multicast to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_multicast, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock28) #11
  br label %if.end36

if.else:                                          ; preds = %if.then8
  %pm_state = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 58
  %join_dtim_period = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 105
  %9 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %join_dtim_period, align 4
  %beacon_int = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 46
  %11 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %beacon_int, align 4
  %add = add i32 %12, 20
  %mul = mul i32 %10, 100
  %mul12 = mul i32 %mul, %add
  %div = sdiv i32 %mul12, 1024
  tail call void @cw1200_pm_stay_awake(ptr noundef %pm_state, i32 noundef %div) #11
  %aid0_bit_set = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 118
  %13 = ptrtoint ptr %aid0_bit_set to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aid0_bit_set, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool13.not = icmp eq i8 %14, 0
  br i1 %tobool13.not, label %if.end21.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %buffered_multicasts = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 121
  %15 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buffered_multicasts, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  %tx_multicast15 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 122
  %17 = ptrtoint ptr %tx_multicast15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tx_multicast15, align 1
  br i1 %tobool14.not, label %land.rhs.if.end21_crit_edge, label %if.then19

land.rhs.if.end21_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cw1200_bh_wakeup(ptr noundef %priv) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock28) #11
  %mcast_timeout = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 128
  %call25 = tail call i32 @del_timer_sync(ptr noundef %mcast_timeout) #11
  br label %if.end36

if.end21.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %tx_multicast15.c = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 122
  %18 = ptrtoint ptr %tx_multicast15.c to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %tx_multicast15.c, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.end21.critedge, %land.rhs.if.end21_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock28) #11
  br label %if.end36

if.else27:                                        ; preds = %do.end
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arg, align 4
  %stop29 = getelementptr inbounds %struct.wsm_suspend_resume, ptr %arg, i32 0, i32 1
  %21 = ptrtoint ptr %stop29 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stop29, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool30.not = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp.i = icmp sgt i32 %20, 5
  br i1 %cmp.i, label %if.else27.cw1200_ps_notify.exit_crit_edge, label %do.body.i

if.else27.cw1200_ps_notify.exit_crit_edge:        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cw1200_ps_notify.exit

do.body.i:                                        ; preds = %if.else27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_ps_notify.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_suspend_resume, %if.then4.i)) #11
          to label %do.end.i [label %if.then4.i], !srcloc !284

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond.i = select i1 %tobool30.not, ptr @.str.116, ptr @.str.115
  %sta_asleep_mask.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 116
  %23 = ptrtoint ptr %sta_asleep_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sta_asleep_mask.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_ps_notify.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.114, ptr noundef nonnull %cond.i, i32 noundef %20, i32 noundef %24) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %27 = xor i8 %22, 1
  %28 = zext i8 %27 to i32
  tail call fastcc void @__cw1200_sta_notify(ptr noundef %26, i32 noundef %28, i32 noundef %20) #11
  br label %cw1200_ps_notify.exit

cw1200_ps_notify.exit:                            ; preds = %do.end.i, %if.else27.cw1200_ps_notify.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock28) #11
  %29 = ptrtoint ptr %stop29 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %stop29, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not = icmp eq i8 %30, 0
  br i1 %tobool33.not, label %if.then34, label %cw1200_ps_notify.exit.if.end36_crit_edge

cw1200_ps_notify.exit.if.end36_crit_edge:         ; preds = %cw1200_ps_notify.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %cw1200_ps_notify.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cw1200_bh_wakeup(ptr noundef %priv) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %cw1200_ps_notify.exit.if.end36_crit_edge, %if.end21, %if.then19, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cw1200_queue_stats_is_empty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_pspoll_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_upload_keys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_beacon_transmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_start_ap(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %val.i6 = alloca i8, align 1
  %val.i = alloca %struct.wsm_mib_block_ack_policy, align 4
  %start = alloca %struct.wsm_start, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %start) #11
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p2p, align 2, !range !283
  %4 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %start, align 4
  %band = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 1
  %channel = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 25
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %conv5 = zext i1 %cmp to i8
  %9 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5, ptr %band, align 1
  %channel_number = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 2
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_value, align 2
  %12 = ptrtoint ptr %channel_number to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %channel_number, align 2
  %ct_window = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 3
  %13 = ptrtoint ptr %ct_window to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ct_window, align 4
  %beacon_interval = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 4
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 19
  %14 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %beacon_int, align 2
  %conv7 = zext i16 %15 to i32
  %16 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %beacon_interval, align 4
  %dtim_period = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 5
  %dtim_period8 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 18
  %17 = ptrtoint ptr %dtim_period8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dtim_period8, align 8
  %19 = ptrtoint ptr %dtim_period to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %dtim_period, align 4
  %preamble = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 6
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 15
  %20 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_short_preamble, align 1, !range !283
  %22 = ptrtoint ptr %preamble to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %preamble, align 1
  %probe_delay = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 7
  %23 = ptrtoint ptr %probe_delay to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 100, ptr %probe_delay, align 2
  %ssid_len = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 8
  %ssid = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 9
  %basic_rate_set = getelementptr inbounds %struct.wsm_start, ptr %start, i32 0, i32 10
  %basic_rates = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 24
  %24 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ssid_len, align 1
  %25 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %basic_rates, align 8
  %call = tail call i32 @cw1200_rate_mask_to_wsm(ptr noundef %priv, i32 noundef %26) #11
  %27 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call, ptr %basic_rate_set, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cw1200_power_mode to i32))
  %28 = load i32, ptr @cw1200_power_mode, align 4
  %29 = call ptr @memset(ptr %ssid, i32 0, i32 32)
  %hidden_ssid = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 41
  %30 = ptrtoint ptr %hidden_ssid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hidden_ssid, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not = icmp eq i8 %31, 0
  br i1 %tobool15.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ssid_len16 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 40
  %32 = ptrtoint ptr %ssid_len16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ssid_len16, align 8
  %conv17 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv17, ptr %ssid_len, align 1
  %ssid21 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 39
  %conv24 = and i32 %33, 255
  %35 = call ptr @memcpy(ptr %ssid, ptr %ssid21, i32 %conv24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %36 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %beacon_int, align 2
  %conv26 = zext i16 %37 to i32
  %beacon_int27 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 46
  %38 = ptrtoint ptr %beacon_int27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv26, ptr %beacon_int27, align 4
  %39 = ptrtoint ptr %dtim_period8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dtim_period8, align 8
  %conv29 = zext i8 %40 to i32
  %join_dtim_period = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 105
  %41 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv29, ptr %join_dtim_period, align 4
  %link_id_db = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 113
  %42 = call ptr @memset(ptr %link_id_db, i32 0, i32 420)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_start_ap.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_start_ap, %if.then34)) #11
          to label %do.end [label %if.then34], !srcloc !284

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %channel_number to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %channel_number, align 2
  %conv36 = zext i16 %44 to i32
  %45 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %band, align 1
  %conv38 = zext i8 %46 to i32
  %47 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %beacon_interval, align 4
  %49 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dtim_period, align 4
  %conv41 = zext i8 %50 to i32
  %51 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %basic_rate_set, align 4
  %53 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ssid_len, align 1
  %conv44 = zext i8 %54 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_start_ap.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.121, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %48, i32 noundef %conv41, i32 noundef %52, i32 noundef %conv44, ptr noundef %ssid) #11
  br label %do.end

do.end:                                           ; preds = %if.then34, %if.end
  %call48 = call i32 @wsm_start(ptr noundef %priv, ptr noundef nonnull %start) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end52, label %do.end.wsm_set_operational_mode.exit_crit_edge

do.end.wsm_set_operational_mode.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %wsm_set_operational_mode.exit

if.end52:                                         ; preds = %do.end
  %call51 = call i32 @cw1200_upload_keys(ptr noundef %priv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool53.not = icmp eq i32 %call51, 0
  br i1 %tobool53.not, label %land.lhs.true, label %if.end52.wsm_set_operational_mode.exit_crit_edge

if.end52.wsm_set_operational_mode.exit_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %wsm_set_operational_mode.exit

land.lhs.true:                                    ; preds = %if.end52
  %55 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vif, align 4
  %p2p55 = getelementptr inbounds %struct.ieee80211_vif, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %p2p55 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %p2p55, align 2, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool56.not = icmp eq i8 %58, 0
  br i1 %tobool56.not, label %land.lhs.true.if.then78_crit_edge, label %do.body59

land.lhs.true.if.then78_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then78

do.body59:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_start_ap.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_start_ap, %if.then71)) #11
          to label %do.end74 [label %if.then71], !srcloc !284

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_start_ap.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.122) #11
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %do.body59
  %p2p_ps_modeinfo = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 59
  %call.i = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4121, ptr noundef %p2p_ps_modeinfo, i32 noundef 16) #11
  br label %if.then78

if.then78:                                        ; preds = %do.end74, %land.lhs.true.if.then78_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %59 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %val.i, align 4
  %call.i5 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4110, ptr noundef nonnull %val.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %60 = ptrtoint ptr %join_status to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 6, ptr %join_status, align 4
  call void @cw1200_update_filtering(ptr noundef %priv)
  br label %wsm_set_operational_mode.exit

wsm_set_operational_mode.exit:                    ; preds = %if.then78, %if.end52.wsm_set_operational_mode.exit_crit_edge, %do.end.wsm_set_operational_mode.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i6) #11
  %conv.i = trunc i32 %28 to i8
  %conv2.i = or i8 %conv.i, 16
  %61 = ptrtoint ptr %val.i6 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv2.i, ptr %val.i6, align 1
  %call.i7 = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4102, ptr noundef nonnull %val.i6, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i6) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %start) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !45, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !171, !172, !173, !175, !176, !177, !178, !179, !180, !181, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199, !200, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !218, !219, !220, !221, !222, !224, !225, !226, !228, !230, !231, !233, !234, !235, !237, !238, !240, !241, !243, !244, !245, !246, !248, !249, !251, !252, !253, !255, !256, !257, !258, !259, !261, !262, !263, !265, !266, !268, !269, !270, !272}
!llvm.named.register.sp = !{!273}
!llvm.module.flags = !{!274, !275, !276, !277, !278, !279, !280, !281}
!llvm.ident = !{!282}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 137, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cw1200_stop.__UNIQUE_ID_ddebug348, !1, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!6 = !{ptr @__param_cw1200_bssloss_mitigation, !7, !"__param_cw1200_bssloss_mitigation", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 144, i32 1}
!8 = !{ptr @__UNIQUE_ID_cw1200_bssloss_mitigationtype349, !7, !"__UNIQUE_ID_cw1200_bssloss_mitigationtype349", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_cw1200_bssloss_mitigation350, !10, !"__UNIQUE_ID_cw1200_bssloss_mitigation350", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 145, i32 1}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 156, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__cw1200_cqm_bssloss_sm.__UNIQUE_ID_ddebug351, !12, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 311, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cw1200_change_interface.__UNIQUE_ID_ddebug352, !16, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 330, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cw1200_config.__UNIQUE_ID_ddebug353, !20, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 339, i32 3}
!25 = !{ptr @cw1200_config.__UNIQUE_ID_ddebug354, !24, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 349, i32 3}
!28 = !{ptr @cw1200_config.__UNIQUE_ID_ddebug355, !27, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 423, i32 3}
!31 = !{ptr @cw1200_config.__UNIQUE_ID_ddebug356, !30, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!32 = distinct !{null, !33, !"bf_ctrl", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 446, i32 42}
!34 = !{ptr @cw1200_update_filtering.bf_tbl, !35, !"bf_tbl", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 447, i32 44}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 506, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cw1200_update_filtering._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @cw1200_update_filtering._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"broadcast_ipv6", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 535, i32 12}
!45 = distinct !{null, !46, !"broadcast_ipv4", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 538, i32 12}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 554, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cw1200_prepare_multicast.__UNIQUE_ID_ddebug357, !48, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 810, i32 4}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cw1200_set_key._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @cw1200_set_key._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 833, i32 3}
!58 = !{ptr @cw1200_set_key._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cw1200_set_key._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 850, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @cw1200_wep_key_work.__UNIQUE_ID_ddebug358, !61, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 876, i32 2}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cw1200_set_rts_threshold.__UNIQUE_ID_ddebug359, !65, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 977, i32 4}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cw1200_event_handler._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cw1200_event_handler._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 980, i32 4}
!75 = !{ptr @cw1200_event_handler.__UNIQUE_ID_ddebug360, !74, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 996, i32 4}
!78 = !{ptr @cw1200_event_handler.__UNIQUE_ID_ddebug361, !77, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1001, i32 4}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cw1200_event_handler._entry.32, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @cw1200_event_handler._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1018, i32 4}
!86 = !{ptr @cw1200_event_handler.__UNIQUE_ID_ddebug362, !85, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1024, i32 4}
!89 = !{ptr @cw1200_event_handler._entry.37, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cw1200_event_handler._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1027, i32 4}
!93 = !{ptr @cw1200_event_handler._entry.40, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cw1200_event_handler._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1039, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cw1200_bss_loss_work.__UNIQUE_ID_ddebug363, !96, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1145, i32 4}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cw1200_setup_mac._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @cw1200_setup_mac._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1194, i32 2}
!106 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @cw1200_join_complete_cb.__UNIQUE_ID_ddebug367, !105, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1370, i32 2}
!110 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cw1200_join_timeout.__UNIQUE_ID_ddebug369, !109, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1553, i32 3}
!114 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @cw1200_sta_add._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @cw1200_sta_add._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1741, i32 2}
!119 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cw1200_set_cts_work.__UNIQUE_ID_ddebug374, !118, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1806, i32 2}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug378, !122, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1815, i32 3}
!127 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug379, !126, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1825, i32 5}
!130 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug380, !129, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1831, i32 3}
!133 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug381, !132, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1843, i32 3}
!136 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug382, !135, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1850, i32 3}
!139 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug383, !138, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1859, i32 3}
!142 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug384, !141, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1874, i32 3}
!145 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug385, !144, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1884, i32 3}
!148 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug386, !147, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1966, i32 4}
!151 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug387, !150, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1968, i32 4}
!154 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug388, !153, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1984, i32 5}
!157 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug389, !156, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 2012, i32 3}
!160 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug390, !159, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 2022, i32 3}
!163 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug391, !162, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 2032, i32 3}
!166 = !{ptr @cw1200_bss_info_changed.__UNIQUE_ID_ddebug392, !165, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 2116, i32 2}
!169 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @cw1200_mcast_timeout._entry, !168, !"_entry", i1 false, i1 false}
!172 = !{ptr @cw1200_mcast_timeout._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 2145, i32 2}
!175 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @cw1200_suspend_resume.__UNIQUE_ID_ddebug393, !174, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!177 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @__param_str_cw1200_bssloss_mitigation, !7, !"__param_str_cw1200_bssloss_mitigation", i1 false, i1 false}
!182 = !{ptr @cw1200_bssloss_mitigation, !183, !"cw1200_bssloss_mitigation", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 143, i32 12}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1072, i32 4}
!186 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @cw1200_parse_sdd_file._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @cw1200_parse_sdd_file._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1079, i32 5}
!191 = !{ptr @cw1200_parse_sdd_file._entry.82, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @cw1200_parse_sdd_file._entry_ptr.84, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1089, i32 4}
!195 = !{ptr @cw1200_parse_sdd_file.__UNIQUE_ID_ddebug364, !194, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1096, i32 5}
!198 = !{ptr @cw1200_parse_sdd_file._entry.86, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @cw1200_parse_sdd_file._entry_ptr.88, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1107, i32 3}
!202 = !{ptr @cw1200_parse_sdd_file.__UNIQUE_ID_ddebug365, !201, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1165, i32 2}
!205 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @cw1200_join_complete.__UNIQUE_ID_ddebug366, !204, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1389, i32 4}
!209 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @cw1200_do_unjoin.__UNIQUE_ID_ddebug370, !208, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1431, i32 2}
!213 = !{ptr @cw1200_do_unjoin.__UNIQUE_ID_ddebug371, !212, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!214 = distinct !{null, !215, !"__already_done", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1604, i32 11}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1671, i32 2}
!218 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @cw1200_set_tim_impl.__UNIQUE_ID_ddebug373, !217, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!220 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.98, !217, !"<string literal>", i1 false, i1 false}
!222 = distinct !{null, !223, !"__warned", i1 false, i1 false}
!223 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!224 = !{ptr @.str.99, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!228 = distinct !{null, !229, !"__warned", i1 false, i1 false}
!229 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!230 = !{ptr @.str.102, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.103, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1769, i32 4}
!233 = !{ptr @.str.104, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug375, !232, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!235 = !{ptr @.str.105, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1774, i32 4}
!237 = !{ptr @cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug376, !236, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!238 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1785, i32 2}
!240 = !{ptr @cw1200_set_btcoexinfo.__UNIQUE_ID_ddebug377, !239, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1220, i32 3}
!243 = !{ptr @.str.108, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @cw1200_do_join._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @cw1200_do_join._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.109, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1283, i32 2}
!248 = !{ptr @cw1200_do_join.__UNIQUE_ID_ddebug368, !247, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!249 = !{ptr @.str.111, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1338, i32 3}
!251 = !{ptr @cw1200_do_join._entry.110, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @cw1200_do_join._entry_ptr.112, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 1654, i32 2}
!255 = !{ptr @.str.114, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @cw1200_ps_notify.__UNIQUE_ID_ddebug372, !254, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!257 = !{ptr @.str.115, !254, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.117, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 2375, i32 4}
!261 = !{ptr @.str.118, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @cw1200_update_beaconing.__UNIQUE_ID_ddebug396, !260, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!263 = !{ptr @.str.119, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 2383, i32 4}
!265 = !{ptr @cw1200_update_beaconing.__UNIQUE_ID_ddebug397, !264, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!266 = !{ptr @.str.120, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 2342, i32 2}
!268 = !{ptr @.str.121, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @cw1200_start_ap.__UNIQUE_ID_ddebug394, !267, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!270 = !{ptr @.str.122, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/st/cw1200/sta.c", i32 2351, i32 3}
!272 = !{ptr @cw1200_start_ap.__UNIQUE_ID_ddebug395, !271, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!273 = !{!"sp"}
!274 = !{i32 1, !"wchar_size", i32 2}
!275 = !{i32 1, !"min_enum_size", i32 4}
!276 = !{i32 8, !"branch-target-enforcement", i32 0}
!277 = !{i32 8, !"sign-return-address", i32 0}
!278 = !{i32 8, !"sign-return-address-all", i32 0}
!279 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!280 = !{i32 7, !"uwtable", i32 1}
!281 = !{i32 7, !"frame-pointer", i32 2}
!282 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!283 = !{i8 0, i8 2}
!284 = !{i64 2148373806, i64 2148373811, i64 2148373824, i64 2148373868, i64 2148373902, i64 2148373923}
!285 = !{i64 2148809108}
!286 = !{i64 1055976, i64 1055993, i64 1056017, i64 1056043, i64 1056061}
!287 = !{i64 2148809478}
!288 = !{!"branch_weights", i32 1, i32 2000}
!289 = !{!"branch_weights", i32 2000, i32 1}
!290 = !{!"auto-init"}
!291 = !{i64 2149306747}
!292 = !{i64 2149307013}
!293 = !{i32 0, i32 33}
