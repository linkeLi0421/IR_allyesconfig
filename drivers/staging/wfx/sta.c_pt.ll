; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/sta.c_pt.bc'
source_filename = "../drivers/staging/wfx/sta.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hif_ie_table_entry = type { i8, i8, [3 x i8], [3 x i8] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.124 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.123, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.123 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.125, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.125 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.126] }
%struct.anon.126 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@wfx_rate_mask_to_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported basic rate\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wfx_rate_mask_to_hw\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/staging/wfx/sta.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_rate_mask_to_hw._entry_ptr = internal global ptr @wfx_rate_mask_to_hw._entry, section ".printk_index", align 4
@wfx_configure_filter.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wfx_configure_filter\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"do not forward probe request in AP mode\0A\00", [55 x i8] zeroinitializer }, align 32
@wfx_update_pm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"timeout while waiting of set_pm_mode_complete\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wfx_update_pm\00", [18 x i8] zeroinitializer }, align 32
@wfx_update_pm._entry_ptr = internal global ptr @wfx_update_pm._entry, section ".printk_index", align 4
@wfx_bss_info_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 537, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: misunderstood change: ASSOC\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wfx_bss_info_changed\00", [43 x i8] zeroinitializer }, align 32
@wfx_bss_info_changed._entry_ptr = internal global ptr @wfx_bss_info_changed._entry, section ".printk_index", align 4
@wfx_bss_info_changed._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 543, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: misunderstood change: BEACON_INFO\0A\00", [57 x i8] zeroinitializer }, align 32
@wfx_bss_info_changed._entry_ptr.14 = internal global ptr @wfx_bss_info_changed._entry.12, section ".printk_index", align 4
@wfx_set_tim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 637, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: received event for non-existent vif\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wfx_set_tim\00", [20 x i8] zeroinitializer }, align 32
@wfx_set_tim._entry_ptr = internal global ptr @wfx_set_tim._entry, section ".printk_index", align 4
@wfx_suspend_resume_mc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 661, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"incorrect sequence (%d CAB in queue)\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wfx_suspend_resume_mc\00", [42 x i8] zeroinitializer }, align 32
@wfx_suspend_resume_mc._entry_ptr = internal global ptr @wfx_suspend_resume_mc._entry, section ".printk_index", align 4
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"channel overwrite\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"channel mismatch\00", [47 x i8] zeroinitializer }, align 32
@wfx_add_interface.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&wvif->update_tim_work)\00", [54 x i8] zeroinitializer }, align 32
@wfx_add_interface.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&wvif->beacon_loss_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@wfx_add_interface.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&wvif->beacon_loss_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@wfx_add_interface.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&wvif->tx_policy_upload_work)\00", [48 x i8] zeroinitializer }, align 32
@wfx_add_interface.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&wvif->scan_lock\00", [47 x i8] zeroinitializer }, align 32
@wfx_add_interface.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&wvif->scan_work)\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"try to instantiate more vif than supported\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"corrupted state\00", [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wfx_filter_beacon.filter_ies = internal constant { [4 x %struct.hif_ie_table_entry], [32 x i8] } { [4 x %struct.hif_ie_table_entry] [%struct.hif_ie_table_entry { i8 -35, i8 -32, [3 x i8] c"Po\9A", [3 x i8] zeroinitializer }, %struct.hif_ie_table_entry { i8 61, i8 -32, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.hif_ie_table_entry { i8 42, i8 -32, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.hif_ie_table_entry { i8 37, i8 -32, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@wfx_get_ps_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 170, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ignoring requested PS mode\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wfx_get_ps_timeout\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wfx_get_ps_timeout._entry_ptr = internal global ptr @wfx_get_ps_timeout._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@wdev_to_wvif.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.42, ptr @.str.43, ptr @.str.44, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wdev_to_wvif\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/staging/wfx/wfx.h\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"requesting non-existent vif: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 33, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 138, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 211, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 536, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 542, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 637, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 660, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 705, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 718, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 754, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 755, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 759, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 761, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 763, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 775, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 801, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"filter_ies\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 66, i32 41 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private constant [29 x i8] c"../drivers/staging/wfx/sta.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 170, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 695, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 723, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [29 x i8] c"../drivers/staging/wfx/wfx.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 98, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 87, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @wfx_bss_info_changed._entry, ptr @wfx_bss_info_changed._entry.12, ptr @wfx_bss_info_changed._entry_ptr, ptr @wfx_bss_info_changed._entry_ptr.14, ptr @wfx_get_ps_timeout._entry, ptr @wfx_get_ps_timeout._entry_ptr, ptr @wfx_rate_mask_to_hw._entry, ptr @wfx_rate_mask_to_hw._entry_ptr, ptr @wfx_set_tim._entry, ptr @wfx_set_tim._entry_ptr, ptr @wfx_suspend_resume_mc._entry, ptr @wfx_suspend_resume_mc._entry_ptr, ptr @wfx_update_pm._entry, ptr @wfx_update_pm._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @wfx_add_interface.__key, ptr @.str.21, ptr @wfx_add_interface.__key.22, ptr @.str.23, ptr @wfx_add_interface.__key.24, ptr @.str.25, ptr @wfx_add_interface.__key.26, ptr @.str.27, ptr @wfx_add_interface.__key.28, ptr @.str.29, ptr @wfx_add_interface.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @wfx_filter_beacon.filter_ies, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @init_completion.__key, ptr @.str.45], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_rate_mask_to_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_update_pm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_bss_info_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_bss_info_changed._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_set_tim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_suspend_resume_mc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_add_interface.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_add_interface.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_add_interface.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_add_interface.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_add_interface.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_add_interface.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_filter_beacon.filter_ies to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_get_ps_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_rate_mask_to_hw(ptr nocapture noundef readonly %wdev, i32 noundef %rates) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %bands to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bands, align 16
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15 = icmp sgt i32 %7, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.018 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.016
  %and = and i32 %shl, %rates
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitrates, align 4
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %9, i32 %i.016, i32 2
  %10 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %11 to i32
  %shl5 = shl nuw i32 1, %conv
  %or = or i32 %shl5, %ret.018
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %or, %if.else ], [ %ret.018, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_cooling_timeout_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -472
  %chip_frozen = getelementptr i8, ptr %work, i32 101
  %0 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %chip_frozen, align 1
  tail call void @wfx_tx_unlock(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_suspend_hot_dev(ptr noundef %wdev, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1
  %cooling_timeout_work = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %cooling_timeout_work) #9
  br i1 %call, label %if.then1, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wfx_tx_unlock(ptr noundef %wdev) #9
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %cooling_timeout_work, i32 noundef 1000) #9
  tail call void @wfx_tx_lock(ptr noundef %wdev) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %unused) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_flags, align 4
  %and = and i32 %3, 466
  store i32 %and, ptr %total_flags, align 4
  %conf_mutex = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #9
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 0
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %entry
  %wvif.0 = phi ptr [ null, %entry ], [ %retval.0.i43, %if.end19 ]
  %tobool.not.i = icmp eq ptr %wvif.0, null
  %4 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %6, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %6, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %spec.select.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %spec.select.i.i, %wvif.0
  %narrow.i = or i1 %tobool.not.i, %cmp5.i
  %7 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i = and i32 %7, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i
  %8 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %9, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %9, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %10 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %10, label %if.end4.i.while.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i43 = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i43, null
  br i1 %cmp.not, label %wvif_iterate.exit.while.end_crit_edge, label %while.body

wvif_iterate.exit.while.end_crit_edge:            ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %wvif_iterate.exit
  %scan_lock = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i43, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %scan_lock, i32 noundef 0) #9
  %11 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_flags, align 4
  %and1 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @hif_beacon_filter_control(ptr noundef nonnull %retval.0.i43, i32 noundef 0, i32 noundef 1) #9
  br label %wfx_filter_beacon.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @hif_set_beacon_filter_table(ptr noundef nonnull %retval.0.i43, i32 noundef 4, ptr noundef nonnull @wfx_filter_beacon.filter_ies) #9
  %call2.i = tail call i32 @hif_beacon_filter_control(ptr noundef nonnull %retval.0.i43, i32 noundef 1, i32 noundef 0) #9
  br label %wfx_filter_beacon.exit

wfx_filter_beacon.exit:                           ; preds = %if.else.i, %if.then.i
  %13 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_flags, align 4
  %and3 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and8 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %wfx_filter_beacon.exit.if.end19_crit_edge, label %land.lhs.true

wfx_filter_beacon.exit.if.end19_crit_edge:        ; preds = %wfx_filter_beacon.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %wfx_filter_beacon.exit
  %vif = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i43, i32 0, i32 1
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vif, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp10 = icmp eq i32 %18, 3
  br i1 %cmp10, label %do.body, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_configure_filter.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_configure_filter, %if.then16)) #9
          to label %do.end [label %if.then16], !srcloc !100

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_configure_filter.__UNIQUE_ID_ddebug351, ptr noundef %20, ptr noundef nonnull @.str.7) #9
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %21 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_flags, align 4
  %and18 = and i32 %22, -257
  store i32 %and18, ptr %total_flags, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.end, %land.lhs.true.if.end19_crit_edge, %wfx_filter_beacon.exit.if.end19_crit_edge
  %23 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_flags, align 4
  %and20 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %call27 = tail call i32 @hif_set_rx_filter(ptr noundef nonnull %retval.0.i43, i1 noundef zeroext %tobool4.not, i1 noundef zeroext %tobool21.not) #9
  tail call void @mutex_unlock(ptr noundef %scan_lock) #9
  br label %while.cond

while.end:                                        ; preds = %wvif_iterate.exit.while.end_crit_edge, %if.end4.i.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_rx_filter(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_update_pm(ptr noundef %wvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 1
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wvif, align 4
  %hw.i = getelementptr inbounds %struct.wfx_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %5, i32 0, i32 3, i32 0
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %10, null
  br i1 %tobool12.not.i.i, label %if.end.i.if.end29.i_crit_edge, label %if.then24.i

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wvif, align 4
  %13 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %arrayidx.i142.i = getelementptr %struct.wfx_dev, ptr %12, i32 0, i32 3, i32 0
  %14 = ptrtoint ptr %arrayidx.i142.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i142.i, align 4
  %tobool12.not.i143.i = icmp eq ptr %15, null
  %drv_priv.i144.i = getelementptr inbounds %struct.ieee80211_vif, ptr %15, i32 0, i32 19
  %spec.select.i145.i = select i1 %tobool12.not.i143.i, ptr null, ptr %drv_priv.i144.i
  %vif27.i = getelementptr inbounds %struct.wfx_vif, ptr %spec.select.i145.i, i32 0, i32 1
  %16 = ptrtoint ptr %vif27.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vif27.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_vif, ptr %17, i32 0, i32 1, i32 32
  %18 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chandef.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %if.end.i.if.end29.i_crit_edge
  %chan0.0.i = phi ptr [ %19, %if.then24.i ], [ null, %if.end.i.if.end29.i_crit_edge ]
  %20 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wvif, align 4
  %22 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.i = and i32 %22, 1
  %arrayidx.i146.i = getelementptr %struct.wfx_dev, ptr %21, i32 0, i32 3, i32 %and.i.i
  %23 = ptrtoint ptr %arrayidx.i146.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i146.i, align 4
  %tobool12.not.i147.i = icmp eq ptr %24, null
  br i1 %tobool12.not.i147.i, label %if.end29.i.if.end84.i_crit_edge, label %if.end40.i

if.end29.i.if.end84.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.end40.i:                                       ; preds = %if.end29.i
  %25 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wvif, align 4
  %27 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i150.i = and i32 %27, 1
  %arrayidx.i151.i = getelementptr %struct.wfx_dev, ptr %26, i32 0, i32 3, i32 %and.i150.i
  %28 = ptrtoint ptr %arrayidx.i151.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i151.i, align 4
  %tobool12.not.i152.i = icmp eq ptr %29, null
  %drv_priv.i153.i = getelementptr inbounds %struct.ieee80211_vif, ptr %29, i32 0, i32 19
  %spec.select.i154.i = select i1 %tobool12.not.i152.i, ptr null, ptr %drv_priv.i153.i
  %vif36.i = getelementptr inbounds %struct.wfx_vif, ptr %spec.select.i154.i, i32 0, i32 1
  %30 = ptrtoint ptr %vif36.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vif36.i, align 4
  %chandef38.i = getelementptr inbounds %struct.ieee80211_vif, ptr %31, i32 0, i32 1, i32 32
  %32 = ptrtoint ptr %chandef38.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chandef38.i, align 4
  %tobool41.not.i = icmp eq ptr %chan0.0.i, null
  %tobool42.not.i = icmp eq ptr %33, null
  %or.cond.i = select i1 %tobool41.not.i, i1 true, i1 %tobool42.not.i
  br i1 %or.cond.i, label %if.end40.i.if.end84.i_crit_edge, label %land.lhs.true43.i

if.end40.i.if.end84.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

land.lhs.true43.i:                                ; preds = %if.end40.i
  %34 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vif, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 3
  br i1 %cmp.not.i, label %land.lhs.true43.i.if.end84.i_crit_edge, label %if.then45.i

land.lhs.true43.i.if.end84.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.then45.i:                                      ; preds = %land.lhs.true43.i
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %chan0.0.i, i32 0, i32 3
  %38 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_value.i, align 2
  %hw_value46.i = getelementptr inbounds %struct.ieee80211_channel, ptr %33, i32 0, i32 3
  %40 = ptrtoint ptr %hw_value46.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hw_value46.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp48.i = icmp eq i16 %39, %41
  br i1 %cmp48.i, label %if.then50.i, label %if.end70.i

if.then50.i:                                      ; preds = %if.then45.i
  %assoc56.i = getelementptr inbounds %struct.ieee80211_vif, ptr %35, i32 0, i32 1, i32 10
  %42 = ptrtoint ptr %assoc56.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %assoc56.i, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool57.not.i = icmp eq i8 %43, 0
  br i1 %tobool57.not.i, label %if.then50.i.if.end18_crit_edge, label %land.lhs.true59.i

if.then50.i.if.end18_crit_edge:                   ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true59.i:                                ; preds = %if.then50.i
  %ps.i = getelementptr inbounds %struct.ieee80211_vif, ptr %35, i32 0, i32 1, i32 38
  %44 = ptrtoint ptr %ps.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ps.i, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool62.not.i = icmp eq i8 %45, 0
  br i1 %tobool62.not.i, label %land.lhs.true59.i.if.end18_crit_edge, label %do.end67.i

land.lhs.true59.i.if.end18_crit_edge:             ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end67.i:                                       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wvif, align 4
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.35) #12
  br label %if.end18

if.end70.i:                                       ; preds = %if.then45.i
  %50 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wvif, align 4
  %force_ps_timeout.i = getelementptr inbounds %struct.wfx_dev, ptr %51, i32 0, i32 25
  %52 = ptrtoint ptr %force_ps_timeout.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %force_ps_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp75.i = icmp sgt i32 %53, -1
  br i1 %cmp75.i, label %if.end70.i.if.end18_crit_edge, label %if.else.i

if.end70.i.if.end18_crit_edge:                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else.i:                                        ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  %call81.i = tail call zeroext i1 @wfx_api_older_than(ptr noundef %51, i32 noundef 3, i32 noundef 2) #9
  %..i = select i1 %call81.i, i32 0, i32 30
  br label %if.end18

if.end84.i:                                       ; preds = %land.lhs.true43.i.if.end84.i_crit_edge, %if.end40.i.if.end84.i_crit_edge, %if.end29.i.if.end84.i_crit_edge
  %54 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vif, align 4
  %ps89.i = getelementptr inbounds %struct.ieee80211_vif, ptr %55, i32 0, i32 1, i32 38
  %56 = ptrtoint ptr %ps89.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ps89.i, align 2, !range !101
  %58 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wvif, align 4
  %force_ps_timeout93.i = getelementptr inbounds %struct.wfx_dev, ptr %59, i32 0, i32 25
  %60 = ptrtoint ptr %force_ps_timeout93.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %force_ps_timeout93.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp94.i = icmp sgt i32 %61, -1
  br i1 %cmp94.i, label %if.end84.i.wfx_get_ps_timeout.exit_crit_edge, label %if.else99.i

if.end84.i.wfx_get_ps_timeout.exit_crit_edge:     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wfx_get_ps_timeout.exit

if.else99.i:                                      ; preds = %if.end84.i
  %assoc102.i = getelementptr inbounds %struct.ieee80211_vif, ptr %55, i32 0, i32 1, i32 10
  %62 = ptrtoint ptr %assoc102.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %assoc102.i, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool103.not.i = icmp eq i8 %63, 0
  br i1 %tobool103.not.i, label %if.else99.i.wfx_get_ps_timeout.exit_crit_edge, label %land.lhs.true105.i

if.else99.i.wfx_get_ps_timeout.exit_crit_edge:    ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wfx_get_ps_timeout.exit

land.lhs.true105.i:                               ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool109.not.i = icmp eq i8 %57, 0
  br i1 %tobool109.not.i, label %land.lhs.true105.i.if.end18_crit_edge, label %if.then111.i

land.lhs.true105.i.if.end18_crit_edge:            ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then111.i:                                     ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #11
  %dynamic_ps_timeout.i = getelementptr inbounds %struct.ieee80211_conf, ptr %7, i32 0, i32 2
  %64 = ptrtoint ptr %dynamic_ps_timeout.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dynamic_ps_timeout.i, align 4
  br label %wfx_get_ps_timeout.exit.thread54

wfx_get_ps_timeout.exit:                          ; preds = %if.else99.i.wfx_get_ps_timeout.exit_crit_edge, %if.end84.i.wfx_get_ps_timeout.exit_crit_edge
  %retval.0.i = phi i32 [ %61, %if.end84.i.wfx_get_ps_timeout.exit_crit_edge ], [ -1, %if.else99.i.wfx_get_ps_timeout.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool1.not = icmp eq i8 %57, 0
  br i1 %tobool1.not, label %wfx_get_ps_timeout.exit.if.end18_crit_edge, label %wfx_get_ps_timeout.exit.wfx_get_ps_timeout.exit.thread54_crit_edge

wfx_get_ps_timeout.exit.wfx_get_ps_timeout.exit.thread54_crit_edge: ; preds = %wfx_get_ps_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %wfx_get_ps_timeout.exit.thread54

wfx_get_ps_timeout.exit.if.end18_crit_edge:       ; preds = %wfx_get_ps_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

wfx_get_ps_timeout.exit.thread54:                 ; preds = %wfx_get_ps_timeout.exit.wfx_get_ps_timeout.exit.thread54_crit_edge, %if.then111.i
  %66 = phi i32 [ %retval.0.i, %wfx_get_ps_timeout.exit.wfx_get_ps_timeout.exit.thread54_crit_edge ], [ %65, %if.then111.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp = icmp slt i32 %66, 0
  br i1 %cmp, label %do.end, label %wfx_get_ps_timeout.exit.thread54.if.end18_crit_edge, !prof !102

wfx_get_ps_timeout.exit.thread54.if.end18_crit_edge: ; preds = %wfx_get_ps_timeout.exit.thread54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %wfx_get_ps_timeout.exit.thread54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef null) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %wfx_get_ps_timeout.exit.thread54.if.end18_crit_edge, %wfx_get_ps_timeout.exit.if.end18_crit_edge, %land.lhs.true105.i.if.end18_crit_edge, %if.else.i, %if.end70.i.if.end18_crit_edge, %do.end67.i, %land.lhs.true59.i.if.end18_crit_edge, %if.then50.i.if.end18_crit_edge
  %67 = phi i32 [ %66, %do.end ], [ %66, %wfx_get_ps_timeout.exit.thread54.if.end18_crit_edge ], [ 0, %wfx_get_ps_timeout.exit.if.end18_crit_edge ], [ 0, %land.lhs.true105.i.if.end18_crit_edge ], [ 0, %if.then50.i.if.end18_crit_edge ], [ 0, %land.lhs.true59.i.if.end18_crit_edge ], [ 0, %do.end67.i ], [ %53, %if.end70.i.if.end18_crit_edge ], [ %..i, %if.else.i ]
  %tobool36 = phi i1 [ true, %do.end ], [ true, %wfx_get_ps_timeout.exit.thread54.if.end18_crit_edge ], [ false, %wfx_get_ps_timeout.exit.if.end18_crit_edge ], [ false, %land.lhs.true105.i.if.end18_crit_edge ], [ false, %if.then50.i.if.end18_crit_edge ], [ false, %land.lhs.true59.i.if.end18_crit_edge ], [ false, %do.end67.i ], [ true, %if.end70.i.if.end18_crit_edge ], [ true, %if.else.i ]
  %uapsd_mask = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 12
  %68 = ptrtoint ptr %uapsd_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %uapsd_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool25.not = icmp eq i32 %69, 0
  %spec.select = select i1 %tobool25.not, i32 %67, i32 0
  %set_pm_mode_complete = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 19
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 524288
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 53
  %call29 = tail call i32 @wait_for_completion_timeout(ptr noundef %set_pm_mode_complete, i32 noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end34, label %if.end18.if.end35_crit_edge

if.end18.if.end35_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end34:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wvif, align 4
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.8) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end18.if.end35_crit_edge
  %call37 = tail call i32 @hif_set_pm(ptr noundef %wvif, i1 noundef zeroext %tobool36, i32 noundef %spec.select) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end35 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_pm(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_conf_tx(ptr nocapture noundef readonly %hw, ptr noundef %vif, i16 noundef zeroext %queue, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %uapsd_mask = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 57, i32 5, i32 3
  %2 = ptrtoint ptr %uapsd_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uapsd_mask, align 4
  %conv = zext i16 %queue to i32
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 11
  %4 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queues, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %queue)
  %cmp.not = icmp ugt i16 %5, %queue
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !103

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 223, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #9
  %uapsd = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 5
  %6 = ptrtoint ptr %uapsd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %uapsd, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool23.not = icmp eq i8 %7, 0
  br i1 %tobool23.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %uapsd_mask) #9
  br label %assign_bit.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %uapsd_mask) #9
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.else.i, %if.then.i
  %call = tail call i32 @hif_set_edca_queue_params(ptr noundef %drv_priv, i16 noundef zeroext %queue, ptr noundef %params) #9
  %vif24 = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 1
  %8 = ptrtoint ptr %vif24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vif24, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp25 = icmp eq i32 %11, 2
  br i1 %cmp25, label %land.lhs.true, label %assign_bit.exit.if.end34_crit_edge

assign_bit.exit.if.end34_crit_edge:               ; preds = %assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %assign_bit.exit
  %12 = ptrtoint ptr %uapsd_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uapsd_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %13)
  %cmp28.not = icmp eq i32 %3, %13
  br i1 %cmp28.not, label %land.lhs.true.if.end34_crit_edge, label %if.then30

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 @hif_set_uapsd_info(ptr noundef %drv_priv, i32 noundef %13) #9
  %call33 = tail call i32 @wfx_update_pm(ptr noundef %drv_priv)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true.if.end34_crit_edge, %assign_bit.exit.if.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_edca_queue_params(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_uapsd_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %wvif.0 = phi ptr [ null, %entry ], [ %retval.0.i, %while.body ]
  %tobool.not.i = icmp eq ptr %wvif.0, null
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %4, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %4, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %spec.select.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %spec.select.i.i, %wvif.0
  %narrow.i = or i1 %tobool.not.i, %cmp5.i
  %5 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i = and i32 %5, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i
  %6 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %7, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %7, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %8 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %8, label %if.end4.i.while.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not, label %wvif_iterate.exit.while.end_crit_edge, label %while.body

wvif_iterate.exit.while.end_crit_edge:            ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @hif_rts_threshold(ptr noundef nonnull %retval.0.i, i32 noundef %value) #9
  br label %while.cond

while.end:                                        ; preds = %wvif_iterate.exit.while.end_crit_edge, %if.end4.i.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_rts_threshold(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_event_report_rssi(ptr nocapture noundef readonly %wvif, i8 noundef zeroext %raw_rcpi_rssi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i8 %raw_rcpi_rssi, 1
  %div = zext i8 %0 to i32
  %sub = add nsw i32 %div, -110
  %vif = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 1
  %1 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vif, align 4
  %cqm_rssi_thold = getelementptr inbounds %struct.ieee80211_vif, ptr %2, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cqm_rssi_thold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp.not = icmp sgt i32 %sub, %4
  %. = zext i1 %cmp.not to i32
  tail call void @ieee80211_cqm_rssi_notify(ptr noundef %2, i32 noundef %., i32 noundef %sub, i32 noundef 3264) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_set_default_unicast_key(ptr nocapture noundef readnone %hw, ptr noundef %vif, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %call = tail call i32 @hif_wep_default_key_id(ptr noundef %drv_priv, i32 noundef %idx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_wep_default_key_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_reset(ptr noundef %wvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wvif, align 4
  tail call void @wfx_tx_lock_flush(ptr noundef %1) #9
  %call = tail call i32 @hif_reset(ptr noundef %wvif, i1 noundef zeroext false) #9
  tail call void @wfx_tx_policy_init(ptr noundef %wvif) #9
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp ne ptr %4, null
  %inc.i = zext i1 %tobool12.not.i.i to i32
  %5 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i = and i32 %5, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i
  %6 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp ne ptr %7, null
  %inc.1.i = zext i1 %tobool12.not.i.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.1.i)
  %cmp = icmp ult i32 %spec.select.1.i, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @hif_set_block_ack_policy(ptr noundef %wvif, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @wfx_tx_unlock(ptr noundef %1) #9
  %join_in_progress = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 6
  %8 = ptrtoint ptr %join_in_progress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %join_in_progress, align 1
  %beacon_loss_work = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 7
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %beacon_loss_work) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %wvif.addr.0 = phi ptr [ null, %if.end ], [ %retval.0.i, %while.body ]
  %tobool.not.i = icmp eq ptr %wvif.addr.0, null
  %9 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i19 = icmp eq ptr %11, null
  %drv_priv.i.i20 = getelementptr inbounds %struct.ieee80211_vif, ptr %11, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i19
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %spec.select.i.i = select i1 %tobool12.not.i.i19, ptr null, ptr %drv_priv.i.i20
  %cmp5.i = icmp eq ptr %spec.select.i.i, %wvif.addr.0
  %narrow.i = or i1 %tobool.not.i, %cmp5.i
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i21 = and i32 %12, 1
  %arrayidx.i.1.i22 = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i21
  %13 = ptrtoint ptr %arrayidx.i.1.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.1.i22, align 4
  %tobool12.not.i.1.i23 = icmp eq ptr %14, null
  %drv_priv.i.1.i24 = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %15 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i23
  br i1 %15, label %if.end4.i.while.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i = phi ptr [ %drv_priv.i.i20, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i24, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp6.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp6.not, label %wvif_iterate.exit.while.end_crit_edge, label %while.body

wvif_iterate.exit.while.end_crit_edge:            ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @wfx_update_pm(ptr noundef nonnull %retval.0.i)
  br label %while.cond

while.end:                                        ; preds = %wvif_iterate.exit.while.end_crit_edge, %if.end4.i.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_lock_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_policy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_block_ack_policy(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_sta_add(ptr nocapture noundef readnone %hw, ptr noundef %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %vif_id = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %vif_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %vif_id, align 4
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.end, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end:                                           ; preds = %entry
  %mfp = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 19
  %5 = ptrtoint ptr %mfp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mfp, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool = icmp ne i8 %6, 0
  %call = tail call i32 @hif_set_mfp(ptr noundef %drv_priv, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool) #9
  %7 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp5 = icmp eq i32 %.pr, 2
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 17
  %8 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tdls, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %link_id_map = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %10 = ptrtoint ptr %link_id_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_id_map, align 4
  %neg = xor i32 %11, -1
  %12 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 false) #9, !range !104
  %13 = ptrtoint ptr %drv_priv1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %drv_priv1, align 4
  %shl = shl nuw i32 1, %12
  %14 = ptrtoint ptr %link_id_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link_id_map, align 4
  %or = or i32 %15, %shl
  store i32 %or, ptr %link_id_map, align 4
  %16 = load i32, ptr %drv_priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end, label %if.end8.if.end29_crit_edge, !prof !102

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 315, i32 noundef 9, ptr noundef null) #9
  %17 = ptrtoint ptr %drv_priv1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr93 = load i32, ptr %drv_priv1, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end8.if.end29_crit_edge
  %18 = phi i32 [ %.pr93, %do.end ], [ %16, %if.end8.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %18)
  %cmp38 = icmp sgt i32 %18, 13
  br i1 %cmp38, label %do.end54, label %if.end29.if.end60_crit_edge, !prof !102

if.end29.if.end60_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end54:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 316, i32 noundef 9, ptr noundef null) #9
  br label %if.end60

if.end60:                                         ; preds = %do.end54, %if.end29.if.end60_crit_edge
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %19 = ptrtoint ptr %drv_priv1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %drv_priv1, align 4
  %mfp70 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 19
  %21 = ptrtoint ptr %mfp70 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mfp70, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool71 = icmp ne i8 %22, 0
  %call72 = tail call i32 @hif_map_link(ptr noundef %drv_priv, i1 noundef zeroext false, ptr noundef %addr, i32 noundef %20, i1 noundef zeroext %tobool71) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_mfp(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_map_link(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_sta_remove(ptr nocapture noundef readnone %hw, ptr noundef %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %0 = ptrtoint ptr %drv_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %drv_priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %call = tail call i32 @hif_map_link(ptr noundef %drv_priv, i1 noundef zeroext true, ptr noundef %addr, i32 noundef %1, i1 noundef zeroext false) #9
  %2 = ptrtoint ptr %drv_priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drv_priv1, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %link_id_map = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %4 = ptrtoint ptr %link_id_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_id_map, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %link_id_map, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_start_ap(ptr nocapture noundef readnone %hw, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %wvif.0 = phi ptr [ null, %entry ], [ %retval.0.i, %while.body ]
  %tobool.not.i = icmp eq ptr %wvif.0, null
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %4, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %4, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %spec.select.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %spec.select.i.i, %wvif.0
  %narrow.i = or i1 %tobool.not.i, %cmp5.i
  %5 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i = and i32 %5, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i
  %6 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %7, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %7, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %8 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %8, label %if.end4.i.while.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not, label %wvif_iterate.exit.while.end_crit_edge, label %while.body

wvif_iterate.exit.while.end_crit_edge:            ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @wfx_update_pm(ptr noundef nonnull %retval.0.i)
  br label %while.cond

while.end:                                        ; preds = %wvif_iterate.exit.while.end_crit_edge, %if.end4.i.while.end_crit_edge
  tail call fastcc void @wfx_upload_ap_templates(ptr noundef %drv_priv)
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %channel = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channel, align 4
  %call6 = tail call i32 @hif_start(ptr noundef %drv_priv, ptr noundef %bss_conf, ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %while.end.cleanup_crit_edge, label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.end
  %11 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv_priv, align 4
  %hw.i = getelementptr inbounds %struct.wfx_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i, align 4
  %vif.i = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 1
  %15 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vif.i, align 4
  %call.i.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %14, ptr noundef %16, ptr noundef null, ptr noundef null) #9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 36
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %20, -36
  %call.i.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 48, ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %tobool.not.i19 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i19, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %add.ptr2.i = getelementptr i16, ptr %call.i.i.i, i32 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %cmp.i = icmp ugt ptr %add.ptr2.i, %22
  br i1 %cmp.i, label %do.end.i, label %if.end26.i, !prof !102

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 370, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end26.i:                                       ; preds = %if.then.i
  %23 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr2.i, align 2
  %conv.i = zext i16 %24 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add.i = or i32 %mul.i, 1
  %add.ptr27.i = getelementptr i16, ptr %add.ptr2.i, i32 %add.i
  %cmp30.i = icmp ugt ptr %add.ptr27.i, %22
  br i1 %cmp30.i, label %do.end47.i, label %if.end63.i, !prof !102

do.end47.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 373, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end63.i:                                       ; preds = %if.end26.i
  %25 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr27.i, align 2
  %conv64.i = zext i16 %26 to i32
  %mul65.i = shl nuw nsw i32 %conv64.i, 1
  %add66.i = or i32 %mul65.i, 1
  %add.ptr67.i = getelementptr i16, ptr %add.ptr27.i, i32 %add66.i
  %cmp70.i = icmp ugt ptr %add.ptr67.i, %22
  br i1 %cmp70.i, label %do.end87.i, label %if.end103.i, !prof !102

do.end87.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 376, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end103.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr67.i, align 2
  %conv104.i = zext i16 %28 to i32
  %and.i = and i32 %conv104.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool105.i = icmp ne i32 %and.i, 0
  %and107.i = and i32 %conv104.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.i = icmp ne i32 %and107.i, 0
  %call109.i = tail call i32 @hif_set_mfp(ptr noundef %drv_priv, i1 noundef zeroext %tobool105.i, i1 noundef zeroext %tobool108.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end103.i, %do.end87.i, %do.end47.i, %do.end.i, %if.end.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %while.end.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call6, %do.end.i ], [ %call6, %do.end47.i ], [ %call6, %do.end87.i ], [ %call6, %if.end103.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wfx_upload_ap_templates(ptr noundef %wvif) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wvif, align 4
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %vif = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 1
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif, align 4
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %3, ptr noundef %5, ptr noundef null, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hif_set_template_frame(ptr noundef %wvif, ptr noundef nonnull %call.i, i8 noundef zeroext 1, i32 noundef 0) #9
  tail call void @consume_skb(ptr noundef nonnull %call.i) #9
  %6 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wvif, align 4
  %hw3 = getelementptr inbounds %struct.wfx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw3, align 4
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vif, align 4
  %call5 = tail call ptr @ieee80211_proberesp_get(ptr noundef %9, ptr noundef %11) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @hif_set_template_frame(ptr noundef %wvif, ptr noundef nonnull %call5, i8 noundef zeroext 5, i32 noundef 0) #9
  tail call void @consume_skb(ptr noundef nonnull %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_stop_ap(ptr nocapture noundef readnone %hw, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  tail call void @wfx_reset(ptr noundef %drv_priv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_join_ibss(ptr nocapture noundef readnone %hw, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  tail call fastcc void @wfx_upload_ap_templates(ptr noundef %drv_priv)
  tail call fastcc void @wfx_join(ptr noundef %drv_priv)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wfx_join(ptr noundef %wvif) unnamed_addr #0 align 64 {
entry:
  %ssid = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 1
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ssid) #9
  %2 = call ptr @memset(ptr %ssid, i32 255, i32 32)
  %3 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wvif, align 4
  tail call void @wfx_tx_lock_flush(ptr noundef %4) #9
  %5 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wvif, align 4
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %channel = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 2
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel, align 4
  %13 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bss_conf, align 8
  %call = tail call ptr @cfg80211_get_bss(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 2) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then5.critedge

land.lhs.true:                                    ; preds = %entry
  %ibss_joined = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ibss_joined, align 8, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not = icmp eq i8 %16, 0
  br i1 %tobool2.not, label %if.then, label %if.end7.critedge

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wvif, align 4
  tail call void @wfx_tx_unlock(ptr noundef %18) #9
  br label %cleanup

if.then5.critedge:                                ; preds = %entry
  %19 = tail call i32 @llvm.read_register.i32(metadata !89) #9
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then5.critedge.if.end7_crit_edge, label %land.lhs.true.i

if.then5.critedge.if.end7_crit_edge:              ; preds = %if.then5.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.then5.critedge
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end7_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.if.end7_crit_edge, label %if.then.i

land.lhs.true2.i.if.end7_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #9
  br label %if.end7

if.end7.critedge:                                 ; preds = %land.lhs.true
  %23 = tail call i32 @llvm.read_register.i32(metadata !89) #9
  %and.i.i.i.i.i52 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %add.i.i.i54 = add i32 %26, 1
  store volatile i32 %add.i.i.i54, ptr %preempt_count.i.i.i.i53, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i55 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i55, label %if.end7.critedge.if.end14_crit_edge, label %land.lhs.true.i58

if.end7.critedge.if.end14_crit_edge:              ; preds = %if.end7.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.i58:                                ; preds = %if.end7.critedge
  %call1.i56 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i58.if.end14_crit_edge, label %land.lhs.true2.i60

land.lhs.true.i58.if.end14_crit_edge:             ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true2.i60:                               ; preds = %land.lhs.true.i58
  %.b4.i59 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i59, label %land.lhs.true2.i60.if.end14_crit_edge, label %if.then.i61

land.lhs.true2.i60.if.end14_crit_edge:            ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i61:                                      ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #9
  br label %if.end14

if.end7:                                          ; preds = %if.then.i, %land.lhs.true2.i.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge, %if.then5.critedge.if.end7_crit_edge
  %call.i63 = tail call ptr @ieee80211_bss_get_elem(ptr noundef nonnull %call, i8 noundef zeroext 0) #9
  %tobool8.not = icmp eq ptr %call.i63, null
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %if.then9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr i8, ptr %call.i63, i32 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %29 = tail call i8 @llvm.umin.i8(i8 %28, i8 32)
  %30 = zext i8 %29 to i32
  %arrayidx13 = getelementptr i8, ptr %call.i63, i32 2
  %31 = call ptr @memcpy(ptr %ssid, ptr %arrayidx13, i32 %30)
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end7.if.end14_crit_edge, %if.then.i61, %land.lhs.true2.i60.if.end14_crit_edge, %land.lhs.true.i58.if.end14_crit_edge, %if.end7.critedge.if.end14_crit_edge
  %ssidlen.0 = phi i32 [ %30, %if.then9 ], [ 0, %if.end7.if.end14_crit_edge ], [ 0, %if.end7.critedge.if.end14_crit_edge ], [ 0, %land.lhs.true.i58.if.end14_crit_edge ], [ 0, %land.lhs.true2.i60.if.end14_crit_edge ], [ 0, %if.then.i61 ]
  %call.i64 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i64, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %if.end14
  %call1.i65 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %32 = tail call i32 @llvm.read_register.i32(metadata !89) #9
  %and.i.i.i.i.i71 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i72, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %36 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wvif, align 4
  %hw16 = getelementptr inbounds %struct.wfx_dev, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %hw16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw16, align 4
  %wiphy17 = getelementptr inbounds %struct.ieee80211_hw, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wiphy17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy17, align 8
  tail call void @cfg80211_put_bss(ptr noundef %41, ptr noundef %call) #9
  %join_in_progress = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 6
  %42 = ptrtoint ptr %join_in_progress to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %join_in_progress, align 1
  %43 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %channel, align 4
  %call20 = call i32 @hif_join(ptr noundef %wvif, ptr noundef %bss_conf, ptr noundef %44, ptr noundef nonnull %ssid, i32 noundef %ssidlen.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vif, align 4
  call void @ieee80211_connection_loss(ptr noundef %46) #9
  call void @wfx_reset(ptr noundef %wvif)
  br label %if.end24

if.else:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i73 = call i32 @hif_beacon_filter_control(ptr noundef %wvif, i32 noundef 0, i32 noundef 1) #9
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22
  %47 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wvif, align 4
  call void @wfx_tx_unlock(ptr noundef %48) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ssid) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_leave_ibss(ptr nocapture noundef readnone %hw, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  tail call void @wfx_reset(ptr noundef %drv_priv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %info, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %conf_mutex = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #9
  %2 = and i32 %changed, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then6, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wfx_join(ptr noundef %drv_priv)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %and8 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end23_crit_edge, label %if.then10

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then10:                                        ; preds = %if.end7
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 10
  %6 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %assoc, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.then10.if.then14_crit_edge

if.then10.if.then14_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false12:                                  ; preds = %if.then10
  %ibss_joined = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 11
  %8 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ibss_joined, align 8, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %land.lhs.true, label %lor.lhs.false12.if.then14_crit_edge

lor.lhs.false12.if.then14_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false12.if.then14_crit_edge, %if.then10.if.then14_crit_edge
  %10 = tail call i32 @llvm.read_register.i32(metadata !89) #9
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.then14.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then14.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then14
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then14.rcu_read_lock.exit.i_crit_edge
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.if.end25.i_crit_edge, label %land.lhs.true.i

rcu_read_lock.exit.i.if.end25.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %ibss_joined.i = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 11
  %16 = ptrtoint ptr %ibss_joined.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ibss_joined.i, align 8, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i = icmp eq i8 %17, 0
  br i1 %tobool1.not.i, label %if.end.i, label %land.lhs.true.i.if.end25.i_crit_edge

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.end.i:                                         ; preds = %land.lhs.true.i
  %vif.i = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 1
  %18 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vif.i, align 4
  %call.i = tail call ptr @ieee80211_find_sta(ptr noundef %19, ptr noundef nonnull %15) #9
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end25.i_crit_edge, label %land.lhs.true4.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.lhs.true4.i:                                 ; preds = %if.end.i
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ht_supported.i, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not.i = icmp eq i8 %21, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.end25.i_crit_edge, label %land.lhs.true16.i

land.lhs.true4.i.if.end25.i_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.lhs.true16.i:                                ; preds = %land.lhs.true4.i
  %ampdu_density8.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %ampdu_density8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ampdu_density8.i, align 4
  %ht_operation_mode.i = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 27
  %24 = ptrtoint ptr %ht_operation_mode.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ht_operation_mode.i, align 8
  %26 = and i16 %25, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool18.not.i = icmp eq i16 %26, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %land.lhs.true16.i.if.end25.i_crit_edge

land.lhs.true16.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then19.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  %ht_cap12.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %ht_cap12.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ht_cap12.i, align 4
  %29 = and i16 %28, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool23.i = icmp ne i16 %29, 0
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then19.i, %land.lhs.true16.i.if.end25.i_crit_edge, %land.lhs.true4.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge, %land.lhs.true.i.if.end25.i_crit_edge, %rcu_read_lock.exit.i.if.end25.i_crit_edge
  %ampdu_density.066.shrunk.i = phi i8 [ %23, %land.lhs.true16.i.if.end25.i_crit_edge ], [ %23, %if.then19.i ], [ 0, %if.end.i.if.end25.i_crit_edge ], [ 0, %land.lhs.true.i.if.end25.i_crit_edge ], [ 0, %rcu_read_lock.exit.i.if.end25.i_crit_edge ], [ 0, %land.lhs.true4.i.if.end25.i_crit_edge ]
  %greenfield.0.off0.i = phi i1 [ false, %land.lhs.true16.i.if.end25.i_crit_edge ], [ %tobool23.i, %if.then19.i ], [ false, %if.end.i.if.end25.i_crit_edge ], [ false, %land.lhs.true.i.if.end25.i_crit_edge ], [ false, %rcu_read_lock.exit.i.if.end25.i_crit_edge ], [ false, %land.lhs.true4.i.if.end25.i_crit_edge ]
  %call.i50.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i50.i, label %if.end25.i.wfx_join_finalize.exit_crit_edge, label %land.lhs.true.i53.i

if.end25.i.wfx_join_finalize.exit_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wfx_join_finalize.exit

land.lhs.true.i53.i:                              ; preds = %if.end25.i
  %call1.i51.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call1.i51.i, 0
  br i1 %tobool.not.i52.i, label %land.lhs.true.i53.i.wfx_join_finalize.exit_crit_edge, label %land.lhs.true2.i55.i

land.lhs.true.i53.i.wfx_join_finalize.exit_crit_edge: ; preds = %land.lhs.true.i53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wfx_join_finalize.exit

land.lhs.true2.i55.i:                             ; preds = %land.lhs.true.i53.i
  %.b4.i54.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i54.i, label %land.lhs.true2.i55.i.wfx_join_finalize.exit_crit_edge, label %if.then.i56.i

land.lhs.true2.i55.i.wfx_join_finalize.exit_crit_edge: ; preds = %land.lhs.true2.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wfx_join_finalize.exit

if.then.i56.i:                                    ; preds = %land.lhs.true2.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #9
  br label %wfx_join_finalize.exit

wfx_join_finalize.exit:                           ; preds = %if.then.i56.i, %land.lhs.true2.i55.i.wfx_join_finalize.exit_crit_edge, %land.lhs.true.i53.i.wfx_join_finalize.exit_crit_edge, %if.end25.i.wfx_join_finalize.exit_crit_edge
  %ampdu_density.066.i = zext i8 %ampdu_density.066.shrunk.i to i32
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %30 = tail call i32 @llvm.read_register.i32(metadata !89) #9
  %and.i.i.i.i.i57.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i57.i to ptr
  %preempt_count.i.i.i.i58.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i58.i, align 4
  %sub.i.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i58.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %join_in_progress.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 8
  %34 = ptrtoint ptr %join_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %join_in_progress.i, align 1
  %use_short_preamble.i = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 15
  %35 = ptrtoint ptr %use_short_preamble.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %use_short_preamble.i, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool27.i = icmp ne i8 %36, 0
  %call28.i = tail call i32 @hif_set_association_mode(ptr noundef %drv_priv, i32 noundef %ampdu_density.066.i, i1 noundef zeroext %greenfield.0.off0.i, i1 noundef zeroext %tobool27.i) #9
  %call29.i = tail call i32 @hif_keep_alive_period(ptr noundef %drv_priv, i32 noundef 0) #9
  %aid.i = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 13
  %37 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %aid.i, align 2
  %conv30.i = zext i16 %38 to i32
  %call31.i = tail call i32 @hif_set_bss_params(ptr noundef %drv_priv, i32 noundef %conv30.i, i32 noundef 7) #9
  %call32.i = tail call i32 @hif_set_beacon_wakeup_period(ptr noundef %drv_priv, i32 noundef 1, i32 noundef 1) #9
  %call33.i = tail call i32 @wfx_update_pm(ptr noundef %drv_priv) #9
  br label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %39 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp18 = icmp eq i32 %40, 2
  br i1 %cmp18, label %if.then19, label %do.end

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wfx_reset(ptr noundef %drv_priv)
  br label %if.end23

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #12
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.then19, %wfx_join_finalize.exit, %if.end7.if.end23_crit_edge
  %and24 = and i32 %changed, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end37_crit_edge, label %if.then26

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then26:                                        ; preds = %if.end23
  %43 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp28.not = icmp eq i32 %44, 2
  br i1 %cmp28.not, label %if.then26.if.end34_crit_edge, label %do.end32

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end32:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %dev33 = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #12
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.then26.if.end34_crit_edge
  %dtim_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 18
  %47 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dtim_period, align 8
  %conv = zext i8 %48 to i32
  %call = tail call i32 @hif_set_beacon_wakeup_period(ptr noundef %drv_priv, i32 noundef %conv, i32 noundef %conv) #9
  %call1.i = tail call i32 @hif_set_beacon_filter_table(ptr noundef %drv_priv, i32 noundef 4, ptr noundef nonnull @wfx_filter_beacon.filter_ies) #9
  %call2.i = tail call i32 @hif_beacon_filter_control(ptr noundef %drv_priv, i32 noundef 1, i32 noundef 0) #9
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.end23.if.end37_crit_edge
  %and38 = and i32 %changed, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end53_crit_edge, label %for.cond.preheader

if.end37.if.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

for.cond.preheader:                               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %arp_addr_cnt = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 35
  %arrayidx = getelementptr %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 34, i32 0
  %49 = ptrtoint ptr %arp_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arp_addr_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp43 = icmp sgt i32 %50, 2
  %spec.store.select = select i1 %cmp43, ptr null, ptr %arrayidx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp48.not = icmp sgt i32 %50, 0
  %spec.store.select102 = select i1 %cmp48.not, ptr %spec.store.select, ptr null
  %call52 = tail call i32 @hif_set_arp_ipv4_filter(ptr noundef %drv_priv, i32 noundef 0, ptr noundef %spec.store.select102) #9
  %arrayidx.1 = getelementptr %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 34, i32 1
  %51 = ptrtoint ptr %arp_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arp_addr_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp43.1 = icmp sgt i32 %52, 2
  %spec.store.select.1 = select i1 %cmp43.1, ptr null, ptr %arrayidx.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp48.not.1 = icmp sgt i32 %52, 1
  %spec.store.select102.1 = select i1 %cmp48.not.1, ptr %spec.store.select.1, ptr null
  %call52.1 = tail call i32 @hif_set_arp_ipv4_filter(ptr noundef %drv_priv, i32 noundef 1, ptr noundef %spec.store.select102.1) #9
  br label %if.end53

if.end53:                                         ; preds = %for.cond.preheader, %if.end37.if.end53_crit_edge
  %53 = and i32 %changed, 65792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %if.end53.if.end61_crit_edge, label %if.then59

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wfx_upload_ap_templates(ptr noundef %drv_priv)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end53.if.end61_crit_edge
  %and62 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end66_crit_edge, label %if.then64

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.end61
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %55 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %enable_beacon, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool65 = icmp ne i8 %56, 0
  br i1 %tobool65, label %if.then64.wfx_enable_beacon.exit_crit_edge, label %land.lhs.true.i159

if.then64.wfx_enable_beacon.exit_crit_edge:       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %wfx_enable_beacon.exit

land.lhs.true.i159:                               ; preds = %if.then64
  %call.i158 = tail call zeroext i1 @wfx_tx_queues_has_cab(ptr noundef %drv_priv) #9
  br i1 %call.i158, label %if.then.i, label %land.lhs.true.i159.wfx_enable_beacon.exit_crit_edge

land.lhs.true.i159.wfx_enable_beacon.exit_crit_edge: ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %wfx_enable_beacon.exit

if.then.i:                                        ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #11
  %after_dtim_tx_allowed.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %57 = ptrtoint ptr %after_dtim_tx_allowed.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %after_dtim_tx_allowed.i, align 4
  %58 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %drv_priv, align 4
  tail call void @wfx_bh_request_tx(ptr noundef %59) #9
  br label %wfx_enable_beacon.exit

wfx_enable_beacon.exit:                           ; preds = %if.then.i, %land.lhs.true.i159.wfx_enable_beacon.exit_crit_edge, %if.then64.wfx_enable_beacon.exit_crit_edge
  %call2.i160 = tail call i32 @hif_beacon_transmit(ptr noundef %drv_priv, i1 noundef zeroext %tobool65) #9
  br label %if.end66

if.end66:                                         ; preds = %wfx_enable_beacon.exit, %if.end61.if.end66_crit_edge
  %and67 = and i32 %changed, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end72_crit_edge, label %if.then69

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %max_idle_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 46
  %60 = ptrtoint ptr %max_idle_period to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %max_idle_period, align 8
  %conv70 = zext i16 %61 to i32
  %mul = shl nuw nsw i32 %conv70, 10
  %div = udiv i32 %mul, 1000
  %call71 = tail call i32 @hif_keep_alive_period(ptr noundef %drv_priv, i32 noundef %div) #9
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end66.if.end72_crit_edge
  %and73 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end78_crit_edge, label %if.then75

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 14
  %62 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %use_cts_prot, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool76 = icmp ne i8 %63, 0
  %call77 = tail call i32 @hif_erp_use_protection(ptr noundef %drv_priv, i1 noundef zeroext %tobool76) #9
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end72.if.end78_crit_edge
  %and79 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end85_crit_edge, label %if.then81

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %64 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %use_short_slot, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool82.not = icmp eq i8 %65, 0
  %cond = select i1 %tobool82.not, i32 20, i32 9
  %call84 = tail call i32 @hif_slot_time(ptr noundef %drv_priv, i32 noundef %cond) #9
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end78.if.end85_crit_edge
  %and86 = and i32 %changed, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end90_crit_edge, label %if.then88

if.end85.if.end90_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %cqm_rssi_thold = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 28
  %66 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cqm_rssi_thold, align 4
  %cqm_rssi_hyst = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 29
  %68 = ptrtoint ptr %cqm_rssi_hyst to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cqm_rssi_hyst, align 8
  %call89 = tail call i32 @hif_set_rcpi_rssi_threshold(ptr noundef %drv_priv, i32 noundef %67, i32 noundef %69) #9
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end85.if.end90_crit_edge
  %and91 = and i32 %changed, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end95_crit_edge, label %if.then93

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %txpower = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 42
  %70 = ptrtoint ptr %txpower to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %txpower, align 8
  %call94 = tail call i32 @hif_set_output_power(ptr noundef %drv_priv, i32 noundef %71) #9
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end90.if.end95_crit_edge
  %and96 = and i32 %changed, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end100_crit_edge, label %if.then98

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %call99 = tail call i32 @wfx_update_pm(ptr noundef %drv_priv)
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end95.if.end100_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_beacon_wakeup_period(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_arp_ipv4_filter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_keep_alive_period(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_erp_use_protection(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_slot_time(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_rcpi_rssi_threshold(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_output_power(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_set_tim(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %sta, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %vif_id = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %vif_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_set_tim, %if.then3.i)) #9
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !100

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %5, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  br label %do.end

if.end4.i:                                        ; preds = %entry
  %6 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %3, i32 2) #9, !srcloc !99
  %and.i = and i32 %6, %3
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %8, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %8, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.do.end_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wdev_to_wvif.exit

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %wdev_to_wvif.exit.do.end_crit_edge, label %if.end

wdev_to_wvif.exit.do.end_crit_edge:               ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %wdev_to_wvif.exit.do.end_crit_edge, %if.end4.i.do.end_crit_edge, %if.then3.i
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end:                                           ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #11
  %update_tim_work = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %update_tim_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_suspend_resume_mc(ptr noundef %wvif, i32 noundef %notify_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %notify_cmd)
  %cmp.not = icmp eq i32 %notify_cmd, 1
  br i1 %cmp.not, label %entry.while.cond_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %wvif_it.0 = phi ptr [ %retval.0.i, %while.body.while.cond_crit_edge ], [ null, %entry.while.cond_crit_edge ]
  %0 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wvif, align 4
  %tobool.not.i = icmp eq ptr %wvif_it.0, null
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %4, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %4, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %spec.select.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %spec.select.i.i, %wvif_it.0
  %narrow.i = or i1 %tobool.not.i, %cmp5.i
  %5 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i = and i32 %5, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i
  %6 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %7, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %7, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %8 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %8, label %if.end4.i.while.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp1.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp1.not, label %wvif_iterate.exit.while.end_crit_edge, label %while.body

wvif_iterate.exit.while.end_crit_edge:            ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %wvif_iterate.exit
  %scan_lock = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 13
  %call2 = tail call zeroext i1 @mutex_is_locked(ptr noundef %scan_lock) #9
  br i1 %call2, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end:                                        ; preds = %wvif_iterate.exit.while.end_crit_edge, %if.end4.i.while.end_crit_edge
  %call5 = tail call zeroext i1 @wfx_tx_queues_has_cab(ptr noundef %wvif) #9
  br i1 %call5, label %lor.lhs.false, label %while.end.do.end_crit_edge

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %while.end
  %after_dtim_tx_allowed = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 5
  %9 = ptrtoint ptr %after_dtim_tx_allowed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %after_dtim_tx_allowed, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %while.end.do.end_crit_edge
  %11 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wvif, align 4
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call8 = tail call zeroext i1 @wfx_tx_queues_has_cab(ptr noundef %wvif) #9
  %conv = zext i1 %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %conv) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end, %lor.lhs.false.if.end9_crit_edge
  %after_dtim_tx_allowed10 = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 5
  %15 = ptrtoint ptr %after_dtim_tx_allowed10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %after_dtim_tx_allowed10, align 4
  %16 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wvif, align 4
  tail call void @wfx_bh_request_tx(ptr noundef %17) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wfx_tx_queues_has_cab(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bh_request_tx(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wfx_ampdu_action(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %params) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  %. = select i1 %switch, i32 0, i32 -95
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wfx_add_chanctx(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %conf) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wfx_remove_chanctx(ptr nocapture noundef %hw, ptr nocapture noundef %conf) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wfx_change_chanctx(ptr nocapture noundef %hw, ptr nocapture noundef %conf, i32 noundef %changed) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_assign_vif_chanctx(ptr nocapture noundef readnone %hw, ptr nocapture noundef %vif, ptr nocapture noundef readonly %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %channel = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !103

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 705, i32 noundef 9, ptr noundef nonnull @.str.19) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %channel, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_unassign_vif_chanctx(ptr nocapture noundef readnone %hw, ptr nocapture noundef %vif, ptr nocapture noundef readonly %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %channel = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %cmp.not = icmp eq ptr %3, %1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !103

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 718, i32 noundef 9, ptr noundef nonnull @.str.20) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %channel, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wfx_config(ptr nocapture noundef readnone %hw, i32 noundef %changed) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %2 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_flags, align 8
  %or = or i32 %3, 7
  store i32 %or, ptr %driver_flags, align 8
  %conf_mutex = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %vif2 = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 1
  %6 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vif, ptr %vif2, align 4
  %7 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %drv_priv, align 4
  %link_id_map = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %8 = ptrtoint ptr %link_id_map to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %link_id_map, align 4
  %update_tim_work = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 11
  tail call void @__init_work(ptr noundef %update_tim_work, i32 noundef 0) #9
  %9 = ptrtoint ptr %update_tim_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %update_tim_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 50
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @wfx_add_interface.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry7 = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 46
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 49
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wfx_update_tim_work, ptr %func, align 4
  %beacon_loss_work = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  tail call void @__init_work(ptr noundef %beacon_loss_work, i32 noundef 0) #9
  %13 = ptrtoint ptr %beacon_loss_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %beacon_loss_work, align 4
  %lockdep_map18 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 21
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map18, ptr noundef nonnull @.str.23, ptr noundef nonnull @wfx_add_interface.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry21 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 14
  %14 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i156 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 18
  %15 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry21, ptr %prev.i156, align 4
  %func24 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 20
  %16 = ptrtoint ptr %func24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wfx_beacon_loss_work, ptr %func24, align 4
  %timer = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.25, ptr noundef nonnull @wfx_add_interface.__key.24) #9
  %set_pm_mode_complete = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %set_pm_mode_complete to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %set_pm_mode_complete, align 4
  %wait.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 3
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  tail call void @complete(ptr noundef %set_pm_mode_complete) #9
  %tx_policy_upload_work = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 10
  tail call void @__init_work(ptr noundef %tx_policy_upload_work, i32 noundef 0) #9
  %18 = ptrtoint ptr %tx_policy_upload_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %tx_policy_upload_work, align 4
  %lockdep_map40 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 44, i32 2, i32 1, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map40, ptr noundef nonnull @.str.27, ptr noundef nonnull @wfx_add_interface.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry42 = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry42, ptr %entry42, align 4
  %prev.i157 = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 10, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i157 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry42, ptr %prev.i157, align 4
  %func44 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 44, i32 2, i32 1, i32 1
  %21 = ptrtoint ptr %func44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @wfx_tx_policy_upload_work, ptr %func44, align 4
  %scan_lock = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 57, i32 5, i32 7
  tail call void @__mutex_init(ptr noundef %scan_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @wfx_add_interface.__key.28) #9
  %scan_complete = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %scan_complete to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %scan_complete, align 4
  %wait.i158 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 5
  tail call void @__init_swait_queue_head(ptr noundef %wait.i158, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  %scan_work = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 1
  tail call void @__init_work(ptr noundef %scan_work, i32 noundef 0) #9
  %23 = ptrtoint ptr %scan_work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %scan_work, align 4
  %lockdep_map56 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map56, ptr noundef nonnull @.str.31, ptr noundef nonnull @wfx_add_interface.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry58 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 1, i32 4
  %24 = ptrtoint ptr %entry58 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry58, ptr %entry58, align 4
  %prev.i159 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 1, i32 8
  %25 = ptrtoint ptr %prev.i159 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry58, ptr %prev.i159, align 4
  %func60 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 2, i32 1
  %26 = ptrtoint ptr %func60 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @wfx_hw_scan_work, ptr %func60, align 4
  tail call void @wfx_tx_queues_init(ptr noundef %drv_priv) #9
  tail call void @wfx_tx_policy_init(ptr noundef %drv_priv) #9
  %arrayidx = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %sw.epilog.for.end.thread_crit_edge, label %for.inc

sw.epilog.for.end.thread_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %sw.epilog.for.end.thread_crit_edge
  %i.0172.lcssa = phi i32 [ 0, %sw.epilog.for.end.thread_crit_edge ], [ 1, %for.inc.for.end.thread_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %sw.epilog.for.end.thread_crit_edge ], [ %arrayidx.1, %for.inc.for.end.thread_crit_edge ]
  %29 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %vif, ptr %arrayidx.lcssa, align 4
  %id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %30 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.0172.lcssa, ptr %id, align 4
  br label %if.end84

for.inc:                                          ; preds = %sw.epilog
  %arrayidx.1 = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %32, null
  br i1 %tobool.not.1, label %for.inc.for.end.thread_crit_edge, label %do.end78

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

do.end78:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 775, i32 noundef 9, ptr noundef nonnull @.str.32) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %for.end.thread
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call = tail call i32 @hif_set_macaddr(ptr noundef %drv_priv, ptr noundef %addr) #9
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #9
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end84
  %wvif.0 = phi ptr [ null, %if.end84 ], [ %retval.0.i, %while.cond.backedge ]
  %tobool.not.i = icmp eq ptr %wvif.0, null
  %33 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %tobool12.not.i.i = icmp eq ptr %35, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %35, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %spec.select.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %spec.select.i.i, %wvif.0
  %narrow.i = or i1 %tobool.not.i, %cmp5.i
  %36 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i = and i32 %36, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i
  %37 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %38, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %38, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %39 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %39, label %if.end4.i.cleanup_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp94.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp94.not, label %wvif_iterate.exit.cleanup_crit_edge, label %while.body

wvif_iterate.exit.cleanup_crit_edge:              ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %wvif_iterate.exit
  %40 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %tobool12.not.i.i161 = icmp ne ptr %42, null
  %inc.i = zext i1 %tobool12.not.i.i161 to i32
  %43 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i163 = and i32 %43, 1
  %arrayidx.i.1.i164 = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i163
  %44 = ptrtoint ptr %arrayidx.i.1.i164 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.1.i164, align 4
  %tobool12.not.i.1.i165 = icmp ne ptr %45, null
  %inc.1.i = zext i1 %tobool12.not.i.1.i165 to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.1.i)
  %cmp96 = icmp eq i32 %spec.select.1.i, 1
  br i1 %cmp96, label %if.then97, label %if.else

if.then97:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call98 = tail call i32 @hif_set_block_ack_policy(ptr noundef nonnull %retval.0.i, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call99 = tail call i32 @hif_set_block_ack_policy(ptr noundef nonnull %retval.0.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then97
  br label %while.cond

cleanup:                                          ; preds = %wvif_iterate.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %sw.default
  %retval.0 = phi i32 [ -95, %sw.default ], [ 0, %wvif_iterate.exit.cleanup_crit_edge ], [ 0, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wfx_update_tim_work(ptr noundef %work) #0 align 64 {
entry:
  %tim_offset.i = alloca i16, align 2
  %tim_length.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_offset.i) #9
  %0 = ptrtoint ptr %tim_offset.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tim_offset.i, align 2, !annotation !107
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_length.i) #9
  %1 = ptrtoint ptr %tim_length.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %tim_length.i, align 2, !annotation !107
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %hw.i = getelementptr inbounds %struct.wfx_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  %vif.i = getelementptr i8, ptr %work, i32 -1124
  %6 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vif.i, align 4
  %call.i = call ptr @ieee80211_beacon_get_tim(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %tim_offset.i, ptr noundef nonnull %tim_length.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.wfx_update_tim.exit_crit_edge, label %if.end.i

entry.wfx_update_tim.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wfx_update_tim.exit

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %tim_offset.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tim_offset.i, align 2
  %conv.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.not.i = icmp eq i16 %11, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %12 = ptrtoint ptr %tim_length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tim_length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %13)
  %cmp.i = icmp ugt i16 %13, 5
  br i1 %cmp.i, label %if.then5.i, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx.i, align 1
  %call6.i = call zeroext i1 @wfx_tx_queues_has_cab(ptr noundef %add.ptr) #9
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i, align 1
  %17 = and i8 %16, -2
  %masksel.i = zext i1 %call6.i to i8
  %.sink.i = or i8 %17, %masksel.i
  store i8 %.sink.i, ptr %arrayidx8.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then5.i, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %18 = ptrtoint ptr %tim_length.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tim_length.i, align 2
  %conv16.i = zext i16 %19 to i32
  %call17.i = call i32 @hif_update_ie_beacon(ptr noundef %add.ptr, ptr noundef %add.ptr.i, i32 noundef %conv16.i) #9
  call void @consume_skb(ptr noundef nonnull %call.i) #9
  br label %wfx_update_tim.exit

wfx_update_tim.exit:                              ; preds = %if.end15.i, %entry.wfx_update_tim.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_length.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_offset.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wfx_beacon_loss_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  tail call void @ieee80211_beacon_loss(ptr noundef %1) #9
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %3 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef %call2.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_policy_upload_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_hw_scan_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_queues_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_macaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %set_pm_mode_complete = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 2, i32 6
  %call1 = tail call i32 @wait_for_completion_timeout(ptr noundef %set_pm_mode_complete, i32 noundef 30) #9
  tail call void @wfx_tx_queues_check_empty(ptr noundef %drv_priv) #9
  %conf_mutex = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #9
  %link_id_map = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %2 = ptrtoint ptr %link_id_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_id_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !103

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 801, i32 noundef 9, ptr noundef nonnull @.str.33) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call20 = tail call i32 @hif_reset(ptr noundef %drv_priv, i1 noundef zeroext false) #9
  %call21 = tail call i32 @hif_set_macaddr(ptr noundef %drv_priv, ptr noundef null) #9
  tail call void @wfx_tx_policy_init(ptr noundef %drv_priv) #9
  %beacon_loss_work = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %call22 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %beacon_loss_work) #9
  %id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %vif24 = getelementptr inbounds %struct.wfx_vif, ptr %drv_priv, i32 0, i32 1
  %7 = ptrtoint ptr %vif24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vif24, align 4
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #9
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %wvif.0 = phi ptr [ null, %if.end ], [ %retval.0.i, %while.cond.backedge ]
  %tobool.not.i = icmp eq ptr %wvif.0, null
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %10, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %10, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %spec.select.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %spec.select.i.i, %wvif.0
  %narrow.i = or i1 %tobool.not.i, %cmp5.i
  %11 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i = and i32 %11, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i
  %12 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %13, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %13, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %14 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %14, label %if.end4.i.while.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wvif_iterate.exit

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp27.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp27.not, label %wvif_iterate.exit.while.end_crit_edge, label %while.body

wvif_iterate.exit.while.end_crit_edge:            ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %wvif_iterate.exit
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #9, !srcloc !99
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i51 = icmp ne ptr %17, null
  %inc.i = zext i1 %tobool12.not.i.i51 to i32
  %18 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #9, !srcloc !99
  %and.i.1.i53 = and i32 %18, 1
  %arrayidx.i.1.i54 = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i53
  %19 = ptrtoint ptr %arrayidx.i.1.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.1.i54, align 4
  %tobool12.not.i.1.i55 = icmp ne ptr %20, null
  %inc.1.i = zext i1 %tobool12.not.i.1.i55 to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.1.i)
  %cmp29 = icmp eq i32 %spec.select.1.i, 1
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 @hif_set_block_ack_policy(ptr noundef nonnull %retval.0.i, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 @hif_set_block_ack_policy(ptr noundef nonnull %retval.0.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then30
  br label %while.cond

while.end:                                        ; preds = %wvif_iterate.exit.while.end_crit_edge, %if.end4.i.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_queues_check_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wfx_start(ptr nocapture noundef readnone %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_stop(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_pending = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tx_pending, align 4
  %cmp.i = icmp eq ptr %3, %tx_pending
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %do.end, !prof !103

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 832, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_beacon_filter_control(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_beacon_filter_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wfx_api_older_than(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_template_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_proberesp_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_connection_loss(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_association_mode(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_bss_params(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_beacon_transmit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_update_ie_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_beacon_loss(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !64, !66, !68, !69, !70, !71, !72, !74, !76, !77, !78, !80, !81, !83, !84, !85, !86, !88}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/sta.c", i32 33, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wfx_rate_mask_to_hw._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wfx_rate_mask_to_hw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/wfx/sta.c", i32 138, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @wfx_configure_filter.__UNIQUE_ID_ddebug351, !9, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/wfx/sta.c", i32 211, i32 3}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @wfx_update_pm._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @wfx_update_pm._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/wfx/sta.c", i32 536, i32 4}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wfx_bss_info_changed._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @wfx_bss_info_changed._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/wfx/sta.c", i32 542, i32 4}
!25 = !{ptr @wfx_bss_info_changed._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @wfx_bss_info_changed._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/wfx/sta.c", i32 637, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wfx_set_tim._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @wfx_set_tim._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/wfx/sta.c", i32 660, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @wfx_suspend_resume_mc._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @wfx_suspend_resume_mc._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/wfx/sta.c", i32 705, i32 2}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/wfx/sta.c", i32 718, i32 2}
!41 = !{ptr @wfx_add_interface.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/staging/wfx/sta.c", i32 754, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wfx_add_interface.__key.22, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/staging/wfx/sta.c", i32 755, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @wfx_add_interface.__key.24, !45, !"__key", i1 false, i1 false}
!48 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @wfx_add_interface.__key.26, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/staging/wfx/sta.c", i32 759, i32 2}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wfx_add_interface.__key.28, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/staging/wfx/sta.c", i32 761, i32 2}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @wfx_add_interface.__key.30, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/staging/wfx/sta.c", i32 763, i32 2}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/wfx/sta.c", i32 775, i32 2}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/wfx/sta.c", i32 801, i32 2}
!62 = !{ptr @wfx_filter_beacon.filter_ies, !63, !"filter_ies", i1 false, i1 false}
!63 = !{!"../drivers/staging/wfx/sta.c", i32 66, i32 41}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/wfx/sta.c", i32 158, i32 2}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/wfx/sta.c", i32 170, i32 5}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @wfx_get_ps_timeout._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @wfx_get_ps_timeout._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/wfx/wfx.h", i32 98, i32 3}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, !82, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!86 = !{ptr @init_completion.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../include/linux/completion.h", i32 87, i32 2}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 836383, i64 836400}
!100 = !{i64 2148870193, i64 2148870198, i64 2148870211, i64 2148870255, i64 2148870289, i64 2148870310}
!101 = !{i8 0, i8 2}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i32 0, i32 33}
!105 = !{i64 2149685015}
!106 = !{i64 2149685281}
!107 = !{!"auto-init"}
