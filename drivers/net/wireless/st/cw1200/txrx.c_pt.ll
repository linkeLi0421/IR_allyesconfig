; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.wsm_set_tx_rate_retry_policy = type { i8, [3 x i8], [8 x %struct.wsm_tx_rate_retry_policy] }
%struct.wsm_tx_rate_retry_policy = type { i8, i8, i8, i8, i8, [3 x i8], [3 x i32] }
%struct.cw1200_debug_priv = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.cw1200_txinfo = type { ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.cw1200_txpriv }
%struct.cw1200_txpriv = type { i8, i8, i8, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.143 }
%union.anon.143 = type { %struct.anon.147, [32 x i8] }
%struct.anon.147 = type { i64 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.150 }
%union.anon.150 = type { %struct.anon.156, [16 x i8] }
%struct.anon.156 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.wsm_tx = type { %struct.wsm_hdr, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_hdr = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.wsm_suspend_resume = type { i32, i8, i8, i32 }
%struct.wsm_tx_confirm = type { i32, i32, i8, i8, i16, i32, i32 }
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
%struct.wsm_rx = type { i32, i16, i8, i8, i32 }
%struct.ieee80211_pspoll = type { i16, i16, [6 x i8], [6 x i8] }
%struct.wsm_reset = type { i32, i8 }
%struct.wsm_map_link = type { [6 x i8], i8 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/st/cw1200/txrx.c\00", [58 x i8] zeroinitializer }, align 32
@tx_policy_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cache->lock\00", [19 x i8] zeroinitializer }, align 32
@tx_policy_upload_work.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cw1200_core\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_policy_upload_work\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[TX] TX policy upload.\0A\00", [40 x i8] zeroinitializer }, align 32
@cw1200_tx.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cw1200_tx\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[TX] TX %d bytes (queue: %d, link_id: %d (%d)).\0A\00", [47 x i8] zeroinitializer }, align 32
@cw1200_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cw1200_tx_confirm_cb.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_tx_confirm_cb\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[TX] TX confirm: %d, %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@cw1200_tx_confirm_cb.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str, ptr @.str.10, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX failed: %d.\0A\00", [16 x i8] zeroinitializer }, align 32
@cw1200_tx_confirm_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str, i32 885, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Requeue for link_id %d (try %d). STAs asleep: 0x%.8X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cw1200_tx_confirm_cb._entry_ptr = internal global ptr @cw1200_tx_confirm_cb._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cw1200_rx_cb.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str, ptr @.str.15, i8 1, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cw1200_rx_cb\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[RX] Going to MAP&RESET link ID\0A\00", [63 x i8] zeroinitializer }, align 32
@cw1200_rx_cb.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str, ptr @.str.16, i8 1, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[RX] MIC failure.\0A\00", [45 x i8] zeroinitializer }, align 32
@cw1200_rx_cb.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str, ptr @.str.17, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[RX] No key found.\0A\00", [44 x i8] zeroinitializer }, align 32
@cw1200_rx_cb.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str, ptr @.str.18, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[RX] Receive failure: %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@cw1200_rx_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str, i32 1069, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Malformed SDU rx'ed. Size is lesser than IEEE header.\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_rx_cb._entry_ptr = internal global ptr @cw1200_rx_cb._entry, section ".printk_index", align 4
@cw1200_rx_cb._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014Unknown encryption type %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cw1200_rx_cb._entry_ptr.22 = internal global ptr @cw1200_rx_cb._entry.20, section ".printk_index", align 4
@cw1200_rx_cb._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.14, ptr @.str, i32 1136, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Malformed SDU rx'ed. Size is lesser than crypto headers.\0A\00", [38 x i8] zeroinitializer }, align 32
@cw1200_rx_cb._entry_ptr.25 = internal global ptr @cw1200_rx_cb._entry.23, section ".printk_index", align 4
@cw1200_alloc_link_id.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.26, ptr @.str, ptr @.str.27, i8 1, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_alloc_link_id\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[AP] STA added, link_id: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@cw1200_alloc_link_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str, i32 1357, ptr @.str.29, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[AP] Early: no more link IDs available.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cw1200_alloc_link_id._entry_ptr = internal global ptr @cw1200_alloc_link_id._entry, section ".printk_index", align 4
@cw1200_link_id_gc_work.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.30, ptr @.str, ptr @.str.31, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cw1200_link_id_gc_work\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[AP] STA removed, link_id: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tx_policy_upload.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.32, ptr @.str, ptr @.str.33, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_policy_upload\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[TX policy] Upload %d policies\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_tx_h_calc_link_ids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 461, ptr @.str.36, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No more link IDs available.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cw1200_tx_h_calc_link_ids\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cw1200_tx_h_calc_link_ids._entry_ptr = internal global ptr @cw1200_tx_h_calc_link_ids._entry, section ".printk_index", align 4
@cw1200_tx_h_align._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 529, ptr @.str.36, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Bug: attempt to transmit a frame with wrong alignment: %zu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw1200_tx_h_align\00", [46 x i8] zeroinitializer }, align 32
@cw1200_tx_h_align._entry_ptr = internal global ptr @cw1200_tx_h_align._entry, section ".printk_index", align 4
@cw1200_tx_h_align._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str, i32 536, ptr @.str.36, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Bug: no space allocated for DMA alignment. headroom: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cw1200_tx_h_align._entry_ptr.41 = internal global ptr @cw1200_tx_h_align._entry.39, section ".printk_index", align 4
@cw1200_tx_h_wsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 570, ptr @.str.36, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Bug: no space allocated for WSM header. headroom: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cw1200_tx_h_wsm\00", [16 x i8] zeroinitializer }, align 32
@cw1200_tx_h_wsm._entry_ptr = internal global ptr @cw1200_tx_h_wsm._entry, section ".printk_index", align 4
@wsm_queue_id_to_wsm.queue_mapping = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\02\00\01", [28 x i8] zeroinitializer }, align 32
@cw1200_tx_h_bt.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.44, ptr @.str, ptr @.str.45, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cw1200_tx_h_bt\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Modified Listen Interval to %d from %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cw1200_tx_h_bt.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.44, ptr @.str, ptr @.str.46, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[TX] EPTA priority %d.\0A\00", [40 x i8] zeroinitializer }, align 32
@cw1200_tx_h_rate_policy.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.47, ptr @.str, ptr @.str.48, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw1200_tx_h_rate_policy\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[TX] TX policy renew.\0A\00", [41 x i8] zeroinitializer }, align 32
@tx_policy_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tx_policy_get.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str, ptr @.str.50, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_policy_get\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[TX policy] Used TX policy: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tx_policy_get.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str, ptr @.str.51, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[TX policy] New TX policy: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tx_policy_build.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.52, ptr @.str, ptr @.str.53, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_policy_build\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[TX policy] Policy (%zu): %d:%d, %d:%d, %d:%d, %d:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@tx_policy_dump.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.54, ptr @.str, ptr @.str.55, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_policy_dump\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"[TX policy] %.1X%.1X%.1X%.1X%.1X%.1X%.1X%.1X %.1X%.1X%.1X%.1X%.1X%.1X%.1X%.1X %.1X%.1X%.1X%.1X%.1X%.1X%.1X%.1X: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cw1200_handle_pspoll.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.59, ptr @.str, ptr @.str.60, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_handle_pspoll\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[RX] PSPOLL: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fwd\00", [28 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 9]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 53248]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 265, i32 7 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 288, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 390, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 739, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 766, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 859, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 871, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 882, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1034, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1056, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1059, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1062, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1069, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1126, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1136, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1347, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1356, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1460, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 381, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 460, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 527, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 534, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 568, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [14 x i8] c"queue_mapping\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [40 x i8] c"../drivers/net/wireless/st/cw1200/wsm.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1849, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 609, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 632, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 665, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 313, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 325, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 188, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 49, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 695, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 723, i32 2 }
@___asan_gen_.275 = private constant [41 x i8] c"../drivers/net/wireless/st/cw1200/txrx.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 843, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1984, i32 2 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @cw1200_alloc_link_id._entry, ptr @cw1200_alloc_link_id._entry_ptr, ptr @cw1200_rx_cb._entry, ptr @cw1200_rx_cb._entry.20, ptr @cw1200_rx_cb._entry.23, ptr @cw1200_rx_cb._entry_ptr, ptr @cw1200_rx_cb._entry_ptr.22, ptr @cw1200_rx_cb._entry_ptr.25, ptr @cw1200_tx_confirm_cb._entry, ptr @cw1200_tx_confirm_cb._entry_ptr, ptr @cw1200_tx_h_align._entry, ptr @cw1200_tx_h_align._entry.39, ptr @cw1200_tx_h_align._entry_ptr, ptr @cw1200_tx_h_align._entry_ptr.41, ptr @cw1200_tx_h_calc_link_ids._entry, ptr @cw1200_tx_h_calc_link_ids._entry_ptr, ptr @cw1200_tx_h_wsm._entry, ptr @cw1200_tx_h_wsm._entry_ptr, ptr @.str, ptr @tx_policy_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @wsm_queue_id_to_wsm.queue_mapping, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @skb_queue_head_init.__key, ptr @.str.64], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_policy_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_tx_confirm_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_rx_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_rx_cb._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_rx_cb._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_alloc_link_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_tx_h_calc_link_ids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_tx_h_align._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_tx_h_align._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_tx_h_wsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm_queue_id_to_wsm.queue_mapping to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tx_policy_clean(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_policy_cache = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138
  %arrayidx.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 0
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.i) #12
  %arrayidx.1.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 1
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.1.i) #12
  %arrayidx.2.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 2
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.2.i) #12
  %arrayidx.3.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 3
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.3.i) #12
  %lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %free = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 2
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free, align 4
  %usage_count = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %usage_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usage_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %do.end, !prof !150

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  %4 = ptrtoint ptr %usage_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %usage_count, align 1
  %link = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 0, i32 1
  tail call fastcc void @list_move(ptr noundef %link, ptr noundef %free)
  br label %if.end27

if.end27:                                         ; preds = %do.end, %entry.if.end27_crit_edge
  %5 = call ptr @memset(ptr %tx_policy_cache, i32 0, i32 16)
  %arrayidx.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 1
  %usage_count.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %usage_count.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %usage_count.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1 = icmp eq i8 %7, 0
  br i1 %tobool.not.1, label %if.end27.if.end27.1_crit_edge, label %do.end.1, !prof !150

if.end27.if.end27.1_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.1

do.end.1:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  %8 = ptrtoint ptr %usage_count.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %usage_count.1, align 1
  %link.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 1, i32 1
  tail call fastcc void @list_move(ptr noundef %link.1, ptr noundef %free)
  br label %if.end27.1

if.end27.1:                                       ; preds = %do.end.1, %if.end27.if.end27.1_crit_edge
  %9 = call ptr @memset(ptr %arrayidx.1, i32 0, i32 16)
  %arrayidx.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 2
  %usage_count.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %usage_count.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %usage_count.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2 = icmp eq i8 %11, 0
  br i1 %tobool.not.2, label %if.end27.1.if.end27.2_crit_edge, label %do.end.2, !prof !150

if.end27.1.if.end27.2_crit_edge:                  ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.2

do.end.2:                                         ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  %12 = ptrtoint ptr %usage_count.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %usage_count.2, align 1
  %link.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 2, i32 1
  tail call fastcc void @list_move(ptr noundef %link.2, ptr noundef %free)
  br label %if.end27.2

if.end27.2:                                       ; preds = %do.end.2, %if.end27.1.if.end27.2_crit_edge
  %13 = call ptr @memset(ptr %arrayidx.2, i32 0, i32 16)
  %arrayidx.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 3
  %usage_count.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %usage_count.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %usage_count.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.3 = icmp eq i8 %15, 0
  br i1 %tobool.not.3, label %if.end27.2.if.end27.3_crit_edge, label %do.end.3, !prof !150

if.end27.2.if.end27.3_crit_edge:                  ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.3

do.end.3:                                         ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  %16 = ptrtoint ptr %usage_count.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %usage_count.3, align 1
  %link.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 3, i32 1
  tail call fastcc void @list_move(ptr noundef %link.3, ptr noundef %free)
  br label %if.end27.3

if.end27.3:                                       ; preds = %do.end.3, %if.end27.2.if.end27.3_crit_edge
  %17 = call ptr @memset(ptr %arrayidx.3, i32 0, i32 16)
  %arrayidx.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 4
  %usage_count.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 4, i32 0, i32 2
  %18 = ptrtoint ptr %usage_count.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %usage_count.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.4 = icmp eq i8 %19, 0
  br i1 %tobool.not.4, label %if.end27.3.if.end27.4_crit_edge, label %do.end.4, !prof !150

if.end27.3.if.end27.4_crit_edge:                  ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.4

do.end.4:                                         ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  %20 = ptrtoint ptr %usage_count.4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %usage_count.4, align 1
  %link.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 4, i32 1
  tail call fastcc void @list_move(ptr noundef %link.4, ptr noundef %free)
  br label %if.end27.4

if.end27.4:                                       ; preds = %do.end.4, %if.end27.3.if.end27.4_crit_edge
  %21 = call ptr @memset(ptr %arrayidx.4, i32 0, i32 16)
  %arrayidx.5 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 5
  %usage_count.5 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 5, i32 0, i32 2
  %22 = ptrtoint ptr %usage_count.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %usage_count.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.5 = icmp eq i8 %23, 0
  br i1 %tobool.not.5, label %if.end27.4.if.end27.5_crit_edge, label %do.end.5, !prof !150

if.end27.4.if.end27.5_crit_edge:                  ; preds = %if.end27.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.5

do.end.5:                                         ; preds = %if.end27.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  %24 = ptrtoint ptr %usage_count.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %usage_count.5, align 1
  %link.5 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 5, i32 1
  tail call fastcc void @list_move(ptr noundef %link.5, ptr noundef %free)
  br label %if.end27.5

if.end27.5:                                       ; preds = %do.end.5, %if.end27.4.if.end27.5_crit_edge
  %25 = call ptr @memset(ptr %arrayidx.5, i32 0, i32 16)
  %arrayidx.6 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 6
  %usage_count.6 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 6, i32 0, i32 2
  %26 = ptrtoint ptr %usage_count.6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %usage_count.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.6 = icmp eq i8 %27, 0
  br i1 %tobool.not.6, label %if.end27.5.if.end27.6_crit_edge, label %do.end.6, !prof !150

if.end27.5.if.end27.6_crit_edge:                  ; preds = %if.end27.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.6

do.end.6:                                         ; preds = %if.end27.5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  %28 = ptrtoint ptr %usage_count.6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %usage_count.6, align 1
  %link.6 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 6, i32 1
  tail call fastcc void @list_move(ptr noundef %link.6, ptr noundef %free)
  br label %if.end27.6

if.end27.6:                                       ; preds = %do.end.6, %if.end27.5.if.end27.6_crit_edge
  %29 = call ptr @memset(ptr %arrayidx.6, i32 0, i32 16)
  %arrayidx.7 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 7
  %usage_count.7 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 7, i32 0, i32 2
  %30 = ptrtoint ptr %usage_count.7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %usage_count.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.7 = icmp eq i8 %31, 0
  br i1 %tobool.not.7, label %if.end27.6.if.end27.7_crit_edge, label %do.end.7, !prof !150

if.end27.6.if.end27.7_crit_edge:                  ; preds = %if.end27.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.7

do.end.7:                                         ; preds = %if.end27.6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  %32 = ptrtoint ptr %usage_count.7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %usage_count.7, align 1
  %link.7 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 7, i32 1
  tail call fastcc void @list_move(ptr noundef %link.7, ptr noundef %free)
  br label %if.end27.7

if.end27.7:                                       ; preds = %do.end.7, %if.end27.6.if.end27.7_crit_edge
  %33 = call ptr @memset(ptr %arrayidx.7, i32 0, i32 16)
  %cmp.i.not = icmp eq ptr %1, %free
  br i1 %cmp.i.not, label %if.then30, label %if.end27.7.if.end31_crit_edge

if.end27.7.if.end31_crit_edge:                    ; preds = %if.end27.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then30:                                        ; preds = %if.end27.7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.i) #12
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.1.i) #12
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.2.i) #12
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.3.i) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.7.if.end31_crit_edge
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.i) #12
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.1.i) #12
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.2.i) #12
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.3.i) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move(ptr noundef %list, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %head, ptr noundef %7) #12
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add.exit_crit_edge

__list_del_entry.exit.list_add.exit_crit_edge:    ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %__list_del_entry.exit.list_add.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tx_policy_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_policy_cache = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138
  %0 = call ptr @memset(ptr %tx_policy_cache, i32 0, i32 252)
  %lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tx_policy_init.__key, i16 noundef signext 3) #12
  %used = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 1
  %1 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %used, ptr %used, align 4
  %prev.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %used, ptr %prev.i, align 4
  %free = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 2
  %3 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %free, ptr %free, align 4
  %prev.i10 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free, ptr %prev.i10, align 4
  %link = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %free, ptr noundef %free) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 2, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %link, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %free, ptr %link, align 4
  %prev3.i.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %link, ptr %free, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %link.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %free, align 4
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %link.1, ptr noundef %free, ptr noundef %10) #12
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add.exit.list_add.exit.1_crit_edge

list_add.exit.list_add.exit.1_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.1

if.end.i.i.1:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.1 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %link.1, ptr %prev1.i.i.1, align 4
  %12 = ptrtoint ptr %link.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %link.1, align 4
  %prev3.i.i.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %free, ptr %prev3.i.i.1, align 4
  %14 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %link.1, ptr %free, align 4
  br label %list_add.exit.1

list_add.exit.1:                                  ; preds = %if.end.i.i.1, %list_add.exit.list_add.exit.1_crit_edge
  %link.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %free, align 4
  %call.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %link.2, ptr noundef %free, ptr noundef %16) #12
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_add.exit.1.list_add.exit.2_crit_edge

list_add.exit.1.list_add.exit.2_crit_edge:        ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.2

if.end.i.i.2:                                     ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.2 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %link.2, ptr %prev1.i.i.2, align 4
  %18 = ptrtoint ptr %link.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %link.2, align 4
  %prev3.i.i.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 2, i32 1, i32 1
  %19 = ptrtoint ptr %prev3.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %free, ptr %prev3.i.i.2, align 4
  %20 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %link.2, ptr %free, align 4
  br label %list_add.exit.2

list_add.exit.2:                                  ; preds = %if.end.i.i.2, %list_add.exit.1.list_add.exit.2_crit_edge
  %link.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free, align 4
  %call.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %link.3, ptr noundef %free, ptr noundef %22) #12
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_add.exit.2.list_add.exit.3_crit_edge

list_add.exit.2.list_add.exit.3_crit_edge:        ; preds = %list_add.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.3

if.end.i.i.3:                                     ; preds = %list_add.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.3 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %link.3, ptr %prev1.i.i.3, align 4
  %24 = ptrtoint ptr %link.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %link.3, align 4
  %prev3.i.i.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 3, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %free, ptr %prev3.i.i.3, align 4
  %26 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %link.3, ptr %free, align 4
  br label %list_add.exit.3

list_add.exit.3:                                  ; preds = %if.end.i.i.3, %list_add.exit.2.list_add.exit.3_crit_edge
  %link.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %free, align 4
  %call.i.i.4 = tail call zeroext i1 @__list_add_valid(ptr noundef %link.4, ptr noundef %free, ptr noundef %28) #12
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_add.exit.3.list_add.exit.4_crit_edge

list_add.exit.3.list_add.exit.4_crit_edge:        ; preds = %list_add.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.4

if.end.i.i.4:                                     ; preds = %list_add.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.4 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %link.4, ptr %prev1.i.i.4, align 4
  %30 = ptrtoint ptr %link.4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %link.4, align 4
  %prev3.i.i.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 4, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %free, ptr %prev3.i.i.4, align 4
  %32 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %link.4, ptr %free, align 4
  br label %list_add.exit.4

list_add.exit.4:                                  ; preds = %if.end.i.i.4, %list_add.exit.3.list_add.exit.4_crit_edge
  %link.5 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %free, align 4
  %call.i.i.5 = tail call zeroext i1 @__list_add_valid(ptr noundef %link.5, ptr noundef %free, ptr noundef %34) #12
  br i1 %call.i.i.5, label %if.end.i.i.5, label %list_add.exit.4.list_add.exit.5_crit_edge

list_add.exit.4.list_add.exit.5_crit_edge:        ; preds = %list_add.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.5

if.end.i.i.5:                                     ; preds = %list_add.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.5 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %link.5, ptr %prev1.i.i.5, align 4
  %36 = ptrtoint ptr %link.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %link.5, align 4
  %prev3.i.i.5 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 5, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %free, ptr %prev3.i.i.5, align 4
  %38 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %link.5, ptr %free, align 4
  br label %list_add.exit.5

list_add.exit.5:                                  ; preds = %if.end.i.i.5, %list_add.exit.4.list_add.exit.5_crit_edge
  %link.6 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %free, align 4
  %call.i.i.6 = tail call zeroext i1 @__list_add_valid(ptr noundef %link.6, ptr noundef %free, ptr noundef %40) #12
  br i1 %call.i.i.6, label %if.end.i.i.6, label %list_add.exit.5.list_add.exit.6_crit_edge

list_add.exit.5.list_add.exit.6_crit_edge:        ; preds = %list_add.exit.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.6

if.end.i.i.6:                                     ; preds = %list_add.exit.5
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.6 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %link.6, ptr %prev1.i.i.6, align 4
  %42 = ptrtoint ptr %link.6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %link.6, align 4
  %prev3.i.i.6 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 6, i32 1, i32 1
  %43 = ptrtoint ptr %prev3.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %free, ptr %prev3.i.i.6, align 4
  %44 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %link.6, ptr %free, align 4
  br label %list_add.exit.6

list_add.exit.6:                                  ; preds = %if.end.i.i.6, %list_add.exit.5.list_add.exit.6_crit_edge
  %link.7 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %free, align 4
  %call.i.i.7 = tail call zeroext i1 @__list_add_valid(ptr noundef %link.7, ptr noundef %free, ptr noundef %46) #12
  br i1 %call.i.i.7, label %if.end.i.i.7, label %list_add.exit.6.list_add.exit.7_crit_edge

list_add.exit.6.list_add.exit.7_crit_edge:        ; preds = %list_add.exit.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.7

if.end.i.i.7:                                     ; preds = %list_add.exit.6
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.7 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %link.7, ptr %prev1.i.i.7, align 4
  %48 = ptrtoint ptr %link.7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %link.7, align 4
  %prev3.i.i.7 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 0, i32 7, i32 1, i32 1
  %49 = ptrtoint ptr %prev3.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %free, ptr %prev3.i.i.7, align 4
  %50 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %link.7, ptr %free, align 4
  br label %list_add.exit.7

list_add.exit.7:                                  ; preds = %if.end.i.i.7, %list_add.exit.6.list_add.exit.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tx_policy_upload_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_policy_upload_work.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_policy_upload_work, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tx_policy_upload_work.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -4764
  tail call fastcc void @tx_policy_upload(ptr noundef %add.ptr)
  tail call void @wsm_unlock_tx(ptr noundef %add.ptr) #12
  %arrayidx.i = getelementptr i8, ptr %work, i32 -4596
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.i) #12
  %arrayidx.1.i = getelementptr i8, ptr %work, i32 -4436
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.1.i) #12
  %arrayidx.2.i = getelementptr i8, ptr %work, i32 -4276
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.2.i) #12
  %arrayidx.3.i = getelementptr i8, ptr %work, i32 -4116
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.3.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_policy_upload(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.wsm_set_tx_rate_retry_policy, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_policy_cache = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %arg) #12
  %0 = call ptr @memset(ptr %arg, i32 0, i32 164)
  %lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %short_frame_max_tx_count = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 41
  %long_frame_max_tx_count = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc8, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.tx_policy_cache_entry], ptr %tx_policy_cache, i32 0, i32 %i.02
  %retry_count = getelementptr inbounds %struct.tx_policy, ptr %arrayidx, i32 0, i32 3
  %1 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %retry_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %uploaded = getelementptr inbounds %struct.tx_policy, ptr %arrayidx, i32 0, i32 4
  %3 = ptrtoint ptr %uploaded to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %uploaded, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arg, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx3 = getelementptr %struct.wsm_set_tx_rate_retry_policy, ptr %arg, i32 0, i32 2, i32 %idxprom
  %conv4 = trunc i32 %i.02 to i8
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %arrayidx3, align 1
  %8 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %short_frame_max_tx_count, align 1
  %short_retries = getelementptr %struct.wsm_set_tx_rate_retry_policy, ptr %arg, i32 0, i32 2, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %short_retries to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %short_retries, align 1
  %11 = ptrtoint ptr %long_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %long_frame_max_tx_count, align 4
  %long_retries = getelementptr %struct.wsm_set_tx_rate_retry_policy, ptr %arg, i32 0, i32 2, i32 %idxprom, i32 2
  %13 = ptrtoint ptr %long_retries to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %long_retries, align 1
  %flags = getelementptr %struct.wsm_set_tx_rate_retry_policy, ptr %arg, i32 0, i32 2, i32 %idxprom, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 12, ptr %flags, align 1
  %rate_count_indices = getelementptr %struct.wsm_set_tx_rate_retry_policy, ptr %arg, i32 0, i32 2, i32 %idxprom, i32 6
  %15 = call ptr @memcpy(ptr %rate_count_indices, ptr %arrayidx, i32 12)
  %16 = ptrtoint ptr %uploaded to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %uploaded, align 1
  %inc = add i8 %6, 1
  store i8 %inc, ptr %arg, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc8 = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc8, 8
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %debug.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 15
  %17 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debug.i, align 4
  %tx_cache_miss.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %tx_cache_miss.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_cache_miss.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %tx_cache_miss.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_policy_upload.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_policy_upload, %if.then13)) #12
          to label %do.end [label %if.then13], !srcloc !151

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arg, align 1
  %conv15 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tx_policy_upload.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.33, i32 noundef %conv15) #12
  br label %do.end

do.end:                                           ; preds = %if.then13, %for.end
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arg, align 1
  %conv.i = zext i8 %24 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 20
  %add.i = add nuw nsw i32 %mul.i, 4
  %call.i = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4118, ptr noundef nonnull %arg, i32 noundef %add.i) #12
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %arg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_unlock_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_rate_mask_to_wsm(ptr nocapture noundef readonly %priv, i32 noundef %rates) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rates1 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.07 = phi i32 [ 0, %entry ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.08
  %and = and i32 %shl, %rates
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %rates1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rates1, align 4
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %1, i32 %i.08, i32 2
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %3 to i32
  %shl2 = shl nuw i32 1, %conv
  %or = or i32 %shl2, %ret.07
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %or, %if.then ], [ %ret.07, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_tx(ptr nocapture noundef readonly %dev, ptr noundef readonly %control, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca %struct.cw1200_txinfo, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %t) #12
  %2 = getelementptr inbounds i8, ptr %t, i32 40
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !152
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %t, align 4
  %queue = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %5 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %queue, align 4
  %tx_info = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 2
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %tx_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cb.i, ptr %tx_info, align 4
  %rate = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 3
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rate, align 4
  %hdr = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %hdr, align 4
  %hdrlen = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 5
  %da = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 6
  %sta_priv = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 7
  %sta = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 8
  %txpriv = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9
  %raw_link_id = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9, i32 1
  %tid = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9, i32 2
  %13 = call ptr @memset(ptr %hdrlen, i32 0, i32 18)
  %14 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %tid, align 2
  %rate_id = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %rate_id to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %rate_id, align 1
  %offset = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %offset, align 4
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 74
  %17 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %11, align 2
  %call6 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %20) #15
  %21 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call6, ptr %hdrlen, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %11, align 2
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i.not.i = icmp eq i16 %24, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %11, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %11, i32 0, i32 2
  %retval.0.i182 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %25 = ptrtoint ptr %da to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i182, ptr %da, align 4
  %tobool11.not = icmp eq ptr %control, null
  br i1 %tobool11.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %control, align 4
  %28 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %sta, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %27, i32 0, i32 29
  %29 = ptrtoint ptr %sta_priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %drv_priv, ptr %sta_priv, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp = icmp ugt i16 %6, 3
  br i1 %cmp, label %do.end, label %if.end43.critedge, !prof !153

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 732, i32 noundef 9, ptr noundef null) #12
  br label %drop

if.end43.critedge:                                ; preds = %if.end17
  %30 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sta, align 4
  %tobool.not.i183 = icmp eq ptr %31, null
  br i1 %tobool.not.i183, label %if.end43.critedge.if.else.i_crit_edge, label %land.lhs.true.i184

if.end43.critedge.if.else.i_crit_edge:            ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i184:                               ; preds = %if.end43.critedge
  %32 = ptrtoint ptr %sta_priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sta_priv, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not.i = icmp eq i32 %35, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i184.if.else.i_crit_edge, label %if.end52.i

land.lhs.true.i184.if.else.i_crit_edge:           ; preds = %land.lhs.true.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i184.if.else.i_crit_edge, %if.end43.critedge.if.else.i_crit_edge
  %mode.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 43
  %36 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 3
  br i1 %cmp.not.i, label %if.else12.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %txpriv to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %txpriv, align 4
  %39 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %raw_link_id, align 1
  br label %if.end60.i

if.else12.i:                                      ; preds = %if.else.i
  %40 = ptrtoint ptr %retval.0.i182 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %retval.0.i182, align 4
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i, label %if.else25.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else12.i
  %enable_beacon.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 44
  %43 = ptrtoint ptr %enable_beacon.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enable_beacon.i, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool14.not.i = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %raw_link_id, align 1
  br i1 %tobool14.not.i, label %if.else20.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %txpriv to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 6, ptr %txpriv, align 4
  br label %if.end60.i

if.else20.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %txpriv to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %txpriv, align 4
  br label %if.end60.i

if.else25.i:                                      ; preds = %if.else12.i
  %call27.i = tail call i32 @cw1200_find_link_id(ptr noundef %1, ptr noundef %retval.0.i182) #12
  %conv28.i = trunc i32 %call27.i to i8
  %48 = ptrtoint ptr %txpriv to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv28.i, ptr %txpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv28.i)
  %tobool33.not.i = icmp eq i8 %conv28.i, 0
  br i1 %tobool33.not.i, label %if.end40.i, label %if.else25.i.if.end52.i.thread219_crit_edge

if.else25.i.if.end52.i.thread219_crit_edge:       ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i.thread219

if.end40.i:                                       ; preds = %if.else25.i
  %49 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %da, align 4
  %call36.i = tail call i32 @cw1200_alloc_link_id(ptr noundef %1, ptr noundef %50) #12
  %conv37.i = trunc i32 %call36.i to i8
  %51 = ptrtoint ptr %txpriv to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv37.i, ptr %txpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv37.i)
  %tobool43.not.i = icmp eq i8 %conv37.i, 0
  br i1 %tobool43.not.i, label %cw1200_tx_h_calc_link_ids.exit, label %if.end40.i.if.end52.i.thread219_crit_edge

if.end40.i.if.end52.i.thread219_crit_edge:        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i.thread219

if.end52.i.thread219:                             ; preds = %if.end40.i.if.end52.i.thread219_crit_edge, %if.else25.i.if.end52.i.thread219_crit_edge
  %52 = phi i8 [ %conv37.i, %if.end40.i.if.end52.i.thread219_crit_edge ], [ %conv28.i, %if.else25.i.if.end52.i.thread219_crit_edge ]
  %53 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %raw_link_id, align 1
  br label %if.then56.i

if.end52.i:                                       ; preds = %land.lhs.true.i184
  %conv.i = trunc i32 %35 to i8
  %54 = ptrtoint ptr %txpriv to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i, ptr %txpriv, align 4
  %55 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i, ptr %raw_link_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool55.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool55.not.i, label %if.end52.i.if.end60.i_crit_edge, label %if.end52.i.if.then56.i_crit_edge

if.end52.i.if.then56.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56.i

if.end52.i.if.end60.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.end52.i.if.then56.i_crit_edge, %if.end52.i.thread219
  %56 = phi i8 [ %52, %if.end52.i.thread219 ], [ %conv.i, %if.end52.i.if.then56.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %conv59.i = zext i8 %56 to i32
  %sub.i = add nsw i32 %conv59.i, -1
  %arrayidx.i = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 113, i32 %sub.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.end52.i.if.end60.i_crit_edge, %if.else20.i, %if.then15.i, %if.then7.i
  %59 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sta, align 4
  %tobool62.not.i = icmp eq ptr %60, null
  br i1 %tobool62.not.i, label %if.end60.i.do.body48_crit_edge, label %land.lhs.true63.i

if.end60.i.do.body48_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

land.lhs.true63.i:                                ; preds = %if.end60.i
  %uapsd_queues.i = getelementptr inbounds %struct.ieee80211_sta, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %uapsd_queues.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %uapsd_queues.i, align 1
  %conv65.i = zext i8 %62 to i32
  %63 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %queue, align 4
  %shl.i = shl nuw i32 1, %64
  %and.i = and i32 %shl.i, %conv65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool66.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool66.not.i, label %land.lhs.true63.i.do.body48_crit_edge, label %if.then67.i

land.lhs.true63.i.do.body48_crit_edge:            ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

if.then67.i:                                      ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %txpriv to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 7, ptr %txpriv, align 4
  br label %do.body48

cw1200_tx_h_calc_link_ids.exit:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34) #16
  br label %drop

do.body48:                                        ; preds = %if.then67.i, %land.lhs.true63.i.do.body48_crit_edge, %if.end60.i.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_tx.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_tx, %if.then58)) #12
          to label %do.end68 [label %if.then58], !srcloc !151

if.then58:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  %72 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %queue, align 4
  %74 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %txpriv, align 4
  %conv62 = zext i8 %75 to i32
  %76 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %raw_link_id, align 1
  %conv65 = zext i8 %77 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_tx.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.6, i32 noundef %71, i32 noundef %73, i32 noundef %conv62, i32 noundef %conv65) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then58, %do.body48
  %78 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hdr, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %79, align 2
  %82 = and i16 %81, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %82)
  %cmp.i.i = icmp eq i16 %82, -20480
  br i1 %cmp.i.i, label %if.then.i191, label %do.end68.cw1200_tx_h_pm.exit_crit_edge

do.end68.cw1200_tx_h_pm.exit_crit_edge:           ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_tx_h_pm.exit

if.then.i191:                                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %raw_link_id, align 1
  %conv.i188 = zext i8 %84 to i32
  %shl.i189 = shl nuw i32 1, %conv.i188
  %neg.i = xor i32 %shl.i189, -1
  %ps_state_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock.i) #12
  %sta_asleep_mask.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 116
  %85 = ptrtoint ptr %sta_asleep_mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sta_asleep_mask.i, align 4
  %and.i190 = and i32 %86, %neg.i
  store i32 %and.i190, ptr %sta_asleep_mask.i, align 4
  %pspoll_mask.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 117
  %87 = ptrtoint ptr %pspoll_mask.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pspoll_mask.i, align 4
  %and1.i = and i32 %88, %neg.i
  store i32 %and1.i, ptr %pspoll_mask.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock.i) #12
  br label %cw1200_tx_h_pm.exit

cw1200_tx_h_pm.exit:                              ; preds = %if.then.i191, %do.end68.cw1200_tx_h_pm.exit_crit_edge
  %89 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hdr, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %90, align 2
  %93 = and i16 %92, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %93)
  %cmp.i.i193 = icmp eq i16 %93, -30720
  br i1 %cmp.i.i193, label %if.then.i194, label %if.else.i195

if.then.i194:                                     ; preds = %cw1200_tx_h_pm.exit
  call void @__sanitizer_cov_trace_pc() #14
  %94 = and i16 %92, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %94)
  %cmp.i.i.i = icmp eq i16 %94, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %90, i32 %retval.0.v.i.i
  %95 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %retval.0.i.i, align 1
  %97 = and i8 %96, 15
  br label %if.end10.sink.split.i

if.else.i195:                                     ; preds = %cw1200_tx_h_pm.exit
  %98 = and i16 %92, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %98)
  %cmp.i1.i = icmp eq i16 %98, 2048
  br i1 %cmp.i1.i, label %if.else.i195.if.end10.sink.split.i_crit_edge, label %if.else.i195.cw1200_tx_h_calc_tid.exit_crit_edge

if.else.i195.cw1200_tx_h_calc_tid.exit_crit_edge: ; preds = %if.else.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_tx_h_calc_tid.exit

if.else.i195.if.end10.sink.split.i_crit_edge:     ; preds = %if.else.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %if.else.i195.if.end10.sink.split.i_crit_edge, %if.then.i194
  %.sink.i = phi i8 [ %97, %if.then.i194 ], [ 0, %if.else.i195.if.end10.sink.split.i_crit_edge ]
  %99 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %.sink.i, ptr %tid, align 2
  br label %cw1200_tx_h_calc_tid.exit

cw1200_tx_h_calc_tid.exit:                        ; preds = %if.end10.sink.split.i, %if.else.i195.cw1200_tx_h_calc_tid.exit_crit_edge
  %100 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tx_info, align 4
  %hw_key.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %101, i32 0, i32 2, i32 1, i32 12
  %102 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw_key.i, align 4
  %tobool.not.i196 = icmp eq ptr %103, null
  br i1 %tobool.not.i196, label %cw1200_tx_h_calc_tid.exit.cw1200_tx_h_crypt.exit_crit_edge, label %lor.lhs.false.i

cw1200_tx_h_calc_tid.exit.cw1200_tx_h_crypt.exit_crit_edge: ; preds = %cw1200_tx_h_calc_tid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_tx_h_crypt.exit

lor.lhs.false.i:                                  ; preds = %cw1200_tx_h_calc_tid.exit
  %104 = ptrtoint ptr %90 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %90, align 2
  %106 = and i16 %105, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %cmp.i.not.i198 = icmp eq i16 %106, 0
  br i1 %cmp.i.not.i198, label %lor.lhs.false.i.cw1200_tx_h_crypt.exit_crit_edge, label %if.end.i

lor.lhs.false.i.cw1200_tx_h_crypt.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_tx_h_crypt.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %iv_len.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %103, i32 0, i32 3
  %107 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %iv_len.i, align 1
  %conv.i199 = zext i8 %108 to i32
  %109 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %hdrlen, align 4
  %add.i = add i32 %110, %conv.i199
  store i32 %add.i, ptr %hdrlen, align 4
  %111 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %t, align 4
  %icv_len.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %103, i32 0, i32 2
  %113 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %icv_len.i, align 4
  %conv5.i = zext i8 %114 to i32
  %call6.i = tail call ptr @skb_put(ptr noundef %112, i32 noundef %conv5.i) #12
  %115 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tx_info, align 4
  %hw_key8.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %116, i32 0, i32 2, i32 1, i32 12
  %117 = ptrtoint ptr %hw_key8.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw_key8.i, align 4
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cipher.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %120)
  %cmp.i = icmp eq i32 %120, 1027074
  br i1 %cmp.i, label %if.then10.i, label %if.end.i.cw1200_tx_h_crypt.exit_crit_edge

if.end.i.cw1200_tx_h_crypt.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_tx_h_crypt.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %121 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %t, align 4
  %call12.i = tail call ptr @skb_put(ptr noundef %122, i32 noundef 8) #12
  br label %cw1200_tx_h_crypt.exit

cw1200_tx_h_crypt.exit:                           ; preds = %if.then10.i, %if.end.i.cw1200_tx_h_crypt.exit_crit_edge, %lor.lhs.false.i.cw1200_tx_h_crypt.exit_crit_edge, %cw1200_tx_h_calc_tid.exit.cw1200_tx_h_crypt.exit_crit_edge
  %123 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %t, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 19
  %125 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i, align 4
  %127 = ptrtoint ptr %126 to i32
  %and.i200 = and i32 %127, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %tobool.not.i201 = icmp eq i32 %and.i200, 0
  br i1 %tobool.not.i201, label %cw1200_tx_h_crypt.exit.if.end76_crit_edge, label %if.end.i203

cw1200_tx_h_crypt.exit.if.end76_crit_edge:        ; preds = %cw1200_tx_h_crypt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.end.i203:                                      ; preds = %cw1200_tx_h_crypt.exit
  %and1.i202 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i202)
  %tobool2.not.i = icmp eq i32 %and1.i202, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i206

do.end.i206:                                      ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %wiphy.i204 = getelementptr inbounds %struct.ieee80211_hw, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %wiphy.i204 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wiphy.i204, align 8
  %dev.i205 = getelementptr inbounds %struct.wiphy, ptr %131, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i205, ptr noundef nonnull @.str.37, i32 noundef %and.i200) #16
  br label %drop

if.end4.i:                                        ; preds = %if.end.i203
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 18
  %132 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %133 to i32
  %sub.ptr.sub.i.i = sub i32 %127, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %and.i200)
  %cmp.i207 = icmp ult i32 %sub.ptr.sub.i.i, %and.i200
  br i1 %cmp.i207, label %do.end9.i, label %if.end15.i

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %wiphy11.i = getelementptr inbounds %struct.ieee80211_hw, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %wiphy11.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wiphy11.i, align 8
  %dev12.i = getelementptr inbounds %struct.wiphy, ptr %137, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.40, i32 noundef %sub.ptr.sub.i.i) #16
  br label %drop

if.end15.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = tail call ptr @skb_push(ptr noundef %124, i32 noundef %and.i200) #12
  %138 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hdrlen, align 4
  %add.i209 = add i32 %139, %and.i200
  store i32 %add.i209, ptr %hdrlen, align 4
  %140 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %offset, align 4
  %142 = trunc i32 %and.i200 to i8
  %conv20.i = add i8 %141, %142
  store i8 %conv20.i, ptr %offset, align 4
  %debug.i.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 15
  %143 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %debug.i.i, align 4
  %tx_align.i.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %144, i32 0, i32 8
  %145 = ptrtoint ptr %tx_align.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_align.i.i, align 4
  %inc.i.i = add i32 %146, 1
  store i32 %inc.i.i, ptr %tx_align.i.i, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end15.i, %cw1200_tx_h_crypt.exit.if.end76_crit_edge
  %flags.0.ph = phi i8 [ -128, %if.end15.i ], [ 0, %cw1200_tx_h_crypt.exit.if.end76_crit_edge ]
  %147 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hdr, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %148, align 2
  %151 = and i16 %150, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %151)
  %cmp.i.i212 = icmp eq i16 %151, -12288
  br i1 %cmp.i.i212, label %land.lhs.true.i214, label %if.end76.if.end80_crit_edge

if.end76.if.end80_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

land.lhs.true.i214:                               ; preds = %if.end76
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %148, i32 0, i32 6
  %152 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %u.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %153)
  %cmp.i213 = icmp eq i8 %153, 3
  br i1 %cmp.i213, label %land.lhs.true.i214.drop_crit_edge, label %land.lhs.true.i214.if.end80_crit_edge

land.lhs.true.i214.if.end80_crit_edge:            ; preds = %land.lhs.true.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

land.lhs.true.i214.drop_crit_edge:                ; preds = %land.lhs.true.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end80:                                         ; preds = %land.lhs.true.i214.if.end80_crit_edge, %if.end76.if.end80_crit_edge
  %call81 = call fastcc ptr @cw1200_tx_h_wsm(ptr noundef %1, ptr noundef nonnull %t)
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.end80.drop_crit_edge, label %if.end84

if.end80.drop_crit_edge:                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end84:                                         ; preds = %if.end80
  %flags86 = getelementptr inbounds %struct.wsm_tx, ptr %call81, i32 0, i32 5
  %154 = ptrtoint ptr %flags86 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %flags86, align 1
  %or180 = or i8 %155, %flags.0.ph
  store i8 %or180, ptr %flags86, align 1
  call fastcc void @cw1200_tx_h_bt(ptr noundef %1, ptr noundef nonnull %t, ptr noundef nonnull %call81)
  %call89 = call fastcc i32 @cw1200_tx_h_rate_policy(ptr noundef %1, ptr noundef nonnull %t, ptr noundef nonnull %call81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end84.drop_crit_edge

if.end84.drop_crit_edge:                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end92:                                         ; preds = %if.end84
  %156 = tail call i32 @llvm.read_register.i32(metadata !140) #12
  %and.i.i.i.i.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %159, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !155
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end92.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end92.rcu_read_lock.exit_crit_edge:            ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end92
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 696, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end92.rcu_read_lock.exit_crit_edge
  %160 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile ptr, ptr %sta, align 4
  %call99 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end108_crit_edge

rcu_read_lock.exit.do.end108_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call101 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.lhs.true.do.end108_crit_edge, label %land.lhs.true103

land.lhs.true.do.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

land.lhs.true103:                                 ; preds = %land.lhs.true
  %.b181 = load i1, ptr @cw1200_tx.__warned, align 1
  br i1 %.b181, label %land.lhs.true103.do.end108_crit_edge, label %if.then105

land.lhs.true103.do.end108_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

if.then105:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cw1200_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 766, ptr noundef nonnull @.str.7) #12
  br label %do.end108

do.end108:                                        ; preds = %if.then105, %land.lhs.true103.do.end108_crit_edge, %land.lhs.true.do.end108_crit_edge, %rcu_read_lock.exit.do.end108_crit_edge
  %ps_state_lock = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  %call110 = call fastcc zeroext i1 @cw1200_tx_h_pm_state(ptr noundef %1, ptr noundef nonnull %t)
  %162 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %queue, align 4
  %arrayidx = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 18, i32 %163
  %164 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %t, align 4
  %call116 = call i32 @cw1200_queue_put(ptr noundef %arrayidx, ptr noundef %165, ptr noundef %txpriv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %do.end133, label %do.body125, !prof !150

do.body125:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/txrx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 772, 0\0A.popsection", ""() #12, !srcloc !156
  unreachable

do.end133:                                        ; preds = %do.end108
  call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  %call110.not = xor i1 %call110, true
  %tobool138.not = icmp eq ptr %161, null
  %or.cond = select i1 %call110.not, i1 true, i1 %tobool138.not
  br i1 %or.cond, label %do.end133.if.end142_crit_edge, label %if.then139

do.end133.if.end142_crit_edge:                    ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

if.then139:                                       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %tid, align 2
  call void @ieee80211_sta_set_buffered(ptr noundef nonnull %161, i8 noundef zeroext %167, i1 noundef zeroext true) #12
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %do.end133.if.end142_crit_edge
  call fastcc void @rcu_read_unlock()
  call void @cw1200_bh_wakeup(ptr noundef %1) #12
  br label %cleanup

drop:                                             ; preds = %if.end84.drop_crit_edge, %if.end80.drop_crit_edge, %land.lhs.true.i214.drop_crit_edge, %do.end9.i, %do.end.i206, %cw1200_tx_h_calc_link_ids.exit, %do.end, %entry.drop_crit_edge
  call void @cw1200_skb_dtor(ptr noundef %1, ptr noundef %skb, ptr noundef %txpriv)
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end142
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %t) #12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cw1200_tx_h_wsm(ptr nocapture noundef readonly %priv, ptr nocapture noundef %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 24
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %sub.ptr.sub.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 24) #12
  %offset = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %offset, align 4
  %add = add i8 %11, 24
  store i8 %add, ptr %offset, align 4
  %12 = call ptr @memset(ptr %call4, i32 0, i32 24)
  %13 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %t, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %conv7 = trunc i32 %16 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %18 = ptrtoint ptr %call4 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %call4, align 1
  %id = getelementptr inbounds %struct.wsm_hdr, ptr %call4, i32 0, i32 1
  %19 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 1024, ptr %id, align 1
  %queue = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 1
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %queue, align 4
  %idxprom.i = and i32 %21, 255
  %arrayidx.i = getelementptr [4 x i8], ptr @wsm_queue_id_to_wsm.queue_mapping, i32 0, i32 %idxprom.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %queue_id = getelementptr inbounds %struct.wsm_tx, ptr %call4, i32 0, i32 3
  %24 = ptrtoint ptr %queue_id to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %queue_id, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call4, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_tx_h_bt(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %t, ptr nocapture noundef %wsm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_present = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 62
  %0 = ptrtoint ptr %bt_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bt_present, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdr = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 4
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = and i16 %5, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %6)
  %cmp.i = icmp eq i16 %6, 18432
  br i1 %cmp.i, label %if.end.do.body72_crit_edge, label %if.else

if.end.do.body72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body72

if.else:                                          ; preds = %if.end
  %7 = and i16 %5, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %7)
  %cmp.i114 = icmp eq i16 %7, 2048
  br i1 %cmp.i114, label %if.then5, label %if.else10

if.then5:                                         ; preds = %if.else
  %8 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %hdrlen = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 5
  %12 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hdrlen, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 %13
  %arrayidx6 = getelementptr i8, ptr %arrayidx, i32 6
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %15)
  %cmp = icmp eq i16 %15, -30578
  br i1 %cmp, label %if.then5.do.body72_crit_edge, label %if.then5.if.then45_crit_edge

if.then5.if.then45_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then5.do.body72_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body72

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %5)
  %cmp.i115 = icmp ult i16 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %6)
  %cmp.i116 = icmp eq i16 %6, 8192
  %or.cond = or i1 %cmp.i115, %cmp.i116
  br i1 %or.cond, label %if.then19, label %if.else10.if.then45_crit_edge

if.else10.if.then45_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then19:                                        ; preds = %if.else10
  %listen_interval = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6, i32 0, i32 1
  %16 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %listen_interval, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv21 = zext i16 %18 to i32
  %listen_interval22 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 65
  %19 = ptrtoint ptr %listen_interval22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %listen_interval22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv21)
  %cmp23 = icmp ugt i32 %20, %conv21
  br i1 %cmp23, label %do.body, label %if.then19.if.then45_crit_edge

if.then19.if.then45_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

do.body:                                          ; preds = %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_tx_h_bt.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_tx_h_bt, %if.then30)) #12
          to label %do.end [label %if.then30], !srcloc !151

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %listen_interval22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %listen_interval22, align 4
  %23 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %listen_interval, align 2
  %conv34 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_tx_h_bt.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.45, i32 noundef %22, i32 noundef %conv34) #12
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body
  %25 = ptrtoint ptr %listen_interval22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %listen_interval22, align 4
  %conv37 = trunc i32 %26 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv37)
  %28 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %listen_interval, align 2
  br label %if.then45

if.then45:                                        ; preds = %do.end, %if.then19.if.then45_crit_edge, %if.else10.if.then45_crit_edge, %if.then5.if.then45_crit_edge
  %29 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdr, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %33 = and i16 %32, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %33)
  %cmp.i117 = icmp eq i16 %33, -12288
  %34 = and i16 %32, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.i118 = icmp eq i16 %34, 0
  %or.cond123 = or i1 %cmp.i117, %cmp.i118
  br i1 %or.cond123, label %if.then45.do.body72_crit_edge, label %if.else55

if.then45.do.body72_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body72

if.else55:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %queue_id = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 3
  %35 = ptrtoint ptr %queue_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %queue_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %switch.selectcmp = icmp eq i8 %36, 2
  %switch.select = select i1 %switch.selectcmp, i8 5, i8 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %switch.selectcmp109 = icmp eq i8 %36, 3
  %switch.select110 = select i1 %switch.selectcmp109, i8 6, i8 %switch.select
  br label %do.body72

do.body72:                                        ; preds = %if.else55, %if.then45.do.body72_crit_edge, %if.then5.do.body72_crit_edge, %if.end.do.body72_crit_edge
  %priority.2 = phi i8 [ 5, %if.then45.do.body72_crit_edge ], [ %switch.select110, %if.else55 ], [ 5, %if.end.do.body72_crit_edge ], [ 7, %if.then5.do.body72_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_tx_h_bt.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_tx_h_bt, %if.then84)) #12
          to label %do.end88 [label %if.then84], !srcloc !151

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  %conv85 = zext i8 %priority.2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_tx_h_bt.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.46, i32 noundef %conv85) #12
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %do.body72
  %shl = shl nuw nsw i8 %priority.2, 1
  %flags = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 5
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags, align 1
  %or = or i8 %38, %shl
  store i8 %or, ptr %flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw1200_tx_h_rate_policy(ptr noundef %priv, ptr nocapture noundef %t, ptr nocapture noundef %wsm) unnamed_addr #0 align 64 {
entry:
  %tx_policy_renew = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx_policy_renew) #12
  %0 = ptrtoint ptr %tx_policy_renew to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tx_policy_renew, align 1
  %tx_info = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 2
  %1 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_info, align 4
  %3 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %2, i32 0, i32 2
  %call = call fastcc i32 @tx_policy_get(ptr noundef %priv, ptr noundef %3, ptr noundef nonnull %tx_policy_renew)
  %conv = trunc i32 %call to i8
  %rate_id = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %rate_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %rate_id, align 1
  %conv3 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv3)
  %cmp = icmp eq i32 %conv3, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 1
  %7 = shl i8 %conv, 4
  %conv9 = or i8 %6, %7
  store i8 %conv9, ptr %flags, align 1
  %8 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_info, align 4
  %10 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.i = sext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i = icmp slt i8 %12, 0
  br i1 %cmp.i, label %if.end.cw1200_get_tx_rate.exit_crit_edge, label %if.end.i

if.end.cw1200_get_tx_rate.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_get_tx_rate.exit

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %bf.load.i = load i16, ptr %flags.i, align 1
  %14 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %mcs_rates.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 24
  br label %return.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy.i, align 8
  %channel.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 25
  %19 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %arrayidx6.i = getelementptr %struct.wiphy, ptr %18, i32 0, i32 53, i32 %22
  %23 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx6.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %24, i32 0, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end5.i, %if.then3.i
  %bitrates.sink.i = phi ptr [ %bitrates.i, %if.end5.i ], [ %mcs_rates.i, %if.then3.i ]
  %25 = ptrtoint ptr %bitrates.sink.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bitrates.sink.i, align 4
  %arrayidx9.i = getelementptr %struct.ieee80211_rate, ptr %26, i32 %conv.i
  br label %cw1200_get_tx_rate.exit

cw1200_get_tx_rate.exit:                          ; preds = %return.sink.split.i, %if.end.cw1200_get_tx_rate.exit_crit_edge
  %retval.0.i59 = phi ptr [ null, %if.end.cw1200_get_tx_rate.exit_crit_edge ], [ %arrayidx9.i, %return.sink.split.i ]
  %rate = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 3
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i59, ptr %rate, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i59, i32 0, i32 2
  %28 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hw_value, align 2
  %conv14 = trunc i16 %29 to i8
  %max_tx_rate = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 2
  %30 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv14, ptr %max_tx_rate, align 1
  %31 = load ptr, ptr %rate, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %and = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cw1200_get_tx_rate.exit.if.end25_crit_edge, label %if.then17

cw1200_get_tx_rate.exit.if.end25_crit_edge:       ; preds = %cw1200_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then17:                                        ; preds = %cw1200_get_tx_rate.exit
  %channel_type.i.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 30, i32 1
  %34 = ptrtoint ptr %channel_type.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.not.i = icmp eq i32 %35, 0
  br i1 %cmp.i.not.i, label %if.then17.if.else_crit_edge, label %land.lhs.true.i

if.then17.if.else_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.then17
  %ht_info = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 30
  %36 = ptrtoint ptr %ht_info to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ht_info, align 4
  %38 = and i16 %37, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool1.not.i = icmp eq i16 %38, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else_crit_edge, label %cw1200_ht_greenfield.exit

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

cw1200_ht_greenfield.exit:                        ; preds = %land.lhs.true.i
  %operation_mode.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 30, i32 2
  %39 = ptrtoint ptr %operation_mode.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %operation_mode.i, align 4
  %41 = and i16 %40, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool19.not.not = icmp eq i16 %41, 0
  br i1 %tobool19.not.not, label %cw1200_ht_greenfield.exit.if.end25.sink.split_crit_edge, label %cw1200_ht_greenfield.exit.if.else_crit_edge

cw1200_ht_greenfield.exit.if.else_crit_edge:      ; preds = %cw1200_ht_greenfield.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

cw1200_ht_greenfield.exit.if.end25.sink.split_crit_edge: ; preds = %cw1200_ht_greenfield.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.sink.split

if.else:                                          ; preds = %cw1200_ht_greenfield.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.then17.if.else_crit_edge
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else, %cw1200_ht_greenfield.exit.if.end25.sink.split_crit_edge
  %.sink66 = phi i32 [ 16777216, %if.else ], [ 33554432, %cw1200_ht_greenfield.exit.if.end25.sink.split_crit_edge ]
  %ht_tx_parameters22 = getelementptr inbounds %struct.wsm_tx, ptr %wsm, i32 0, i32 8
  %42 = ptrtoint ptr %ht_tx_parameters22 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %ht_tx_parameters22, align 1
  %or21 = or i32 %43, %.sink66
  store i32 %or21, ptr %ht_tx_parameters22, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %cw1200_get_tx_rate.exit.if.end25_crit_edge
  %44 = ptrtoint ptr %tx_policy_renew to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_policy_renew, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool26.not = icmp eq i8 %45, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %do.body

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_tx_h_rate_policy.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_tx_h_rate_policy, %if.then32)) #12
          to label %do.end [label %if.then32], !srcloc !151

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_tx_h_rate_policy.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.48) #12
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  tail call void @wsm_lock_tx_async(ptr noundef %priv) #12
  %arrayidx.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 0
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.i) #12
  %arrayidx.1.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 1
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.1.i) #12
  %arrayidx.2.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 2
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.2.i) #12
  %arrayidx.3.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 3
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.3.i) #12
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %46 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %workqueue, align 4
  %tx_policy_upload_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 139
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %tx_policy_upload_work) #12
  br i1 %call.i, label %do.end.cleanup_crit_edge, label %if.then38

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.i) #12
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.1.i) #12
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.2.i) #12
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.3.i) #12
  tail call void @wsm_unlock_tx(ptr noundef %priv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.end.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx_policy_renew) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cw1200_tx_h_pm_state(ptr noundef %priv, ptr nocapture noundef readonly %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %txpriv = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9
  %0 = ptrtoint ptr %txpriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp = icmp eq i8 %1, 6
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %buffered_multicasts = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 121
  %2 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buffered_multicasts, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %buffered_multicasts, align 4
  %sta_asleep_mask = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 116
  %5 = ptrtoint ptr %sta_asleep_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sta_asleep_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %7 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %workqueue, align 4
  %multicast_start_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 126
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %multicast_start_work) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %raw_link_id = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %raw_link_id, align 1
  %conv7 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.end5.if.end22_crit_edge, label %land.lhs.true9

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true9:                                   ; preds = %if.end5
  %tid = getelementptr inbounds %struct.cw1200_txinfo, ptr %t, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp12 = icmp ult i8 %12, 8
  br i1 %cmp12, label %if.then14, label %land.lhs.true9.if.end22_crit_edge

land.lhs.true9.if.end22_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then14:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  %conv11 = zext i8 %12 to i32
  %sub = add nsw i32 %conv7, -1
  %arrayidx20 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub, i32 4, i32 %conv11
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx20, align 1
  %inc = add i8 %14, 1
  store i8 %inc, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %phi.cmp = icmp eq i8 %14, 0
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %land.lhs.true9.if.end22_crit_edge, %if.end5.if.end22_crit_edge
  %was_buffered.0 = phi i1 [ %phi.cmp, %if.then14 ], [ false, %land.lhs.true9.if.end22_crit_edge ], [ false, %if.end5.if.end22_crit_edge ]
  ret i1 %was_buffered.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_set_buffered(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  %0 = tail call i32 @llvm.read_register.i32(metadata !140) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_bh_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_skb_dtor(ptr noundef %priv, ptr noundef %skb, ptr nocapture noundef readonly %txpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.cw1200_txpriv, ptr %txpriv, i32 0, i32 4
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offset, align 1
  %conv = zext i8 %1 to i32
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv) #12
  %rate_id = getelementptr inbounds %struct.cw1200_txpriv, ptr %txpriv, i32 0, i32 3
  %2 = ptrtoint ptr %rate_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rate_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not = icmp eq i8 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %raw_link_id = getelementptr inbounds %struct.cw1200_txpriv, ptr %txpriv, i32 0, i32 1
  %4 = ptrtoint ptr %raw_link_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %raw_link_id, align 1
  %tid = getelementptr inbounds %struct.cw1200_txpriv, ptr %txpriv, i32 0, i32 2
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp.i = icmp ult i8 %7, 8
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.then.cw1200_notify_buffered_tx.exit_crit_edge

if.then.cw1200_notify_buffered_tx.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_notify_buffered_tx.exit

if.then.i:                                        ; preds = %if.then
  %conv4 = zext i8 %7 to i32
  %conv3 = zext i8 %5 to i32
  %sub.i = add nsw i32 %conv3, -1
  %buffered1.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub.i, i32 4
  %ps_state_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock.i) #12
  %arrayidx2.i = getelementptr i8, ptr %buffered1.i, i32 %conv4
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %do.end.i, label %if.then26.critedge.i, !prof !153

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 975, i32 noundef 9, ptr noundef null) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock.i) #12
  br label %if.then33.i

if.then26.critedge.i:                             ; preds = %if.then.i
  %dec.i = add i8 %9, -1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %dec.i, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %phi.cmp.i = icmp eq i8 %dec.i, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock.i) #12
  br i1 %phi.cmp.i, label %if.then26.critedge.i.if.then33.i_crit_edge, label %if.then26.critedge.i.cw1200_notify_buffered_tx.exit_crit_edge

if.then26.critedge.i.cw1200_notify_buffered_tx.exit_crit_edge: ; preds = %if.then26.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_notify_buffered_tx.exit

if.then26.critedge.i.if.then33.i_crit_edge:       ; preds = %if.then26.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.then26.critedge.i.if.then33.i_crit_edge, %do.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !140) #12
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !155
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.then33.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then33.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then33.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 696, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then33.i.rcu_read_lock.exit.i_crit_edge
  %vif.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %17 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vif.i, align 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 2
  %call.i = tail call ptr @ieee80211_find_sta(ptr noundef %18, ptr noundef %addr1.i) #12
  %tobool35.not.i = icmp eq ptr %call.i, null
  br i1 %tobool35.not.i, label %rcu_read_lock.exit.i.if.end37.i_crit_edge, label %if.then36.i

rcu_read_lock.exit.i.if.end37.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then36.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ieee80211_sta_set_buffered(ptr noundef nonnull %call.i, i8 noundef zeroext %7, i1 noundef zeroext false) #12
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %rcu_read_lock.exit.i.if.end37.i_crit_edge
  %call.i51.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i51.i, label %if.end37.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i54.i

if.end37.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i54.i:                              ; preds = %if.end37.i
  %call1.i52.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call1.i52.i, 0
  br i1 %tobool.not.i53.i, label %land.lhs.true.i54.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i56.i

land.lhs.true.i54.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i56.i:                             ; preds = %land.lhs.true.i54.i
  %.b4.i55.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55.i, label %land.lhs.true2.i56.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i57.i

land.lhs.true2.i56.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i57.i:                                    ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i57.i, %land.lhs.true2.i56.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i54.i.rcu_read_unlock.exit.i_crit_edge, %if.end37.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  %19 = tail call i32 @llvm.read_register.i32(metadata !140) #12
  %and.i.i.i.i.i58.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i58.i to ptr
  %preempt_count.i.i.i.i59.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i59.i, align 4
  %sub.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i59.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cw1200_notify_buffered_tx.exit

cw1200_notify_buffered_tx.exit:                   ; preds = %rcu_read_unlock.exit.i, %if.then26.critedge.i.cw1200_notify_buffered_tx.exit_crit_edge, %if.then.cw1200_notify_buffered_tx.exit_crit_edge
  %23 = ptrtoint ptr %rate_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rate_id, align 1
  %conv6 = zext i8 %24 to i32
  %tx_policy_cache.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138
  %lock.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %free.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 2
  %25 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %free.i, align 4
  %cmp.i.i = icmp eq ptr %26, %free.i
  %usage_count.i.i = getelementptr [8 x %struct.tx_policy_cache_entry], ptr %tx_policy_cache.i, i32 0, i32 %conv6, i32 0, i32 2
  %27 = ptrtoint ptr %usage_count.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %usage_count.i.i, align 1
  %dec.i.i = add i8 %28, -1
  store i8 %dec.i.i, ptr %usage_count.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i.i)
  %tobool.not.i.i15 = icmp eq i8 %dec.i.i, 0
  br i1 %tobool.not.i.i15, label %if.then.i.i16, label %cw1200_notify_buffered_tx.exit.tx_policy_put.exit_crit_edge

cw1200_notify_buffered_tx.exit.tx_policy_put.exit_crit_edge: ; preds = %cw1200_notify_buffered_tx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_put.exit

if.then.i.i16:                                    ; preds = %cw1200_notify_buffered_tx.exit
  %link.i.i = getelementptr [8 x %struct.tx_policy_cache_entry], ptr %tx_policy_cache.i, i32 0, i32 %conv6, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i16.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i16.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i16
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr [8 x %struct.tx_policy_cache_entry], ptr %tx_policy_cache.i, i32 0, i32 %conv6, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i, align 4
  %31 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i16.__list_del_entry.exit.i.i.i_crit_edge
  %35 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %free.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i.i, ptr noundef %free.i, ptr noundef %36) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.tx_policy_release.exit.i_crit_edge

__list_del_entry.exit.i.i.i.tx_policy_release.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_release.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %link.i.i, ptr %prev1.i.i2.i.i.i, align 4
  %38 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %link.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr [8 x %struct.tx_policy_cache_entry], ptr %tx_policy_cache.i, i32 0, i32 %conv6, i32 1, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %free.i, ptr %prev3.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %link.i.i, ptr %free.i, align 4
  br label %tx_policy_release.exit.i

tx_policy_release.exit.i:                         ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.tx_policy_release.exit.i_crit_edge
  br i1 %cmp.i.i, label %if.then.i18, label %tx_policy_release.exit.i.tx_policy_put.exit_crit_edge

tx_policy_release.exit.i.tx_policy_put.exit_crit_edge: ; preds = %tx_policy_release.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_put.exit

if.then.i18:                                      ; preds = %tx_policy_release.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 0
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.i.i) #12
  %arrayidx.1.i.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 1
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.1.i.i) #12
  %arrayidx.2.i.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 2
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.2.i.i) #12
  %arrayidx.3.i.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 3
  tail call void @cw1200_queue_unlock(ptr noundef %arrayidx.3.i.i) #12
  br label %tx_policy_put.exit

tx_policy_put.exit:                               ; preds = %if.then.i18, %tx_policy_release.exit.i.tx_policy_put.exit_crit_edge, %cw1200_notify_buffered_tx.exit.tx_policy_put.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  br label %if.end

if.end:                                           ; preds = %tx_policy_put.exit, %entry.if.end_crit_edge
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 4
  tail call void @ieee80211_tx_status(ptr noundef %42, ptr noundef %skb) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_tx_confirm_cb(ptr noundef %priv, i32 noundef %link_id, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  %txpriv = alloca ptr, align 4
  %suspend = alloca %struct.wsm_suspend_resume, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %shr.i = lshr i32 %1, 16
  %idxprom = and i32 %shr.i, 255
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #12
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txpriv) #12
  %3 = ptrtoint ptr %txpriv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %txpriv, align 4, !annotation !152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_tx_confirm_cb.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_tx_confirm_cb, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %status = getelementptr inbounds %struct.wsm_tx_confirm, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %ack_failures = getelementptr inbounds %struct.wsm_tx_confirm, ptr %arg, i32 0, i32 3
  %6 = ptrtoint ptr %ack_failures to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ack_failures, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_tx_confirm_cb.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.9, i32 noundef %5, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 43
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %10 = and i32 %1, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8.not = icmp eq i32 %10, 0
  br i1 %cmp8.not, label %if.end41, label %do.end25, !prof !150

do.end25:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 867, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end6
  %status42 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %arg, i32 0, i32 1
  %11 = ptrtoint ptr %status42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool43.not = icmp eq i32 %12, 0
  br i1 %tobool43.not, label %if.end41.if.end62_crit_edge, label %do.body45

if.end41.if.end62_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

do.body45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_tx_confirm_cb.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_tx_confirm_cb, %if.then57)) #12
          to label %if.end62 [label %if.then57], !srcloc !151

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %status42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status42, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_tx_confirm_cb.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.10, i32 noundef %14) #12
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %do.body45, %if.end41.if.end62_crit_edge
  %15 = ptrtoint ptr %status42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %16)
  %cmp64 = icmp eq i32 %16, 11
  br i1 %cmp64, label %land.lhs.true, label %if.end62.if.else_crit_edge

if.end62.if.else_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end62
  %flags = getelementptr inbounds %struct.wsm_tx_confirm, ptr %arg, i32 0, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 2
  %19 = and i16 %18, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool67.not = icmp eq i16 %19, 0
  br i1 %tobool67.not, label %land.lhs.true.if.else_crit_edge, label %if.then68

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then68:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %suspend) #12
  %20 = getelementptr inbounds i8, ptr %suspend, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4
  %22 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %link_id, ptr %suspend, align 4
  %stop = getelementptr inbounds %struct.wsm_suspend_resume, ptr %suspend, i32 0, i32 1
  %23 = ptrtoint ptr %stop to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %stop, align 4
  %multicast = getelementptr inbounds %struct.wsm_suspend_resume, ptr %suspend, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_id)
  %tobool70.not = icmp eq i32 %link_id, 0
  %frombool73 = zext i1 %tobool70.not to i8
  %24 = ptrtoint ptr %multicast to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool73, ptr %multicast, align 1
  %queue74 = getelementptr inbounds %struct.wsm_suspend_resume, ptr %suspend, i32 0, i32 3
  %25 = ptrtoint ptr %queue74 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %queue74, align 4
  call void @cw1200_suspend_resume(ptr noundef %priv, ptr noundef nonnull %suspend) #12
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arg, align 4
  %shr.i287 = lshr i32 %31, 8
  %conv80 = and i32 %shr.i287, 255
  %add = add nuw nsw i32 %conv80, 1
  %sta_asleep_mask = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 116
  %32 = ptrtoint ptr %sta_asleep_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sta_asleep_mask, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %link_id, i32 noundef %add, i32 noundef %33) #16
  %34 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arg, align 4
  %call82 = call i32 @cw1200_queue_requeue(ptr noundef %arrayidx, i32 noundef %35) #12
  %ps_state_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 120
  call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  br i1 %tobool70.not, label %if.then84, label %if.then68.if.end90_crit_edge

if.then68.if.end90_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then84:                                        ; preds = %if.then68
  %buffered_multicasts = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 121
  %36 = ptrtoint ptr %buffered_multicasts to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %buffered_multicasts, align 4
  %37 = ptrtoint ptr %sta_asleep_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sta_asleep_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool86.not = icmp eq i32 %38, 0
  br i1 %tobool86.not, label %if.then84.if.end90_crit_edge, label %if.then87

if.then84.if.end90_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then87:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %39 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %workqueue, align 4
  %multicast_start_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 126
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %multicast_start_work) #12
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.then84.if.end90_crit_edge, %if.then68.if.end90_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %suspend) #12
  br label %if.end210

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end62.if.else_crit_edge
  %41 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arg, align 4
  %call93 = call i32 @cw1200_queue_get_skb(ptr noundef %arrayidx, i32 noundef %42, ptr noundef nonnull %skb, ptr noundef nonnull %txpriv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %if.else.if.end210_crit_edge

if.else.if.end210_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end210

if.then95:                                        ; preds = %if.else
  %43 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3
  %ack_failures97 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %arg, i32 0, i32 3
  %45 = ptrtoint ptr %ack_failures97 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ack_failures97, align 1
  %conv98 = zext i8 %46 to i32
  %channel_type.i.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 30, i32 1
  %47 = ptrtoint ptr %channel_type.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.not.i = icmp eq i32 %48, 0
  br i1 %cmp.i.not.i, label %if.then95.cw1200_ht_greenfield.exit.thread_crit_edge, label %land.lhs.true.i

if.then95.cw1200_ht_greenfield.exit.thread_crit_edge: ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_ht_greenfield.exit.thread

land.lhs.true.i:                                  ; preds = %if.then95
  %ht_info = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 30
  %49 = ptrtoint ptr %ht_info to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ht_info, align 4
  %51 = and i16 %50, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool1.not.i = icmp eq i16 %51, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cw1200_ht_greenfield.exit.thread_crit_edge, label %cw1200_ht_greenfield.exit

land.lhs.true.i.cw1200_ht_greenfield.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_ht_greenfield.exit.thread

cw1200_ht_greenfield.exit:                        ; preds = %land.lhs.true.i
  %operation_mode.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 30, i32 2
  %52 = ptrtoint ptr %operation_mode.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %operation_mode.i, align 4
  %54 = and i16 %53, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool100.not.not = icmp eq i16 %54, 0
  br i1 %tobool100.not.not, label %cw1200_ht_greenfield.exit._crit_edge, label %cw1200_ht_greenfield.exit.cw1200_ht_greenfield.exit.thread_crit_edge

cw1200_ht_greenfield.exit.cw1200_ht_greenfield.exit.thread_crit_edge: ; preds = %cw1200_ht_greenfield.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_ht_greenfield.exit.thread

cw1200_ht_greenfield.exit._crit_edge:             ; preds = %cw1200_ht_greenfield.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %55

cw1200_ht_greenfield.exit.thread:                 ; preds = %cw1200_ht_greenfield.exit.cw1200_ht_greenfield.exit.thread_crit_edge, %land.lhs.true.i.cw1200_ht_greenfield.exit.thread_crit_edge, %if.then95.cw1200_ht_greenfield.exit.thread_crit_edge
  br label %55

55:                                               ; preds = %cw1200_ht_greenfield.exit.thread, %cw1200_ht_greenfield.exit._crit_edge
  %56 = phi i16 [ 0, %cw1200_ht_greenfield.exit.thread ], [ 16, %cw1200_ht_greenfield.exit._crit_edge ]
  %bss_loss_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 133
  call void @_raw_spin_lock(ptr noundef %bss_loss_lock) #12
  %bss_loss_state = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 134
  %57 = ptrtoint ptr %bss_loss_state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bss_loss_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool105.not = icmp eq i32 %58, 0
  br i1 %tobool105.not, label %.if.end116_crit_edge, label %land.lhs.true106

.if.end116_crit_edge:                             ; preds = %55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

land.lhs.true106:                                 ; preds = %55
  %59 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arg, align 4
  %bss_loss_confirm_id = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 135
  %61 = ptrtoint ptr %bss_loss_confirm_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bss_loss_confirm_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp108 = icmp eq i32 %60, %62
  br i1 %cmp108, label %if.then110, label %land.lhs.true106.if.end116_crit_edge

land.lhs.true106.if.end116_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then110:                                       ; preds = %land.lhs.true106
  %63 = ptrtoint ptr %status42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %status42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool112.not = icmp eq i32 %64, 0
  br i1 %tobool112.not, label %if.else114, label %if.then113

if.then113:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  call void @__cw1200_cqm_bssloss_sm(ptr noundef %priv, i32 noundef 0, i32 noundef 0, i32 noundef 1) #12
  br label %if.end116

if.else114:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  call void @__cw1200_cqm_bssloss_sm(ptr noundef %priv, i32 noundef 0, i32 noundef 1, i32 noundef 0) #12
  br label %if.end116

if.end116:                                        ; preds = %if.else114, %if.then113, %land.lhs.true106.if.end116_crit_edge, %.if.end116_crit_edge
  call void @_raw_spin_unlock(ptr noundef %bss_loss_lock) #12
  %65 = ptrtoint ptr %status42 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %status42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool119.not = icmp eq i32 %66, 0
  br i1 %tobool119.not, label %if.then120, label %if.else129

if.then120:                                       ; preds = %if.end116
  %67 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cb.i, align 8
  %or122 = or i32 %68, 512
  store i32 %or122, ptr %cb.i, align 8
  %inc = add nuw nsw i32 %conv98, 1
  %debug.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 15
  %69 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %debug.i, align 4
  %tx.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx.i, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %tx.i, align 4
  %flags123 = getelementptr inbounds %struct.wsm_tx_confirm, ptr %arg, i32 0, i32 4
  %73 = ptrtoint ptr %flags123 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags123, align 2
  %75 = and i16 %74, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool126.not = icmp eq i16 %75, 0
  br i1 %tobool126.not, label %if.then120.if.end134_crit_edge, label %if.then127

if.then120.if.end134_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then127:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %debug.i, align 4
  %tx_agg.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %tx_agg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_agg.i, align 4
  %inc.i290 = add i32 %79, 1
  store i32 %inc.i290, ptr %tx_agg.i, align 4
  br label %if.end134

if.else129:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool130.not = icmp eq i8 %46, 0
  %inc132 = add nuw nsw i32 %conv98, 1
  %spec.select283 = select i1 %tobool130.not, i32 0, i32 %inc132
  br label %if.end134

if.end134:                                        ; preds = %if.else129, %if.then127, %if.then120.if.end134_crit_edge
  %tx_count.0 = phi i32 [ %inc, %if.then127 ], [ %inc, %if.then120.if.end134_crit_edge ], [ %spec.select283, %if.else129 ]
  %80 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 8
  %count = getelementptr %struct.sk_buff, ptr %44, i32 0, i32 3, i32 9
  %81 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %conv138 = zext i16 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_count.0, i32 %conv138)
  %cmp139.not = icmp ugt i32 %tx_count.0, %conv138
  br i1 %cmp139.not, label %if.end147, label %if.end134.for.body182.lr.ph_crit_edge

if.end134.for.body182.lr.ph_crit_edge:            ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body182.lr.ph

if.end147:                                        ; preds = %if.end134
  %sub = sub nsw i32 %tx_count.0, %conv138
  %82 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool161.not = icmp eq i16 %82, 0
  br i1 %tobool161.not, label %if.end147.for.inc_crit_edge, label %if.then162

if.end147.for.inc_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then162:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  %bf.load.masked = and i16 %bf.load, 2047
  %bf.value173 = or i16 %bf.load.masked, %56
  %bf.clear174 = and i16 %bf.load, -2048
  %bf.set175 = or i16 %bf.value173, %bf.clear174
  %83 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %bf.set175, ptr %count, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then162, %if.end147.for.inc_crit_edge
  %count.1 = getelementptr %struct.sk_buff, ptr %44, i32 0, i32 3, i32 12
  %84 = ptrtoint ptr %count.1 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %bf.load.1 = load i16, ptr %count.1, align 1
  %bf.lshr.1 = lshr i16 %bf.load.1, 11
  %conv138.1 = zext i16 %bf.lshr.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv138.1)
  %cmp139.not.1 = icmp sgt i32 %sub, %conv138.1
  br i1 %cmp139.not.1, label %if.end147.1, label %for.inc.for.body182.lr.ph_crit_edge

for.inc.for.body182.lr.ph_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body182.lr.ph

if.end147.1:                                      ; preds = %for.inc
  %sub.1 = sub nsw i32 %sub, %conv138.1
  %85 = and i16 %bf.load.1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool161.not.1 = icmp eq i16 %85, 0
  br i1 %tobool161.not.1, label %if.end147.1.for.inc.1_crit_edge, label %if.then162.1

if.end147.1.for.inc.1_crit_edge:                  ; preds = %if.end147.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then162.1:                                     ; preds = %if.end147.1
  call void @__sanitizer_cov_trace_pc() #14
  %bf.load.masked.1 = and i16 %bf.load.1, 2047
  %bf.value173.1 = or i16 %bf.load.masked.1, %56
  %bf.clear174.1 = and i16 %bf.load.1, -2048
  %bf.set175.1 = or i16 %bf.value173.1, %bf.clear174.1
  %86 = ptrtoint ptr %count.1 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %bf.set175.1, ptr %count.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then162.1, %if.end147.1.for.inc.1_crit_edge
  %count.2 = getelementptr %struct.sk_buff, ptr %44, i32 0, i32 3, i32 15
  %87 = ptrtoint ptr %count.2 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %bf.load.2 = load i16, ptr %count.2, align 1
  %bf.lshr.2 = lshr i16 %bf.load.2, 11
  %conv138.2 = zext i16 %bf.lshr.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %conv138.2)
  %cmp139.not.2 = icmp sgt i32 %sub.1, %conv138.2
  br i1 %cmp139.not.2, label %if.end147.2, label %for.inc.1.for.body182.lr.ph_crit_edge

for.inc.1.for.body182.lr.ph_crit_edge:            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body182.lr.ph

if.end147.2:                                      ; preds = %for.inc.1
  %sub.2 = sub nsw i32 %sub.1, %conv138.2
  %88 = and i16 %bf.load.2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool161.not.2 = icmp eq i16 %88, 0
  br i1 %tobool161.not.2, label %if.end147.2.for.inc.2_crit_edge, label %if.then162.2

if.end147.2.for.inc.2_crit_edge:                  ; preds = %if.end147.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then162.2:                                     ; preds = %if.end147.2
  call void @__sanitizer_cov_trace_pc() #14
  %bf.load.masked.2 = and i16 %bf.load.2, 2047
  %bf.value173.2 = or i16 %bf.load.masked.2, %56
  %bf.clear174.2 = and i16 %bf.load.2, -2048
  %bf.set175.2 = or i16 %bf.value173.2, %bf.clear174.2
  %89 = ptrtoint ptr %count.2 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %bf.set175.2, ptr %count.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then162.2, %if.end147.2.for.inc.2_crit_edge
  %count.3 = getelementptr %struct.sk_buff, ptr %44, i32 0, i32 3, i32 18
  %90 = ptrtoint ptr %count.3 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %bf.load.3 = load i16, ptr %count.3, align 1
  %bf.lshr.3 = lshr i16 %bf.load.3, 11
  %conv138.3 = zext i16 %bf.lshr.3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2, i32 %conv138.3)
  %cmp139.not.3 = icmp sgt i32 %sub.2, %conv138.3
  br i1 %cmp139.not.3, label %if.end147.3, label %for.end

if.end147.3:                                      ; preds = %for.inc.2
  %91 = and i16 %bf.load.3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool161.not.3 = icmp eq i16 %91, 0
  br i1 %tobool161.not.3, label %if.end147.3.for.end193_crit_edge, label %if.then162.3

if.end147.3.for.end193_crit_edge:                 ; preds = %if.end147.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end193

if.then162.3:                                     ; preds = %if.end147.3
  call void @__sanitizer_cov_trace_pc() #14
  %bf.load.masked.3 = and i16 %bf.load.3, 2047
  %bf.value173.3 = or i16 %bf.load.masked.3, %56
  %bf.clear174.3 = and i16 %bf.load.3, -2048
  br label %for.end193.sink.split

for.end:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %conv142 = trunc i32 %sub.2 to i16
  %bf.shl = shl i16 %conv142, 11
  %bf.clear = and i16 %bf.load.3, 2047
  br label %for.end193.sink.split

for.body182.lr.ph:                                ; preds = %for.inc.1.for.body182.lr.ph_crit_edge, %for.inc.for.body182.lr.ph_crit_edge, %if.end134.for.body182.lr.ph_crit_edge
  %i.0298.lcssa.ph = phi i32 [ 3, %for.inc.1.for.body182.lr.ph_crit_edge ], [ 2, %for.inc.for.body182.lr.ph_crit_edge ], [ 1, %if.end134.for.body182.lr.ph_crit_edge ]
  %tx_count.1297.lcssa.ph = phi i32 [ %sub.1, %for.inc.1.for.body182.lr.ph_crit_edge ], [ %sub, %for.inc.for.body182.lr.ph_crit_edge ], [ %tx_count.0, %if.end134.for.body182.lr.ph_crit_edge ]
  %count.lcssa.ph = phi ptr [ %count.2, %for.inc.1.for.body182.lr.ph_crit_edge ], [ %count.1, %for.inc.for.body182.lr.ph_crit_edge ], [ %count, %if.end134.for.body182.lr.ph_crit_edge ]
  %bf.load.lcssa.ph = phi i16 [ %bf.load.2, %for.inc.1.for.body182.lr.ph_crit_edge ], [ %bf.load.1, %for.inc.for.body182.lr.ph_crit_edge ], [ %bf.load, %if.end134.for.body182.lr.ph_crit_edge ]
  %conv142314 = trunc i32 %tx_count.1297.lcssa.ph to i16
  %bf.shl315 = shl i16 %conv142314, 11
  %bf.clear316 = and i16 %bf.load.lcssa.ph, 2047
  %bf.set317 = or i16 %bf.clear316, %bf.shl315
  %92 = ptrtoint ptr %count.lcssa.ph to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %bf.set317, ptr %count.lcssa.ph, align 1
  %arrayidx184 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %80, i32 0, i32 %i.0298.lcssa.ph
  %count185 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %80, i32 0, i32 %i.0298.lcssa.ph, i32 1
  %93 = ptrtoint ptr %count185 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %bf.load186 = load i16, ptr %count185, align 1
  %bf.clear187 = and i16 %bf.load186, 2047
  store i16 %bf.clear187, ptr %count185, align 1
  %94 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %arrayidx184, align 1
  %i.1 = add nuw nsw i32 %i.0298.lcssa.ph, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1)
  %exitcond.not = icmp eq i32 %i.1, 4
  br i1 %exitcond.not, label %for.body182.lr.ph.for.end193_crit_edge, label %for.body182.1

for.body182.lr.ph.for.end193_crit_edge:           ; preds = %for.body182.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end193

for.body182.1:                                    ; preds = %for.body182.lr.ph
  %arrayidx184.1 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %80, i32 0, i32 %i.1
  %count185.1 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %80, i32 0, i32 %i.1, i32 1
  %95 = ptrtoint ptr %count185.1 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %bf.load186.1 = load i16, ptr %count185.1, align 1
  %bf.clear187.1 = and i16 %bf.load186.1, 2047
  store i16 %bf.clear187.1, ptr %count185.1, align 1
  %96 = ptrtoint ptr %arrayidx184.1 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -1, ptr %arrayidx184.1, align 1
  %i.1.1 = add nuw nsw i32 %i.0298.lcssa.ph, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1.1)
  %exitcond.not.1 = icmp eq i32 %i.1.1, 4
  br i1 %exitcond.not.1, label %for.body182.1.for.end193_crit_edge, label %for.body182.2

for.body182.1.for.end193_crit_edge:               ; preds = %for.body182.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end193

for.body182.2:                                    ; preds = %for.body182.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx184.2 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %80, i32 0, i32 %i.1.1
  %count185.2 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %80, i32 0, i32 %i.1.1, i32 1
  %97 = ptrtoint ptr %count185.2 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %bf.load186.2 = load i16, ptr %count185.2, align 1
  %bf.clear187.2 = and i16 %bf.load186.2, 2047
  store i16 %bf.clear187.2, ptr %count185.2, align 1
  %98 = ptrtoint ptr %arrayidx184.2 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %arrayidx184.2, align 1
  br label %for.end193

for.end193.sink.split:                            ; preds = %for.end, %if.then162.3
  %bf.clear174.3.sink = phi i16 [ %bf.clear174.3, %if.then162.3 ], [ %bf.shl, %for.end ]
  %bf.value173.3.sink = phi i16 [ %bf.value173.3, %if.then162.3 ], [ %bf.clear, %for.end ]
  %bf.set175.3 = or i16 %bf.value173.3.sink, %bf.clear174.3.sink
  %99 = ptrtoint ptr %count.3 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 %bf.set175.3, ptr %count.3, align 1
  br label %for.end193

for.end193:                                       ; preds = %for.end193.sink.split, %for.body182.2, %for.body182.1.for.end193_crit_edge, %for.body182.lr.ph.for.end193_crit_edge, %if.end147.3.for.end193_crit_edge
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 28
  %100 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw_key, align 4
  %tobool194.not = icmp eq ptr %101, null
  br i1 %tobool194.not, label %for.end193.if.end206_crit_edge, label %if.then195

for.end193.if.end206_crit_edge:                   ; preds = %for.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end206

if.then195:                                       ; preds = %for.end193
  %102 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 6
  %104 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len, align 4
  %icv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %101, i32 0, i32 2
  %106 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %icv_len, align 4
  %conv197 = zext i8 %107 to i32
  %sub198 = sub i32 %105, %conv197
  call void @skb_trim(ptr noundef %103, i32 noundef %sub198) #12
  %108 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw_key, align 4
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %111)
  %cmp200 = icmp eq i32 %111, 1027074
  br i1 %cmp200, label %if.then202, label %if.then195.if.end206_crit_edge

if.then195.if.end206_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end206

if.then202:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %skb, align 4
  %len203 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %len203 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len203, align 4
  %sub204 = add i32 %115, -8
  call void @skb_trim(ptr noundef %113, i32 noundef %sub204) #12
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %if.then195.if.end206_crit_edge, %for.end193.if.end206_crit_edge
  %116 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arg, align 4
  %call208 = call i32 @cw1200_queue_remove(ptr noundef %arrayidx, i32 noundef %117) #12
  br label %if.end210

if.end210:                                        ; preds = %if.end206, %if.else.if.end210_crit_edge, %if.end90
  call void @cw1200_bh_wakeup(ptr noundef %priv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end210, %do.end25, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txpriv) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_suspend_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_requeue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_get_skb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cw1200_cqm_bssloss_sm(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_rx_cb(ptr noundef %priv, ptr nocapture noundef readonly %arg, i32 noundef %link_id, ptr nocapture noundef %skb_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_p, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %p2p4 = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %p2p4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p2p4, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5 = icmp ne i8 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool5, %land.rhs ]
  %flag = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flag, align 8
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 43
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.end.cleanup402_crit_edge, label %if.end

land.end.cleanup402_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup402

if.end:                                           ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_id)
  %tobool6.not = icmp eq i32 %link_id, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %link_id)
  %cmp7 = icmp slt i32 %link_id, 6
  %or.cond = xor i1 %tobool6.not, %cmp7
  br i1 %or.cond, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %sub = add i32 %link_id, -1
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub
  %status = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp9 = icmp eq i32 %13, 2
  br i1 %cmp9, label %land.lhs.true10, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true10:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 2
  %16 = and i16 %15, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %16)
  %cmp.i = icmp eq i16 %16, 2048
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true10, %if.then8.if.end13_crit_edge
  %early_data.0 = phi i1 [ false, %if.then8.if.end13_crit_edge ], [ %cmp.i, %land.lhs.true10 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx, align 4
  br label %if.end66

if.else:                                          ; preds = %if.end
  br i1 %8, label %land.lhs.true15, label %if.else.if.end123_crit_edge

if.else.if.end123_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

land.lhs.true15:                                  ; preds = %if.else
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %3, align 2
  %21 = and i16 %20, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %21)
  %cmp.i549 = icmp eq i16 %21, -12288
  br i1 %cmp.i549, label %land.lhs.true18, label %land.lhs.true15.if.end66_crit_edge

land.lhs.true15.if.end66_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %u, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp19 = icmp eq i8 %23, 4
  br i1 %cmp19, label %do.body, label %land.lhs.true18.if.end66_crit_edge

land.lhs.true18.if.end66_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

do.body:                                          ; preds = %land.lhs.true18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_rx_cb.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_rx_cb, %if.then27)) #12
          to label %do.end [label %if.then27], !srcloc !151

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_rx_cb.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.15) #12
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %linkid_reset_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 142
  %24 = ptrtoint ptr %linkid_reset_work to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %linkid_reset_work, align 4
  %and1.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool31.not = icmp eq i32 %and1.i, 0
  br i1 %tobool31.not, label %do.end.if.end53_crit_edge, label %do.end47, !prof !150

do.end.if.end53_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

do.end47:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1035, i32 noundef 9, ptr noundef null) #12
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %do.end.if.end53_crit_edge
  %action_frame_sa = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 143
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %3, align 2
  %28 = and i16 %27, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %cmp.i.i = icmp eq i16 %28, 3
  br i1 %cmp.i.i, label %if.end53.ieee80211_get_SA.exit_crit_edge, label %if.end.i

if.end53.ieee80211_get_SA.exit_crit_edge:         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee80211_get_SA.exit

if.end.i:                                         ; preds = %if.end53
  %29 = and i16 %27, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.i11.not.i = icmp eq i16 %29, 0
  br i1 %cmp.i11.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 4
  br label %ieee80211_get_SA.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 3
  br label %ieee80211_get_SA.exit

ieee80211_get_SA.exit:                            ; preds = %if.end5.i, %if.then3.i, %if.end53.ieee80211_get_SA.exit_crit_edge
  %retval.0.i550 = phi ptr [ %addr3.i, %if.then3.i ], [ %addr2.i, %if.end5.i ], [ %u, %if.end53.ieee80211_get_SA.exit_crit_edge ]
  %30 = call ptr @memcpy(ptr %action_frame_sa, ptr %retval.0.i550, i32 6)
  %action_linkid = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 144
  %31 = ptrtoint ptr %action_linkid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %action_linkid, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %linkid_reset_work) #12
  br label %if.end66

if.end66:                                         ; preds = %ieee80211_get_SA.exit, %land.lhs.true18.if.end66_crit_edge, %land.lhs.true15.if.end66_crit_edge, %if.end13
  %early_data.1.off0 = phi i1 [ %early_data.0, %if.end13 ], [ false, %ieee80211_get_SA.exit ], [ false, %land.lhs.true18.if.end66_crit_edge ], [ false, %land.lhs.true15.if.end66_crit_edge ]
  %entry2.0 = phi ptr [ %arrayidx, %if.end13 ], [ null, %ieee80211_get_SA.exit ], [ null, %land.lhs.true18.if.end66_crit_edge ], [ null, %land.lhs.true15.if.end66_crit_edge ]
  %.not = xor i1 %8, true
  %brmerge = select i1 %tobool6.not, i1 true, i1 %.not
  br i1 %brmerge, label %if.end66.if.end123_crit_edge, label %land.lhs.true71

if.end66.if.end123_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

land.lhs.true71:                                  ; preds = %if.end66
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %3, align 2
  %35 = and i16 %34, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %35)
  %cmp.i551 = icmp eq i16 %35, -12288
  br i1 %cmp.i551, label %land.lhs.true75, label %land.lhs.true71.if.end123_crit_edge

land.lhs.true71.if.end123_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %u76 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6
  %36 = ptrtoint ptr %u76 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %u76, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %37)
  %cmp79 = icmp eq i8 %37, 4
  br i1 %cmp79, label %if.then81, label %land.lhs.true75.if.end123_crit_edge

land.lhs.true75.if.end123_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.then81:                                        ; preds = %land.lhs.true75
  %linkid_reset_work83 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 142
  %38 = ptrtoint ptr %linkid_reset_work83 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %linkid_reset_work83, align 4
  %and1.i539 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i539)
  %tobool86.not = icmp eq i32 %and1.i539, 0
  br i1 %tobool86.not, label %if.then81.if.end108_crit_edge, label %do.end102, !prof !150

if.then81.if.end108_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

do.end102:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1048, i32 noundef 9, ptr noundef null) #12
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %if.then81.if.end108_crit_edge
  %action_frame_sa116 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 143
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %3, align 2
  %42 = and i16 %41, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %42)
  %cmp.i.i552 = icmp eq i16 %42, 3
  br i1 %cmp.i.i552, label %if.end108.ieee80211_get_SA.exit562_crit_edge, label %if.end.i556

if.end108.ieee80211_get_SA.exit562_crit_edge:     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee80211_get_SA.exit562

if.end.i556:                                      ; preds = %if.end108
  %43 = and i16 %41, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp.i11.not.i555 = icmp eq i16 %43, 0
  br i1 %cmp.i11.not.i555, label %if.end5.i560, label %if.then3.i558

if.then3.i558:                                    ; preds = %if.end.i556
  call void @__sanitizer_cov_trace_pc() #14
  %addr3.i557 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 4
  br label %ieee80211_get_SA.exit562

if.end5.i560:                                     ; preds = %if.end.i556
  call void @__sanitizer_cov_trace_pc() #14
  %addr2.i559 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 3
  br label %ieee80211_get_SA.exit562

ieee80211_get_SA.exit562:                         ; preds = %if.end5.i560, %if.then3.i558, %if.end108.ieee80211_get_SA.exit562_crit_edge
  %retval.0.i561 = phi ptr [ %addr3.i557, %if.then3.i558 ], [ %addr2.i559, %if.end5.i560 ], [ %u76, %if.end108.ieee80211_get_SA.exit562_crit_edge ]
  %44 = call ptr @memcpy(ptr %action_frame_sa116, ptr %retval.0.i561, i32 6)
  %conv119 = trunc i32 %link_id to i8
  %action_linkid120 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 144
  %45 = ptrtoint ptr %action_linkid120 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv119, ptr %action_linkid120, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i563 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %linkid_reset_work83) #12
  br label %if.end123

if.end123:                                        ; preds = %ieee80211_get_SA.exit562, %land.lhs.true75.if.end123_crit_edge, %land.lhs.true71.if.end123_crit_edge, %if.end66.if.end123_crit_edge, %if.else.if.end123_crit_edge
  %entry2.0593 = phi ptr [ %entry2.0, %if.end66.if.end123_crit_edge ], [ %entry2.0, %ieee80211_get_SA.exit562 ], [ %entry2.0, %land.lhs.true75.if.end123_crit_edge ], [ %entry2.0, %land.lhs.true71.if.end123_crit_edge ], [ null, %if.else.if.end123_crit_edge ]
  %early_data.1.off0592 = phi i1 [ %early_data.1.off0, %if.end66.if.end123_crit_edge ], [ %early_data.1.off0, %ieee80211_get_SA.exit562 ], [ %early_data.1.off0, %land.lhs.true75.if.end123_crit_edge ], [ %early_data.1.off0, %land.lhs.true71.if.end123_crit_edge ], [ false, %if.else.if.end123_crit_edge ]
  %47 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arg, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %48, label %do.body170 [
    i32 0, label %if.end123.if.end188_crit_edge
    i32 5, label %do.body131
    i32 9, label %do.body153
  ]

if.end123.if.end188_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

do.body131:                                       ; preds = %if.end123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_rx_cb.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_rx_cb, %if.then143)) #12
          to label %do.end146 [label %if.then143], !srcloc !151

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_rx_cb.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.16) #12
  br label %do.end146

do.end146:                                        ; preds = %if.then143, %do.body131
  %50 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flag, align 8
  %or = or i32 %51, 1
  store i32 %or, ptr %flag, align 8
  br label %if.end188

do.body153:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_rx_cb.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_rx_cb, %if.then165)) #12
          to label %cleanup402 [label %if.then165], !srcloc !151

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_rx_cb.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.17) #12
  br label %cleanup402

do.body170:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_rx_cb.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_rx_cb, %if.then182)) #12
          to label %cleanup402 [label %if.then182], !srcloc !151

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_rx_cb.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.18, i32 noundef %53) #12
  br label %cleanup402

if.end188:                                        ; preds = %do.end146, %if.end123.if.end188_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %55)
  %cmp189 = icmp ult i32 %55, 16
  br i1 %cmp189, label %do.end194, label %if.end195

do.end194:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %59, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #16
  br label %cleanup402

if.end195:                                        ; preds = %if.end188
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %3, align 2
  %62 = and i16 %61, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %62)
  %cmp.i564 = icmp eq i16 %62, -23552
  br i1 %cmp.i564, label %if.then198, label %if.end195.if.end203_crit_edge

if.end195.if.end203_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

if.then198:                                       ; preds = %if.end195
  %call199 = tail call fastcc i32 @cw1200_handle_pspoll(ptr noundef %priv, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.then198.if.end203_crit_edge, label %if.then198.cleanup402_crit_edge

if.then198.cleanup402_crit_edge:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup402

if.then198.if.end203_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

if.end203:                                        ; preds = %if.then198.if.end203_crit_edge, %if.end195.if.end203_crit_edge
  %channel_number = getelementptr inbounds %struct.wsm_rx, ptr %arg, i32 0, i32 1
  %63 = ptrtoint ptr %channel_number to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %channel_number, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %64)
  %cmp208 = icmp ugt i16 %64, 14
  %conv210 = zext i1 %cmp208 to i8
  %band = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %65 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv210, ptr %band, align 4
  %66 = ptrtoint ptr %channel_number to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %channel_number, align 4
  %conv212 = zext i16 %67 to i32
  %conv214 = zext i1 %cmp208 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv212, i32 noundef %conv214) #12
  %div.i = udiv i32 %call.i, 1000
  %conv216 = trunc i32 %div.i to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %68 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv216, 3
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %freq, align 4
  %rx_rate = getelementptr inbounds %struct.wsm_rx, ptr %arg, i32 0, i32 2
  %69 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rx_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %70)
  %cmp218 = icmp ugt i8 %70, 13
  br i1 %cmp218, label %if.then220, label %if.else228

if.then220:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  %encoding = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 31
  %71 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %bf.load221 = load i16, ptr %encoding, align 1
  %bf.clear222 = and i16 %bf.load221, 16383
  %bf.set223 = or i16 %bf.clear222, 16384
  store i16 %bf.set223, ptr %encoding, align 1
  %72 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rx_rate, align 2
  %sub226 = add i8 %73, -14
  br label %if.end243

if.else228:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %70)
  %cmp231 = icmp ugt i8 %70, 3
  %sub236 = add nsw i8 %70, -2
  %spec.select = select i1 %cmp231, i8 %sub236, i8 %70
  br label %if.end243

if.end243:                                        ; preds = %if.else228, %if.then220
  %sub236.sink = phi i8 [ %sub226, %if.then220 ], [ %spec.select, %if.else228 ]
  %rate_idx238 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 33
  %74 = ptrtoint ptr %rate_idx238 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %sub236.sink, ptr %rate_idx238, align 1
  %rcpi_rssi = getelementptr inbounds %struct.wsm_rx, ptr %arg, i32 0, i32 3
  %75 = ptrtoint ptr %rcpi_rssi to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rcpi_rssi, align 1
  %signal = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 38
  %77 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %signal, align 2
  %antenna = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 37
  %78 = ptrtoint ptr %antenna to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %antenna, align 1
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %3, align 2
  %call245 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %80) #15
  %flags = getelementptr inbounds %struct.wsm_rx, ptr %arg, i32 0, i32 4
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  %and246 = and i32 %82, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %if.end243.if.end288_crit_edge, label %if.then248

if.end243.if.end288_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end288

if.then248:                                       ; preds = %if.end243
  %83 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flag, align 8
  %or250 = or i32 %84, 18
  store i32 %or250, ptr %flag, align 8
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  %and252 = and i32 %86, 7
  %87 = zext i32 %and252 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %and252, label %do.end260 [
    i32 1, label %if.then248.sw.epilog_crit_edge
    i32 2, label %sw.bb253
    i32 3, label %sw.bb256
    i32 4, label %sw.bb257
  ]

if.then248.sw.epilog_crit_edge:                   ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb253:                                         ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #14
  %or255 = or i32 %84, 26
  %88 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or255, ptr %flag, align 8
  br label %sw.epilog

sw.bb256:                                         ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb257:                                         ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end260:                                        ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #14
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %and252) #16
  br label %cleanup402

sw.epilog:                                        ; preds = %sw.bb257, %sw.bb256, %sw.bb253, %if.then248.sw.epilog_crit_edge
  %iv_len.0 = phi i32 [ 18, %sw.bb257 ], [ 8, %sw.bb256 ], [ 8, %sw.bb253 ], [ 4, %if.then248.sw.epilog_crit_edge ]
  %icv_len.0 = phi i32 [ 16, %sw.bb257 ], [ 8, %sw.bb256 ], [ 12, %sw.bb253 ], [ 4, %if.then248.sw.epilog_crit_edge ]
  %89 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %90)
  %cmp266 = icmp eq i32 %90, 5
  %spec.select537 = select i1 %cmp266, i32 0, i32 %icv_len.0
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len, align 4
  %add = add i32 %iv_len.0, %call245
  %add271 = add i32 %add, %spec.select537
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %add271)
  %cmp272 = icmp ult i32 %92, %add271
  br i1 %cmp272, label %do.end277, label %cleanup

do.end277:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv, align 4
  %wiphy279 = getelementptr inbounds %struct.ieee80211_hw, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %wiphy279 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wiphy279, align 8
  %dev280 = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev280, ptr noundef nonnull @.str.24) #16
  br label %cleanup402

cleanup:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %sub283 = sub i32 %92, %spec.select537
  tail call void @skb_trim(ptr noundef %1, i32 noundef %sub283) #12
  %97 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %98, i32 %iv_len.0
  %99 = call ptr @memmove(ptr %add.ptr, ptr %98, i32 %call245)
  %call286 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %iv_len.0) #12
  br label %if.end288

if.end288:                                        ; preds = %cleanup, %if.end243.if.end288_crit_edge
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags, align 4
  %and290 = and i32 %101, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  br i1 %tobool291.not, label %if.else306, label %if.then292

if.then292:                                       ; preds = %if.end288
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 4
  %104 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len, align 4
  %add.ptr295 = getelementptr i8, ptr %103, i32 %105
  %add.ptr296 = getelementptr i8, ptr %add.ptr295, i32 -8
  %106 = ptrtoint ptr %add.ptr296 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 8)
  %107 = load i64, ptr %add.ptr296, align 1
  %108 = tail call i64 @llvm.bswap.i64(i64 %107)
  %109 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %cb.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %105)
  %cmp300 = icmp ugt i32 %105, 7
  br i1 %cmp300, label %if.then302, label %if.then292.if.end308_crit_edge

if.then292.if.end308_crit_edge:                   ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end308

if.then302:                                       ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #14
  %sub304 = add i32 %105, -8
  tail call void @skb_trim(ptr noundef %1, i32 noundef %sub304) #12
  br label %if.end308

if.else306:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 0, ptr %cb.i, align 8
  br label %if.end308

if.end308:                                        ; preds = %if.else306, %if.then302, %if.then292.if.end308_crit_edge
  %debug.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 15
  %111 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %debug.i, align 4
  %rx.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %114, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %115 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags, align 4
  %and310 = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and310)
  %tobool311.not = icmp eq i32 %and310, 0
  br i1 %tobool311.not, label %if.end308.if.end313_crit_edge, label %if.then312

if.end308.if.end313_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end313

if.then312:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %debug.i, align 4
  %rx_agg.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %rx_agg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_agg.i, align 4
  %inc.i566 = add i32 %120, 1
  store i32 %inc.i566, ptr %rx_agg.i, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %if.end308.if.end313_crit_edge
  %121 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %3, align 2
  %123 = and i16 %122, -1024
  %124 = zext i16 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %123, label %if.end313.if.end378_crit_edge [
    i16 -12288, label %land.lhs.true317
    i16 -32768, label %land.lhs.true330
  ]

if.end313.if.end378_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378

land.lhs.true317:                                 ; preds = %if.end313
  %125 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags, align 4
  %and319 = and i32 %126, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319)
  %tobool320.not = icmp eq i32 %and319, 0
  br i1 %tobool320.not, label %land.lhs.true317.if.end378_crit_edge, label %if.then321

land.lhs.true317.if.end378_crit_edge:             ; preds = %land.lhs.true317
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378

if.then321:                                       ; preds = %land.lhs.true317
  %127 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data, align 4
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %u.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %130)
  %cmp.i568.not = icmp eq i8 %130, 3
  br i1 %cmp.i568.not, label %if.then321.cleanup402_crit_edge, label %if.then321.if.end378_crit_edge

if.then321.if.end378_crit_edge:                   ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378

if.then321.cleanup402_crit_edge:                  ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup402

land.lhs.true330:                                 ; preds = %if.end313
  %131 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool332.not = icmp eq i32 %132, 0
  br i1 %tobool332.not, label %land.lhs.true333, label %land.lhs.true330.if.end378_crit_edge

land.lhs.true330.if.end378_crit_edge:             ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378

land.lhs.true333:                                 ; preds = %land.lhs.true330
  %133 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vif, align 4
  %tobool335.not = icmp eq ptr %134, null
  br i1 %tobool335.not, label %land.lhs.true333.if.end378_crit_edge, label %land.lhs.true336

land.lhs.true333.if.end378_crit_edge:             ; preds = %land.lhs.true333
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378

land.lhs.true336:                                 ; preds = %land.lhs.true333
  %135 = and i16 %122, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %135)
  %cmp.i.i570 = icmp eq i16 %135, 3
  br i1 %cmp.i.i570, label %if.then.i572, label %if.end.i574

if.then.i572:                                     ; preds = %land.lhs.true336
  call void @__sanitizer_cov_trace_pc() #14
  %addr4.i571 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 6
  br label %ieee80211_get_SA.exit580

if.end.i574:                                      ; preds = %land.lhs.true336
  %136 = and i16 %122, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %cmp.i11.not.i573 = icmp eq i16 %136, 0
  br i1 %cmp.i11.not.i573, label %if.end5.i578, label %if.then3.i576

if.then3.i576:                                    ; preds = %if.end.i574
  call void @__sanitizer_cov_trace_pc() #14
  %addr3.i575 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 4
  br label %ieee80211_get_SA.exit580

if.end5.i578:                                     ; preds = %if.end.i574
  call void @__sanitizer_cov_trace_pc() #14
  %addr2.i577 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 3
  br label %ieee80211_get_SA.exit580

ieee80211_get_SA.exit580:                         ; preds = %if.end5.i578, %if.then3.i576, %if.then.i572
  %retval.0.i579 = phi ptr [ %addr4.i571, %if.then.i572 ], [ %addr3.i575, %if.then3.i576 ], [ %addr2.i577, %if.end5.i578 ]
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %134, i32 0, i32 1
  %137 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bss_conf, align 8
  %139 = ptrtoint ptr %retval.0.i579 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %retval.0.i579, align 4
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %138, align 4
  %xor.i = xor i32 %142, %140
  %add.ptr.i = getelementptr i8, ptr %retval.0.i579, i32 4
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %138, i32 4
  %145 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %146, %144
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i581 = icmp eq i32 %or.i, 0
  br i1 %cmp.i581, label %if.then341, label %ieee80211_get_SA.exit580.if.end378_crit_edge

ieee80211_get_SA.exit580.if.end378_crit_edge:     ; preds = %ieee80211_get_SA.exit580
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378

if.then341:                                       ; preds = %ieee80211_get_SA.exit580
  %147 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data, align 4
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %148, i32 0, i32 6, i32 1, i32 2
  %149 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %len, align 4
  %sub346 = add i32 %150, -36
  %call.i.i582 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 5, ptr noundef %variable, i32 noundef %sub346, ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  %tobool348.not = icmp eq ptr %call.i.i582, null
  br i1 %tobool348.not, label %if.then341.if.end360_crit_edge, label %if.then349

if.then341.if.end360_crit_edge:                   ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end360

if.then349:                                       ; preds = %if.then341
  %join_dtim_period = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 105
  %151 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %join_dtim_period, align 4
  %dtim_period = getelementptr i8, ptr %call.i.i582, i32 3
  %153 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %dtim_period, align 1
  %conv351 = zext i8 %154 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %conv351)
  %cmp352.not = icmp eq i32 %152, %conv351
  br i1 %cmp352.not, label %if.then349.if.end360_crit_edge, label %if.then354

if.then349.if.end360_crit_edge:                   ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end360

if.then354:                                       ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #14
  %155 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv351, ptr %join_dtim_period, align 4
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %156 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %workqueue, align 4
  %set_beacon_wakeup_period_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 54
  %call.i583 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %157, ptr noundef %set_beacon_wakeup_period_work) #12
  br label %if.end360

if.end360:                                        ; preds = %if.then354, %if.then349.if.end360_crit_edge, %if.then341.if.end360_crit_edge
  %disable_beacon_filter = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 51
  %158 = ptrtoint ptr %disable_beacon_filter to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %disable_beacon_filter, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool361.not = icmp eq i8 %159, 0
  br i1 %tobool361.not, label %if.end360.if.end378_crit_edge, label %land.lhs.true363

if.end360.if.end378_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378

land.lhs.true363:                                 ; preds = %if.end360
  %160 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %vif, align 4
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %161, i32 0, i32 1, i32 10
  %162 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %assoc, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool366.not = icmp eq i8 %163, 0
  br i1 %tobool366.not, label %lor.lhs.false, label %land.lhs.true363.if.then372_crit_edge

land.lhs.true363.if.then372_crit_edge:            ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then372

lor.lhs.false:                                    ; preds = %land.lhs.true363
  %ibss_joined = getelementptr inbounds %struct.ieee80211_vif, ptr %161, i32 0, i32 1, i32 11
  %164 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %ibss_joined, align 8, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool370.not = icmp eq i8 %165, 0
  br i1 %tobool370.not, label %lor.lhs.false.if.end378_crit_edge, label %lor.lhs.false.if.then372_crit_edge

lor.lhs.false.if.then372_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then372

lor.lhs.false.if.end378_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378

if.then372:                                       ; preds = %lor.lhs.false.if.then372_crit_edge, %land.lhs.true363.if.then372_crit_edge
  %166 = ptrtoint ptr %disable_beacon_filter to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %disable_beacon_filter, align 2
  %workqueue374 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %167 = ptrtoint ptr %workqueue374 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %workqueue374, align 4
  %update_filtering_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 53
  %call.i584 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %168, ptr noundef %update_filtering_work) #12
  br label %if.end378

if.end378:                                        ; preds = %if.then372, %lor.lhs.false.if.end378_crit_edge, %if.end360.if.end378_crit_edge, %ieee80211_get_SA.exit580.if.end378_crit_edge, %land.lhs.true333.if.end378_crit_edge, %land.lhs.true330.if.end378_crit_edge, %if.then321.if.end378_crit_edge, %land.lhs.true317.if.end378_crit_edge, %if.end313.if.end378_crit_edge
  %169 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %3, align 2
  %171 = and i16 %170, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %171)
  %cmp.i585 = icmp eq i16 %171, -20480
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %171)
  %cmp.i586 = icmp eq i16 %171, -16384
  %172 = or i1 %cmp.i585, %cmp.i586
  %grace_period.0 = select i1 %172, i32 500, i32 100
  %pm_state = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 58
  tail call void @cw1200_pm_stay_awake(ptr noundef %pm_state, i32 noundef %grace_period.0) #12
  br i1 %early_data.1.off0592, label %if.then390, label %if.else399

if.then390:                                       ; preds = %if.end378
  %ps_state_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  %status391 = getelementptr inbounds %struct.cw1200_link_entry, ptr %entry2.0593, i32 0, i32 1
  %173 = ptrtoint ptr %status391 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %status391, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %174)
  %cmp392 = icmp eq i32 %174, 2
  br i1 %cmp392, label %if.then394, label %if.else395

if.then394:                                       ; preds = %if.then390
  call void @__sanitizer_cov_trace_pc() #14
  %rx_queue = getelementptr inbounds %struct.cw1200_link_entry, ptr %entry2.0593, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef %1) #12
  br label %if.end397

if.else395:                                       ; preds = %if.then390
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %priv, align 4
  tail call void @ieee80211_rx_irqsafe(ptr noundef %176, ptr noundef %1) #12
  br label %if.end397

if.end397:                                        ; preds = %if.else395, %if.then394
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  br label %if.end401

if.else399:                                       ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #14
  %177 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %priv, align 4
  tail call void @ieee80211_rx_irqsafe(ptr noundef %178, ptr noundef %1) #12
  br label %if.end401

if.end401:                                        ; preds = %if.else399, %if.end397
  %179 = ptrtoint ptr %skb_p to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %skb_p, align 4
  br label %cleanup402

cleanup402:                                       ; preds = %if.end401, %if.then321.cleanup402_crit_edge, %do.end277, %do.end260, %if.then198.cleanup402_crit_edge, %do.end194, %if.then182, %do.body170, %if.then165, %do.body153, %land.end.cleanup402_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw1200_handle_pspoll(ptr noundef %priv, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %2 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end:                                           ; preds = %entry
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 2
  %bssid = getelementptr inbounds %struct.ieee80211_pspoll, ptr %1, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %bssid, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end3, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end3:                                          ; preds = %if.end
  %6 = tail call i32 @llvm.read_register.i32(metadata !140) #12
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !155
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 696, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vif, align 4
  %ta = getelementptr inbounds %struct.ieee80211_pspoll, ptr %1, i32 0, i32 3
  %call6 = tail call ptr @ieee80211_find_sta(ptr noundef %11, ptr noundef %ta) #12
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %rcu_read_lock.exit.if.end11_crit_edge, label %if.then8

rcu_read_lock.exit.if.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %call6, i32 0, i32 29
  %12 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %drv_priv, align 4
  %shl = shl nuw i32 1, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %phi.cmp = icmp eq i32 %13, 0
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %rcu_read_lock.exit.if.end11_crit_edge
  %pspoll_mask.0 = phi i32 [ %shl, %if.then8 ], [ 0, %rcu_read_lock.exit.if.end11_crit_edge ]
  %link_id.0 = phi i1 [ %phi.cmp, %if.then8 ], [ true, %rcu_read_lock.exit.if.end11_crit_edge ]
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i40, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %if.end11
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  %14 = tail call i32 @llvm.read_register.i32(metadata !140) #12
  %and.i.i.i.i.i47 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %link_id.0, label %rcu_read_unlock.exit.done_crit_edge, label %if.end14

rcu_read_unlock.exit.done_crit_edge:              ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end14:                                         ; preds = %rcu_read_unlock.exit
  %pspoll_mask15 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 117
  %18 = ptrtoint ptr %pspoll_mask15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pspoll_mask15, align 4
  %or = or i32 %19, %pspoll_mask.0
  store i32 %or, ptr %pspoll_mask15, align 4
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 0
  %call17 = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx, i32 noundef %pspoll_mask.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.cond, label %if.end14.if.then19_crit_edge

if.end14.if.then19_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

for.cond:                                         ; preds = %if.end14
  %arrayidx.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 1
  %call17.1 = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx.1, i32 noundef %pspoll_mask.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1)
  %tobool18.not.1 = icmp eq i32 %call17.1, 0
  br i1 %tobool18.not.1, label %for.cond.1, label %for.cond.if.then19_crit_edge

for.cond.if.then19_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 2
  %call17.2 = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx.2, i32 noundef %pspoll_mask.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2)
  %tobool18.not.2 = icmp eq i32 %call17.2, 0
  br i1 %tobool18.not.2, label %for.cond.2, label %for.cond.1.if.then19_crit_edge

for.cond.1.if.then19_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 3
  %call17.3 = tail call i32 @cw1200_queue_get_num_queued(ptr noundef %arrayidx.3, i32 noundef %pspoll_mask.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.3)
  %tobool18.not.3 = icmp eq i32 %call17.3, 0
  br i1 %tobool18.not.3, label %for.cond.2.do.body_crit_edge, label %for.cond.2.if.then19_crit_edge

for.cond.2.if.then19_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

for.cond.2.do.body_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then19:                                        ; preds = %for.cond.2.if.then19_crit_edge, %for.cond.1.if.then19_crit_edge, %for.cond.if.then19_crit_edge, %if.end14.if.then19_crit_edge
  tail call void @cw1200_bh_wakeup(ptr noundef %priv) #12
  br label %do.body

do.body:                                          ; preds = %if.then19, %for.cond.2.do.body_crit_edge
  %cmp1651 = phi ptr [ @.str.61, %if.then19 ], [ @.str.62, %for.cond.2.do.body_crit_edge ]
  %drop.0 = phi i32 [ 1, %if.then19 ], [ 0, %for.cond.2.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_handle_pspoll.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_handle_pspoll, %if.then25)) #12
          to label %done [label %if.then25], !srcloc !151

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_handle_pspoll.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.60, ptr noundef nonnull %cmp1651) #12
  br label %done

done:                                             ; preds = %if.then25, %do.body, %rcu_read_unlock.exit.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %drop.1 = phi i32 [ 1, %entry.done_crit_edge ], [ 1, %if.end.done_crit_edge ], [ %drop.0, %if.then25 ], [ 1, %rcu_read_unlock.exit.done_crit_edge ], [ %drop.0, %do.body ]
  ret i32 %drop.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_pm_stay_awake(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cw1200_alloc_key(ptr nocapture noundef %priv) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %key_map = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 110
  %0 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_map, align 4
  %neg = xor i32 %1, -1
  %2 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true), !range !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %iszero = icmp eq i32 %1, -1
  %sub = select i1 %iszero, i32 -1, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub)
  %cmp1 = icmp sgt i32 %sub, 10
  %or.cond = select i1 %iszero, i1 true, i1 %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw nsw i32 1, %sub
  %or = or i32 %shl, %1
  %3 = ptrtoint ptr %key_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %key_map, align 4
  %conv = trunc i32 %sub to i8
  %index = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 %sub, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %index, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_free_key(ptr nocapture noundef %priv, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %key_map = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 110
  %0 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_map, align 4
  %shl = shl nuw i32 1, %idx
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !153

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/txrx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1244, 0\0A.popsection", ""() #12, !srcloc !159
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 %idx
  %2 = call ptr @memset(ptr %arrayidx, i32 0, i32 44)
  %neg = xor i32 %shl, -1
  %3 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_map, align 4
  %and10 = and i32 %4, %neg
  store i32 %and10, ptr %key_map, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cw1200_free_keys(ptr nocapture noundef writeonly %priv) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %key_map = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 110
  %0 = call ptr @memset(ptr %key_map, i32 0, i32 488)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_upload_keys(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %key_map = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 110
  %0 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_map, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 0
  %call = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.for.end_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %ret.1 = phi i32 [ %call, %if.then.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ]
  %2 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_map, align 4
  %and.1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 1
  %call.1 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.then.1.for.end_crit_edge, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1.for.end_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %ret.1.1 = phi i32 [ %call.1, %if.then.1.for.inc.1_crit_edge ], [ %ret.1, %for.inc.for.inc.1_crit_edge ]
  %4 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_map, align 4
  %and.2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 2
  %call.2 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.then.2.for.end_crit_edge, label %if.then.2.for.inc.2_crit_edge

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2.for.end_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.2:                                        ; preds = %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %ret.1.2 = phi i32 [ %call.2, %if.then.2.for.inc.2_crit_edge ], [ %ret.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %6 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_map, align 4
  %and.3 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 3
  %call.3 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.then.3.for.end_crit_edge, label %if.then.3.for.inc.3_crit_edge

if.then.3.for.inc.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3.for.end_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.3:                                        ; preds = %if.then.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %ret.1.3 = phi i32 [ %call.3, %if.then.3.for.inc.3_crit_edge ], [ %ret.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %8 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_map, align 4
  %and.4 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 4
  %call.4 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp1.4 = icmp slt i32 %call.4, 0
  br i1 %cmp1.4, label %if.then.4.for.end_crit_edge, label %if.then.4.for.inc.4_crit_edge

if.then.4.for.inc.4_crit_edge:                    ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then.4.for.end_crit_edge:                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.4:                                        ; preds = %if.then.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %ret.1.4 = phi i32 [ %call.4, %if.then.4.for.inc.4_crit_edge ], [ %ret.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %10 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_map, align 4
  %and.5 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 5
  %call.5 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp1.5 = icmp slt i32 %call.5, 0
  br i1 %cmp1.5, label %if.then.5.for.end_crit_edge, label %if.then.5.for.inc.5_crit_edge

if.then.5.for.inc.5_crit_edge:                    ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then.5.for.end_crit_edge:                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.5:                                        ; preds = %if.then.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %ret.1.5 = phi i32 [ %call.5, %if.then.5.for.inc.5_crit_edge ], [ %ret.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %12 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_map, align 4
  %and.6 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  %arrayidx.6 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 6
  %call.6 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp1.6 = icmp slt i32 %call.6, 0
  br i1 %cmp1.6, label %if.then.6.for.end_crit_edge, label %if.then.6.for.inc.6_crit_edge

if.then.6.for.inc.6_crit_edge:                    ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then.6.for.end_crit_edge:                      ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.6:                                        ; preds = %if.then.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %ret.1.6 = phi i32 [ %call.6, %if.then.6.for.inc.6_crit_edge ], [ %ret.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %14 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_map, align 4
  %and.7 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  %arrayidx.7 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 7
  %call.7 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp1.7 = icmp slt i32 %call.7, 0
  br i1 %cmp1.7, label %if.then.7.for.end_crit_edge, label %if.then.7.for.inc.7_crit_edge

if.then.7.for.inc.7_crit_edge:                    ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

if.then.7.for.end_crit_edge:                      ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.7:                                        ; preds = %if.then.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %ret.1.7 = phi i32 [ %call.7, %if.then.7.for.inc.7_crit_edge ], [ %ret.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %16 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_map, align 4
  %and.8 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  %arrayidx.8 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 8
  %call.8 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %cmp1.8 = icmp slt i32 %call.8, 0
  br i1 %cmp1.8, label %if.then.8.for.end_crit_edge, label %if.then.8.for.inc.8_crit_edge

if.then.8.for.inc.8_crit_edge:                    ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.8

if.then.8.for.end_crit_edge:                      ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.8:                                        ; preds = %if.then.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %ret.1.8 = phi i32 [ %call.8, %if.then.8.for.inc.8_crit_edge ], [ %ret.1.7, %for.inc.7.for.inc.8_crit_edge ]
  %18 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_map, align 4
  %and.9 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  %arrayidx.9 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 9
  %call.9 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %cmp1.9 = icmp slt i32 %call.9, 0
  br i1 %cmp1.9, label %if.then.9.for.end_crit_edge, label %if.then.9.for.inc.9_crit_edge

if.then.9.for.inc.9_crit_edge:                    ; preds = %if.then.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.9

if.then.9.for.end_crit_edge:                      ; preds = %if.then.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.9:                                        ; preds = %if.then.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %ret.1.9 = phi i32 [ %call.9, %if.then.9.for.inc.9_crit_edge ], [ %ret.1.8, %for.inc.8.for.inc.9_crit_edge ]
  %20 = ptrtoint ptr %key_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_map, align 4
  %and.10 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.9.for.end_crit_edge, label %if.then.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.10 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 111, i32 10
  %call.10 = tail call i32 @wsm_add_key(ptr noundef %priv, ptr noundef %arrayidx.10) #12
  br label %for.end

for.end:                                          ; preds = %if.then.10, %for.inc.9.for.end_crit_edge, %if.then.9.for.end_crit_edge, %if.then.8.for.end_crit_edge, %if.then.7.for.end_crit_edge, %if.then.6.for.end_crit_edge, %if.then.5.for.end_crit_edge, %if.then.4.for.end_crit_edge, %if.then.3.for.end_crit_edge, %if.then.2.for.end_crit_edge, %if.then.1.for.end_crit_edge, %if.then.for.end_crit_edge
  %ret.2 = phi i32 [ %call, %if.then.for.end_crit_edge ], [ %call.1, %if.then.1.for.end_crit_edge ], [ %call.2, %if.then.2.for.end_crit_edge ], [ %call.3, %if.then.3.for.end_crit_edge ], [ %call.4, %if.then.4.for.end_crit_edge ], [ %call.5, %if.then.5.for.end_crit_edge ], [ %call.6, %if.then.6.for.end_crit_edge ], [ %call.7, %if.then.7.for.end_crit_edge ], [ %call.8, %if.then.8.for.end_crit_edge ], [ %call.9, %if.then.9.for.end_crit_edge ], [ %call.10, %if.then.10 ], [ %ret.1.9, %for.inc.9.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_add_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_link_id_reset(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4864
  %action_linkid = getelementptr i8, ptr %work, i32 50
  %0 = ptrtoint ptr %action_linkid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %action_linkid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %action_frame_sa = getelementptr i8, ptr %work, i32 44
  %call = tail call i32 @cw1200_alloc_link_id(ptr noundef %add.ptr, ptr noundef %action_frame_sa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %if.then25.critedge, !prof !153

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1278, i32 noundef 9, ptr noundef null) #12
  br label %if.end70

if.then25.critedge:                               ; preds = %if.then
  %workqueue = getelementptr i8, ptr %work, i32 -4792
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %3) #12
  %ps_state_lock = getelementptr i8, ptr %work, i32 -920
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  %link_id_db = getelementptr i8, ptr %work, i32 -1496
  %sub = add i32 %call, -1
  %arrayidx26 = getelementptr [5 x %struct.cw1200_link_entry], ptr %link_id_db, i32 0, i32 %sub
  %status = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx26, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %prev_status = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx26, i32 0, i32 2
  %6 = ptrtoint ptr %prev_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %prev_status, align 4
  store i32 4, ptr %status, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  tail call void @wsm_lock_tx_async(ptr noundef %add.ptr) #12
  %7 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %workqueue, align 4
  %link_id_work = getelementptr i8, ptr %work, i32 -1076
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %link_id_work) #12
  br i1 %call.i, label %if.then25.critedge.if.end70_crit_edge, label %if.then38

if.then25.critedge.if.end70_crit_edge:            ; preds = %if.then25.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then38:                                        ; preds = %if.then25.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wsm_unlock_tx(ptr noundef %add.ptr) #12
  br label %if.end70

if.else:                                          ; preds = %entry
  %ps_state_lock41 = getelementptr i8, ptr %work, i32 -920
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock41) #12
  %link_id_db42 = getelementptr i8, ptr %work, i32 -1496
  %9 = ptrtoint ptr %action_linkid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %action_linkid, align 2
  %conv44 = zext i8 %10 to i32
  %sub45 = add nsw i32 %conv44, -1
  %arrayidx46 = getelementptr [5 x %struct.cw1200_link_entry], ptr %link_id_db42, i32 0, i32 %sub45
  %status47 = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx46, i32 0, i32 1
  %11 = ptrtoint ptr %status47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status47, align 4
  %prev_status53 = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx46, i32 0, i32 2
  %13 = ptrtoint ptr %prev_status53 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %prev_status53, align 4
  %14 = load i8, ptr %action_linkid, align 2
  %conv56 = zext i8 %14 to i32
  %sub57 = add nsw i32 %conv56, -1
  %arrayidx58 = getelementptr [5 x %struct.cw1200_link_entry], ptr %link_id_db42, i32 0, i32 %sub57
  %status59 = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx58, i32 0, i32 1
  %15 = ptrtoint ptr %status59 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %status59, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock41) #12
  tail call void @wsm_lock_tx_async(ptr noundef %add.ptr) #12
  %workqueue61 = getelementptr i8, ptr %work, i32 -4792
  %16 = ptrtoint ptr %workqueue61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workqueue61, align 4
  %link_id_work62 = getelementptr i8, ptr %work, i32 -1076
  %call.i101 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %link_id_work62) #12
  br i1 %call.i101, label %if.else.if.end68_crit_edge, label %if.then67

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wsm_unlock_tx(ptr noundef %add.ptr) #12
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.else.if.end68_crit_edge
  %18 = ptrtoint ptr %workqueue61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %workqueue61, align 4
  tail call void @flush_workqueue(ptr noundef %19) #12
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %if.then38, %if.then25.critedge.if.end70_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_alloc_link_id(ptr noundef %priv, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %ps_state_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  %link_map_cache = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 19, i32 1
  %arrayidx = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 0
  %status = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 0, i32 1
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %2, label %land.lhs.true [
    i32 0, label %entry.if.then17_crit_edge
    i32 3, label %entry.for.inc_crit_edge
  ]

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

entry.if.then17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_map_cache, align 4
  %arrayidx6 = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %0, %9
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %max_inactivity.2 = phi i32 [ 0, %land.lhs.true.for.inc_crit_edge ], [ %sub, %if.then8 ], [ 0, %entry.for.inc_crit_edge ]
  %ret.2 = phi i32 [ 0, %land.lhs.true.for.inc_crit_edge ], [ 1, %if.then8 ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 1
  %status.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 1, i32 1
  %10 = ptrtoint ptr %status.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.1, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %11, label %land.lhs.true.1 [
    i32 0, label %for.inc.if.then17_crit_edge
    i32 3, label %for.inc.for.inc.1_crit_edge
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.if.then17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

land.lhs.true.1:                                  ; preds = %for.inc
  %13 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link_map_cache, align 4
  %arrayidx6.1 = getelementptr i32, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.1 = icmp eq i32 %16, 0
  br i1 %tobool7.not.1, label %if.then8.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then8.1:                                       ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 4
  %sub.1 = sub i32 %0, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %max_inactivity.2)
  %cmp11.1 = icmp ult i32 %sub.1, %max_inactivity.2
  %19 = tail call i32 @llvm.umax.i32(i32 %sub.1, i32 %max_inactivity.2)
  %ret.0.add5.1 = select i1 %cmp11.1, i32 %ret.2, i32 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %max_inactivity.2.1 = phi i32 [ %max_inactivity.2, %land.lhs.true.1.for.inc.1_crit_edge ], [ %19, %if.then8.1 ], [ %max_inactivity.2, %for.inc.for.inc.1_crit_edge ]
  %ret.2.1 = phi i32 [ %ret.2, %land.lhs.true.1.for.inc.1_crit_edge ], [ %ret.0.add5.1, %if.then8.1 ], [ %ret.2, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 2
  %status.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 2, i32 1
  %20 = ptrtoint ptr %status.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.2, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %21, label %land.lhs.true.2 [
    i32 0, label %for.inc.1.if.then17_crit_edge
    i32 3, label %for.inc.1.for.inc.2_crit_edge
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.1.if.then17_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

land.lhs.true.2:                                  ; preds = %for.inc.1
  %23 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_map_cache, align 4
  %arrayidx6.2 = getelementptr i32, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool7.not.2 = icmp eq i32 %26, 0
  br i1 %tobool7.not.2, label %if.then8.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then8.2:                                       ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.2, align 4
  %sub.2 = sub i32 %0, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2, i32 %max_inactivity.2.1)
  %cmp11.2 = icmp ult i32 %sub.2, %max_inactivity.2.1
  %29 = tail call i32 @llvm.umax.i32(i32 %sub.2, i32 %max_inactivity.2.1)
  %ret.0.add5.2 = select i1 %cmp11.2, i32 %ret.2.1, i32 3
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then8.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %max_inactivity.2.2 = phi i32 [ %max_inactivity.2.1, %land.lhs.true.2.for.inc.2_crit_edge ], [ %29, %if.then8.2 ], [ %max_inactivity.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %ret.2.2 = phi i32 [ %ret.2.1, %land.lhs.true.2.for.inc.2_crit_edge ], [ %ret.0.add5.2, %if.then8.2 ], [ %ret.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 3
  %status.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 3, i32 1
  %30 = ptrtoint ptr %status.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status.3, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %31, label %land.lhs.true.3 [
    i32 0, label %for.inc.2.if.then17_crit_edge
    i32 3, label %for.inc.2.for.inc.3_crit_edge
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

for.inc.2.if.then17_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

land.lhs.true.3:                                  ; preds = %for.inc.2
  %33 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %link_map_cache, align 4
  %arrayidx6.3 = getelementptr i32, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx6.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not.3 = icmp eq i32 %36, 0
  br i1 %tobool7.not.3, label %if.then8.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then8.3:                                       ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.3, align 4
  %sub.3 = sub i32 %0, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3, i32 %max_inactivity.2.2)
  %cmp11.3 = icmp ult i32 %sub.3, %max_inactivity.2.2
  %39 = tail call i32 @llvm.umax.i32(i32 %sub.3, i32 %max_inactivity.2.2)
  %ret.0.add5.3 = select i1 %cmp11.3, i32 %ret.2.2, i32 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then8.3, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %max_inactivity.2.3 = phi i32 [ %max_inactivity.2.2, %land.lhs.true.3.for.inc.3_crit_edge ], [ %39, %if.then8.3 ], [ %max_inactivity.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %ret.2.3 = phi i32 [ %ret.2.2, %land.lhs.true.3.for.inc.3_crit_edge ], [ %ret.0.add5.3, %if.then8.3 ], [ %ret.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 4
  %status.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 4, i32 1
  %40 = ptrtoint ptr %status.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status.4, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %41, label %land.lhs.true.4 [
    i32 0, label %for.inc.3.if.then17_crit_edge
    i32 3, label %for.inc.3.for.end_crit_edge
  ]

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.3.if.then17_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

land.lhs.true.4:                                  ; preds = %for.inc.3
  %43 = ptrtoint ptr %link_map_cache to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %link_map_cache, align 4
  %arrayidx6.4 = getelementptr i32, ptr %44, i32 5
  %45 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx6.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool7.not.4 = icmp eq i32 %46, 0
  br i1 %tobool7.not.4, label %if.then8.4, label %land.lhs.true.4.for.end_crit_edge

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then8.4:                                       ; preds = %land.lhs.true.4
  %47 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.4, align 4
  %sub.4 = sub i32 %0, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4, i32 %max_inactivity.2.3)
  %cmp11.4 = icmp ult i32 %sub.4, %max_inactivity.2.3
  br i1 %cmp11.4, label %if.then8.4.for.end_crit_edge, label %if.then8.4.if.then17_crit_edge

if.then8.4.if.then17_crit_edge:                   ; preds = %if.then8.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then8.4.for.end_crit_edge:                     ; preds = %if.then8.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.then8.4.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.3)
  %tobool16.not = icmp eq i32 %ret.2.3, 0
  br i1 %tobool16.not, label %do.end37, label %for.end.if.then17_crit_edge

for.end.if.then17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %for.end.if.then17_crit_edge, %if.then8.4.if.then17_crit_edge, %for.inc.3.if.then17_crit_edge, %for.inc.2.if.then17_crit_edge, %for.inc.1.if.then17_crit_edge, %for.inc.if.then17_crit_edge, %entry.if.then17_crit_edge
  %ret.380 = phi i32 [ %ret.2.3, %for.end.if.then17_crit_edge ], [ 5, %if.then8.4.if.then17_crit_edge ], [ 5, %for.inc.3.if.then17_crit_edge ], [ 4, %for.inc.2.if.then17_crit_edge ], [ 3, %for.inc.1.if.then17_crit_edge ], [ 2, %for.inc.if.then17_crit_edge ], [ 1, %entry.if.then17_crit_edge ]
  %sub20 = add nsw i32 %ret.380, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_alloc_link_id.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_alloc_link_id, %if.then25)) #12
          to label %do.end [label %if.then25], !srcloc !151

if.then25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_alloc_link_id.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.27, i32 noundef %ret.380) #12
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.then17
  %status27 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub20, i32 1
  %49 = ptrtoint ptr %status27 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %status27, align 4
  %mac28 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub20, i32 3
  %50 = call ptr @memcpy(ptr %mac28, ptr %mac, i32 6)
  %buffered = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub20, i32 4
  %51 = ptrtoint ptr %buffered to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 0, ptr %buffered, align 2
  %rx_queue = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub20, i32 5
  %lock.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub20, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %52 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.62, ptr %rx_queue, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %rx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %sub20, i32 5, i32 1
  %54 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %qlen.i.i, align 4
  tail call void @wsm_lock_tx_async(ptr noundef %priv) #12
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %55 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %workqueue, align 4
  %link_id_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 114
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %link_id_work) #12
  br i1 %call.i, label %do.end.if.end38_crit_edge, label %if.then32

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wsm_unlock_tx(ptr noundef %priv) #12
  br label %if.end38

do.end37:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %60, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28) #16
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %if.then32, %do.end.if.end38_crit_edge
  %ret.379 = phi i32 [ %ret.380, %do.end.if.end38_crit_edge ], [ %ret.380, %if.then32 ], [ 0, %do.end37 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  ret i32 %ret.379
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_lock_tx_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_find_link_id(ptr noundef %priv, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_state_lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  %mac1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %mac1, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true.4.if.then_crit_edge, %land.lhs.true.3.if.then_crit_edge, %land.lhs.true.2.if.then_crit_edge, %land.lhs.true.1.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %i.018.lcssa = phi i32 [ 0, %land.lhs.true.if.then_crit_edge ], [ 1, %land.lhs.true.1.if.then_crit_edge ], [ 2, %land.lhs.true.2.if.then_crit_edge ], [ 3, %land.lhs.true.3.if.then_crit_edge ], [ 4, %land.lhs.true.4.if.then_crit_edge ]
  %arrayidx.le = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 %i.018.lcssa
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx.le, align 4
  %add = add nuw nsw i32 %i.018.lcssa, 1
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %mac1.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 1, i32 3
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %mac1.1, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool.not.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %status.1 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 1, i32 1
  %4 = ptrtoint ptr %status.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.1 = icmp eq i32 %5, 0
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.then_crit_edge

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %mac1.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 2, i32 3
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %mac1.2, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool.not.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %status.2 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 2, i32 1
  %6 = ptrtoint ptr %status.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.2 = icmp eq i32 %7, 0
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.if.then_crit_edge

land.lhs.true.2.if.then_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %mac1.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 3, i32 3
  %bcmp.3 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %mac1.3, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %tobool.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %tobool.not.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %status.3 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 3, i32 1
  %8 = ptrtoint ptr %status.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.3 = icmp eq i32 %9, 0
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.if.then_crit_edge

land.lhs.true.3.if.then_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %mac1.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 4, i32 3
  %bcmp.4 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %mac1.4, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %tobool.not.4 = icmp eq i32 %bcmp.4, 0
  br i1 %tobool.not.4, label %land.lhs.true.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true.4:                                  ; preds = %for.inc.3
  %status.4 = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 113, i32 4, i32 1
  %10 = ptrtoint ptr %status.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.4 = icmp eq i32 %11, 0
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.end_crit_edge, label %land.lhs.true.4.if.then_crit_edge

land.lhs.true.4.if.then_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %add, %if.then ], [ 0, %land.lhs.true.4.for.end_crit_edge ], [ 0, %for.inc.3.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_link_id_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3788
  %call = tail call zeroext i1 @wsm_flush_tx(ptr noundef %add.ptr) #12
  %link_id_gc_work = getelementptr i8, ptr %work, i32 44
  tail call void @cw1200_link_id_gc_work(ptr noundef %link_id_gc_work)
  tail call void @wsm_unlock_tx(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wsm_flush_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_link_id_gc_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %reset = alloca %struct.wsm_reset, align 8
  %map_link = alloca %struct.wsm_map_link, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3832
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset) #12
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %reset, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %map_link) #12
  %1 = call ptr @memset(ptr %map_link, i32 0, i32 7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %join_status = getelementptr i8, ptr %work, i32 -1212
  %3 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.not = icmp eq i32 %4, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @wsm_lock_tx(ptr noundef %add.ptr) #12
  %ps_state_lock = getelementptr i8, ptr %work, i32 112
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  %link_id_db = getelementptr i8, ptr %work, i32 -464
  %link_id121 = getelementptr inbounds %struct.wsm_map_link, ptr %map_link, i32 0, i32 1
  %link_id_map57 = getelementptr i8, ptr %work, i32 -468
  %sta_asleep_mask60 = getelementptr i8, ptr %work, i32 100
  %pspoll_mask63 = getelementptr i8, ptr %work, i32 104
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %next_gc.0257 = phi i32 [ -1, %if.end ], [ %next_gc.2250, %for.inc.for.body_crit_edge ]
  %i.0256 = phi i32 [ 0, %if.end ], [ %add, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0256, 1
  %shl = shl i32 2, %i.0256
  %arrayidx = getelementptr [5 x %struct.cw1200_link_entry], ptr %link_id_db, i32 0, i32 %i.0256
  %status = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx, i32 0, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %6, label %for.body.for.inc_crit_edge [
    i32 1, label %for.body.if.then7_crit_edge
    i32 3, label %land.lhs.true
    i32 2, label %if.then46
    i32 4, label %for.body.if.then93_crit_edge
    i32 5, label %for.body.if.then93_crit_edge258
  ]

for.body.if.then93_crit_edge258:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then93

for.body.if.then93_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then93

for.body.if.then7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %link_id_map57 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_id_map57, align 4
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.then7_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %for.body.if.then7_crit_edge
  %10 = ptrtoint ptr %link_id_map57 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_id_map57, align 4
  %and9 = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then7.if.end15_crit_edge, label %if.then11

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %neg = xor i32 %shl, -1
  %12 = ptrtoint ptr %sta_asleep_mask60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sta_asleep_mask60, align 4
  %and12 = and i32 %13, %neg
  store i32 %and12, ptr %sta_asleep_mask60, align 4
  %14 = ptrtoint ptr %pspoll_mask63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pspoll_mask63, align 4
  %and14 = and i32 %15, %neg
  store i32 %and14, ptr %pspoll_mask63, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then7.if.end15_crit_edge
  %or = or i32 %11, %shl
  %16 = ptrtoint ptr %link_id_map57 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %link_id_map57, align 4
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp20.not = icmp eq i32 %18, 3
  br i1 %cmp20.not, label %if.end15.if.end25_crit_edge, label %if.then21

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %status, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end15.if.end25_crit_edge
  %mac = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %map_link, ptr %mac, i32 6)
  call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  br i1 %tobool10.not, label %if.end25.if.end134_crit_edge, label %if.then31

if.end25.if.end134_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %reset, align 8
  %call = call i32 @wsm_reset(ptr noundef %add.ptr, ptr noundef nonnull %reset) #12
  br label %if.end134

if.then46:                                        ; preds = %for.body
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %23, %2
  %add49 = add i32 %sub, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add49)
  %cmp50 = icmp slt i32 %add49, 1
  br i1 %cmp50, label %if.end134.thread251, label %if.else72

if.end134.thread251:                              ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %status, align 4
  %neg56 = xor i32 %shl, -1
  %25 = ptrtoint ptr %link_id_map57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_id_map57, align 4
  %and58 = and i32 %26, %neg56
  store i32 %and58, ptr %link_id_map57, align 4
  %27 = ptrtoint ptr %sta_asleep_mask60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sta_asleep_mask60, align 4
  %and61 = and i32 %28, %neg56
  store i32 %and61, ptr %sta_asleep_mask60, align 4
  %29 = ptrtoint ptr %pspoll_mask63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pspoll_mask63, align 4
  %and64 = and i32 %30, %neg56
  store i32 %and64, ptr %pspoll_mask63, align 4
  %31 = call ptr @memset(ptr %map_link, i32 0, i32 6)
  call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  %32 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %reset, align 8
  %call70 = call i32 @wsm_reset(ptr noundef %add.ptr, ptr noundef nonnull %reset) #12
  call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  br label %if.then136

if.else72:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %33 = call i32 @llvm.umin.i32(i32 %next_gc.0257, i32 %add49)
  br label %for.inc

if.then93:                                        ; preds = %for.body.if.then93_crit_edge, %for.body.if.then93_crit_edge258
  %prev_status = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx, i32 0, i32 2
  %34 = ptrtoint ptr %prev_status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prev_status, align 4
  %36 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %status, align 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %2, ptr %arrayidx, align 4
  %38 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %reset, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  %call109 = call i32 @wsm_reset(ptr noundef %add.ptr, ptr noundef nonnull %reset) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp110 = icmp eq i32 %6, 5
  br i1 %cmp110, label %if.then112, label %if.then93.if.end130_crit_edge

if.then93.if.end130_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then112:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  %mac117 = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx, i32 0, i32 3
  %39 = call ptr @memcpy(ptr %map_link, ptr %mac117, i32 6)
  %conv120 = trunc i32 %add to i8
  %40 = ptrtoint ptr %link_id121 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv120, ptr %link_id121, align 1
  %call122 = call i32 @wsm_map_link(ptr noundef %add.ptr, ptr noundef nonnull %map_link) #12
  %41 = call i32 @llvm.umin.i32(i32 %next_gc.0257, i32 1000)
  br label %if.end130

if.end130:                                        ; preds = %if.then112, %if.then93.if.end130_crit_edge
  %next_gc.1 = phi i32 [ %41, %if.then112 ], [ %next_gc.0257, %if.then93.if.end130_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  br label %for.inc

if.end134:                                        ; preds = %if.then31, %if.end25.if.end134_crit_edge
  %conv = trunc i32 %add to i8
  %42 = ptrtoint ptr %link_id121 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv, ptr %link_id121, align 1
  %call36 = call i32 @wsm_map_link(ptr noundef %add.ptr, ptr noundef nonnull %map_link) #12
  %43 = call i32 @llvm.umin.i32(i32 %next_gc.0257, i32 1000)
  call void @_raw_spin_lock_bh(ptr noundef %ps_state_lock) #12
  br i1 %tobool10.not, label %if.end134.for.inc_crit_edge, label %if.end134.if.then136_crit_edge

if.end134.if.then136_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

if.end134.for.inc_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then136:                                       ; preds = %if.end134.if.then136_crit_edge, %if.end134.thread251
  %next_gc.2254 = phi i32 [ %next_gc.0257, %if.end134.thread251 ], [ %43, %if.end134.if.then136_crit_edge ]
  %rx_queue = getelementptr inbounds %struct.cw1200_link_entry, ptr %arrayidx, i32 0, i32 5
  call void @skb_queue_purge(ptr noundef %rx_queue) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_link_id_gc_work.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_link_id_gc_work, %if.then144)) #12
          to label %for.inc [label %if.then144], !srcloc !151

if.then144:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reset, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_link_id_gc_work.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.31, i32 noundef %45) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then144, %if.then136, %if.end134.for.inc_crit_edge, %if.end130, %if.else72, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next_gc.2250 = phi i32 [ %43, %if.end134.for.inc_crit_edge ], [ %next_gc.2254, %if.then144 ], [ %next_gc.2254, %if.then136 ], [ %next_gc.1, %if.end130 ], [ %33, %if.else72 ], [ %next_gc.0257, %land.lhs.true.for.inc_crit_edge ], [ %next_gc.0257, %for.body.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %add, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @_raw_spin_unlock_bh(ptr noundef %ps_state_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %next_gc.2250)
  %cmp149.not = icmp eq i32 %next_gc.2250, -1
  br i1 %cmp149.not, label %for.end.if.end153_crit_edge, label %if.then151

for.end.if.end153_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

if.then151:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %workqueue = getelementptr i8, ptr %work, i32 -3760
  %46 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %workqueue, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %work, i32 noundef %next_gc.2250) #12
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %for.end.if.end153_crit_edge
  call void @wsm_unlock_tx(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end153, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %map_link) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_lock_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_map_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_queue_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_queue_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_write_mib(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tx_policy_get(ptr noundef %priv, ptr noundef %rates, ptr nocapture noundef writeonly %renew) unnamed_addr #0 align 64 {
entry:
  %wanted = alloca %struct.tx_policy, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_policy_cache = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wanted) #12
  %0 = getelementptr inbounds %struct.tx_policy, ptr %wanted, i32 0, i32 1
  %1 = call ptr @memset(ptr %wanted, i32 255, i32 16)
  call fastcc void @tx_policy_build(ptr noundef %priv, ptr noundef nonnull %wanted, ptr noundef %rates)
  %lock = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %free = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 2
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free, align 4
  %cmp.i.not = icmp eq ptr %3, %free
  br i1 %cmp.i.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @tx_policy_get.__already_done, align 1
  br i1 %.b1, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !150

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tx_policy_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 307, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end39:                                         ; preds = %entry
  %used.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 1
  %4 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn70.i = load ptr, ptr %used.i, align 4
  %cmp.not72.i = icmp eq ptr %.pn70.i, %used.i
  br i1 %cmp.not72.i, label %if.end39.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end39.for.end.i_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end39
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %0, align 4
  %7 = lshr i8 %6, 1
  %8 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %tobool.not.i.i = icmp ult i8 %6, 2
  %9 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not.i.i = icmp eq i8 %9, 0
  %arrayidx.i.i = getelementptr [12 x i8], ptr %wanted, i32 0, i32 %8
  br label %for.body.i

for.body.i:                                       ; preds = %tx_policy_is_equal.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn73.i = phi ptr [ %.pn70.i, %for.body.lr.ph.i ], [ %.pn.i, %tx_policy_is_equal.exit.i.for.body.i_crit_edge ]
  %it.074.i = getelementptr i8, ptr %.pn73.i, i32 -16
  %defined3.i.i = getelementptr i8, ptr %.pn73.i, i32 -4
  %10 = ptrtoint ptr %defined3.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %defined3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %11)
  %cmp.i.i = icmp ugt i8 %6, %11
  br i1 %cmp.i.i, label %for.body.i.tx_policy_is_equal.exit.i_crit_edge, label %if.end.i.i

for.body.i.tx_policy_is_equal.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_is_equal.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %wanted, ptr %it.074.i, i32 %8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool8.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool8.not.i.i, label %if.then6.i.i.if.end11.i.i_crit_edge, label %if.then6.i.i.tx_policy_is_equal.exit.i_crit_edge

if.then6.i.i.tx_policy_is_equal.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_is_equal.exit.i

if.then6.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then6.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  br i1 %tobool14.not.i.i, label %if.end11.i.i.tx_policy_find.exit_crit_edge, label %if.then15.i.i

if.end11.i.i.tx_policy_find.exit_crit_edge:       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_find.exit

if.then15.i.i:                                    ; preds = %if.end11.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx18.i.i = getelementptr [12 x i8], ptr %it.074.i, i32 0, i32 %8
  %14 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx18.i.i, align 1
  %16 = xor i8 %15, %13
  %17 = and i8 %16, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp21.not.i.i = icmp eq i8 %17, 0
  br i1 %cmp21.not.i.i, label %if.then15.i.i.tx_policy_find.exit_crit_edge, label %if.then15.i.i.tx_policy_is_equal.exit.i_crit_edge

if.then15.i.i.tx_policy_is_equal.exit.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_is_equal.exit.i

if.then15.i.i.tx_policy_find.exit_crit_edge:      ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_find.exit

tx_policy_is_equal.exit.i:                        ; preds = %if.then15.i.i.tx_policy_is_equal.exit.i_crit_edge, %if.then6.i.i.tx_policy_is_equal.exit.i_crit_edge, %for.body.i.tx_policy_is_equal.exit.i_crit_edge
  %18 = ptrtoint ptr %.pn73.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn73.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %used.i
  br i1 %cmp.not.i, label %tx_policy_is_equal.exit.i.for.end.i_crit_edge, label %tx_policy_is_equal.exit.i.for.body.i_crit_edge

tx_policy_is_equal.exit.i.for.body.i_crit_edge:   ; preds = %tx_policy_is_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

tx_policy_is_equal.exit.i.for.end.i_crit_edge:    ; preds = %tx_policy_is_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %tx_policy_is_equal.exit.i.for.end.i_crit_edge, %if.end39.for.end.i_crit_edge
  %19 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn4875.i = load ptr, ptr %free, align 4
  %cmp15.not77.i = icmp eq ptr %.pn4875.i, %free
  br i1 %cmp15.not77.i, label %for.end.i.if.else_crit_edge, label %for.body17.lr.ph.i

for.end.i.if.else_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body17.lr.ph.i:                               ; preds = %for.end.i
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 4
  %22 = lshr i8 %21, 1
  %23 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %tobool.not.i52.i = icmp ult i8 %21, 2
  %24 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool14.not.i57.i = icmp eq i8 %24, 0
  %arrayidx.i59.i = getelementptr [12 x i8], ptr %wanted, i32 0, i32 %23
  br label %for.body17.i

for.body17.i:                                     ; preds = %tx_policy_is_equal.exit65.i.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %.pn4878.i = phi ptr [ %.pn4875.i, %for.body17.lr.ph.i ], [ %.pn48.i, %tx_policy_is_equal.exit65.i.for.body17.i_crit_edge ]
  %it.179.i = getelementptr i8, ptr %.pn4878.i, i32 -16
  %defined3.i50.i = getelementptr i8, ptr %.pn4878.i, i32 -4
  %25 = ptrtoint ptr %defined3.i50.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %defined3.i50.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %26)
  %cmp.i51.i = icmp ugt i8 %21, %26
  br i1 %cmp.i51.i, label %for.body17.i.tx_policy_is_equal.exit65.i_crit_edge, label %if.end.i53.i

for.body17.i.tx_policy_is_equal.exit65.i_crit_edge: ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_is_equal.exit65.i

if.end.i53.i:                                     ; preds = %for.body17.i
  br i1 %tobool.not.i52.i, label %if.end.i53.i.if.end11.i58.i_crit_edge, label %if.then6.i56.i

if.end.i53.i.if.end11.i58.i_crit_edge:            ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i58.i

if.then6.i56.i:                                   ; preds = %if.end.i53.i
  %bcmp.i54.i = call i32 @bcmp(ptr nonnull %wanted, ptr %it.179.i, i32 %23) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i54.i)
  %tobool8.not.i55.i = icmp eq i32 %bcmp.i54.i, 0
  br i1 %tobool8.not.i55.i, label %if.then6.i56.i.if.end11.i58.i_crit_edge, label %if.then6.i56.i.tx_policy_is_equal.exit65.i_crit_edge

if.then6.i56.i.tx_policy_is_equal.exit65.i_crit_edge: ; preds = %if.then6.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_is_equal.exit65.i

if.then6.i56.i.if.end11.i58.i_crit_edge:          ; preds = %if.then6.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i58.i

if.end11.i58.i:                                   ; preds = %if.then6.i56.i.if.end11.i58.i_crit_edge, %if.end.i53.i.if.end11.i58.i_crit_edge
  br i1 %tobool14.not.i57.i, label %if.end11.i58.i.tx_policy_find.exit_crit_edge, label %if.then15.i62.i

if.end11.i58.i.tx_policy_find.exit_crit_edge:     ; preds = %if.end11.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_find.exit

if.then15.i62.i:                                  ; preds = %if.end11.i58.i
  %27 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i59.i, align 1
  %arrayidx18.i60.i = getelementptr [12 x i8], ptr %it.179.i, i32 0, i32 %23
  %29 = ptrtoint ptr %arrayidx18.i60.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx18.i60.i, align 1
  %31 = xor i8 %30, %28
  %32 = and i8 %31, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp21.not.i61.i = icmp eq i8 %32, 0
  br i1 %cmp21.not.i61.i, label %if.then15.i62.i.tx_policy_find.exit_crit_edge, label %if.then15.i62.i.tx_policy_is_equal.exit65.i_crit_edge

if.then15.i62.i.tx_policy_is_equal.exit65.i_crit_edge: ; preds = %if.then15.i62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_is_equal.exit65.i

if.then15.i62.i.tx_policy_find.exit_crit_edge:    ; preds = %if.then15.i62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_find.exit

tx_policy_is_equal.exit65.i:                      ; preds = %if.then15.i62.i.tx_policy_is_equal.exit65.i_crit_edge, %if.then6.i56.i.tx_policy_is_equal.exit65.i_crit_edge, %for.body17.i.tx_policy_is_equal.exit65.i_crit_edge
  %33 = ptrtoint ptr %.pn4878.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn48.i = load ptr, ptr %.pn4878.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn48.i, %free
  br i1 %cmp15.not.i, label %tx_policy_is_equal.exit65.i.if.else_crit_edge, label %tx_policy_is_equal.exit65.i.for.body17.i_crit_edge

tx_policy_is_equal.exit65.i.for.body17.i_crit_edge: ; preds = %tx_policy_is_equal.exit65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i

tx_policy_is_equal.exit65.i.if.else_crit_edge:    ; preds = %tx_policy_is_equal.exit65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

tx_policy_find.exit:                              ; preds = %if.then15.i62.i.tx_policy_find.exit_crit_edge, %if.end11.i58.i.tx_policy_find.exit_crit_edge, %if.then15.i.i.tx_policy_find.exit_crit_edge, %if.end11.i.i.tx_policy_find.exit_crit_edge
  %it.074.i.lcssa.sink = phi ptr [ %it.179.i, %if.then15.i62.i.tx_policy_find.exit_crit_edge ], [ %it.179.i, %if.end11.i58.i.tx_policy_find.exit_crit_edge ], [ %it.074.i, %if.then15.i.i.tx_policy_find.exit_crit_edge ], [ %it.074.i, %if.end11.i.i.tx_policy_find.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %it.074.i.lcssa.sink to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %tx_policy_cache to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %retval.0.i6 = sdiv exact i32 %sub.ptr.sub.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24, i32 %sub.ptr.sub.i)
  %cmp = icmp sgt i32 %sub.ptr.sub.i, -24
  br i1 %cmp, label %do.body42, label %tx_policy_find.exit.if.else_crit_edge

tx_policy_find.exit.if.else_crit_edge:            ; preds = %tx_policy_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.body42:                                        ; preds = %tx_policy_find.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_policy_get.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_policy_get, %if.then53)) #12
          to label %do.end56 [label %if.then53], !srcloc !151

if.then53:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tx_policy_get.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i6) #12
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body42
  %34 = ptrtoint ptr %renew to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %renew, align 1
  br label %if.end78

if.else:                                          ; preds = %tx_policy_find.exit.if.else_crit_edge, %tx_policy_is_equal.exit65.i.if.else_crit_edge, %for.end.i.if.else_crit_edge
  %35 = ptrtoint ptr %renew to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %renew, align 1
  %prev = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 138, i32 2, i32 1
  %36 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 -16
  %38 = call ptr @memcpy(ptr %add.ptr, ptr %wanted, i32 16)
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %tx_policy_cache to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_policy_get.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_policy_get, %if.then73)) #12
          to label %do.end76 [label %if.then73], !srcloc !151

if.then73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tx_policy_get.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.51, i32 noundef %sub.ptr.div) #12
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %if.else
  tail call fastcc void @tx_policy_dump(ptr noundef %add.ptr)
  br label %if.end78

if.end78:                                         ; preds = %do.end76, %do.end56
  %idx.0 = phi i32 [ %retval.0.i6, %do.end56 ], [ %sub.ptr.div, %do.end76 ]
  %usage_count.i = getelementptr [8 x %struct.tx_policy_cache_entry], ptr %tx_policy_cache, i32 0, i32 %idx.0, i32 0, i32 2
  %39 = ptrtoint ptr %usage_count.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %usage_count.i, align 1
  %inc.i = add i8 %40, 1
  store i8 %inc.i, ptr %usage_count.i, align 1
  %link.i = getelementptr [8 x %struct.tx_policy_cache_entry], ptr %tx_policy_cache, i32 0, i32 %idx.0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end78.__list_del_entry.exit.i.i_crit_edge

if.end78.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr [8 x %struct.tx_policy_cache_entry], ptr %tx_policy_cache, i32 0, i32 %idx.0, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %link.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end78.__list_del_entry.exit.i.i_crit_edge
  %47 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %used.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %used.i, ptr noundef %48) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.tx_policy_use.exit_crit_edge

__list_del_entry.exit.i.i.tx_policy_use.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_policy_use.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %link.i, ptr %prev1.i.i2.i.i, align 4
  %50 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %link.i, align 4
  %prev3.i.i.i.i = getelementptr [8 x %struct.tx_policy_cache_entry], ptr %tx_policy_cache, i32 0, i32 %idx.0, i32 1, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %used.i, ptr %prev3.i.i.i.i, align 4
  %52 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %link.i, ptr %used.i, align 4
  br label %tx_policy_use.exit

tx_policy_use.exit:                               ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.tx_policy_use.exit_crit_edge
  %53 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %free, align 4
  %cmp.i8.not = icmp eq ptr %54, %free
  br i1 %cmp.i8.not, label %if.then83, label %tx_policy_use.exit.cleanup_crit_edge

tx_policy_use.exit.cleanup_crit_edge:             ; preds = %tx_policy_use.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then83:                                        ; preds = %tx_policy_use.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 0
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.i) #12
  %arrayidx.1.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 1
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.1.i) #12
  %arrayidx.2.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 2
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.2.i) #12
  %arrayidx.3.i = getelementptr %struct.cw1200_common, ptr %priv, i32 0, i32 18, i32 3
  tail call void @cw1200_queue_lock(ptr noundef %arrayidx.3.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %tx_policy_use.exit.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 255, %land.rhs.cleanup_crit_edge ], [ 255, %if.then ], [ %idx.0, %if.then83 ], [ %idx.0, %tx_policy_use.exit.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wanted) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_policy_build(ptr nocapture noundef readonly %priv, ptr nocapture noundef %policy, ptr noundef %rates) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %short_frame_max_tx_count = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 41
  %0 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %short_frame_max_tx_count, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %rates to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp slt i8 %3, 0
  br i1 %cmp, label %do.body4, label %do.end9, !prof !153

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/txrx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #12, !srcloc !160
  unreachable

do.end9:                                          ; preds = %entry
  %4 = call ptr @memset(ptr %policy, i32 0, i32 16)
  %arrayidx12 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp15 = icmp slt i8 %6, 0
  br i1 %cmp15, label %for.end, label %if.end18

if.end18:                                         ; preds = %do.end9
  %7 = ptrtoint ptr %rates to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rates, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp25 = icmp sgt i8 %6, %8
  br i1 %cmp25, label %if.then27, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %tmp.sroa.5.0.arrayidx29.sroa_idx = getelementptr inbounds i8, ptr %rates, i32 1
  %9 = ptrtoint ptr %tmp.sroa.5.0.arrayidx29.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %tmp.sroa.5.0.copyload = load i16, ptr %tmp.sroa.5.0.arrayidx29.sroa_idx, align 1
  %10 = call ptr @memcpy(ptr %rates, ptr %arrayidx12, i32 3)
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %8, ptr %arrayidx12, align 1
  %tmp.sroa.5.0.arrayidx33.sroa_idx = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %12 = ptrtoint ptr %tmp.sroa.5.0.arrayidx33.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %tmp.sroa.5.0.copyload, ptr %tmp.sroa.5.0.arrayidx33.sroa_idx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %if.end18.for.inc_crit_edge
  %arrayidx12.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2
  %13 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp15.1 = icmp slt i8 %14, 0
  br i1 %cmp15.1, label %for.inc.for.body41.preheader_crit_edge, label %if.end18.1

for.inc.for.body41.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body41.preheader

if.end18.1:                                       ; preds = %for.inc
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp25.1 = icmp sgt i8 %14, %16
  br i1 %cmp25.1, label %if.then27.1, label %if.end18.1.for.inc.1_crit_edge

if.end18.1.for.inc.1_crit_edge:                   ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then27.1:                                      ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #14
  %tmp.sroa.5.0.arrayidx29.sroa_idx.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %17 = ptrtoint ptr %tmp.sroa.5.0.arrayidx29.sroa_idx.1 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %tmp.sroa.5.0.copyload.1 = load i16, ptr %tmp.sroa.5.0.arrayidx29.sroa_idx.1, align 1
  %18 = call ptr @memcpy(ptr %arrayidx12, ptr %arrayidx12.1, i32 3)
  %19 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %16, ptr %arrayidx12.1, align 1
  %tmp.sroa.5.0.arrayidx33.sroa_idx.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2, i32 1
  %20 = ptrtoint ptr %tmp.sroa.5.0.arrayidx33.sroa_idx.1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %tmp.sroa.5.0.copyload.1, ptr %tmp.sroa.5.0.arrayidx33.sroa_idx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then27.1, %if.end18.1.for.inc.1_crit_edge
  %arrayidx12.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3
  %21 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx12.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp15.2 = icmp slt i8 %22, 0
  br i1 %cmp15.2, label %for.inc.1.for.body41.preheader_crit_edge, label %if.end18.2

for.inc.1.for.body41.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body41.preheader

if.end18.2:                                       ; preds = %for.inc.1
  %23 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx12.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp25.2 = icmp sgt i8 %22, %24
  br i1 %cmp25.2, label %if.then27.2, label %if.end18.2.for.body41.preheader_crit_edge

if.end18.2.for.body41.preheader_crit_edge:        ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body41.preheader

if.then27.2:                                      ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #14
  %tmp.sroa.5.0.arrayidx29.sroa_idx.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2, i32 1
  %25 = ptrtoint ptr %tmp.sroa.5.0.arrayidx29.sroa_idx.2 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %tmp.sroa.5.0.copyload.2 = load i16, ptr %tmp.sroa.5.0.arrayidx29.sroa_idx.2, align 1
  %26 = call ptr @memcpy(ptr %arrayidx12.1, ptr %arrayidx12.2, i32 3)
  %27 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %arrayidx12.2, align 1
  %tmp.sroa.5.0.arrayidx33.sroa_idx.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3, i32 1
  %28 = ptrtoint ptr %tmp.sroa.5.0.arrayidx33.sroa_idx.2 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %tmp.sroa.5.0.copyload.2, ptr %tmp.sroa.5.0.arrayidx33.sroa_idx.2, align 1
  br label %for.body41.preheader

for.end:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %count36 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %rates, i32 0, i32 1
  %29 = ptrtoint ptr %count36 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %bf.load = load i16, ptr %count36, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  br label %for.end90

for.body41.preheader:                             ; preds = %if.then27.2, %if.end18.2.for.body41.preheader_crit_edge, %for.inc.1.for.body41.preheader_crit_edge, %for.inc.for.body41.preheader_crit_edge
  %exitcond.not.1 = phi i1 [ false, %if.end18.2.for.body41.preheader_crit_edge ], [ false, %if.then27.2 ], [ true, %for.inc.1.for.body41.preheader_crit_edge ], [ false, %for.inc.for.body41.preheader_crit_edge ]
  %count3643 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %rates, i32 0, i32 1
  %30 = ptrtoint ptr %count3643 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %bf.load44 = load i16, ptr %count3643, align 1
  %bf.lshr45 = lshr i16 %bf.load44, 11
  %arrayidx42 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1
  %31 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx42, align 1
  %33 = ptrtoint ptr %rates to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rates, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp48 = icmp eq i8 %32, %34
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %for.body41.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %count52 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %35 = ptrtoint ptr %count52 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %bf.load53 = load i16, ptr %count52, align 1
  %count57 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 0, i32 1
  %36 = ptrtoint ptr %count57 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %bf.load58 = load i16, ptr %count57, align 1
  %bf.lshr59 = and i16 %bf.load58, -2048
  %bf.lshr542 = add i16 %bf.lshr59, %bf.load53
  %bf.shl = and i16 %bf.lshr542, -2048
  %bf.clear = and i16 %bf.load58, 2047
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %count57, align 1
  br label %if.end81

if.else:                                          ; preds = %for.body41.preheader
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp69 = icmp sgt i8 %32, %34
  br i1 %cmp69, label %if.else.for.end90_crit_edge, label %if.else.if.end81_crit_edge

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.else.for.end90_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end90

if.end81:                                         ; preds = %if.else.if.end81_crit_edge, %if.then50
  %i.2 = phi i32 [ 0, %if.then50 ], [ 1, %if.else.if.end81_crit_edge ]
  %count83 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %37 = ptrtoint ptr %count83 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %bf.load84 = load i16, ptr %count83, align 1
  %bf.lshr85 = lshr i16 %bf.load84, 11
  %narrow = add nuw nsw i16 %bf.lshr45, %bf.lshr85
  br i1 %cmp15.1, label %if.end81.for.end90_crit_edge, label %for.body41.1

if.end81.for.end90_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end90

for.body41.1:                                     ; preds = %if.end81
  %arrayidx42.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2
  %38 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx42.1, align 1
  %arrayidx45.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %i.2
  %40 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx45.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp48.1 = icmp eq i8 %39, %41
  br i1 %cmp48.1, label %if.then50.1, label %if.else.1

if.else.1:                                        ; preds = %for.body41.1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp69.1 = icmp sgt i8 %39, %41
  br i1 %cmp69.1, label %if.else.1.for.end90_crit_edge, label %if.else72.1

if.else.1.for.end90_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end90

if.else72.1:                                      ; preds = %if.else.1
  %inc73.1 = add nuw nsw i32 %i.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc73.1)
  %cmp74.not.1 = icmp eq i32 %inc73.1, 2
  br i1 %cmp74.not.1, label %if.else72.1.if.end81.1_crit_edge, label %if.then76.1

if.else72.1.if.end81.1_crit_edge:                 ; preds = %if.else72.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.1

if.then76.1:                                      ; preds = %if.else72.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx77.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %inc73.1
  %42 = call ptr @memcpy(ptr %arrayidx77.1, ptr %arrayidx42.1, i32 3)
  br label %if.end81.1

if.then50.1:                                      ; preds = %for.body41.1
  call void @__sanitizer_cov_trace_pc() #14
  %count52.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2, i32 1
  %43 = ptrtoint ptr %count52.1 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load53.1 = load i16, ptr %count52.1, align 1
  %count57.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %i.2, i32 1
  %44 = ptrtoint ptr %count57.1 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load58.1 = load i16, ptr %count57.1, align 1
  %bf.lshr59.1 = and i16 %bf.load58.1, -2048
  %bf.lshr542.1 = add i16 %bf.lshr59.1, %bf.load53.1
  %bf.shl.1 = and i16 %bf.lshr542.1, -2048
  %bf.clear.1 = and i16 %bf.load58.1, 2047
  %bf.set.1 = or i16 %bf.shl.1, %bf.clear.1
  store i16 %bf.set.1, ptr %count57.1, align 1
  br label %if.end81.1

if.end81.1:                                       ; preds = %if.then50.1, %if.then76.1, %if.else72.1.if.end81.1_crit_edge
  %i.2.1 = phi i32 [ %i.2, %if.then50.1 ], [ %inc73.1, %if.then76.1 ], [ 2, %if.else72.1.if.end81.1_crit_edge ]
  %count83.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2, i32 1
  %45 = ptrtoint ptr %count83.1 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load84.1 = load i16, ptr %count83.1, align 1
  %bf.lshr85.1 = lshr i16 %bf.load84.1, 11
  %narrow53 = add nuw nsw i16 %narrow, %bf.lshr85.1
  br i1 %exitcond.not.1, label %if.end81.1.for.end90_crit_edge, label %for.body41.2

if.end81.1.for.end90_crit_edge:                   ; preds = %if.end81.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end90

for.body41.2:                                     ; preds = %if.end81.1
  %arrayidx42.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3
  %46 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx42.2, align 1
  %arrayidx45.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %i.2.1
  %48 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx45.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp48.2 = icmp eq i8 %47, %49
  br i1 %cmp48.2, label %if.then50.2, label %if.else.2

if.else.2:                                        ; preds = %for.body41.2
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp69.2 = icmp sgt i8 %47, %49
  br i1 %cmp69.2, label %if.else.2.for.end90_crit_edge, label %if.else72.2

if.else.2.for.end90_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end90

if.else72.2:                                      ; preds = %if.else.2
  %inc73.2 = add nsw i32 %i.2.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc73.2)
  %cmp74.not.2 = icmp eq i32 %inc73.2, 3
  br i1 %cmp74.not.2, label %if.else72.2.if.end81.2_crit_edge, label %if.then76.2

if.else72.2.if.end81.2_crit_edge:                 ; preds = %if.else72.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.2

if.then76.2:                                      ; preds = %if.else72.2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx77.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %inc73.2
  %50 = call ptr @memcpy(ptr %arrayidx77.2, ptr %arrayidx42.2, i32 3)
  br label %if.end81.2

if.then50.2:                                      ; preds = %for.body41.2
  call void @__sanitizer_cov_trace_pc() #14
  %count52.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3, i32 1
  %51 = ptrtoint ptr %count52.2 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %bf.load53.2 = load i16, ptr %count52.2, align 1
  %count57.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %i.2.1, i32 1
  %52 = ptrtoint ptr %count57.2 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load58.2 = load i16, ptr %count57.2, align 1
  %bf.lshr59.2 = and i16 %bf.load58.2, -2048
  %bf.lshr542.2 = add i16 %bf.lshr59.2, %bf.load53.2
  %bf.shl.2 = and i16 %bf.lshr542.2, -2048
  %bf.clear.2 = and i16 %bf.load58.2, 2047
  %bf.set.2 = or i16 %bf.shl.2, %bf.clear.2
  store i16 %bf.set.2, ptr %count57.2, align 1
  br label %if.end81.2

if.end81.2:                                       ; preds = %if.then50.2, %if.then76.2, %if.else72.2.if.end81.2_crit_edge
  %i.2.2 = phi i32 [ %i.2.1, %if.then50.2 ], [ %inc73.2, %if.then76.2 ], [ 3, %if.else72.2.if.end81.2_crit_edge ]
  %count83.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3, i32 1
  %53 = ptrtoint ptr %count83.2 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %bf.load84.2 = load i16, ptr %count83.2, align 1
  %bf.lshr85.2 = lshr i16 %bf.load84.2, 11
  %narrow54 = add nuw nsw i16 %narrow53, %bf.lshr85.2
  br label %for.end90

for.end90:                                        ; preds = %if.end81.2, %if.else.2.for.end90_crit_edge, %if.end81.1.for.end90_crit_edge, %if.else.1.for.end90_crit_edge, %if.end81.for.end90_crit_edge, %if.else.for.end90_crit_edge, %for.end
  %count3649 = phi ptr [ %count36, %for.end ], [ %count3643, %if.end81.2 ], [ %count3643, %if.else.2.for.end90_crit_edge ], [ %count3643, %if.end81.1.for.end90_crit_edge ], [ %count3643, %if.else.1.for.end90_crit_edge ], [ %count3643, %if.else.for.end90_crit_edge ], [ %count3643, %if.end81.for.end90_crit_edge ]
  %total.0.lcssa.in = phi i16 [ %bf.lshr, %for.end ], [ %narrow, %if.end81.for.end90_crit_edge ], [ %bf.lshr45, %if.else.for.end90_crit_edge ], [ %narrow, %if.else.1.for.end90_crit_edge ], [ %narrow53, %if.end81.1.for.end90_crit_edge ], [ %narrow53, %if.else.2.for.end90_crit_edge ], [ %narrow54, %if.end81.2 ]
  %i.1.lcssa = phi i32 [ 0, %for.end ], [ %i.2, %if.end81.for.end90_crit_edge ], [ 0, %if.else.for.end90_crit_edge ], [ %i.2, %if.else.1.for.end90_crit_edge ], [ %i.2.1, %if.end81.1.for.end90_crit_edge ], [ %i.2.1, %if.else.2.for.end90_crit_edge ], [ %i.2.2, %if.end81.2 ]
  %total.0.lcssa = zext i16 %total.0.lcssa.in to i32
  %add91 = add i32 %i.1.lcssa, 1
  %54 = tail call i32 @llvm.umax.i32(i32 %add91, i32 %conv)
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %total.0.lcssa)
  %cmp96 = icmp ult i32 %54, %total.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add91)
  %cmp10033 = icmp ne i32 %add91, 0
  %or.cond39 = select i1 %cmp96, i1 %cmp10033, i1 false
  br i1 %or.cond39, label %for.body102, label %for.end90.if.end133_crit_edge

for.end90.if.end133_crit_edge:                    ; preds = %for.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

for.body102:                                      ; preds = %for.end90
  %count106 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 0, i32 1
  %55 = ptrtoint ptr %count106 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %bf.load107 = load i16, ptr %count106, align 1
  %bf.lshr108 = lshr i16 %bf.load107, 11
  %conv109 = zext i16 %bf.lshr108 to i32
  %sub110 = sub i32 %54, %i.1.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %sub110, i32 %conv109)
  %cmp111 = icmp ult i32 %sub110, %conv109
  br i1 %cmp111, label %if.then113, label %for.body102.if.end123_crit_edge

for.body102.if.end123_crit_edge:                  ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.then113:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  %conv115 = trunc i32 %sub110 to i16
  %bf.shl120 = shl i16 %conv115, 11
  %bf.clear121 = and i16 %bf.load107, 2047
  %bf.set122 = or i16 %bf.clear121, %bf.shl120
  %56 = ptrtoint ptr %count106 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %bf.set122, ptr %count106, align 1
  br label %if.end123

if.end123:                                        ; preds = %if.then113, %for.body102.if.end123_crit_edge
  %57 = ptrtoint ptr %count106 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %bf.load126 = load i16, ptr %count106, align 1
  %bf.lshr127 = lshr i16 %bf.load126, 11
  %conv128 = zext i16 %bf.lshr127 to i32
  %sub129 = sub i32 %54, %conv128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.lcssa)
  %exitcond40.not = icmp eq i32 %i.1.lcssa, 0
  br i1 %exitcond40.not, label %if.end123.if.end133_crit_edge, label %for.body102.1

if.end123.if.end133_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

for.body102.1:                                    ; preds = %if.end123
  %sub104.neg.1 = sub i32 1, %i.1.lcssa
  %count106.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %58 = ptrtoint ptr %count106.1 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %bf.load107.1 = load i16, ptr %count106.1, align 1
  %bf.lshr108.1 = lshr i16 %bf.load107.1, 11
  %conv109.1 = zext i16 %bf.lshr108.1 to i32
  %sub110.1 = add i32 %sub104.neg.1, %sub129
  call void @__sanitizer_cov_trace_cmp4(i32 %sub110.1, i32 %conv109.1)
  %cmp111.1 = icmp ult i32 %sub110.1, %conv109.1
  br i1 %cmp111.1, label %if.then113.1, label %for.body102.1.if.end123.1_crit_edge

for.body102.1.if.end123.1_crit_edge:              ; preds = %for.body102.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123.1

if.then113.1:                                     ; preds = %for.body102.1
  call void @__sanitizer_cov_trace_pc() #14
  %conv115.1 = trunc i32 %sub110.1 to i16
  %bf.shl120.1 = shl i16 %conv115.1, 11
  %bf.clear121.1 = and i16 %bf.load107.1, 2047
  %bf.set122.1 = or i16 %bf.clear121.1, %bf.shl120.1
  %59 = ptrtoint ptr %count106.1 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %bf.set122.1, ptr %count106.1, align 1
  br label %if.end123.1

if.end123.1:                                      ; preds = %if.then113.1, %for.body102.1.if.end123.1_crit_edge
  %60 = ptrtoint ptr %count106.1 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %bf.load126.1 = load i16, ptr %count106.1, align 1
  %bf.lshr127.1 = lshr i16 %bf.load126.1, 11
  %conv128.1 = zext i16 %bf.lshr127.1 to i32
  %sub129.1 = sub i32 %sub129, %conv128.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1.lcssa)
  %exitcond40.not.1 = icmp eq i32 %i.1.lcssa, 1
  br i1 %exitcond40.not.1, label %if.end123.1.if.end133_crit_edge, label %for.body102.2

if.end123.1.if.end133_crit_edge:                  ; preds = %if.end123.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

for.body102.2:                                    ; preds = %if.end123.1
  %sub104.neg.2 = sub i32 2, %i.1.lcssa
  %count106.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2, i32 1
  %61 = ptrtoint ptr %count106.2 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %bf.load107.2 = load i16, ptr %count106.2, align 1
  %bf.lshr108.2 = lshr i16 %bf.load107.2, 11
  %conv109.2 = zext i16 %bf.lshr108.2 to i32
  %sub110.2 = add i32 %sub104.neg.2, %sub129.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub110.2, i32 %conv109.2)
  %cmp111.2 = icmp ult i32 %sub110.2, %conv109.2
  br i1 %cmp111.2, label %if.then113.2, label %for.body102.2.if.end123.2_crit_edge

for.body102.2.if.end123.2_crit_edge:              ; preds = %for.body102.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123.2

if.then113.2:                                     ; preds = %for.body102.2
  call void @__sanitizer_cov_trace_pc() #14
  %conv115.2 = trunc i32 %sub110.2 to i16
  %bf.shl120.2 = shl i16 %conv115.2, 11
  %bf.clear121.2 = and i16 %bf.load107.2, 2047
  %bf.set122.2 = or i16 %bf.clear121.2, %bf.shl120.2
  %62 = ptrtoint ptr %count106.2 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %bf.set122.2, ptr %count106.2, align 1
  br label %if.end123.2

if.end123.2:                                      ; preds = %if.then113.2, %for.body102.2.if.end123.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1.lcssa)
  %exitcond40.not.2 = icmp eq i32 %i.1.lcssa, 2
  br i1 %exitcond40.not.2, label %if.end123.2.if.end133_crit_edge, label %for.body102.3

if.end123.2.if.end133_crit_edge:                  ; preds = %if.end123.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

for.body102.3:                                    ; preds = %if.end123.2
  %63 = ptrtoint ptr %count106.2 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %bf.load126.2 = load i16, ptr %count106.2, align 1
  %bf.lshr127.2 = lshr i16 %bf.load126.2, 11
  %conv128.2 = zext i16 %bf.lshr127.2 to i32
  %sub129.2 = sub i32 %sub129.1, %conv128.2
  %sub104.neg.3 = sub i32 3, %i.1.lcssa
  %count106.3 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3, i32 1
  %64 = ptrtoint ptr %count106.3 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %bf.load107.3 = load i16, ptr %count106.3, align 1
  %bf.lshr108.3 = lshr i16 %bf.load107.3, 11
  %conv109.3 = zext i16 %bf.lshr108.3 to i32
  %sub110.3 = add i32 %sub104.neg.3, %sub129.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub110.3, i32 %conv109.3)
  %cmp111.3 = icmp ult i32 %sub110.3, %conv109.3
  br i1 %cmp111.3, label %if.then113.3, label %for.body102.3.if.end133_crit_edge

for.body102.3.if.end133_crit_edge:                ; preds = %for.body102.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then113.3:                                     ; preds = %for.body102.3
  call void @__sanitizer_cov_trace_pc() #14
  %conv115.3 = trunc i32 %sub110.3 to i16
  %bf.shl120.3 = shl i16 %conv115.3, 11
  %bf.clear121.3 = and i16 %bf.load107.3, 2047
  %bf.set122.3 = or i16 %bf.clear121.3, %bf.shl120.3
  %65 = ptrtoint ptr %count106.3 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %bf.set122.3, ptr %count106.3, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then113.3, %for.body102.3.if.end133_crit_edge, %if.end123.2.if.end133_crit_edge, %if.end123.1.if.end133_crit_edge, %if.end123.if.end133_crit_edge, %for.end90.if.end133_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add91)
  %cmp134 = icmp eq i32 %add91, 2
  br i1 %cmp134, label %land.lhs.true, label %if.end133.if.end249thread-pre-split_crit_edge

if.end133.if.end249thread-pre-split_crit_edge:    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249thread-pre-split

land.lhs.true:                                    ; preds = %if.end133
  %66 = ptrtoint ptr %count3649 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %bf.load137 = load i16, ptr %count3649, align 1
  %67 = and i16 %bf.load137, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool140.not = icmp eq i16 %67, 0
  br i1 %tobool140.not, label %land.lhs.true141, label %land.lhs.true.if.end249thread-pre-split_crit_edge

land.lhs.true.if.end249thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249thread-pre-split

land.lhs.true141:                                 ; preds = %land.lhs.true
  %68 = ptrtoint ptr %rates to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rates, align 1
  %conv144 = sext i8 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %69)
  %cmp145 = icmp sgt i8 %69, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6143, i16 %bf.load137)
  %cmp153 = icmp ugt i16 %bf.load137, 6143
  %or.cond = select i1 %cmp145, i1 %cmp153, i1 false
  br i1 %or.cond, label %land.lhs.true155, label %land.lhs.true141.if.end249_crit_edge

land.lhs.true141.if.end249_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249

land.lhs.true155:                                 ; preds = %land.lhs.true141
  %70 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp159 = icmp slt i8 %71, 2
  br i1 %cmp159, label %if.then161, label %land.lhs.true155.if.end249thread-pre-split_crit_edge

land.lhs.true155.if.end249thread-pre-split_crit_edge: ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249thread-pre-split

if.then161:                                       ; preds = %land.lhs.true155
  %add165 = add nsw i32 %conv144, 4
  %shr = ashr i32 %add165, 1
  %72 = add i16 %bf.load137, -4096
  %73 = ptrtoint ptr %count3649 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %count3649, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp178.not = icmp eq i32 %shr, 4
  br i1 %cmp178.not, label %if.else237, label %if.then180

if.then180:                                       ; preds = %if.then161
  %arrayidx181 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3
  %74 = call ptr @memcpy(ptr %arrayidx181, ptr %arrayidx12, i32 3)
  %arrayidx183 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2
  %75 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %arrayidx183, align 1
  %count186 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2, i32 1
  %flags191 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %76 = ptrtoint ptr %flags191 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %bf.load192 = load i16, ptr %flags191, align 1
  %bf.clear193 = and i16 %bf.load192, 2047
  %bf.set199 = or i16 %bf.clear193, 2048
  %77 = ptrtoint ptr %count186 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %bf.set199, ptr %count186, align 1
  %conv200 = trunc i32 %shr to i8
  %78 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv200, ptr %arrayidx12, align 1
  store i16 %bf.set199, ptr %flags191, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6143, i16 %72)
  %cmp213 = icmp ugt i16 %72, 6143
  br i1 %cmp213, label %if.then215, label %if.then180.if.end249thread-pre-split_crit_edge

if.then180.if.end249thread-pre-split_crit_edge:   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249thread-pre-split

if.then215:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #14
  %79 = add i16 %bf.load137, -6144
  %80 = ptrtoint ptr %count3649 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %79, ptr %count3649, align 1
  br label %if.end249thread-pre-split.sink.split

if.else237:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx238 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2
  %81 = call ptr @memcpy(ptr %arrayidx238, ptr %arrayidx12, i32 3)
  %82 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 4, ptr %arrayidx12, align 1
  %count243 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %83 = ptrtoint ptr %count243 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %bf.load244 = load i16, ptr %count243, align 1
  %bf.clear245 = and i16 %bf.load244, 2047
  br label %if.end249thread-pre-split.sink.split

if.end249thread-pre-split.sink.split:             ; preds = %if.else237, %if.then215
  %bf.clear193.sink = phi i16 [ %bf.clear193, %if.then215 ], [ %bf.clear245, %if.else237 ]
  %count186.sink = phi ptr [ %count186, %if.then215 ], [ %count243, %if.else237 ]
  %count.addr.2.ph.ph = phi i32 [ 4, %if.then215 ], [ 3, %if.else237 ]
  %84 = or i16 %bf.clear193.sink, 4096
  %85 = ptrtoint ptr %count186.sink to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %84, ptr %count186.sink, align 1
  br label %if.end249thread-pre-split

if.end249thread-pre-split:                        ; preds = %if.end249thread-pre-split.sink.split, %if.then180.if.end249thread-pre-split_crit_edge, %land.lhs.true155.if.end249thread-pre-split_crit_edge, %land.lhs.true.if.end249thread-pre-split_crit_edge, %if.end133.if.end249thread-pre-split_crit_edge
  %count.addr.2.ph = phi i32 [ 4, %if.then180.if.end249thread-pre-split_crit_edge ], [ %add91, %if.end133.if.end249thread-pre-split_crit_edge ], [ 2, %land.lhs.true155.if.end249thread-pre-split_crit_edge ], [ 2, %land.lhs.true.if.end249thread-pre-split_crit_edge ], [ %count.addr.2.ph.ph, %if.end249thread-pre-split.sink.split ]
  %86 = ptrtoint ptr %rates to i32
  call void @__asan_load1_noabort(i32 %86)
  %.pr = load i8, ptr %rates, align 1
  %.pre = sext i8 %.pr to i32
  br label %if.end249

if.end249:                                        ; preds = %if.end249thread-pre-split, %land.lhs.true141.if.end249_crit_edge
  %conv.i.pre-phi = phi i32 [ %.pre, %if.end249thread-pre-split ], [ %conv144, %land.lhs.true141.if.end249_crit_edge ]
  %87 = phi i8 [ %.pr, %if.end249thread-pre-split ], [ %69, %land.lhs.true141.if.end249_crit_edge ]
  %count.addr.2 = phi i32 [ %count.addr.2.ph, %if.end249thread-pre-split ], [ 2, %land.lhs.true141.if.end249_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp.i = icmp slt i8 %87, 0
  br i1 %cmp.i, label %if.end249.cw1200_get_tx_rate.exit_crit_edge, label %if.end.i

if.end249.cw1200_get_tx_rate.exit_crit_edge:      ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_get_tx_rate.exit

if.end.i:                                         ; preds = %if.end249
  %88 = ptrtoint ptr %count3649 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %bf.load.i = load i16, ptr %count3649, align 1
  %89 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool.not.i = icmp eq i16 %89, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %mcs_rates.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 24
  br label %return.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wiphy.i, align 8
  %channel.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 25
  %94 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %channel.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %arrayidx6.i = getelementptr %struct.wiphy, ptr %93, i32 0, i32 53, i32 %97
  %98 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx6.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %99, i32 0, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end5.i, %if.then3.i
  %bitrates.sink.i = phi ptr [ %bitrates.i, %if.end5.i ], [ %mcs_rates.i, %if.then3.i ]
  %100 = ptrtoint ptr %bitrates.sink.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bitrates.sink.i, align 4
  %arrayidx9.i = getelementptr %struct.ieee80211_rate, ptr %101, i32 %conv.i.pre-phi
  br label %cw1200_get_tx_rate.exit

cw1200_get_tx_rate.exit:                          ; preds = %return.sink.split.i, %if.end249.cw1200_get_tx_rate.exit_crit_edge
  %retval.0.i3 = phi ptr [ null, %if.end249.cw1200_get_tx_rate.exit_crit_edge ], [ %arrayidx9.i, %return.sink.split.i ]
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i3, i32 0, i32 2
  %102 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %hw_value, align 2
  %conv251 = trunc i16 %103 to i8
  %add252 = add i8 %conv251, 1
  %defined = getelementptr inbounds %struct.tx_policy, ptr %policy, i32 0, i32 1
  %104 = ptrtoint ptr %defined to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %add252, ptr %defined, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.2)
  %cmp25536.not = icmp eq i32 %count.addr.2, 0
  br i1 %cmp25536.not, label %cw1200_get_tx_rate.exit.do.body286_crit_edge, label %for.body257.lr.ph

cw1200_get_tx_rate.exit.do.body286_crit_edge:     ; preds = %cw1200_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body286

for.body257.lr.ph:                                ; preds = %cw1200_get_tx_rate.exit
  %mcs_rates.i10 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 24
  %channel.i13 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 25
  %retry_count = getelementptr inbounds %struct.tx_policy, ptr %policy, i32 0, i32 3
  %105 = ptrtoint ptr %rates to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %rates, align 1
  %conv.i4 = sext i8 %106 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp.i5 = icmp slt i8 %106, 0
  br i1 %cmp.i5, label %for.body257.lr.ph.cw1200_get_tx_rate.exit21_crit_edge, label %if.end.i9

for.body257.lr.ph.cw1200_get_tx_rate.exit21_crit_edge: ; preds = %for.body257.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_get_tx_rate.exit21

if.end.i9:                                        ; preds = %for.body257.lr.ph
  %flags.i6 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 0, i32 1
  %107 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %bf.load.i7 = load i16, ptr %flags.i6, align 1
  %108 = and i16 %bf.load.i7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool.not.i8 = icmp eq i16 %108, 0
  br i1 %tobool.not.i8, label %if.end5.i16, label %if.end.i9.return.sink.split.i19_crit_edge

if.end.i9.return.sink.split.i19_crit_edge:        ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i19

if.end5.i16:                                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %priv, align 4
  %wiphy.i12 = getelementptr inbounds %struct.ieee80211_hw, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %wiphy.i12 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wiphy.i12, align 8
  %113 = ptrtoint ptr %channel.i13 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %channel.i13, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %arrayidx6.i14 = getelementptr %struct.wiphy, ptr %112, i32 0, i32 53, i32 %116
  %117 = ptrtoint ptr %arrayidx6.i14 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx6.i14, align 4
  %bitrates.i15 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %118, i32 0, i32 1
  br label %return.sink.split.i19

return.sink.split.i19:                            ; preds = %if.end5.i16, %if.end.i9.return.sink.split.i19_crit_edge
  %bitrates.sink.i17 = phi ptr [ %bitrates.i15, %if.end5.i16 ], [ %mcs_rates.i10, %if.end.i9.return.sink.split.i19_crit_edge ]
  %119 = ptrtoint ptr %bitrates.sink.i17 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bitrates.sink.i17, align 4
  %arrayidx9.i18 = getelementptr %struct.ieee80211_rate, ptr %120, i32 %conv.i4
  br label %cw1200_get_tx_rate.exit21

cw1200_get_tx_rate.exit21:                        ; preds = %return.sink.split.i19, %for.body257.lr.ph.cw1200_get_tx_rate.exit21_crit_edge
  %retval.0.i20 = phi ptr [ null, %for.body257.lr.ph.cw1200_get_tx_rate.exit21_crit_edge ], [ %arrayidx9.i18, %return.sink.split.i19 ]
  %hw_value260 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i20, i32 0, i32 2
  %121 = ptrtoint ptr %hw_value260 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %hw_value260, align 2
  %conv261 = zext i16 %122 to i32
  %shr262 = lshr i32 %conv261, 3
  %and263 = shl nuw nsw i32 %conv261, 2
  %shl = and i32 %and263, 28
  %count265 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 0, i32 1
  %123 = ptrtoint ptr %count265 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %bf.load266 = load i16, ptr %count265, align 1
  %bf.lshr267 = lshr i16 %bf.load266, 11
  %conv268 = zext i16 %bf.lshr267 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load266)
  %cmp269 = icmp slt i16 %bf.load266, 0
  br i1 %cmp269, label %if.then271, label %cw1200_get_tx_rate.exit21.if.end277_crit_edge

cw1200_get_tx_rate.exit21.if.end277_crit_edge:    ; preds = %cw1200_get_tx_rate.exit21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end277

if.then271:                                       ; preds = %cw1200_get_tx_rate.exit21
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear275 = and i16 %bf.load266, 2047
  %bf.set276 = or i16 %bf.clear275, 30720
  %124 = ptrtoint ptr %count265 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 2)
  store i16 %bf.set276, ptr %count265, align 1
  br label %if.end277

if.end277:                                        ; preds = %if.then271, %cw1200_get_tx_rate.exit21.if.end277_crit_edge
  %retries.0 = phi i32 [ 15, %if.then271 ], [ %conv268, %cw1200_get_tx_rate.exit21.if.end277_crit_edge ]
  %shl278 = shl i32 %retries.0, %shl
  %125 = tail call i32 @llvm.bswap.i32(i32 %shl278)
  %arrayidx279 = getelementptr [3 x i32], ptr %policy, i32 0, i32 %shr262
  %126 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx279, align 4
  %or = or i32 %125, %127
  store i32 %or, ptr %arrayidx279, align 4
  %128 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %retry_count, align 2
  %130 = trunc i32 %retries.0 to i8
  %conv282 = add i8 %129, %130
  store i8 %conv282, ptr %retry_count, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.2)
  %exitcond41.not = icmp eq i32 %count.addr.2, 1
  br i1 %exitcond41.not, label %if.end277.do.body286_crit_edge, label %for.body257.1

if.end277.do.body286_crit_edge:                   ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body286

for.body257.1:                                    ; preds = %if.end277
  %arrayidx258.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1
  %131 = ptrtoint ptr %arrayidx258.1 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx258.1, align 1
  %conv.i4.1 = sext i8 %132 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp.i5.1 = icmp slt i8 %132, 0
  br i1 %cmp.i5.1, label %for.body257.1.cw1200_get_tx_rate.exit21.1_crit_edge, label %if.end.i9.1

for.body257.1.cw1200_get_tx_rate.exit21.1_crit_edge: ; preds = %for.body257.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_get_tx_rate.exit21.1

if.end.i9.1:                                      ; preds = %for.body257.1
  %flags.i6.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %133 = ptrtoint ptr %flags.i6.1 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %bf.load.i7.1 = load i16, ptr %flags.i6.1, align 1
  %134 = and i16 %bf.load.i7.1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool.not.i8.1 = icmp eq i16 %134, 0
  br i1 %tobool.not.i8.1, label %if.end5.i16.1, label %if.end.i9.1.return.sink.split.i19.1_crit_edge

if.end.i9.1.return.sink.split.i19.1_crit_edge:    ; preds = %if.end.i9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i19.1

if.end5.i16.1:                                    ; preds = %if.end.i9.1
  call void @__sanitizer_cov_trace_pc() #14
  %135 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %priv, align 4
  %wiphy.i12.1 = getelementptr inbounds %struct.ieee80211_hw, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %wiphy.i12.1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wiphy.i12.1, align 8
  %139 = ptrtoint ptr %channel.i13 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %channel.i13, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %arrayidx6.i14.1 = getelementptr %struct.wiphy, ptr %138, i32 0, i32 53, i32 %142
  %143 = ptrtoint ptr %arrayidx6.i14.1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx6.i14.1, align 4
  %bitrates.i15.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %144, i32 0, i32 1
  br label %return.sink.split.i19.1

return.sink.split.i19.1:                          ; preds = %if.end5.i16.1, %if.end.i9.1.return.sink.split.i19.1_crit_edge
  %bitrates.sink.i17.1 = phi ptr [ %bitrates.i15.1, %if.end5.i16.1 ], [ %mcs_rates.i10, %if.end.i9.1.return.sink.split.i19.1_crit_edge ]
  %145 = ptrtoint ptr %bitrates.sink.i17.1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bitrates.sink.i17.1, align 4
  %arrayidx9.i18.1 = getelementptr %struct.ieee80211_rate, ptr %146, i32 %conv.i4.1
  br label %cw1200_get_tx_rate.exit21.1

cw1200_get_tx_rate.exit21.1:                      ; preds = %return.sink.split.i19.1, %for.body257.1.cw1200_get_tx_rate.exit21.1_crit_edge
  %retval.0.i20.1 = phi ptr [ null, %for.body257.1.cw1200_get_tx_rate.exit21.1_crit_edge ], [ %arrayidx9.i18.1, %return.sink.split.i19.1 ]
  %hw_value260.1 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i20.1, i32 0, i32 2
  %147 = ptrtoint ptr %hw_value260.1 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %hw_value260.1, align 2
  %conv261.1 = zext i16 %148 to i32
  %shr262.1 = lshr i32 %conv261.1, 3
  %and263.1 = shl nuw nsw i32 %conv261.1, 2
  %shl.1 = and i32 %and263.1, 28
  %count265.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %149 = ptrtoint ptr %count265.1 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %bf.load266.1 = load i16, ptr %count265.1, align 1
  %bf.lshr267.1 = lshr i16 %bf.load266.1, 11
  %conv268.1 = zext i16 %bf.lshr267.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load266.1)
  %cmp269.1 = icmp slt i16 %bf.load266.1, 0
  br i1 %cmp269.1, label %if.then271.1, label %cw1200_get_tx_rate.exit21.1.if.end277.1_crit_edge

cw1200_get_tx_rate.exit21.1.if.end277.1_crit_edge: ; preds = %cw1200_get_tx_rate.exit21.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end277.1

if.then271.1:                                     ; preds = %cw1200_get_tx_rate.exit21.1
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear275.1 = and i16 %bf.load266.1, 2047
  %bf.set276.1 = or i16 %bf.clear275.1, 30720
  %150 = ptrtoint ptr %count265.1 to i32
  call void @__asan_storeN_noabort(i32 %150, i32 2)
  store i16 %bf.set276.1, ptr %count265.1, align 1
  br label %if.end277.1

if.end277.1:                                      ; preds = %if.then271.1, %cw1200_get_tx_rate.exit21.1.if.end277.1_crit_edge
  %retries.0.1 = phi i32 [ 15, %if.then271.1 ], [ %conv268.1, %cw1200_get_tx_rate.exit21.1.if.end277.1_crit_edge ]
  %shl278.1 = shl i32 %retries.0.1, %shl.1
  %151 = tail call i32 @llvm.bswap.i32(i32 %shl278.1)
  %arrayidx279.1 = getelementptr [3 x i32], ptr %policy, i32 0, i32 %shr262.1
  %152 = ptrtoint ptr %arrayidx279.1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx279.1, align 4
  %or.1 = or i32 %151, %153
  store i32 %or.1, ptr %arrayidx279.1, align 4
  %154 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %retry_count, align 2
  %156 = trunc i32 %retries.0.1 to i8
  %conv282.1 = add i8 %155, %156
  store i8 %conv282.1, ptr %retry_count, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count.addr.2)
  %exitcond41.not.1 = icmp eq i32 %count.addr.2, 2
  br i1 %exitcond41.not.1, label %if.end277.1.do.body286_crit_edge, label %for.body257.2

if.end277.1.do.body286_crit_edge:                 ; preds = %if.end277.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body286

for.body257.2:                                    ; preds = %if.end277.1
  %arrayidx258.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2
  %157 = ptrtoint ptr %arrayidx258.2 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx258.2, align 1
  %conv.i4.2 = sext i8 %158 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %cmp.i5.2 = icmp slt i8 %158, 0
  br i1 %cmp.i5.2, label %for.body257.2.cw1200_get_tx_rate.exit21.2_crit_edge, label %if.end.i9.2

for.body257.2.cw1200_get_tx_rate.exit21.2_crit_edge: ; preds = %for.body257.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_get_tx_rate.exit21.2

if.end.i9.2:                                      ; preds = %for.body257.2
  %flags.i6.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2, i32 1
  %159 = ptrtoint ptr %flags.i6.2 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %bf.load.i7.2 = load i16, ptr %flags.i6.2, align 1
  %160 = and i16 %bf.load.i7.2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool.not.i8.2 = icmp eq i16 %160, 0
  br i1 %tobool.not.i8.2, label %if.end5.i16.2, label %if.end.i9.2.return.sink.split.i19.2_crit_edge

if.end.i9.2.return.sink.split.i19.2_crit_edge:    ; preds = %if.end.i9.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i19.2

if.end5.i16.2:                                    ; preds = %if.end.i9.2
  call void @__sanitizer_cov_trace_pc() #14
  %161 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %priv, align 4
  %wiphy.i12.2 = getelementptr inbounds %struct.ieee80211_hw, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %wiphy.i12.2 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %wiphy.i12.2, align 8
  %165 = ptrtoint ptr %channel.i13 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %channel.i13, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %166, align 4
  %arrayidx6.i14.2 = getelementptr %struct.wiphy, ptr %164, i32 0, i32 53, i32 %168
  %169 = ptrtoint ptr %arrayidx6.i14.2 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx6.i14.2, align 4
  %bitrates.i15.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %170, i32 0, i32 1
  br label %return.sink.split.i19.2

return.sink.split.i19.2:                          ; preds = %if.end5.i16.2, %if.end.i9.2.return.sink.split.i19.2_crit_edge
  %bitrates.sink.i17.2 = phi ptr [ %bitrates.i15.2, %if.end5.i16.2 ], [ %mcs_rates.i10, %if.end.i9.2.return.sink.split.i19.2_crit_edge ]
  %171 = ptrtoint ptr %bitrates.sink.i17.2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bitrates.sink.i17.2, align 4
  %arrayidx9.i18.2 = getelementptr %struct.ieee80211_rate, ptr %172, i32 %conv.i4.2
  br label %cw1200_get_tx_rate.exit21.2

cw1200_get_tx_rate.exit21.2:                      ; preds = %return.sink.split.i19.2, %for.body257.2.cw1200_get_tx_rate.exit21.2_crit_edge
  %retval.0.i20.2 = phi ptr [ null, %for.body257.2.cw1200_get_tx_rate.exit21.2_crit_edge ], [ %arrayidx9.i18.2, %return.sink.split.i19.2 ]
  %hw_value260.2 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i20.2, i32 0, i32 2
  %173 = ptrtoint ptr %hw_value260.2 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %hw_value260.2, align 2
  %conv261.2 = zext i16 %174 to i32
  %shr262.2 = lshr i32 %conv261.2, 3
  %and263.2 = shl nuw nsw i32 %conv261.2, 2
  %shl.2 = and i32 %and263.2, 28
  %count265.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2, i32 1
  %175 = ptrtoint ptr %count265.2 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 2)
  %bf.load266.2 = load i16, ptr %count265.2, align 1
  %bf.lshr267.2 = lshr i16 %bf.load266.2, 11
  %conv268.2 = zext i16 %bf.lshr267.2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load266.2)
  %cmp269.2 = icmp slt i16 %bf.load266.2, 0
  br i1 %cmp269.2, label %if.then271.2, label %cw1200_get_tx_rate.exit21.2.if.end277.2_crit_edge

cw1200_get_tx_rate.exit21.2.if.end277.2_crit_edge: ; preds = %cw1200_get_tx_rate.exit21.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end277.2

if.then271.2:                                     ; preds = %cw1200_get_tx_rate.exit21.2
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear275.2 = and i16 %bf.load266.2, 2047
  %bf.set276.2 = or i16 %bf.clear275.2, 30720
  %176 = ptrtoint ptr %count265.2 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 %bf.set276.2, ptr %count265.2, align 1
  br label %if.end277.2

if.end277.2:                                      ; preds = %if.then271.2, %cw1200_get_tx_rate.exit21.2.if.end277.2_crit_edge
  %retries.0.2 = phi i32 [ 15, %if.then271.2 ], [ %conv268.2, %cw1200_get_tx_rate.exit21.2.if.end277.2_crit_edge ]
  %shl278.2 = shl i32 %retries.0.2, %shl.2
  %177 = tail call i32 @llvm.bswap.i32(i32 %shl278.2)
  %arrayidx279.2 = getelementptr [3 x i32], ptr %policy, i32 0, i32 %shr262.2
  %178 = ptrtoint ptr %arrayidx279.2 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx279.2, align 4
  %or.2 = or i32 %177, %179
  store i32 %or.2, ptr %arrayidx279.2, align 4
  %180 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %retry_count, align 2
  %182 = trunc i32 %retries.0.2 to i8
  %conv282.2 = add i8 %181, %182
  store i8 %conv282.2, ptr %retry_count, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.2)
  %exitcond41.not.2 = icmp eq i32 %count.addr.2, 3
  br i1 %exitcond41.not.2, label %if.end277.2.do.body286_crit_edge, label %for.body257.3

if.end277.2.do.body286_crit_edge:                 ; preds = %if.end277.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body286

for.body257.3:                                    ; preds = %if.end277.2
  %arrayidx258.3 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3
  %183 = ptrtoint ptr %arrayidx258.3 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx258.3, align 1
  %conv.i4.3 = sext i8 %184 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp.i5.3 = icmp slt i8 %184, 0
  br i1 %cmp.i5.3, label %for.body257.3.cw1200_get_tx_rate.exit21.3_crit_edge, label %if.end.i9.3

for.body257.3.cw1200_get_tx_rate.exit21.3_crit_edge: ; preds = %for.body257.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cw1200_get_tx_rate.exit21.3

if.end.i9.3:                                      ; preds = %for.body257.3
  %flags.i6.3 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3, i32 1
  %185 = ptrtoint ptr %flags.i6.3 to i32
  call void @__asan_loadN_noabort(i32 %185, i32 2)
  %bf.load.i7.3 = load i16, ptr %flags.i6.3, align 1
  %186 = and i16 %bf.load.i7.3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool.not.i8.3 = icmp eq i16 %186, 0
  br i1 %tobool.not.i8.3, label %if.end5.i16.3, label %if.end.i9.3.return.sink.split.i19.3_crit_edge

if.end.i9.3.return.sink.split.i19.3_crit_edge:    ; preds = %if.end.i9.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i19.3

if.end5.i16.3:                                    ; preds = %if.end.i9.3
  call void @__sanitizer_cov_trace_pc() #14
  %187 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %priv, align 4
  %wiphy.i12.3 = getelementptr inbounds %struct.ieee80211_hw, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %wiphy.i12.3 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %wiphy.i12.3, align 8
  %191 = ptrtoint ptr %channel.i13 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %channel.i13, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %192, align 4
  %arrayidx6.i14.3 = getelementptr %struct.wiphy, ptr %190, i32 0, i32 53, i32 %194
  %195 = ptrtoint ptr %arrayidx6.i14.3 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx6.i14.3, align 4
  %bitrates.i15.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %196, i32 0, i32 1
  br label %return.sink.split.i19.3

return.sink.split.i19.3:                          ; preds = %if.end5.i16.3, %if.end.i9.3.return.sink.split.i19.3_crit_edge
  %bitrates.sink.i17.3 = phi ptr [ %bitrates.i15.3, %if.end5.i16.3 ], [ %mcs_rates.i10, %if.end.i9.3.return.sink.split.i19.3_crit_edge ]
  %197 = ptrtoint ptr %bitrates.sink.i17.3 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %bitrates.sink.i17.3, align 4
  %arrayidx9.i18.3 = getelementptr %struct.ieee80211_rate, ptr %198, i32 %conv.i4.3
  br label %cw1200_get_tx_rate.exit21.3

cw1200_get_tx_rate.exit21.3:                      ; preds = %return.sink.split.i19.3, %for.body257.3.cw1200_get_tx_rate.exit21.3_crit_edge
  %retval.0.i20.3 = phi ptr [ null, %for.body257.3.cw1200_get_tx_rate.exit21.3_crit_edge ], [ %arrayidx9.i18.3, %return.sink.split.i19.3 ]
  %hw_value260.3 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i20.3, i32 0, i32 2
  %199 = ptrtoint ptr %hw_value260.3 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %hw_value260.3, align 2
  %conv261.3 = zext i16 %200 to i32
  %shr262.3 = lshr i32 %conv261.3, 3
  %and263.3 = shl nuw nsw i32 %conv261.3, 2
  %shl.3 = and i32 %and263.3, 28
  %count265.3 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3, i32 1
  %201 = ptrtoint ptr %count265.3 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 2)
  %bf.load266.3 = load i16, ptr %count265.3, align 1
  %bf.lshr267.3 = lshr i16 %bf.load266.3, 11
  %conv268.3 = zext i16 %bf.lshr267.3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load266.3)
  %cmp269.3 = icmp slt i16 %bf.load266.3, 0
  br i1 %cmp269.3, label %if.then271.3, label %cw1200_get_tx_rate.exit21.3.if.end277.3_crit_edge

cw1200_get_tx_rate.exit21.3.if.end277.3_crit_edge: ; preds = %cw1200_get_tx_rate.exit21.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end277.3

if.then271.3:                                     ; preds = %cw1200_get_tx_rate.exit21.3
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear275.3 = and i16 %bf.load266.3, 2047
  %bf.set276.3 = or i16 %bf.clear275.3, 30720
  %202 = ptrtoint ptr %count265.3 to i32
  call void @__asan_storeN_noabort(i32 %202, i32 2)
  store i16 %bf.set276.3, ptr %count265.3, align 1
  br label %if.end277.3

if.end277.3:                                      ; preds = %if.then271.3, %cw1200_get_tx_rate.exit21.3.if.end277.3_crit_edge
  %retries.0.3 = phi i32 [ 15, %if.then271.3 ], [ %conv268.3, %cw1200_get_tx_rate.exit21.3.if.end277.3_crit_edge ]
  %shl278.3 = shl i32 %retries.0.3, %shl.3
  %203 = tail call i32 @llvm.bswap.i32(i32 %shl278.3)
  %arrayidx279.3 = getelementptr [3 x i32], ptr %policy, i32 0, i32 %shr262.3
  %204 = ptrtoint ptr %arrayidx279.3 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx279.3, align 4
  %or.3 = or i32 %203, %205
  store i32 %or.3, ptr %arrayidx279.3, align 4
  %206 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %retry_count, align 2
  %208 = trunc i32 %retries.0.3 to i8
  %conv282.3 = add i8 %207, %208
  store i8 %conv282.3, ptr %retry_count, align 2
  br label %do.body286

do.body286:                                       ; preds = %if.end277.3, %if.end277.2.do.body286_crit_edge, %if.end277.1.do.body286_crit_edge, %if.end277.do.body286_crit_edge, %cw1200_get_tx_rate.exit.do.body286_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_policy_build.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_policy_build, %if.then296)) #12
          to label %do.end331 [label %if.then296], !srcloc !151

if.then296:                                       ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #14
  %209 = ptrtoint ptr %rates to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %rates, align 1
  %conv299 = sext i8 %210 to i32
  %211 = ptrtoint ptr %count3649 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 2)
  %bf.load302 = load i16, ptr %count3649, align 1
  %bf.lshr303 = lshr i16 %bf.load302, 11
  %conv304 = zext i16 %bf.lshr303 to i32
  %212 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx12, align 1
  %conv307 = sext i8 %213 to i32
  %count309 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 1, i32 1
  %214 = ptrtoint ptr %count309 to i32
  call void @__asan_loadN_noabort(i32 %214, i32 2)
  %bf.load310 = load i16, ptr %count309, align 1
  %bf.lshr311 = lshr i16 %bf.load310, 11
  %conv312 = zext i16 %bf.lshr311 to i32
  %arrayidx313 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2
  %215 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx313, align 1
  %conv315 = sext i8 %216 to i32
  %count317 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 2, i32 1
  %217 = ptrtoint ptr %count317 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 2)
  %bf.load318 = load i16, ptr %count317, align 1
  %bf.lshr319 = lshr i16 %bf.load318, 11
  %conv320 = zext i16 %bf.lshr319 to i32
  %arrayidx321 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3
  %218 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx321, align 1
  %conv323 = sext i8 %219 to i32
  %count325 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 3, i32 1
  %220 = ptrtoint ptr %count325 to i32
  call void @__asan_loadN_noabort(i32 %220, i32 2)
  %bf.load326 = load i16, ptr %count325, align 1
  %bf.lshr327 = lshr i16 %bf.load326, 11
  %conv328 = zext i16 %bf.lshr327 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tx_policy_build.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.53, i32 noundef %count.addr.2, i32 noundef %conv299, i32 noundef %conv304, i32 noundef %conv307, i32 noundef %conv312, i32 noundef %conv315, i32 noundef %conv320, i32 noundef %conv323, i32 noundef %conv328) #12
  br label %do.end331

do.end331:                                        ; preds = %if.then296, %do.body286
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_policy_dump(ptr nocapture noundef readonly %policy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_policy_dump.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_policy_dump, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %policy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %policy, align 4
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 15
  %2 = lshr i32 %conv, 4
  %arrayidx5 = getelementptr [12 x i8], ptr %policy, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %4 to i32
  %and7 = and i32 %conv6, 15
  %5 = lshr i32 %conv6, 4
  %arrayidx11 = getelementptr [12 x i8], ptr %policy, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 2
  %conv12 = zext i8 %7 to i32
  %and13 = and i32 %conv12, 15
  %8 = lshr i32 %conv12, 4
  %arrayidx17 = getelementptr [12 x i8], ptr %policy, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %10 to i32
  %and19 = and i32 %conv18, 15
  %11 = lshr i32 %conv18, 4
  %arrayidx23 = getelementptr [12 x i8], ptr %policy, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23, align 4
  %conv24 = zext i8 %13 to i32
  %and25 = and i32 %conv24, 15
  %14 = lshr i32 %conv24, 4
  %arrayidx29 = getelementptr [12 x i8], ptr %policy, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %16 to i32
  %and31 = and i32 %conv30, 15
  %17 = lshr i32 %conv30, 4
  %arrayidx35 = getelementptr [12 x i8], ptr %policy, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx35, align 2
  %conv36 = zext i8 %19 to i32
  %and37 = and i32 %conv36, 15
  %20 = lshr i32 %conv36, 4
  %arrayidx41 = getelementptr [12 x i8], ptr %policy, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %22 to i32
  %and43 = and i32 %conv42, 15
  %23 = lshr i32 %conv42, 4
  %arrayidx47 = getelementptr [12 x i8], ptr %policy, i32 0, i32 8
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx47, align 4
  %conv48 = zext i8 %25 to i32
  %and49 = and i32 %conv48, 15
  %26 = lshr i32 %conv48, 4
  %arrayidx53 = getelementptr [12 x i8], ptr %policy, i32 0, i32 9
  %27 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %28 to i32
  %and55 = and i32 %conv54, 15
  %29 = lshr i32 %conv54, 4
  %arrayidx59 = getelementptr [12 x i8], ptr %policy, i32 0, i32 10
  %30 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx59, align 2
  %conv60 = zext i8 %31 to i32
  %and61 = and i32 %conv60, 15
  %32 = lshr i32 %conv60, 4
  %arrayidx65 = getelementptr [12 x i8], ptr %policy, i32 0, i32 11
  %33 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %34 to i32
  %and67 = and i32 %conv66, 15
  %35 = lshr i32 %conv66, 4
  %defined = getelementptr inbounds %struct.tx_policy, ptr %policy, i32 0, i32 1
  %36 = ptrtoint ptr %defined to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %defined, align 4
  %conv71 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tx_policy_dump.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.55, i32 noundef %and, i32 noundef %2, i32 noundef %and7, i32 noundef %5, i32 noundef %and13, i32 noundef %8, i32 noundef %and19, i32 noundef %11, i32 noundef %and25, i32 noundef %14, i32 noundef %and31, i32 noundef %17, i32 noundef %and37, i32 noundef %20, i32 noundef %and43, i32 noundef %23, i32 noundef %and49, i32 noundef %26, i32 noundef %and55, i32 noundef %29, i32 noundef %and61, i32 noundef %32, i32 noundef %and67, i32 noundef %35, i32 noundef %conv71) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_get_num_queued(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !134, !135, !137, !139}
!llvm.named.register.sp = !{!140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 265, i32 7}
!2 = !{ptr @tx_policy_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 288, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 390, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tx_policy_upload_work.__UNIQUE_ID_ddebug353, !6, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 739, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cw1200_tx.__UNIQUE_ID_ddebug357, !11, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 766, i32 8}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 859, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cw1200_tx_confirm_cb.__UNIQUE_ID_ddebug361, !18, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 871, i32 3}
!23 = !{ptr @cw1200_tx_confirm_cb.__UNIQUE_ID_ddebug362, !22, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 882, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cw1200_tx_confirm_cb._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @cw1200_tx_confirm_cb._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1034, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cw1200_rx_cb.__UNIQUE_ID_ddebug363, !31, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1056, i32 4}
!36 = !{ptr @cw1200_rx_cb.__UNIQUE_ID_ddebug364, !35, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1059, i32 4}
!39 = !{ptr @cw1200_rx_cb.__UNIQUE_ID_ddebug365, !38, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1062, i32 4}
!42 = !{ptr @cw1200_rx_cb.__UNIQUE_ID_ddebug366, !41, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1069, i32 3}
!45 = !{ptr @cw1200_rx_cb._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cw1200_rx_cb._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1126, i32 4}
!49 = !{ptr @cw1200_rx_cb._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cw1200_rx_cb._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1136, i32 4}
!53 = !{ptr @cw1200_rx_cb._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cw1200_rx_cb._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1347, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cw1200_alloc_link_id.__UNIQUE_ID_ddebug367, !56, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1356, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cw1200_alloc_link_id._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cw1200_alloc_link_id._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 1460, i32 4}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cw1200_link_id_gc_work.__UNIQUE_ID_ddebug374, !65, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 381, i32 2}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tx_policy_upload.__UNIQUE_ID_ddebug352, !69, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 460, i32 4}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cw1200_tx_h_calc_link_ids._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @cw1200_tx_h_calc_link_ids._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 527, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @cw1200_tx_h_align._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @cw1200_tx_h_align._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 534, i32 3}
!85 = !{ptr @cw1200_tx_h_align._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @cw1200_tx_h_align._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 568, i32 3}
!89 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cw1200_tx_h_wsm._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @cw1200_tx_h_wsm._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @wsm_queue_id_to_wsm.queue_mapping, !93, !"queue_mapping", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/st/cw1200/wsm.h", i32 1849, i32 18}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 609, i32 4}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cw1200_tx_h_bt.__UNIQUE_ID_ddebug354, !95, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 632, i32 2}
!100 = !{ptr @cw1200_tx_h_bt.__UNIQUE_ID_ddebug355, !99, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 665, i32 3}
!103 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @cw1200_tx_h_rate_policy.__UNIQUE_ID_ddebug356, !102, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 307, i32 6}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 313, i32 3}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @tx_policy_get.__UNIQUE_ID_ddebug350, !108, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 325, i32 3}
!113 = !{ptr @tx_policy_get.__UNIQUE_ID_ddebug351, !112, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 188, i32 2}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @tx_policy_build.__UNIQUE_ID_ddebug349, !115, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 49, i32 2}
!120 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @tx_policy_dump.__UNIQUE_ID_ddebug348, !119, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!124 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/st/cw1200/txrx.c", i32 843, i32 2}
!131 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cw1200_handle_pspoll.__UNIQUE_ID_ddebug360, !130, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!133 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!137 = !{ptr @skb_queue_head_init.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!139 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!140 = !{!"sp"}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = !{i64 2148460267, i64 2148460272, i64 2148460285, i64 2148460329, i64 2148460363, i64 2148460384}
!152 = !{!"auto-init"}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i8 0, i8 2}
!155 = !{i64 2149959981}
!156 = !{i64 2157502943, i64 2157503445, i64 2157502980, i64 2157503036, i64 2157503070, i64 2157503094, i64 2157503135, i64 2157503156, i64 2157503184, i64 2157503218}
!157 = !{i64 2149960247}
!158 = !{i32 0, i32 33}
!159 = !{i64 2157532255, i64 2157532758, i64 2157532292, i64 2157532348, i64 2157532382, i64 2157532406, i64 2157532447, i64 2157532468, i64 2157532496, i64 2157532530}
!160 = !{i64 2157449543, i64 2157450044, i64 2157449580, i64 2157449636, i64 2157449670, i64 2157449694, i64 2157449735, i64 2157449756, i64 2157449784, i64 2157449818}
