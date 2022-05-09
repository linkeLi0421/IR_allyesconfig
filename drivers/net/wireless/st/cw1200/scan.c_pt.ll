; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/scan.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.cfg80211_ssid = type { [32 x i8], i8 }
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
%struct.wsm_scan = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wsm_scan_ch = type { i16, i32, i32, i32 }
%struct.wsm_template_frame = type { i8, i8, ptr }
%struct.wsm_tx = type { %struct.wsm_hdr, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_hdr = type { i16, i16 }
%struct.cw1200_txpriv = type { i8, i8, i8, i8, i8 }

@cw1200_hw_scan.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cw1200_core\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cw1200_hw_scan\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/st/cw1200/scan.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[SCAN] Scan request for %d SSIDs.\0A\00", [61 x i8] zeroinitializer }, align 32
@__const.cw1200_scan_work.scan = private unnamed_addr constant { i8, i8, i8, i8, i32, i32, i8, i8, i8, [1 x i8], ptr, ptr } { i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, ptr null }, align 4
@cw1200_scan_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 178, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[SCAN] Scan failed (%d).\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_scan_work\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cw1200_scan_work._entry_ptr = internal global ptr @cw1200_scan_work._entry, section ".printk_index", align 4
@cw1200_scan_work.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[SCAN] Scan completed.\0A\00", [40 x i8] zeroinitializer }, align 32
@cw1200_scan_work.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.9, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[SCAN] Scan canceled.\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_scan_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 343, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Timeout waiting for scan complete notification.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_scan_timeout\00", [44 x i8] zeroinitializer }, align 32
@cw1200_scan_timeout._entry_ptr = internal global ptr @cw1200_scan_timeout._entry, section ".printk_index", align 4
@__const.cw1200_probe_work.ch = private unnamed_addr constant [1 x { i16, [2 x i8], i32, i32, i32 }] [{ i16, [2 x i8], i32, i32, i32 } { i16 0, [2 x i8] zeroinitializer, i32 0, i32 10, i32 0 }], align 4
@cw1200_probe_work.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw1200_probe_work\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[SCAN] Direct probe work.\0A\00", [37 x i8] zeroinitializer }, align 32
@cw1200_scan_start.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw1200_scan_start\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[SCAN] hw req, type %d, %d channels, flags: 0x%x.\0A\00", [45 x i8] zeroinitializer }, align 32
@cw1200_scan_restart_delayed.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cw1200_scan_restart_delayed\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[CQM] Requeue BSS loss.\0A\00", [39 x i8] zeroinitializer }, align 32
@cw1200_scan_complete.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_scan_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[SCAN] Direct probe complete.\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 72, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 176, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 180, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 183, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 342, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 382, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 30, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 280, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [41 x i8] c"../drivers/net/wireless/st/cw1200/scan.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 290, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @cw1200_scan_timeout._entry, ptr @cw1200_scan_timeout._entry_ptr, ptr @cw1200_scan_work._entry, ptr @cw1200_scan_work._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_scan_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_scan_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_hw_scan(ptr noundef %hw, ptr nocapture noundef readnone %vif, ptr noundef %hw_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %req2 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1
  %vif3 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vif3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %4 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %n_ssids = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp6 = icmp eq i32 %7, 1
  br i1 %cmp6, label %land.lhs.true, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %if.end5
  %8 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req2, align 8
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %n_ssids to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %n_ssids, align 4
  br label %do.body

do.body:                                          ; preds = %if.then8, %land.lhs.true.do.body_crit_edge, %if.end5.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_hw_scan.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_hw_scan, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !51

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  %15 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_ssids, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw1200_hw_scan.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %16) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %17 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp18 = icmp sgt i32 %18, 2
  br i1 %cmp18, label %do.end.cleanup_crit_edge, label %if.end20

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %19 = ptrtoint ptr %vif3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vif3, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %20, i32 0, i32 2
  %ie_len = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ie_len, align 4
  %call22 = tail call ptr @ieee80211_probereq_get(ptr noundef %hw, ptr noundef %addr, ptr noundef null, i32 noundef 0, i32 noundef %22) #7
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end20.cleanup_crit_edge, label %if.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %23 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool28.not = icmp eq i32 %24, 0
  br i1 %tobool28.not, label %if.end26.if.end33_crit_edge, label %if.then29

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %ie = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ie, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call22, i32 noundef %24) #7
  %27 = call ptr @memcpy(ptr %call.i, ptr %26, i32 %24)
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end26.if.end33_crit_edge
  %scan = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85
  tail call void @down(ptr noundef %scan) #7
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %call.i155 = tail call ptr @skb_push(ptr noundef nonnull %call22, i32 noundef 4) #7
  %28 = ptrtoint ptr %call.i155 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %call.i155, align 1
  %arrayidx1.i = getelementptr i8, ptr %call.i155, i32 1
  %29 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx1.i, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 6
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %32 = trunc i32 %31 to i16
  %conv.i = add i16 %32, -4
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %arrayidx3.i = getelementptr i16, ptr %call.i155, i32 1
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx3.i, align 2
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %call6.i = tail call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4098, ptr noundef %call.i155, i32 noundef %36) #7
  %call8.i = tail call ptr @skb_pull(ptr noundef nonnull %call22, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool35.not = icmp eq i32 %call6.i, 0
  br i1 %tobool35.not, label %if.end38, label %if.end33.if.then40_crit_edge

if.end33.if.then40_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

if.end38:                                         ; preds = %if.end33
  %call37 = tail call i32 @wsm_set_probe_responder(ptr noundef %1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool39.not = icmp eq i32 %call37, 0
  br i1 %tobool39.not, label %if.end45, label %if.end38.if.then40_crit_edge

if.end38.if.then40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

if.then40:                                        ; preds = %if.end38.if.then40_crit_edge, %if.end33.if.then40_crit_edge
  %ret.0166 = phi i32 [ %call37, %if.end38.if.then40_crit_edge ], [ %call6.i, %if.end33.if.then40_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #7
  tail call void @up(ptr noundef %scan) #7
  tail call void @consume_skb(ptr noundef nonnull %call22) #7
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  tail call void @wsm_lock_tx(ptr noundef %1) #7
  %req48 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 3
  %37 = ptrtoint ptr %req48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %req48, align 4
  %tobool49.not = icmp eq ptr %38, null
  br i1 %tobool49.not, label %do.end65, label %do.body57, !prof !52

do.body57:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/scan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

do.end65:                                         ; preds = %if.end45
  %39 = ptrtoint ptr %req48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %req2, ptr %req48, align 4
  %n_ssids69 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 9
  %40 = ptrtoint ptr %n_ssids69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %n_ssids69, align 4
  %status = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 10
  %41 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %status, align 4
  %channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 22
  %begin = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 4
  %42 = ptrtoint ptr %begin to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %channels, ptr %begin, align 4
  %curr = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 5
  %43 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %channels, ptr %curr, align 4
  %n_channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_channels, align 8
  %arrayidx77 = getelementptr %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 22, i32 %45
  %end = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 6
  %46 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx77, ptr %end, align 4
  %output_power = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 22
  %47 = ptrtoint ptr %output_power to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %output_power, align 4
  %output_power80 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 8
  %49 = ptrtoint ptr %output_power80 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %output_power80, align 4
  %50 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp82167 = icmp sgt i32 %51, 0
  br i1 %cmp82167, label %do.end65.for.body_crit_edge, label %do.end65.for.end_crit_edge

do.end65.for.end_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end65.for.body_crit_edge:                      ; preds = %do.end65
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end65.for.body_crit_edge
  %i.0168 = phi i32 [ %inc98, %for.body.for.body_crit_edge ], [ 0, %do.end65.for.body_crit_edge ]
  %52 = ptrtoint ptr %n_ssids69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_ssids69, align 4
  %arrayidx87 = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 7, i32 %53
  %54 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req2, align 8
  %arrayidx90 = getelementptr %struct.cfg80211_ssid, ptr %55, i32 %i.0168
  %56 = call ptr @memcpy(ptr %arrayidx87, ptr %arrayidx90, i32 32)
  %57 = load ptr, ptr %req2, align 8
  %ssid_len95 = getelementptr %struct.cfg80211_ssid, ptr %57, i32 %i.0168, i32 1
  %58 = ptrtoint ptr %ssid_len95 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ssid_len95, align 1
  %conv = zext i8 %59 to i32
  %length = getelementptr %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 7, i32 %53, i32 1
  %60 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv, ptr %length, align 4
  %61 = load i32, ptr %n_ssids69, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %n_ssids69, align 4
  %inc98 = add nuw nsw i32 %i.0168, 1
  %62 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_ssids, align 4
  %cmp82 = icmp slt i32 %inc98, %63
  br i1 %cmp82, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end65.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #7
  tail call void @consume_skb(ptr noundef nonnull %call22) #7
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %64 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %workqueue, align 4
  %work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 1
  %call.i156 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %work) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then40, %if.end20.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0166, %if.then40 ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_probereq_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_set_probe_responder(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_lock_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_scan_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %val.i363 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %scan = alloca %struct.wsm_scan, align 4
  %pm = alloca %struct.wsm_set_pm, align 4
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1712
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scan) #7
  %0 = call ptr @memcpy(ptr %scan, ptr @__const.cw1200_scan_work.scan, i32 24)
  %scan1 = getelementptr i8, ptr %work, i32 -56
  %begin = getelementptr i8, ptr %work, i32 148
  %1 = ptrtoint ptr %begin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %begin, align 4
  %curr = getelementptr i8, ptr %work, i32 152
  %3 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %curr, align 4
  %cmp = icmp eq ptr %2, %4
  br i1 %cmp, label %land.end, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.end:                                         ; preds = %entry
  %end = getelementptr i8, ptr %work, i32 156
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end, align 4
  %cmp6.not = icmp eq ptr %2, %6
  br i1 %cmp6.not, label %land.end.if.end12_crit_edge, label %if.then

land.end.if.end12_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %land.end
  %join_timeout = getelementptr i8, ptr %work, i32 920
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %join_timeout) #7
  br i1 %call, label %if.then9, label %if.then.if.then14_crit_edge

if.then.if.then14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cw1200_join_timeout(ptr noundef %join_timeout) #7
  br label %if.then14

if.end12:                                         ; preds = %land.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %conf_mutex = getelementptr i8, ptr %work, i32 -1636
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  br label %if.end30

if.then14:                                        ; preds = %if.then9, %if.then.if.then14_crit_edge
  %conf_mutex366 = getelementptr i8, ptr %work, i32 -1636
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex366, i32 noundef 0) #7
  %join_status = getelementptr i8, ptr %work, i32 908
  %7 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %join_status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.then14.if.end30_crit_edge [
    i32 4, label %land.lhs.true
    i32 1, label %if.then26
  ]

if.then14.if.end30_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %if.then14
  %powersave_mode = getelementptr i8, ptr %work, i32 -632
  %10 = ptrtoint ptr %powersave_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %powersave_mode, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm) #7
  %13 = ptrtoint ptr %powersave_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %powersave_mode, align 4
  %15 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pm, align 4
  store i8 1, ptr %pm, align 4
  %call22 = call i32 @cw1200_set_pm(ptr noundef %add.ptr, ptr noundef nonnull %pm) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm) #7
  br label %if.end30

if.then26:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @cw1200_disable_listening(ptr noundef %add.ptr) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then19, %land.lhs.true.if.end30_crit_edge, %if.then14.if.end30_crit_edge, %if.end12
  %conf_mutex367 = phi ptr [ %conf_mutex366, %if.then19 ], [ %conf_mutex366, %if.then26 ], [ %conf_mutex, %if.end12 ], [ %conf_mutex366, %land.lhs.true.if.end30_crit_edge ], [ %conf_mutex366, %if.then14.if.end30_crit_edge ]
  %req = getelementptr i8, ptr %work, i32 144
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %tobool32.not = icmp eq ptr %17, null
  br i1 %tobool32.not, label %if.end30.if.then39_crit_edge, label %lor.lhs.false

if.end30.if.then39_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.end30
  %18 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %curr, align 4
  %end36 = getelementptr i8, ptr %work, i32 156
  %20 = ptrtoint ptr %end36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end36, align 4
  %cmp37 = icmp eq ptr %19, %21
  br i1 %cmp37, label %lor.lhs.false.if.then39_crit_edge, label %if.else118

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %if.end30.if.then39_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #7
  %22 = getelementptr inbounds i8, ptr %info, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %22, align 8
  %aborted = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %status = getelementptr i8, ptr %work, i32 240
  %24 = call ptr @memset(ptr %info, i32 0, i32 14)
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool41 = icmp ne i32 %26, 0
  %frombool43 = zext i1 %tobool41 to i8
  %27 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool43, ptr %aborted, align 2
  %output_power = getelementptr i8, ptr %work, i32 232
  %28 = ptrtoint ptr %output_power to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %output_power, align 4
  %output_power45 = getelementptr i8, ptr %work, i32 -780
  %30 = ptrtoint ptr %output_power45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %output_power45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp46.not = icmp eq i32 %29, %31
  br i1 %cmp46.not, label %if.then39.if.end51_crit_edge, label %if.then48

if.then39.if.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then48:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %31, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %32 = call i32 @llvm.bswap.i32(i32 %mul) #7
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val.i, align 4
  %call.i = call i32 @wsm_write_mib(ptr noundef %add.ptr, i16 noundef zeroext 6, ptr noundef nonnull %val.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then39.if.end51_crit_edge
  %join_status52 = getelementptr i8, ptr %work, i32 908
  %34 = ptrtoint ptr %join_status52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %join_status52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp53 = icmp eq i32 %35, 4
  br i1 %cmp53, label %land.lhs.true55, label %if.end51.if.end64_crit_edge

if.end51.if.end64_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

land.lhs.true55:                                  ; preds = %if.end51
  %powersave_mode56 = getelementptr i8, ptr %work, i32 -632
  %36 = ptrtoint ptr %powersave_mode56 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %powersave_mode56, align 4
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool60.not = icmp eq i8 %38, 0
  br i1 %tobool60.not, label %if.then61, label %land.lhs.true55.if.end64_crit_edge

land.lhs.true55.if.end64_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then61:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = call i32 @cw1200_set_pm(ptr noundef %add.ptr, ptr noundef %powersave_mode56) #7
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %land.lhs.true55.if.end64_crit_edge, %if.end51.if.end64_crit_edge
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp67 = icmp slt i32 %40, 0
  br i1 %cmp67, label %do.end, label %if.else72

do.end:                                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %40) #10
  br label %if.end112

if.else72:                                        ; preds = %if.end64
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req, align 4
  %tobool75.not = icmp eq ptr %46, null
  br i1 %tobool75.not, label %do.body92, label %do.body77

do.body77:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_scan_work.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_scan_work, %if.then84)) #7
          to label %if.end112 [label %if.then84], !srcloc !51

if.then84:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 4
  %wiphy86 = getelementptr inbounds %struct.ieee80211_hw, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wiphy86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wiphy86, align 8
  %dev87 = getelementptr inbounds %struct.wiphy, ptr %50, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw1200_scan_work.__UNIQUE_ID_ddebug350, ptr noundef %dev87, ptr noundef nonnull @.str.8) #7
  br label %if.end112

do.body92:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_scan_work.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_scan_work, %if.then104)) #7
          to label %if.end112 [label %if.then104], !srcloc !51

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 4
  %wiphy106 = getelementptr inbounds %struct.ieee80211_hw, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %wiphy106 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wiphy106, align 8
  %dev107 = getelementptr inbounds %struct.wiphy, ptr %54, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw1200_scan_work.__UNIQUE_ID_ddebug351, ptr noundef %dev107, ptr noundef nonnull @.str.9) #7
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %do.body92, %if.then84, %do.body77, %do.end
  %55 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %req, align 4
  call fastcc void @cw1200_scan_restart_delayed(ptr noundef %add.ptr)
  call void @wsm_unlock_tx(ptr noundef %add.ptr) #7
  call void @mutex_unlock(ptr noundef %conf_mutex367) #7
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr, align 4
  call void @ieee80211_scan_completed(ptr noundef %57, ptr noundef nonnull %info) #7
  call void @up(ptr noundef %scan1) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #7
  br label %cleanup263

if.else118:                                       ; preds = %lor.lhs.false
  %58 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %19, align 4
  %it.0376 = getelementptr ptr, ptr %19, i32 1
  %cmp126.not377.not = icmp eq ptr %it.0376, %21
  br i1 %cmp126.not377.not, label %if.else118.for.end_crit_edge, label %for.body.lr.ph

if.else118.for.end_crit_edge:                     ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else118
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %flags137 = getelementptr inbounds %struct.ieee80211_channel, ptr %59, i32 0, i32 4
  %max_power146 = getelementptr inbounds %struct.ieee80211_channel, ptr %59, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %it.0379 = phi ptr [ %it.0376, %for.body.lr.ph ], [ %it.0, %for.inc.for.body_crit_edge ]
  %i.0378 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %62 = ptrtoint ptr %it.0379 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %it.0379, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %61)
  %cmp133.not = icmp eq i32 %65, %61
  br i1 %cmp133.not, label %if.end136, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end136:                                        ; preds = %for.body
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %63, i32 0, i32 4
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %68 = ptrtoint ptr %flags137 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags137, align 4
  %xor = xor i32 %69, %67
  %and138 = and i32 %xor, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end136.for.end_crit_edge

if.end136.for.end_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end141:                                        ; preds = %if.end136
  %and143 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %land.lhs.true145, label %if.end141.for.inc_crit_edge

if.end141.for.inc_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true145:                                 ; preds = %if.end141
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %63, i32 0, i32 6
  %70 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_power, align 4
  %72 = ptrtoint ptr %max_power146 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_power146, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp147.not = icmp eq i32 %71, %73
  br i1 %cmp147.not, label %land.lhs.true145.for.inc_crit_edge, label %land.lhs.true145.for.end_crit_edge

land.lhs.true145.for.end_crit_edge:               ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true145.for.inc_crit_edge:               ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true145.for.inc_crit_edge, %if.end141.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0378, 1
  %it.0 = getelementptr ptr, ptr %it.0379, i32 1
  %cmp126.not = icmp ne ptr %it.0, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %i.0378)
  %cmp129 = icmp ult i32 %i.0378, 47
  %or.cond = select i1 %cmp126.not, i1 %cmp129, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true145.for.end_crit_edge, %if.end136.for.end_crit_edge, %for.body.for.end_crit_edge, %if.else118.for.end_crit_edge
  %it.0.lcssa = phi ptr [ %21, %if.else118.for.end_crit_edge ], [ %it.0, %for.inc.for.end_crit_edge ], [ %it.0379, %land.lhs.true145.for.end_crit_edge ], [ %it.0379, %if.end136.for.end_crit_edge ], [ %it.0379, %for.body.for.end_crit_edge ]
  %74 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %59, align 4
  %conv152 = trunc i32 %75 to i8
  %76 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv152, ptr %scan, align 4
  %no_cck = getelementptr inbounds %struct.cfg80211_scan_request, ptr %17, i32 0, i32 18
  %77 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %no_cck, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool156.not = icmp eq i8 %78, 0
  %spec.select = select i1 %tobool156.not, i8 0, i8 6
  %79 = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 3
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %spec.select, ptr %79, align 1
  %flags161 = getelementptr inbounds %struct.ieee80211_channel, ptr %59, i32 0, i32 4
  %81 = ptrtoint ptr %flags161 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags161, align 4
  %and162 = and i32 %82, 2
  %83 = xor i32 %and162, 2
  %num_probes = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 5
  %84 = ptrtoint ptr %num_probes to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %num_probes, align 4
  %n_ssids = getelementptr i8, ptr %work, i32 236
  %85 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %n_ssids, align 4
  %conv166 = trunc i32 %86 to i8
  %num_ssids = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 7
  %87 = ptrtoint ptr %num_ssids to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv166, ptr %num_ssids, align 1
  %ssids = getelementptr i8, ptr %work, i32 160
  %ssids168 = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 9
  %88 = ptrtoint ptr %ssids168 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %ssids, ptr %ssids168, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %it.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %89 = lshr exact i32 %sub.ptr.sub, 2
  %conv171 = trunc i32 %89 to i8
  %num_channels = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 6
  %90 = ptrtoint ptr %num_channels to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv171, ptr %num_channels, align 4
  %probe_delay = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 8
  %91 = ptrtoint ptr %probe_delay to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 100, ptr %probe_delay, align 2
  %join_status172 = getelementptr i8, ptr %work, i32 908
  %92 = ptrtoint ptr %join_status172 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %join_status172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %93)
  %cmp173 = icmp eq i32 %93, 4
  br i1 %cmp173, label %if.then175, label %for.end.if.end177_crit_edge

for.end.if.end177_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177

if.then175:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 1
  %94 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %type, align 1
  %flags176 = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 2
  %95 = ptrtoint ptr %flags176 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %flags176, align 2
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %for.end.if.end177_crit_edge
  %sub.ptr.div183 = ashr exact i32 %sub.ptr.sub, 2
  %96 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.ptr.div183, i32 16) #7
  %97 = extractvalue { i32, i1 } %96, 1
  br i1 %97, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !55

kcalloc.exit.thread:                              ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  %ch373 = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 10
  %98 = ptrtoint ptr %ch373 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %ch373, align 4
  br label %if.then187

if.end7.i.i:                                      ; preds = %if.end177
  %99 = extractvalue { i32, i1 } %96, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %99, i32 noundef 3520) #11
  %ch = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 10
  %100 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call8.i.i, ptr %ch, align 4
  %tobool186.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool186.not, label %if.end7.i.i.if.then187_crit_edge, label %for.cond191.preheader

if.end7.i.i.if.then187_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then187

for.cond191.preheader:                            ; preds = %if.end7.i.i
  %101 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp194384.not = icmp eq i8 %102, 0
  br i1 %cmp194384.not, label %for.cond191.preheader.for.end223_crit_edge, label %for.cond191.preheader.for.body196_crit_edge

for.cond191.preheader.for.body196_crit_edge:      ; preds = %for.cond191.preheader
  br label %for.body196

for.cond191.preheader.for.end223_crit_edge:       ; preds = %for.cond191.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end223

if.then187:                                       ; preds = %if.end7.i.i.if.then187_crit_edge, %kcalloc.exit.thread
  %status189 = getelementptr i8, ptr %work, i32 240
  %103 = ptrtoint ptr %status189 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -12, ptr %status189, align 4
  br label %fail

for.body196:                                      ; preds = %for.body196.for.body196_crit_edge, %for.cond191.preheader.for.body196_crit_edge
  %i.1385 = phi i32 [ %inc222, %for.body196.for.body196_crit_edge ], [ 0, %for.cond191.preheader.for.body196_crit_edge ]
  %104 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %curr, align 4
  %arrayidx199 = getelementptr ptr, ptr %105, i32 %i.1385
  %106 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx199, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %hw_value, align 2
  %110 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ch, align 4
  %arrayidx201 = getelementptr %struct.wsm_scan_ch, ptr %111, i32 %i.1385
  %112 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %109, ptr %arrayidx201, align 4
  %113 = load ptr, ptr %curr, align 4
  %arrayidx204 = getelementptr ptr, ptr %113, i32 %i.1385
  %114 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx204, align 4
  %flags205 = getelementptr inbounds %struct.ieee80211_channel, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %flags205 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags205, align 4
  %and206 = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  %118 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ch, align 4
  %min_chan_time216 = getelementptr %struct.wsm_scan_ch, ptr %119, i32 %i.1385, i32 1
  %. = select i1 %tobool207.not, i32 10, i32 50
  %.395 = select i1 %tobool207.not, i32 25, i32 100
  %120 = ptrtoint ptr %min_chan_time216 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %., ptr %min_chan_time216, align 4
  %121 = load ptr, ptr %ch, align 4
  %max_chan_time = getelementptr %struct.wsm_scan_ch, ptr %121, i32 %i.1385, i32 2
  %122 = ptrtoint ptr %max_chan_time to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %.395, ptr %max_chan_time, align 4
  %inc222 = add nuw nsw i32 %i.1385, 1
  %123 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %num_channels, align 4
  %conv193 = zext i8 %124 to i32
  %cmp194 = icmp ult i32 %inc222, %conv193
  br i1 %cmp194, label %for.body196.for.body196_crit_edge, label %for.body196.for.end223_crit_edge

for.body196.for.end223_crit_edge:                 ; preds = %for.body196
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end223

for.body196.for.body196_crit_edge:                ; preds = %for.body196
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body196

for.end223:                                       ; preds = %for.body196.for.end223_crit_edge, %for.cond191.preheader.for.end223_crit_edge
  %125 = ptrtoint ptr %flags161 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags161, align 4
  %and225 = and i32 %126, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %land.lhs.true227, label %for.end223.if.end241_crit_edge

for.end223.if.end241_crit_edge:                   ; preds = %for.end223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end241

land.lhs.true227:                                 ; preds = %for.end223
  %output_power229 = getelementptr i8, ptr %work, i32 232
  %127 = ptrtoint ptr %output_power229 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %output_power229, align 4
  %max_power230 = getelementptr inbounds %struct.ieee80211_channel, ptr %59, i32 0, i32 6
  %129 = ptrtoint ptr %max_power230 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_power230, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp231.not = icmp eq i32 %128, %130
  br i1 %cmp231.not, label %land.lhs.true227.if.end241_crit_edge, label %if.then233

land.lhs.true227.if.end241_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end241

if.then233:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %output_power229 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %output_power229, align 4
  %mul239 = mul i32 %130, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i363) #7
  %132 = call i32 @llvm.bswap.i32(i32 %mul239) #7
  %133 = ptrtoint ptr %val.i363 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %val.i363, align 4
  %call.i364 = call i32 @wsm_write_mib(ptr noundef %add.ptr, i16 noundef zeroext 6, ptr noundef nonnull %val.i363, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i363) #7
  br label %if.end241

if.end241:                                        ; preds = %if.then233, %land.lhs.true227.if.end241_crit_edge, %for.end223.if.end241_crit_edge
  %call242 = call fastcc i32 @cw1200_scan_start(ptr noundef %add.ptr, ptr noundef nonnull %scan)
  %status244 = getelementptr i8, ptr %work, i32 240
  %134 = ptrtoint ptr %status244 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call242, ptr %status244, align 4
  %135 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ch, align 4
  call void @kfree(ptr noundef %136) #7
  %137 = ptrtoint ptr %status244 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %status244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool248.not = icmp eq i32 %138, 0
  br i1 %tobool248.not, label %if.end253, label %if.end241.fail_crit_edge

if.end241.fail_crit_edge:                         ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end253:                                        ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %it.0.lcssa, ptr %curr, align 4
  call void @mutex_unlock(ptr noundef %conf_mutex367) #7
  br label %cleanup263

fail:                                             ; preds = %if.end241.fail_crit_edge, %if.then187
  %140 = ptrtoint ptr %end36 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %end36, align 4
  %142 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %curr, align 4
  call void @mutex_unlock(ptr noundef %conf_mutex367) #7
  %workqueue = getelementptr i8, ptr %work, i32 -1640
  %143 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %workqueue, align 4
  %call.i365 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %144, ptr noundef %work) #7
  br label %cleanup263

cleanup263:                                       ; preds = %fail, %if.end253, %if.end112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scan) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_join_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_set_pm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_disable_listening(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_scan_restart_delayed(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %0 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @cw1200_enable_listening(ptr noundef %priv) #7
  tail call void @cw1200_update_filtering(ptr noundef %priv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %delayed_unjoin = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 106
  %2 = ptrtoint ptr %delayed_unjoin to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %delayed_unjoin, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %delayed_unjoin to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %delayed_unjoin, align 4
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %5 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue, align 4
  %unjoin_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 102
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %unjoin_work) #7
  br i1 %call.i, label %if.then1.if.end18_crit_edge, label %if.then6

if.then1.if.end18_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then6:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wsm_unlock_tx(ptr noundef %priv) #7
  br label %if.end18

if.else:                                          ; preds = %if.end
  %delayed_link_loss = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 136
  %7 = ptrtoint ptr %delayed_link_loss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delayed_link_loss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.else.if.end18_crit_edge, label %do.body

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_scan_restart_delayed.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_scan_restart_delayed, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !51

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw1200_scan_restart_delayed.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %13 = ptrtoint ptr %delayed_link_loss to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %delayed_link_loss, align 4
  %bss_loss_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 133
  tail call void @_raw_spin_lock(ptr noundef %bss_loss_lock.i) #7
  tail call void @__cw1200_cqm_bssloss_sm(ptr noundef %priv, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  tail call void @_raw_spin_unlock(ptr noundef %bss_loss_lock.i) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.else.if.end18_crit_edge, %if.then6, %if.then1.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_unlock_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw1200_scan_start(ptr noundef %priv, ptr noundef %scan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 97
  %0 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %join_status, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_scan_start.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_scan_start, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !51

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %type = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 1
  %conv = zext i8 %8 to i32
  %num_channels = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 6
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_channels, align 4
  %conv3 = zext i8 %10 to i32
  %flags = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 2
  %conv4 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw1200_scan_start.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %num_channels5 = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 6
  %13 = ptrtoint ptr %num_channels5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_channels5, align 4
  %conv6 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp65.not = icmp eq i8 %14, 0
  br i1 %cmp65.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %ch = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 10
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %tmo.067 = phi i32 [ 2000, %for.body.lr.ph ], [ %add8, %for.body.for.body_crit_edge ]
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %max_chan_time = getelementptr %struct.wsm_scan_ch, ptr %16, i32 %i.066, i32 2
  %17 = ptrtoint ptr %max_chan_time to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_chan_time, align 4
  %add = add i32 %tmo.067, 10
  %add8 = add i32 %add, %18
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %conv6
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %tmo.0.lcssa = phi i32 [ 2000, %do.end.for.end_crit_edge ], [ %add8, %for.body.for.end_crit_edge ]
  %clear_recent_scan_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 87
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %clear_recent_scan_work) #7
  %in_progress = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_progress, i32 noundef 4) #7
  %19 = ptrtoint ptr %in_progress to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %in_progress, align 4
  %recent_scan = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 86
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %recent_scan, i32 noundef 4) #7
  %20 = ptrtoint ptr %recent_scan to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %recent_scan, align 4
  %pm_state = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 58
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %tmo.0.lcssa) #7
  tail call void @cw1200_pm_stay_awake(ptr noundef %pm_state, i32 noundef %call2.i) #7
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %21 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workqueue, align 4
  %call2.i54 = tail call i32 @__msecs_to_jiffies(i32 noundef %tmo.0.lcssa) #7
  %timeout63 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %timeout63, i32 noundef %call2.i54) #7
  %call15 = tail call i32 @wsm_scan(ptr noundef %priv, ptr noundef %scan) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %if.then17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_progress, i32 noundef 4) #7
  %23 = ptrtoint ptr %in_progress to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %in_progress, align 4
  %call22 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout63) #7
  tail call fastcc void @cw1200_scan_restart_delayed(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %call15, %if.then17 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_scan_failed_cb(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end:                                           ; preds = %entry
  %timeout = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout) #7
  br i1 %call, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -5, ptr %status, align 4
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %3 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %timeout, i32 noundef 0) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_scan_complete_cb(ptr noundef %priv, ptr nocapture noundef readnone %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end:                                           ; preds = %entry
  %timeout = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout) #7
  br i1 %call, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %status, align 4
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %3 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %timeout, i32 noundef 0) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_clear_recent_scan_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %recent_scan = getelementptr i8, ptr %work, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %recent_scan, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %recent_scan, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %recent_scan) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_scan_timeout(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1756
  %in_progress = getelementptr i8, ptr %work, i32 200
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_progress, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %in_progress, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %in_progress) #7, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %status = getelementptr i8, ptr %work, i32 196
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool7.not = icmp eq i32 %2, 0
  br i1 %tobool7.not, label %do.end, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -110, ptr %status, align 4
  %end = getelementptr i8, ptr %work, i32 112
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end, align 4
  %curr = getelementptr i8, ptr %work, i32 108
  %11 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %curr, align 4
  %call13 = tail call i32 @wsm_stop_scan(ptr noundef %add.ptr) #7
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.else.if.end14_crit_edge, %if.then2
  tail call fastcc void @cw1200_scan_complete(ptr noundef %add.ptr)
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_stop_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_scan_complete(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 4
  %clear_recent_scan_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 87
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %clear_recent_scan_work, i32 noundef 100) #7
  %scan = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85
  %direct_probe = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 13
  %2 = ptrtoint ptr %direct_probe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %direct_probe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_scan_complete.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_scan_complete, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !51

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw1200_scan_complete.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call fastcc void @cw1200_scan_restart_delayed(ptr noundef %priv)
  %8 = ptrtoint ptr %direct_probe to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %direct_probe, align 4
  tail call void @up(ptr noundef %scan) #7
  tail call void @wsm_unlock_tx(ptr noundef %priv) #7
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 85, i32 1
  tail call void @cw1200_scan_work(ptr noundef %work)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_probe_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %txpriv = alloca ptr, align 4
  %frame = alloca %struct.wsm_template_frame, align 8
  %ssids = alloca [1 x %struct.wsm_ssid], align 4
  %ch = alloca [1 x %struct.wsm_scan_ch], align 4
  %scan = alloca %struct.wsm_scan, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1960
  %pending_frame_id = getelementptr i8, ptr %work, i32 664
  %0 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_frame_id, align 4
  %shr.i = lshr i32 %1, 16
  %tx_queue = getelementptr i8, ptr %work, i32 -1792
  %idxprom = and i32 %shr.i, 255
  %arrayidx = getelementptr [4 x %struct.cw1200_queue], ptr %tx_queue, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txpriv) #7
  %2 = ptrtoint ptr %txpriv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %txpriv, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %frame) #7
  %3 = ptrtoint ptr %frame to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %frame, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ssids) #7
  %4 = call ptr @memset(ptr %ssids, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ch) #7
  %5 = call ptr @memcpy(ptr %ch, ptr @__const.cw1200_probe_work.ch, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scan) #7
  %6 = getelementptr inbounds i8, ptr %scan, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %type = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 1
  %flags = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 2
  %max_tx_rate = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 3
  %num_probes = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 5
  %8 = ptrtoint ptr %scan to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %scan, align 8
  %9 = ptrtoint ptr %num_probes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %num_probes, align 8
  %num_channels = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 6
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_channels, align 4
  %num_ssids = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 7
  %11 = ptrtoint ptr %num_ssids to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %num_ssids, align 1
  %probe_delay = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 8
  %12 = ptrtoint ptr %probe_delay to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %probe_delay, align 2
  %ssids1 = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 9
  %13 = ptrtoint ptr %ssids1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ssids, ptr %ssids1, align 8
  %ch2 = getelementptr inbounds %struct.wsm_scan, ptr %scan, i32 0, i32 10
  %14 = ptrtoint ptr %ch2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ch, ptr %ch2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_probe_work.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_probe_work, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !51

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw1200_probe_work.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conf_mutex = getelementptr i8, ptr %work, i32 -1884
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %scan8 = getelementptr i8, ptr %work, i32 -304
  %call9 = call i32 @down_trylock(ptr noundef %scan8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @schedule() #7
  %workqueue = getelementptr i8, ptr %work, i32 -1888
  %19 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %workqueue, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work, i32 noundef 10) #7
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %21 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pending_frame_id, align 4
  %skb = getelementptr inbounds %struct.wsm_template_frame, ptr %frame, i32 0, i32 2
  %call18 = call i32 @cw1200_queue_get_skb(ptr noundef %arrayidx, i32 noundef %22, ptr noundef %skb, ptr noundef nonnull %txpriv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @up(ptr noundef %scan8) #7
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  call void @wsm_unlock_tx(ptr noundef %add.ptr) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %max_tx_rate26 = getelementptr inbounds %struct.wsm_tx, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %max_tx_rate26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_tx_rate26, align 1
  %29 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %max_tx_rate, align 1
  %channel = getelementptr i8, ptr %work, i32 -1016
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channel, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp = icmp eq i32 %33, 1
  %conv = zext i1 %cmp to i8
  %34 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv, ptr %scan, align 8
  %join_status = getelementptr i8, ptr %work, i32 660
  %35 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %join_status, align 4
  %37 = and i32 %36, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %switch = icmp eq i32 %37, 4
  br i1 %switch, label %if.then35, label %if.end24.if.end38_crit_edge

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %type, align 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %flags, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end24.if.end38_crit_edge
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %31, i32 0, i32 3
  %40 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hw_value, align 2
  %42 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %ch, align 4
  %43 = ptrtoint ptr %txpriv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txpriv, align 4
  %offset = getelementptr inbounds %struct.cw1200_txpriv, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %offset, align 1
  %conv42 = zext i8 %46 to i32
  %call43 = call ptr @skb_pull(ptr noundef %24, i32 noundef %conv42) #7
  %47 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skb, align 4
  %data45 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %data45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data45, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 6
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  %sub = add i32 %52, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool48.not = icmp eq i32 %sub, 0
  br i1 %tobool48.not, label %if.end38.if.end83_crit_edge, label %if.then49

if.end38.if.end83_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then49:                                        ; preds = %if.end38
  %arrayidx46 = getelementptr i8, ptr %50, i32 24
  %call.i.i = call ptr @cfg80211_find_elem_match(i8 noundef zeroext 0, ptr noundef %arrayidx46, i32 noundef %sub, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %tobool51.not = icmp eq ptr %call.i.i, null
  br i1 %tobool51.not, label %if.then49.if.end83_crit_edge, label %land.lhs.true

if.then49.if.end83_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

land.lhs.true:                                    ; preds = %if.then49
  %arrayidx52 = getelementptr i8, ptr %call.i.i, i32 1
  %53 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx52, align 1
  %55 = add i8 %54, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %55)
  %56 = icmp ult i8 %55, 32
  br i1 %56, label %if.then60, label %land.lhs.true.if.end83_crit_edge

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv53 = zext i8 %54 to i32
  %add = add nuw nsw i32 %conv53, 2
  %arrayidx63 = getelementptr i8, ptr %call.i.i, i32 %add
  %length = getelementptr inbounds %struct.wsm_ssid, ptr %ssids, i32 0, i32 1
  %57 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv53, ptr %length, align 4
  %arrayidx69 = getelementptr i8, ptr %call.i.i, i32 2
  %58 = call ptr @memcpy(ptr %ssids, ptr %arrayidx69, i32 %conv53)
  %59 = ptrtoint ptr %num_ssids to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %num_ssids, align 1
  %60 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx52, align 1
  %arrayidx75 = getelementptr i8, ptr %50, i32 %52
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx75 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx63 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %61 = call ptr @memmove(ptr %arrayidx69, ptr %arrayidx63, i32 %sub.ptr.sub)
  %62 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb, align 4
  %len78 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %len78 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len78, align 4
  %66 = load i32, ptr %length, align 4
  %sub81 = sub i32 %65, %66
  call void @skb_trim(ptr noundef %63, i32 noundef %sub81) #7
  br label %if.end83

if.end83:                                         ; preds = %if.then60, %land.lhs.true.if.end83_crit_edge, %if.then49.if.end83_crit_edge, %if.end38.if.end83_crit_edge
  %67 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp85 = icmp eq i32 %68, 1
  br i1 %cmp85, label %if.then87, label %if.end83.if.end89_crit_edge

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = call i32 @cw1200_disable_listening(ptr noundef %add.ptr) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end83.if.end89_crit_edge
  %69 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %skb, align 4
  %call.i188 = call ptr @skb_push(ptr noundef %70, i32 noundef 4) #7
  %71 = ptrtoint ptr %frame to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %frame, align 8
  %73 = ptrtoint ptr %call.i188 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %call.i188, align 1
  %rate.i = getelementptr inbounds %struct.wsm_template_frame, ptr %frame, i32 0, i32 1
  %74 = ptrtoint ptr %rate.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rate.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %call.i188, i32 1
  %76 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx1.i, align 1
  %77 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %skb, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.i, align 4
  %81 = trunc i32 %80 to i16
  %conv.i189 = add i16 %81, -4
  %82 = call i16 @llvm.bswap.i16(i16 %conv.i189) #7
  %arrayidx3.i = getelementptr i16, ptr %call.i188, i32 1
  %83 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %arrayidx3.i, align 2
  %84 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %skb, align 4
  %len5.i = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len5.i, align 4
  %call6.i = call i32 @wsm_write_mib(ptr noundef %add.ptr, i16 noundef zeroext 4098, ptr noundef %call.i188, i32 noundef %87) #7
  %88 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %skb, align 4
  %call8.i = call ptr @skb_pull(ptr noundef %89, i32 noundef 4) #7
  %direct_probe = getelementptr i8, ptr %work, i32 100
  %90 = ptrtoint ptr %direct_probe to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %direct_probe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool92.not = icmp eq i32 %call6.i, 0
  br i1 %tobool92.not, label %if.then93, label %if.end89.if.end96_crit_edge

if.end89.if.end96_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %call94 = call zeroext i1 @wsm_flush_tx(ptr noundef %add.ptr) #7
  %call95 = call fastcc i32 @cw1200_scan_start(ptr noundef %add.ptr, ptr noundef nonnull %scan)
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end89.if.end96_crit_edge
  %ret.0 = phi i32 [ %call6.i, %if.end89.if.end96_crit_edge ], [ %call95, %if.then93 ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  %91 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %skb, align 4
  %93 = ptrtoint ptr %txpriv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %txpriv, align 4
  %offset99 = getelementptr inbounds %struct.cw1200_txpriv, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %offset99 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %offset99, align 1
  %conv100 = zext i8 %96 to i32
  %call101 = call ptr @skb_push(ptr noundef %92, i32 noundef %conv100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool102.not = icmp eq i32 %ret.0, 0
  br i1 %tobool102.not, label %do.body108, label %do.body108.thread

do.body108:                                       ; preds = %if.end96
  %97 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cb.i, align 8
  %or = or i32 %100, 512
  store i32 %or, ptr %cb.i, align 8
  %101 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pending_frame_id, align 4
  %call110 = call i32 @cw1200_queue_remove(ptr noundef %arrayidx, i32 noundef %102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %do.body108.cleanup_crit_edge, label %do.body108.do.body119_crit_edge, !prof !52

do.body108.do.body119_crit_edge:                  ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

do.body108.cleanup_crit_edge:                     ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body108.thread:                                ; preds = %if.end96
  %103 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pending_frame_id, align 4
  %call110191 = call i32 @cw1200_queue_remove(ptr noundef %arrayidx, i32 noundef %104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110191)
  %tobool111.not192 = icmp eq i32 %call110191, 0
  br i1 %tobool111.not192, label %if.then129, label %do.body108.thread.do.body119_crit_edge, !prof !52

do.body108.thread.do.body119_crit_edge:           ; preds = %do.body108.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

do.body119:                                       ; preds = %do.body108.thread.do.body119_crit_edge, %do.body108.do.body119_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/scan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #7, !srcloc !60
  unreachable

if.then129:                                       ; preds = %do.body108.thread
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %direct_probe to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %direct_probe, align 4
  call void @up(ptr noundef %scan8) #7
  call void @wsm_unlock_tx(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %do.body108.cleanup_crit_edge, %if.then20, %if.then11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scan) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ch) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ssids) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frame) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txpriv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_get_skb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wsm_flush_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_write_mib(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_pm_stay_awake(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_scan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_enable_listening(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_update_filtering(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cw1200_cqm_bssloss_sm(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/scan.c", i32 72, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cw1200_hw_scan.__UNIQUE_ID_ddebug349, !1, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/st/cw1200/scan.c", i32 176, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cw1200_scan_work._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @cw1200_scan_work._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/st/cw1200/scan.c", i32 180, i32 4}
!15 = !{ptr @cw1200_scan_work.__UNIQUE_ID_ddebug350, !14, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/st/cw1200/scan.c", i32 183, i32 4}
!18 = !{ptr @cw1200_scan_work.__UNIQUE_ID_ddebug351, !17, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/st/cw1200/scan.c", i32 342, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cw1200_scan_timeout._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @cw1200_scan_timeout._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/st/cw1200/scan.c", i32 382, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cw1200_probe_work.__UNIQUE_ID_ddebug354, !25, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/st/cw1200/scan.c", i32 30, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cw1200_scan_start.__UNIQUE_ID_ddebug348, !29, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/st/cw1200/scan.c", i32 280, i32 4}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cw1200_scan_restart_delayed.__UNIQUE_ID_ddebug352, !33, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/st/cw1200/scan.c", i32 290, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cw1200_scan_complete.__UNIQUE_ID_ddebug353, !37, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148243512, i64 2148243517, i64 2148243530, i64 2148243574, i64 2148243608, i64 2148243629}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2157418227, i64 2157418729, i64 2157418264, i64 2157418320, i64 2157418354, i64 2157418378, i64 2157418419, i64 2157418440, i64 2157418468, i64 2157418502}
!54 = !{i8 0, i8 2}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2148689959}
!57 = !{i64 936887, i64 936904, i64 936928, i64 936954, i64 936972}
!58 = !{i64 2148690329}
!59 = !{!"auto-init"}
!60 = !{i64 2157445982, i64 2157446484, i64 2157446019, i64 2157446075, i64 2157446109, i64 2157446133, i64 2157446174, i64 2157446195, i64 2157446223, i64 2157446257}
