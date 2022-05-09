; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/data_tx.c_pt.bc'
source_filename = "../drivers/staging/wfx/data_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }
%struct.list_head = type { ptr, ptr }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.124 = type { i32, i16 }
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.139 }
%union.anon.139 = type { %struct.anon.145, [16 x i8] }
%struct.anon.145 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.hif_msg = type { i16, i8, i8, [0 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.hif_req_tx = type { i32, i8, [3 x i8], i32, i32, i8, i8, i8, i8, [0 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.123, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.hif_cnf_tx = type { i32, i32, i8, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.132 }
%union.anon.132 = type { %struct.anon.136, [32 x i8] }
%struct.anon.136 = type { i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@wfx_tx_policy_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cache->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/wfx/data_tx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"skb is already member of a list\00", [32 x i8] zeroinitializer }, align 32
@wfx_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 424, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drop BA action\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wfx_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_tx._entry_ptr = internal global ptr @wfx_tx._entry, section ".printk_index", align 4
@wfx_tx_confirm_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.1, i32 501, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"received unknown packet_id (%#.8x) from chip\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wfx_tx_confirm_cb\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wfx_tx_confirm_cb._entry_ptr = internal global ptr @wfx_tx_confirm_cb._entry, section ".printk_index", align 4
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"incoherent status and result_flags\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported queue_id\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not enough space in skb\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"attempt to transmit an unaligned frame\00", [57 x i8] zeroinitializer }, align 32
@wfx_tx_inner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.1, i32 365, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"requested frame size (%d) is larger than maximum supported (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wfx_tx_inner\00", [19 x i8] zeroinitializer }, align 32
@wfx_tx_inner._entry_ptr = internal global ptr @wfx_tx_inner._entry, section ".printk_index", align 4
@wfx_tx_get_retry_policy_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.1, i32 297, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to get a valid Tx policy\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wfx_tx_get_retry_policy_id\00", [37 x i8] zeroinitializer }, align 32
@wfx_tx_get_retry_policy_id._entry_ptr = internal global ptr @wfx_tx_get_retry_policy_id._entry, section ".printk_index", align 4
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid rate policy\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wrong rate->idx value: %d\00", [38 x i8] zeroinitializer }, align 32
@wdev_to_wvif.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wdev_to_wvif\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/staging/wfx/wfx.h\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"requesting non-existent vif: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_tx_stats = external dso_local global %struct.tracepoint, align 4
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/wfx/traces.h\00", [35 x i8] zeroinitializer }, align 32
@trace_tx_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@wfx_tx_fill_rates.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.27, ptr @.str.1, ptr @.str.28, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wfx_tx_fill_rates\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"all retries were not consumed: %d != %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wfx_tx_fill_rates.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.27, ptr @.str.1, ptr @.str.29, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"inconsistent tx_info rates: %d != %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wfx_tx_fill_rates.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.27, ptr @.str.1, ptr @.str.30, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d more retries than expected\0A\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wfx_skb_dtor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.1, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: vif associated with the skb does not exist anymore\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wfx_skb_dtor\00", [19 x i8] zeroinitializer }, align 32
@wfx_skb_dtor._entry_ptr = internal global ptr @wfx_skb_dtor._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@wfx_flush_vif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.1, i32 565, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"frames queued while flushing tx queues?\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wfx_flush_vif\00", [18 x i8] zeroinitializer }, align 32
@wfx_flush_vif._entry_ptr = internal global ptr @wfx_flush_vif._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 352321536]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 200, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 412, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 424, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 500, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 532, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 343, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 353, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 354, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 363, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 297, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 54, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 29, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [29 x i8] c"../drivers/staging/wfx/wfx.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 98, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [32 x i8] c"../drivers/staging/wfx/traces.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 366, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 108, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 471, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 475, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 488, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 445, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1984, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [33 x i8] c"../drivers/staging/wfx/data_tx.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 564, i32 4 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @wfx_flush_vif._entry, ptr @wfx_flush_vif._entry_ptr, ptr @wfx_skb_dtor._entry, ptr @wfx_skb_dtor._entry_ptr, ptr @wfx_tx._entry, ptr @wfx_tx._entry_ptr, ptr @wfx_tx_confirm_cb._entry, ptr @wfx_tx_confirm_cb._entry_ptr, ptr @wfx_tx_get_retry_policy_id._entry, ptr @wfx_tx_get_retry_policy_id._entry_ptr, ptr @wfx_tx_inner._entry, ptr @wfx_tx_inner._entry_ptr, ptr @wfx_tx_policy_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @skb_queue_head_init.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_tx_policy_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_tx_confirm_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_tx_inner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_tx_get_retry_policy_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_skb_dtor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_flush_vif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_policy_upload_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %tmp_rates.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1084
  %tx_policy_cache.i = getelementptr i8, ptr %work, i32 -480
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp_rates.i) #10
  %lock.i = getelementptr i8, ptr %work, i32 -44
  %0 = call ptr @memset(ptr %tmp_rates.i, i32 255, i32 12)
  br label %do.body.i

do.body.i:                                        ; preds = %if.then6.critedge.i, %entry
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body.i
  %i.02.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rates.i = getelementptr %struct.tx_policy, ptr %tx_policy_cache.i, i32 %i.02.i, i32 2
  %1 = ptrtoint ptr %rates.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rates.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %for.body.i.memzcmp.exit.i_crit_edge

for.body.i.memzcmp.exit.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %memzcmp.exit.i

if.end3.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %rates.i, i32 1
  %call.i.i = call i32 @memcmp(ptr noundef dereferenceable(11) %rates.i, ptr noundef dereferenceable(11) %add.ptr.i.i, i32 noundef 11) #13
  br label %memzcmp.exit.i

memzcmp.exit.i:                                   ; preds = %if.end3.i.i, %for.body.i.memzcmp.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end3.i.i ], [ 1, %for.body.i.memzcmp.exit.i_crit_edge ]
  %uploaded.i = getelementptr %struct.tx_policy, ptr %tx_policy_cache.i, i32 %i.02.i, i32 3
  %3 = ptrtoint ptr %uploaded.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %uploaded.i, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool4.not.i = icmp eq i32 %retval.0.i.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %for.inc.i, label %if.then6.critedge.i

for.inc.i:                                        ; preds = %memzcmp.exit.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %wfx_tx_policy_upload.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then6.critedge.i:                              ; preds = %memzcmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %uploaded.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %uploaded.i, align 4
  %6 = call ptr @memcpy(ptr %tmp_rates.i, ptr %rates.i, i32 12)
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %call16.i = call i32 @hif_set_tx_rate_retry_policy(ptr noundef %add.ptr, i32 noundef %i.02.i, ptr noundef nonnull %tmp_rates.i) #10
  br label %do.body.i

wfx_tx_policy_upload.exit:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp_rates.i) #10
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  call void @wfx_tx_unlock(ptr noundef %8) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_policy_init(ptr noundef %wvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_policy_cache = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 9
  %0 = call ptr @memset(ptr %tx_policy_cache, i32 0, i32 480)
  %lock = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 9, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @wfx_tx_policy_init.__key, i16 noundef signext 3) #10
  %used = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %used, ptr %used, align 4
  %prev.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 9, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %used, ptr %prev.i, align 4
  %free = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %free, ptr %free, align 4
  %prev.i10 = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 9, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free, ptr %prev.i10, align 4
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %list_add.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [15 x %struct.tx_policy], ptr %tx_policy_cache, i32 0, i32 %i.011
  %5 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %free, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %free, ptr noundef %6) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add.exit_crit_edge

for.body.list_add.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %free, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx, ptr %free, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.body.list_add.exit_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx(ptr nocapture noundef readonly %hw, ptr noundef readonly %control, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %wanted.i.i.i = alloca %struct.tx_policy, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %control, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.rhs, label %cond.end.do.end15_crit_edge

cond.end.do.end15_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

lor.rhs:                                          ; preds = %cond.end
  %prev = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 1
  %8 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.rhs.if.end21_crit_edge, label %lor.rhs.do.end15_crit_edge, !prof !89

lor.rhs.do.end15_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

lor.rhs.if.end21_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end15:                                         ; preds = %lor.rhs.do.end15_crit_edge, %cond.end.do.end15_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 412, i32 noundef 9, ptr noundef nonnull @.str.2) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end15, %lor.rhs.if.end21_crit_edge
  %vif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vif, align 8
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %11, i32 0, i32 19
  br label %if.end32

if.else:                                          ; preds = %if.end21
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #10, !srcloc !90
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %14, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 0, i32 19
  br i1 %tobool12.not.i.i, label %if.end4.i, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end4.i:                                        ; preds = %if.else
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #10, !srcloc !90
  %and.i.1.i = and i32 %15, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i
  %16 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %17, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %17, i32 0, i32 19
  br i1 %tobool12.not.i.1.i, label %if.end4.i.do.end52_crit_edge, label %if.end4.i.if.end32_crit_edge

if.end4.i.if.end32_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end4.i.do.end52_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52

if.end32:                                         ; preds = %if.end4.i.if.end32_crit_edge, %if.else.if.end32_crit_edge, %if.then29
  %wvif.0 = phi ptr [ %drv_priv, %if.then29 ], [ %drv_priv.i.i, %if.else.if.end32_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.if.end32_crit_edge ]
  %tobool34.not = icmp eq ptr %wvif.0, null
  br i1 %tobool34.not, label %if.end32.do.end52_crit_edge, label %if.end68.critedge, !prof !91

if.end32.do.end52_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52

do.end52:                                         ; preds = %if.end32.do.end52_crit_edge, %if.end4.i.do.end52_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 418, i32 noundef 9, ptr noundef null) #10
  br label %drop

if.end68.critedge:                                ; preds = %if.end32
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %5, align 2
  %20 = and i16 %19, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %20)
  %cmp.i.i = icmp eq i16 %20, -12288
  br i1 %cmp.i.i, label %ieee80211_is_action_back.exit, label %if.end68.critedge.if.end74_crit_edge

if.end68.critedge.if.end74_crit_edge:             ; preds = %if.end68.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

ieee80211_is_action_back.exit:                    ; preds = %if.end68.critedge
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %u.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp.not.i = icmp eq i8 %22, 3
  br i1 %cmp.not.i, label %do.end73, label %ieee80211_is_action_back.exit.if.end74_crit_edge

ieee80211_is_action_back.exit.if.end74_crit_edge: ; preds = %ieee80211_is_action_back.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

do.end73:                                         ; preds = %ieee80211_is_action_back.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.3) #14
  br label %drop

if.end74:                                         ; preds = %ieee80211_is_action_back.exit.if.end74_crit_edge, %if.end68.critedge.if.end74_crit_edge
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %hw_key1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %26 = ptrtoint ptr %hw_key1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_key1.i, align 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %30 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %queue_mapping.i.i, align 8
  %conv.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %29 to i32
  %and.i = and i32 %32, 3
  %add.i = or i32 %and.i, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %31)
  %cmp.i = icmp ugt i16 %31, 3
  br i1 %cmp.i, label %do.end.i, label %if.end74.if.end.i98_crit_edge, !prof !91

if.end74.if.end.i98_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i98

do.end.i:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.11) #10
  br label %if.end.i98

if.end.i98:                                       ; preds = %do.end.i, %if.end74.if.end.i98_crit_edge
  %flags.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %bf.load.i.i = load i16, ptr %flags.i.i, align 1
  %34 = and i16 %bf.load.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i.i = icmp eq i16 %34, 0
  br i1 %tobool.not.i.i, label %if.end.i98.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i98.if.end.i.i_crit_edge:                  ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set.i.i = or i16 %bf.load.i.i, 128
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %bf.set.i.i, ptr %flags.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i98.if.end.i.i_crit_edge
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %bf.load11.i.i = load i16, ptr %flags.i.i, align 1
  %37 = and i16 %bf.load11.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool15.not.i.i = icmp eq i16 %37, 0
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.end.i.i.if.end28.i.i_crit_edge

if.end.i.i.if.end28.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i.i

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set27.i.i = and i16 %bf.load11.i.i, -129
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %bf.set27.i.i, ptr %flags.i.i, align 1
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then16.i.i, %if.end.i.i.if.end28.i.i_crit_edge
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %bf.load31.i.i = load i16, ptr %flags.i.i, align 1
  %40 = and i16 %bf.load31.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool35.not.i.i = icmp eq i16 %40, 0
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %if.end28.i.i.for.inc.i.i_crit_edge

if.end28.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then36.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set47.i.i = and i16 %bf.load31.i.i, -2
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %bf.set47.i.i, ptr %flags.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then36.i.i, %if.end28.i.i.for.inc.i.i_crit_edge
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load.1.i.i = load i16, ptr %flags.i.i, align 1
  %43 = and i16 %bf.load.1.i.i, 128
  %flags18.1.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %44 = ptrtoint ptr %flags18.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load19.1.i.i = load i16, ptr %flags18.1.i.i, align 1
  %bf.set27.1.i.i = and i16 %bf.load19.1.i.i, -129
  %bf.set.1.i.i.sink = or i16 %bf.set27.1.i.i, %43
  store i16 %bf.set.1.i.i.sink, ptr %flags18.1.i.i, align 1
  %45 = and i16 %bf.load.1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool35.not.1.i.i = icmp eq i16 %45, 0
  br i1 %tobool35.not.1.i.i, label %if.then36.1.i.i, label %for.inc.2.i.i.critedge

if.then36.1.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags38.1.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %46 = ptrtoint ptr %flags38.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %bf.load39.1.i.i = load i16, ptr %flags38.1.i.i, align 1
  %bf.set47.1.i.i = and i16 %bf.load39.1.i.i, -2
  store i16 %bf.set47.1.i.i, ptr %flags38.1.i.i, align 1
  %flags18.2.i.i.c = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %47 = ptrtoint ptr %flags18.2.i.i.c to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %bf.load19.2.i.i.c = load i16, ptr %flags18.2.i.i.c, align 1
  %bf.set27.2.i.i.c = and i16 %bf.load19.2.i.i.c, -130
  %bf.set.2.i.i.sink.c = or i16 %bf.set27.2.i.i.c, %43
  %flags38.2.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %48 = ptrtoint ptr %flags38.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %bf.set.2.i.i.sink.c, ptr %flags38.2.i.i, align 1
  %flags18.3.i.i.c130 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %49 = ptrtoint ptr %flags18.3.i.i.c130 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %bf.load19.3.i.i.c131 = load i16, ptr %flags18.3.i.i.c130, align 1
  %bf.set27.3.i.i.c133 = and i16 %bf.load19.3.i.i.c131, -130
  %bf.set.3.i.i.sink.c134 = or i16 %bf.set27.3.i.i.c133, %43
  %flags38.3.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %50 = ptrtoint ptr %flags38.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %bf.set.3.i.i.sink.c134, ptr %flags38.3.i.i, align 1
  br label %for.inc.3.i.i

for.inc.2.i.i.critedge:                           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags18.2.i.i.c125 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %51 = ptrtoint ptr %flags18.2.i.i.c125 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %bf.load19.2.i.i.c126 = load i16, ptr %flags18.2.i.i.c125, align 1
  %bf.set27.2.i.i.c128 = and i16 %bf.load19.2.i.i.c126, -129
  %bf.set.2.i.i.sink.c129 = or i16 %bf.set27.2.i.i.c128, %43
  store i16 %bf.set.2.i.i.sink.c129, ptr %flags18.2.i.i.c125, align 1
  %flags18.3.i.i.c = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %52 = ptrtoint ptr %flags18.3.i.i.c to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load19.3.i.i.c = load i16, ptr %flags18.3.i.i.c, align 1
  %bf.set27.3.i.i.c = and i16 %bf.load19.3.i.i.c, -129
  %bf.set.3.i.i.sink.c = or i16 %bf.set27.3.i.i.c, %43
  store i16 %bf.set.3.i.i.sink.c, ptr %flags18.3.i.i.c, align 1
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i.critedge, %if.then36.1.i.i
  %arrayidx53.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 11
  %count.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %arrayidx53.1.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %count.1.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %arrayidx53.2.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %count.2.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %for.inc.3.i.i
  %53 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx53.i.i, align 1
  %55 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp58.i.i = icmp ne i8 %54, %56
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp63.not.i.i = icmp eq i8 %56, -1
  %or.cond.i.i = or i1 %cmp58.i.i, %cmp63.not.i.i
  br i1 %or.cond.i.i, label %do.body.i.i.if.end104.i.i_crit_edge, label %if.then65.i.i

do.body.i.i.if.end104.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i.i

if.then65.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %bf.load68.i.i = load i16, ptr %count.i.i, align 1
  %58 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %bf.load72.i.i = load i16, ptr %flags.i.i, align 1
  %bf.lshr73.i.i = and i16 %bf.load72.i.i, -2048
  %bf.lshr253.i.i = add i16 %bf.lshr73.i.i, %bf.load68.i.i
  %bf.shl.i.i = and i16 %bf.lshr253.i.i, -2048
  %bf.clear79.i.i = and i16 %bf.load72.i.i, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr253.i.i)
  %cmp86.i.i = icmp slt i16 %bf.lshr253.i.i, 0
  %spec.select.v.i.i = select i1 %cmp86.i.i, i16 30720, i16 %bf.shl.i.i
  %spec.select.i.i99 = or i16 %spec.select.v.i.i, %bf.clear79.i.i
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %spec.select.i.i99, ptr %flags.i.i, align 1
  %60 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %arrayidx53.i.i, align 1
  %bf.clear102.i.i = and i16 %bf.load68.i.i, 2047
  %61 = ptrtoint ptr %count.i.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %bf.clear102.i.i, ptr %count.i.i, align 1
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.then65.i.i, %do.body.i.i.if.end104.i.i_crit_edge
  %62 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx53.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %56)
  %cmp112.i.i = icmp sgt i8 %63, %56
  br i1 %cmp112.i.i, label %do.body115.i.i, label %if.end104.i.i.for.inc123.i.i_crit_edge

if.end104.i.i.for.inc123.i.i_crit_edge:           ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123.i.i

do.body115.i.i:                                   ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %__tmp.sroa.5.0.copyload.i.i = load i16, ptr %count.i.i, align 1
  %65 = call ptr @memcpy(ptr %arrayidx53.i.i, ptr %25, i32 3)
  %66 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %63, ptr %25, align 1
  %67 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %__tmp.sroa.5.0.copyload.i.i, ptr %flags.i.i, align 1
  br label %for.inc123.i.i

for.inc123.i.i:                                   ; preds = %do.body115.i.i, %if.end104.i.i.for.inc123.i.i_crit_edge
  %finished.2.off0.i.i = phi i1 [ false, %do.body115.i.i ], [ %or.cond.i.i, %if.end104.i.i.for.inc123.i.i_crit_edge ]
  %68 = ptrtoint ptr %arrayidx53.1.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx53.1.i.i, align 1
  %70 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx53.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp58.1.i.i = icmp ne i8 %69, %71
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp63.not.1.i.i = icmp eq i8 %71, -1
  %or.cond.1.i.i = or i1 %cmp58.1.i.i, %cmp63.not.1.i.i
  br i1 %or.cond.1.i.i, label %for.inc123.i.i.if.end104.1.i.i_crit_edge, label %if.then65.1.i.i

for.inc123.i.i.if.end104.1.i.i_crit_edge:         ; preds = %for.inc123.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.1.i.i

if.then65.1.i.i:                                  ; preds = %for.inc123.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %bf.load68.1.i.i = load i16, ptr %count.1.i.i, align 1
  %73 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %bf.load72.1.i.i = load i16, ptr %count.i.i, align 1
  %bf.lshr73.1.i.i = and i16 %bf.load72.1.i.i, -2048
  %bf.lshr253.1.i.i = add i16 %bf.lshr73.1.i.i, %bf.load68.1.i.i
  %bf.shl.1.i.i = and i16 %bf.lshr253.1.i.i, -2048
  %bf.clear79.1.i.i = and i16 %bf.load72.1.i.i, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr253.1.i.i)
  %cmp86.1.i.i = icmp slt i16 %bf.lshr253.1.i.i, 0
  %spec.select.v.1.i.i = select i1 %cmp86.1.i.i, i16 30720, i16 %bf.shl.1.i.i
  %spec.select.1.i.i = or i16 %spec.select.v.1.i.i, %bf.clear79.1.i.i
  %74 = ptrtoint ptr %count.i.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %spec.select.1.i.i, ptr %count.i.i, align 1
  %75 = ptrtoint ptr %arrayidx53.1.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %arrayidx53.1.i.i, align 1
  %bf.clear102.1.i.i = and i16 %bf.load68.1.i.i, 2047
  %76 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %bf.clear102.1.i.i, ptr %count.1.i.i, align 1
  br label %if.end104.1.i.i

if.end104.1.i.i:                                  ; preds = %if.then65.1.i.i, %for.inc123.i.i.if.end104.1.i.i_crit_edge
  %finished.1.off0.1.i.i = phi i1 [ false, %if.then65.1.i.i ], [ %finished.2.off0.i.i, %for.inc123.i.i.if.end104.1.i.i_crit_edge ]
  %77 = ptrtoint ptr %arrayidx53.1.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx53.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %71)
  %cmp112.1.i.i = icmp sgt i8 %78, %71
  br i1 %cmp112.1.i.i, label %do.body115.1.i.i, label %if.end104.1.i.i.for.inc123.1.i.i_crit_edge

if.end104.1.i.i.for.inc123.1.i.i_crit_edge:       ; preds = %if.end104.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123.1.i.i

do.body115.1.i.i:                                 ; preds = %if.end104.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %__tmp.sroa.5.0.copyload.1.i.i = load i16, ptr %count.1.i.i, align 1
  %80 = call ptr @memcpy(ptr %arrayidx53.1.i.i, ptr %arrayidx53.i.i, i32 3)
  %81 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %78, ptr %arrayidx53.i.i, align 1
  %82 = ptrtoint ptr %count.i.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %__tmp.sroa.5.0.copyload.1.i.i, ptr %count.i.i, align 1
  %83 = ptrtoint ptr %arrayidx53.1.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %.pr = load i8, ptr %arrayidx53.1.i.i, align 1
  br label %for.inc123.1.i.i

for.inc123.1.i.i:                                 ; preds = %do.body115.1.i.i, %if.end104.1.i.i.for.inc123.1.i.i_crit_edge
  %84 = phi i8 [ %.pr, %do.body115.1.i.i ], [ %78, %if.end104.1.i.i.for.inc123.1.i.i_crit_edge ]
  %finished.2.off0.1.i.i = phi i1 [ false, %do.body115.1.i.i ], [ %finished.1.off0.1.i.i, %if.end104.1.i.i.for.inc123.1.i.i_crit_edge ]
  %85 = ptrtoint ptr %arrayidx53.2.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx53.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %84)
  %cmp58.2.i.i = icmp ne i8 %86, %84
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %84)
  %cmp63.not.2.i.i = icmp eq i8 %84, -1
  %or.cond.2.i.i = or i1 %cmp63.not.2.i.i, %cmp58.2.i.i
  br i1 %or.cond.2.i.i, label %if.end104.2.i.i, label %if.end104.2.i.thread.i

if.end104.2.i.i:                                  ; preds = %for.inc123.1.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %84)
  %cmp112.2.i.i = icmp sgt i8 %86, %84
  br i1 %cmp112.2.i.i, label %if.end104.2.i.i.do.body115.2.i.i_crit_edge, label %for.inc123.2.i.i

if.end104.2.i.i.do.body115.2.i.i_crit_edge:       ; preds = %if.end104.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body115.2.i.i

if.end104.2.i.thread.i:                           ; preds = %for.inc123.1.i.i
  %87 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %bf.load68.2.i.i = load i16, ptr %count.2.i.i, align 1
  %88 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %bf.load72.2.i.i = load i16, ptr %count.1.i.i, align 1
  %bf.lshr73.2.i.i = and i16 %bf.load72.2.i.i, -2048
  %bf.lshr253.2.i.i = add i16 %bf.lshr73.2.i.i, %bf.load68.2.i.i
  %bf.shl.2.i.i = and i16 %bf.lshr253.2.i.i, -2048
  %bf.clear79.2.i.i = and i16 %bf.load72.2.i.i, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr253.2.i.i)
  %cmp86.2.i.i = icmp slt i16 %bf.lshr253.2.i.i, 0
  %spec.select.v.2.i.i = select i1 %cmp86.2.i.i, i16 30720, i16 %bf.shl.2.i.i
  %spec.select.2.i.i = or i16 %spec.select.v.2.i.i, %bf.clear79.2.i.i
  %89 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %spec.select.2.i.i, ptr %count.1.i.i, align 1
  %90 = ptrtoint ptr %arrayidx53.2.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %arrayidx53.2.i.i, align 1
  %bf.clear102.2.i.i = and i16 %bf.load68.2.i.i, 2047
  %91 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %bf.clear102.2.i.i, ptr %count.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %84)
  %cmp112.2.i272.i = icmp slt i8 %84, -1
  br i1 %cmp112.2.i272.i, label %if.end104.2.i.thread.i.do.body115.2.i.i_crit_edge, label %if.end104.2.i.thread.i.do.body.i.i.backedge_crit_edge

if.end104.2.i.thread.i.do.body.i.i.backedge_crit_edge: ; preds = %if.end104.2.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.backedge

if.end104.2.i.thread.i.do.body115.2.i.i_crit_edge: ; preds = %if.end104.2.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body115.2.i.i

do.body115.2.i.i:                                 ; preds = %if.end104.2.i.thread.i.do.body115.2.i.i_crit_edge, %if.end104.2.i.i.do.body115.2.i.i_crit_edge
  %92 = phi i8 [ -1, %if.end104.2.i.thread.i.do.body115.2.i.i_crit_edge ], [ %86, %if.end104.2.i.i.do.body115.2.i.i_crit_edge ]
  %93 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %__tmp.sroa.5.0.copyload.2.i.i = load i16, ptr %count.2.i.i, align 1
  %94 = call ptr @memcpy(ptr %arrayidx53.2.i.i, ptr %arrayidx53.1.i.i, i32 3)
  %95 = ptrtoint ptr %arrayidx53.1.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %92, ptr %arrayidx53.1.i.i, align 1
  %96 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 2)
  store i16 %__tmp.sroa.5.0.copyload.2.i.i, ptr %count.1.i.i, align 1
  br label %do.body.i.i.backedge

for.inc123.2.i.i:                                 ; preds = %if.end104.2.i.i
  br i1 %finished.2.off0.1.i.i, label %for.body132.preheader.i.i, label %for.inc123.2.i.i.do.body.i.i.backedge_crit_edge

for.inc123.2.i.i.do.body.i.i.backedge_crit_edge:  ; preds = %for.inc123.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.backedge

do.body.i.i.backedge:                             ; preds = %for.inc123.2.i.i.do.body.i.i.backedge_crit_edge, %do.body115.2.i.i, %if.end104.2.i.thread.i.do.body.i.i.backedge_crit_edge
  br label %do.body.i.i

for.body132.preheader.i.i:                        ; preds = %for.inc123.2.i.i
  %97 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %25, align 1
  %99 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values)
  switch i8 %98, label %for.inc167.i.i [
    i8 0, label %for.body132.preheader.i.i.wfx_tx_fixup_rates.exit.i_crit_edge
    i8 -1, label %for.body132.preheader.i.i.if.then145.i.i_crit_edge
  ]

for.body132.preheader.i.i.if.then145.i.i_crit_edge: ; preds = %for.body132.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then145.i.i

for.body132.preheader.i.i.wfx_tx_fixup_rates.exit.i_crit_edge: ; preds = %for.body132.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_fixup_rates.exit.i

if.then145.i.i:                                   ; preds = %for.inc167.2.i.i.if.then145.i.i_crit_edge, %for.inc167.1.i.i.if.then145.i.i_crit_edge, %for.inc167.i.i.if.then145.i.i_crit_edge, %for.body132.preheader.i.i.if.then145.i.i_crit_edge
  %i.2260.lcssa263.i.i = phi i32 [ 0, %for.body132.preheader.i.i.if.then145.i.i_crit_edge ], [ 1, %for.inc167.i.i.if.then145.i.i_crit_edge ], [ 2, %for.inc167.1.i.i.if.then145.i.i_crit_edge ], [ 3, %for.inc167.2.i.i.if.then145.i.i_crit_edge ]
  %arrayidx133.lcssa262.i.i = phi ptr [ %25, %for.body132.preheader.i.i.if.then145.i.i_crit_edge ], [ %arrayidx53.i.i, %for.inc167.i.i.if.then145.i.i_crit_edge ], [ %arrayidx53.1.i.i, %for.inc167.1.i.i.if.then145.i.i_crit_edge ], [ %arrayidx53.2.i.i, %for.inc167.2.i.i.if.then145.i.i_crit_edge ]
  %100 = ptrtoint ptr %arrayidx133.lcssa262.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx133.lcssa262.i.i, align 1
  %count149.i.i = getelementptr %struct.ieee80211_tx_rate, ptr %25, i32 %i.2260.lcssa263.i.i, i32 1
  %sub.i.i = add nsw i32 %i.2260.lcssa263.i.i, -1
  %flags154.i.i = getelementptr %struct.ieee80211_tx_rate, ptr %25, i32 %sub.i.i, i32 1
  %101 = ptrtoint ptr %flags154.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %bf.load155.i.i = load i16, ptr %flags154.i.i, align 1
  %102 = and i16 %bf.load155.i.i, 8
  %bf.set165.i.i = or i16 %102, 16384
  %103 = ptrtoint ptr %count149.i.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 %bf.set165.i.i, ptr %count149.i.i, align 1
  br label %wfx_tx_fixup_rates.exit.i

for.inc167.i.i:                                   ; preds = %for.body132.preheader.i.i
  %104 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx53.i.i, align 1
  %106 = zext i8 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %105, label %for.inc167.1.i.i [
    i8 0, label %for.inc167.i.i.wfx_tx_fixup_rates.exit.i_crit_edge
    i8 -1, label %for.inc167.i.i.if.then145.i.i_crit_edge
  ]

for.inc167.i.i.if.then145.i.i_crit_edge:          ; preds = %for.inc167.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then145.i.i

for.inc167.i.i.wfx_tx_fixup_rates.exit.i_crit_edge: ; preds = %for.inc167.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_fixup_rates.exit.i

for.inc167.1.i.i:                                 ; preds = %for.inc167.i.i
  %107 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %84, label %for.inc167.2.i.i [
    i8 0, label %for.inc167.1.i.i.wfx_tx_fixup_rates.exit.i_crit_edge
    i8 -1, label %for.inc167.1.i.i.if.then145.i.i_crit_edge
  ]

for.inc167.1.i.i.if.then145.i.i_crit_edge:        ; preds = %for.inc167.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then145.i.i

for.inc167.1.i.i.wfx_tx_fixup_rates.exit.i_crit_edge: ; preds = %for.inc167.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_fixup_rates.exit.i

for.inc167.2.i.i:                                 ; preds = %for.inc167.1.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %86)
  %cond.i.i = icmp eq i8 %86, -1
  br i1 %cond.i.i, label %for.inc167.2.i.i.if.then145.i.i_crit_edge, label %for.inc167.2.i.i.wfx_tx_fixup_rates.exit.i_crit_edge

for.inc167.2.i.i.wfx_tx_fixup_rates.exit.i_crit_edge: ; preds = %for.inc167.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_fixup_rates.exit.i

for.inc167.2.i.i.if.then145.i.i_crit_edge:        ; preds = %for.inc167.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then145.i.i

wfx_tx_fixup_rates.exit.i:                        ; preds = %for.inc167.2.i.i.wfx_tx_fixup_rates.exit.i_crit_edge, %for.inc167.1.i.i.wfx_tx_fixup_rates.exit.i_crit_edge, %for.inc167.i.i.wfx_tx_fixup_rates.exit.i_crit_edge, %if.then145.i.i, %for.body132.preheader.i.i.wfx_tx_fixup_rates.exit.i_crit_edge
  %108 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %bf.load176.i.i = load i16, ptr %count.i.i, align 1
  %bf.set184.i.i = and i16 %bf.load176.i.i, -129
  store i16 %bf.set184.i.i, ptr %count.i.i, align 1
  %109 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %bf.load176.1.i.i = load i16, ptr %count.1.i.i, align 1
  %bf.set184.1.i.i = and i16 %bf.load176.1.i.i, -129
  store i16 %bf.set184.1.i.i, ptr %count.1.i.i, align 1
  %110 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %bf.load176.2.i.i = load i16, ptr %count.2.i.i, align 1
  %bf.set184.2.i.i = and i16 %bf.load176.2.i.i, -129
  store i16 %bf.set184.2.i.i, ptr %count.2.i.i, align 1
  %111 = call ptr @memset(ptr %vif, i32 0, i32 16)
  %tobool.not.i252.i = icmp eq ptr %27, null
  br i1 %tobool.not.i252.i, label %wfx_tx_fixup_rates.exit.i.wfx_tx_get_icv_len.exit.i_crit_edge, label %if.end.i253.i

wfx_tx_fixup_rates.exit.i.wfx_tx_get_icv_len.exit.i_crit_edge: ; preds = %wfx_tx_fixup_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_get_icv_len.exit.i

if.end.i253.i:                                    ; preds = %wfx_tx_fixup_rates.exit.i
  %cipher.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %27, i32 0, i32 1
  %112 = ptrtoint ptr %cipher.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cipher.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027078, i32 %113)
  %cmp.i.i100 = icmp eq i32 %113, 1027078
  br i1 %cmp.i.i100, label %if.end.i253.i.wfx_tx_get_icv_len.exit.i_crit_edge, label %if.end2.i.i

if.end.i253.i.wfx_tx_get_icv_len.exit.i_crit_edge: ; preds = %if.end.i253.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_get_icv_len.exit.i

if.end2.i.i:                                      ; preds = %if.end.i253.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %113)
  %cmp4.i.i = icmp eq i32 %113, 1027074
  %cond.i254.i = select i1 %cmp4.i.i, i8 8, i8 0
  %icv_len.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %27, i32 0, i32 2
  %114 = ptrtoint ptr %icv_len.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %icv_len.i.i, align 4
  %add.i.i = add i8 %115, %cond.i254.i
  br label %wfx_tx_get_icv_len.exit.i

wfx_tx_get_icv_len.exit.i:                        ; preds = %if.end2.i.i, %if.end.i253.i.wfx_tx_get_icv_len.exit.i_crit_edge, %wfx_tx_fixup_rates.exit.i.wfx_tx_get_icv_len.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %add.i.i, %if.end2.i.i ], [ 0, %wfx_tx_fixup_rates.exit.i.wfx_tx_get_icv_len.exit.i_crit_edge ], [ 0, %if.end.i253.i.wfx_tx_get_icv_len.exit.i_crit_edge ]
  %icv_size.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %116 = ptrtoint ptr %icv_size.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %retval.0.i.i, ptr %icv_size.i, align 8
  %117 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %119 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %118 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %120 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %add.i)
  %cmp30.i = icmp ult i32 %sub.ptr.sub.i.i, %add.i
  br i1 %cmp30.i, label %do.end47.i, label %wfx_tx_get_icv_len.exit.i.if.end53.i_crit_edge, !prof !91

wfx_tx_get_icv_len.exit.i.if.end53.i_crit_edge:   ; preds = %wfx_tx_get_icv_len.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

do.end47.i:                                       ; preds = %wfx_tx_get_icv_len.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 353, i32 noundef 9, ptr noundef nonnull @.str.12) #10
  br label %if.end53.i

if.end53.i:                                       ; preds = %do.end47.i, %wfx_tx_get_icv_len.exit.i.if.end53.i_crit_edge
  %and62.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end53.i.if.end85.i_crit_edge, label %do.end79.i, !prof !89

if.end53.i.if.end85.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

do.end79.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 9, ptr noundef nonnull @.str.13) #10
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.end79.i, %if.end53.i.if.end85.i_crit_edge
  %121 = ptrtoint ptr %icv_size.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %icv_size.i, align 8
  %conv94.i = zext i8 %122 to i32
  %call95.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %conv94.i) #10
  %call96.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add.i) #10
  %123 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data, align 4
  %125 = call ptr @memset(ptr %124, i32 0, i32 %add.i)
  %126 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %127 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len.i, align 4
  %conv99.i = trunc i32 %128 to i16
  %129 = tail call i16 @llvm.bswap.i16(i16 %conv99.i) #10
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %129, ptr %126, align 1
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 4, ptr %id.i, align 1
  %id101.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif.0, i32 0, i32 3
  %132 = ptrtoint ptr %id101.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %id101.i, align 4
  %conv102.i = trunc i32 %133 to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %126, i32 0, i32 2
  %134 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv102.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %135 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len.i, align 4
  %137 = ptrtoint ptr %wvif.0 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wvif.0, align 4
  %size_inp_ch_buf.i = getelementptr inbounds %struct.wfx_dev, ptr %138, i32 0, i32 9, i32 5
  %139 = ptrtoint ptr %size_inp_ch_buf.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %size_inp_ch_buf.i, align 2
  %conv104.i = zext i16 %140 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %conv104.i)
  %cmp105.i = icmp ugt i32 %136, %conv104.i
  br i1 %cmp105.i, label %wfx_tx_inner.exit, label %if.end118.i

if.end118.i:                                      ; preds = %if.end85.i
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %126, i32 0, i32 3
  %packet_id.i = getelementptr inbounds %struct.wfx_dev, ptr %138, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packet_id.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %packet_id.i, i32 1, i32 3, i32 1) #10
  %141 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %packet_id.i, ptr %packet_id.i, i32 1, ptr elementtype(i32) %packet_id.i) #10, !srcloc !93
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %141, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  %and122.i = and i32 %asmresult.i.i.i.i, 65535
  %142 = ptrtoint ptr %body.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %and122.i, ptr %body.i, align 1
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %29, i32 0, i32 5
  %143 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %seq_ctrl.i, align 2
  %145 = and i16 %144, -3841
  %146 = tail call i16 @llvm.bswap.i16(i16 %145) #10
  %147 = lshr exact i16 %146, 4
  %148 = zext i16 %147 to i32
  %shl.i = shl nuw nsw i32 %148, 16
  %or.i = or i32 %shl.i, %and122.i
  %shl127.i = shl i32 %conv.i, 28
  %or129.i = or i32 %or.i, %shl127.i
  %149 = ptrtoint ptr %body.i to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %or129.i, ptr %body.i, align 1
  %fc_offset.i = getelementptr inbounds %struct.hif_req_tx, ptr %body.i, i32 0, i32 2
  %150 = trunc i32 %and.i to i24
  %151 = ptrtoint ptr %fc_offset.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 3)
  %bf.load131.i = load i24, ptr %fc_offset.i, align 1
  %bf.shl133.i = shl nuw nsw i24 %150, 12
  %bf.clear134.i = and i24 %bf.load131.i, 4165631
  %bf.set135.i = or i24 %bf.clear134.i, %bf.shl133.i
  %152 = trunc i16 %31 to i8
  %conv136.i = sub i8 3, %152
  %bf.value139.i = zext i8 %conv136.i to i24
  %bf.shl140.i = shl i24 %bf.value139.i, 22
  %bf.set142.i = or i24 %bf.set135.i, %bf.shl140.i
  store i24 %bf.set142.i, ptr %fc_offset.i, align 1
  %tobool.not.i255.i = icmp eq ptr %cond, null
  %153 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %29, align 2
  %155 = and i16 %154, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %cmp.i.not.i.i.i = icmp eq i16 %155, 0
  %addr3.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %29, i32 0, i32 4
  %addr1.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %29, i32 0, i32 2
  %retval.0.i.i.i = select i1 %cmp.i.not.i.i.i, ptr %addr1.i.i.i, ptr %addr3.i.i.i
  br i1 %tobool.not.i255.i, label %if.end118.i.if.end.i258.i_crit_edge, label %land.lhs.true.i.i

if.end118.i.if.end.i258.i_crit_edge:              ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i258.i

land.lhs.true.i.i:                                ; preds = %if.end118.i
  %drv_priv.i.i101 = getelementptr inbounds %struct.ieee80211_sta, ptr %cond, i32 0, i32 29
  %156 = ptrtoint ptr %drv_priv.i.i101 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %drv_priv.i.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool2.not.i.i = icmp eq i32 %157, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i258.i_crit_edge, label %if.then.i257.i

land.lhs.true.i.i.if.end.i258.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i258.i

if.then.i257.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i256.i = trunc i32 %157 to i8
  br label %wfx_tx_get_link_id.exit.i

if.end.i258.i:                                    ; preds = %land.lhs.true.i.i.if.end.i258.i_crit_edge, %if.end118.i.if.end.i258.i_crit_edge
  %vif.i.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif.0, i32 0, i32 1
  %158 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %vif.i.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %161)
  %cmp.not.i.i = icmp eq i32 %161, 3
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i258.i.wfx_tx_get_link_id.exit.i_crit_edge

if.end.i258.i.wfx_tx_get_link_id.exit.i_crit_edge: ; preds = %if.end.i258.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_get_link_id.exit.i

if.end6.i.i:                                      ; preds = %if.end.i258.i
  call void @__sanitizer_cov_trace_pc() #12
  %162 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %retval.0.i.i.i, align 4
  %164 = and i32 %163, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.i.not.i.i = icmp eq i32 %164, 0
  %..i.i = select i1 %tobool.i.not.i.i, i8 15, i8 0
  br label %wfx_tx_get_link_id.exit.i

wfx_tx_get_link_id.exit.i:                        ; preds = %if.end6.i.i, %if.end.i258.i.wfx_tx_get_link_id.exit.i_crit_edge, %if.then.i257.i
  %retval.0.i259.i = phi i8 [ %conv.i256.i, %if.then.i257.i ], [ 0, %if.end.i258.i.wfx_tx_get_link_id.exit.i_crit_edge ], [ %..i.i, %if.end6.i.i ]
  %165 = and i8 %retval.0.i259.i, 15
  %bf.value146.i = zext i8 %165 to i24
  %bf.shl147.i = shl nuw nsw i24 %bf.value146.i, 18
  %bf.clear148.i = and i24 %bf.set142.i, -3948545
  %bf.set149.i = or i24 %bf.shl147.i, %bf.clear148.i
  %166 = ptrtoint ptr %fc_offset.i to i32
  call void @__asan_storeN_noabort(i32 %166, i32 3)
  store i24 %bf.set149.i, ptr %fc_offset.i, align 1
  %tx_policy_cache.i.i.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif.0, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %wanted.i.i.i) #10
  %167 = ptrtoint ptr %wvif.0 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %wvif.0, align 4
  %169 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %cmp.i.i.i.i = icmp slt i8 %170, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %wfx_tx_get_link_id.exit.i.if.end.i.i.i.i_crit_edge, !prof !91

wfx_tx_get_link_id.exit.i.if.end.i.i.i.i_crit_edge: ; preds = %wfx_tx_get_link_id.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %wfx_tx_get_link_id.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.18) #10
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %wfx_tx_get_link_id.exit.i.if.end.i.i.i.i_crit_edge
  %171 = call ptr @memset(ptr %wanted.i.i.i, i32 0, i32 28)
  %hw.i.i.i.i.i = getelementptr inbounds %struct.wfx_dev, ptr %168, i32 0, i32 2
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %wfx_get_hw_rate.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i.i.i.i
  %i.096.i.i.i.i = phi i32 [ 0, %if.end.i.i.i.i ], [ %inc.i.i.i.i, %wfx_get_hw_rate.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx23.i.i.i.i = getelementptr %struct.ieee80211_tx_rate, ptr %25, i32 %i.096.i.i.i.i
  %172 = ptrtoint ptr %arrayidx23.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx23.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %cmp26.i.i.i.i = icmp slt i8 %173, 0
  br i1 %cmp26.i.i.i.i, label %for.body.i.i.i.i.wfx_tx_policy_build.exit.i.i.i_crit_edge, label %if.end29.i.i.i.i

for.body.i.i.i.i.wfx_tx_policy_build.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_policy_build.exit.i.i.i

if.end29.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %count32.i.i.i.i = getelementptr %struct.ieee80211_tx_rate, ptr %25, i32 %i.096.i.i.i.i, i32 1
  %174 = ptrtoint ptr %count32.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 2)
  %bf.load.i.i.i.i = load i16, ptr %count32.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.i.i.i)
  %cmp34.i.i.i.i = icmp slt i16 %bf.load.i.i.i.i, 0
  br i1 %cmp34.i.i.i.i, label %do.end51.i.i.i.i, label %if.end29.i.i.i.i.if.end57.i.i.i.i_crit_edge, !prof !91

if.end29.i.i.i.i.if.end57.i.i.i.i_crit_edge:      ; preds = %if.end29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i.i.i.i

do.end51.i.i.i.i:                                 ; preds = %if.end29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 59, i32 noundef 9, ptr noundef null) #10
  br label %if.end57.i.i.i.i

if.end57.i.i.i.i:                                 ; preds = %do.end51.i.i.i.i, %if.end29.i.i.i.i.if.end57.i.i.i.i_crit_edge
  %175 = ptrtoint ptr %arrayidx23.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx23.i.i.i.i, align 1
  %conv.i.i.i.i.i = sext i8 %176 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %cmp.i.i.i.i.i = icmp slt i8 %176, 0
  br i1 %cmp.i.i.i.i.i, label %if.end57.i.i.i.i.wfx_get_hw_rate.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.end57.i.i.i.i.wfx_get_hw_rate.exit.i.i.i.i_crit_edge: ; preds = %if.end57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_get_hw_rate.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end57.i.i.i.i
  %177 = ptrtoint ptr %count32.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 2)
  %bf.load.i.i.i.i.i = load i16, ptr %count32.i.i.i.i, align 1
  %178 = and i16 %bf.load.i.i.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %178)
  %tobool.not.i.i.i.i.i = icmp eq i16 %178, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end31.i.i.i.i.i, label %if.then3.i.i.i.i.i

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %176)
  %cmp6.i.i.i.i.i = icmp ugt i8 %176, 7
  br i1 %cmp6.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end28.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 29, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %conv.i.i.i.i.i) #10
  br label %wfx_get_hw_rate.exit.i.i.i.i

if.end28.i.i.i.i.i:                               ; preds = %if.then3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, 14
  br label %wfx_get_hw_rate.exit.i.i.i.i

if.end31.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  %179 = ptrtoint ptr %hw.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hw.i.i.i.i.i, align 4
  %wiphy.i.i.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %wiphy.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %wiphy.i.i.i.i.i, align 8
  %bands.i.i.i.i.i = getelementptr inbounds %struct.wiphy, ptr %182, i32 0, i32 53
  %183 = ptrtoint ptr %bands.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bands.i.i.i.i.i, align 16
  %n_bitrates.i.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %n_bitrates.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %n_bitrates.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %conv.i.i.i.i.i)
  %cmp34.not.i.i.i.i.i = icmp sgt i32 %186, %conv.i.i.i.i.i
  br i1 %cmp34.not.i.i.i.i.i, label %if.end65.i.i.i.i.i, label %do.end49.i.i.i.i.i

do.end49.i.i.i.i.i:                               ; preds = %if.end31.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %conv.i.i.i.i.i) #10
  br label %wfx_get_hw_rate.exit.i.i.i.i

if.end65.i.i.i.i.i:                               ; preds = %if.end31.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bitrates.i.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %184, i32 0, i32 1
  %187 = ptrtoint ptr %bitrates.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bitrates.i.i.i.i.i, align 4
  %hw_value.i.i.i.i.i = getelementptr %struct.ieee80211_rate, ptr %188, i32 %conv.i.i.i.i.i, i32 2
  %189 = ptrtoint ptr %hw_value.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %hw_value.i.i.i.i.i, align 2
  %conv68.i.i.i.i.i = zext i16 %190 to i32
  br label %wfx_get_hw_rate.exit.i.i.i.i

wfx_get_hw_rate.exit.i.i.i.i:                     ; preds = %if.end65.i.i.i.i.i, %do.end49.i.i.i.i.i, %if.end28.i.i.i.i.i, %do.end.i.i.i.i.i, %if.end57.i.i.i.i.wfx_get_hw_rate.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ -1, %do.end.i.i.i.i.i ], [ %add.i.i.i.i.i, %if.end28.i.i.i.i.i ], [ -1, %do.end49.i.i.i.i.i ], [ %conv68.i.i.i.i.i, %if.end65.i.i.i.i.i ], [ -1, %if.end57.i.i.i.i.wfx_get_hw_rate.exit.i.i.i.i_crit_edge ]
  %191 = ptrtoint ptr %count32.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %191, i32 2)
  %bf.load68.i.i.i.i = load i16, ptr %count32.i.i.i.i, align 1
  %bf.lshr69.i.i.i.i = lshr i16 %bf.load68.i.i.i.i, 11
  %192 = and i32 %retval.0.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool71.not.i.i.i.i = icmp eq i32 %192, 0
  %193 = shl nuw nsw i16 %bf.lshr69.i.i.i.i, 4
  %count.0.v.i.i.i.i = select i1 %tobool71.not.i.i.i.i, i16 %bf.lshr69.i.i.i.i, i16 %193
  %count.0.i.i.i.i = trunc i16 %count.0.v.i.i.i.i to i8
  %div.i.i.i.i = sdiv i32 %retval.0.i.i.i.i.i, 2
  %arrayidx78.i.i.i.i = getelementptr %struct.tx_policy, ptr %wanted.i.i.i, i32 0, i32 2, i32 %div.i.i.i.i
  %194 = ptrtoint ptr %arrayidx78.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx78.i.i.i.i, align 1
  %or95.i.i.i.i = or i8 %195, %count.0.i.i.i.i
  store i8 %or95.i.i.i.i, ptr %arrayidx78.i.i.i.i, align 1
  %inc.i.i.i.i = add nuw nsw i32 %i.096.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i, label %wfx_get_hw_rate.exit.i.i.i.i.wfx_tx_policy_build.exit.i.i.i_crit_edge, label %wfx_get_hw_rate.exit.i.i.i.i.for.body.i.i.i.i_crit_edge

wfx_get_hw_rate.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %wfx_get_hw_rate.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

wfx_get_hw_rate.exit.i.i.i.i.wfx_tx_policy_build.exit.i.i.i_crit_edge: ; preds = %wfx_get_hw_rate.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_policy_build.exit.i.i.i

wfx_tx_policy_build.exit.i.i.i:                   ; preds = %wfx_get_hw_rate.exit.i.i.i.i.wfx_tx_policy_build.exit.i.i.i_crit_edge, %for.body.i.i.i.i.wfx_tx_policy_build.exit.i.i.i_crit_edge
  %lock.i.i.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif.0, i32 0, i32 9, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #10
  %free.i.i.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif.0, i32 0, i32 9, i32 2
  %196 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile ptr, ptr %free.i.i.i, align 4
  %cmp.i58.not.i.i.i = icmp eq ptr %197, %free.i.i.i
  br i1 %cmp.i58.not.i.i.i, label %wfx_tx_policy_get.exit.thread.i.i, label %if.end19.i.i.i

wfx_tx_policy_get.exit.thread.i.i:                ; preds = %wfx_tx_policy_build.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.16) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wanted.i.i.i) #10
  br label %do.end.i.i

if.end19.i.i.i:                                   ; preds = %wfx_tx_policy_build.exit.i.i.i
  %used.i.i.i.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif.0, i32 0, i32 9, i32 1
  %rates.i.i.i.i.i = getelementptr inbounds %struct.tx_policy, ptr %wanted.i.i.i, i32 0, i32 2
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i60.i.i.i.for.cond.i.i.i.i_crit_edge, %if.end19.i.i.i
  %it.0.in.i.i.i.i = phi ptr [ %used.i.i.i.i, %if.end19.i.i.i ], [ %it.0.i.i.i.i, %for.body.i60.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %198 = ptrtoint ptr %it.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %it.0.i.i.i.i = load ptr, ptr %it.0.in.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %it.0.i.i.i.i, %used.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.cond.i.i.i.i.for.cond12.i.i.i.i_crit_edge, label %for.body.i60.i.i.i

for.cond.i.i.i.i.for.cond12.i.i.i.i_crit_edge:    ; preds = %for.cond.i.i.i.i
  br label %for.cond12.i.i.i.i

for.body.i60.i.i.i:                               ; preds = %for.cond.i.i.i.i
  %rates1.i.i.i.i.i = getelementptr inbounds %struct.tx_policy, ptr %it.0.i.i.i.i, i32 0, i32 2
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(12) %rates.i.i.i.i.i, ptr noundef dereferenceable(12) %rates1.i.i.i.i.i, i32 12) #13
  %tobool.not.i.i59.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %tobool.not.i.i59.i.i.i, label %for.body.i60.i.i.i.wfx_tx_policy_find.exit.i.i.i_crit_edge, label %for.body.i60.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i60.i.i.i.for.cond.i.i.i.i_crit_edge:    ; preds = %for.body.i60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i.i

for.body.i60.i.i.i.wfx_tx_policy_find.exit.i.i.i_crit_edge: ; preds = %for.body.i60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_policy_find.exit.i.i.i

for.cond12.i.i.i.i:                               ; preds = %for.body17.i.i.i.i.for.cond12.i.i.i.i_crit_edge, %for.cond.i.i.i.i.for.cond12.i.i.i.i_crit_edge
  %it.1.in.i.i.i.i = phi ptr [ %it.1.i.i.i.i, %for.body17.i.i.i.i.for.cond12.i.i.i.i_crit_edge ], [ %free.i.i.i, %for.cond.i.i.i.i.for.cond12.i.i.i.i_crit_edge ]
  %199 = ptrtoint ptr %it.1.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %it.1.i.i.i.i = load ptr, ptr %it.1.in.i.i.i.i, align 4
  %cmp15.not.i.i.i.i = icmp eq ptr %it.1.i.i.i.i, %free.i.i.i
  br i1 %cmp15.not.i.i.i.i, label %if.else.i.loopexit.i.i, label %for.body17.i.i.i.i

for.body17.i.i.i.i:                               ; preds = %for.cond12.i.i.i.i
  %rates1.i48.i.i.i.i = getelementptr inbounds %struct.tx_policy, ptr %it.1.i.i.i.i, i32 0, i32 2
  %bcmp.i49.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(12) %rates.i.i.i.i.i, ptr noundef dereferenceable(12) %rates1.i48.i.i.i.i, i32 12) #13
  %tobool.not.i50.i.i.i.i = icmp eq i32 %bcmp.i49.i.i.i.i, 0
  br i1 %tobool.not.i50.i.i.i.i, label %for.body17.i.i.i.i.wfx_tx_policy_find.exit.i.i.i_crit_edge, label %for.body17.i.i.i.i.for.cond12.i.i.i.i_crit_edge

for.body17.i.i.i.i.for.cond12.i.i.i.i_crit_edge:  ; preds = %for.body17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond12.i.i.i.i

for.body17.i.i.i.i.wfx_tx_policy_find.exit.i.i.i_crit_edge: ; preds = %for.body17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_policy_find.exit.i.i.i

wfx_tx_policy_find.exit.i.i.i:                    ; preds = %for.body17.i.i.i.i.wfx_tx_policy_find.exit.i.i.i_crit_edge, %for.body.i60.i.i.i.wfx_tx_policy_find.exit.i.i.i_crit_edge
  %it.0.i.lcssa72.sink.i.i.i = phi ptr [ %it.1.i.i.i.i, %for.body17.i.i.i.i.wfx_tx_policy_find.exit.i.i.i_crit_edge ], [ %it.0.i.i.i.i, %for.body.i60.i.i.i.wfx_tx_policy_find.exit.i.i.i_crit_edge ]
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %it.0.i.lcssa72.sink.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %tx_policy_cache.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.ptr.sub.i.i.i.i, -28
  br i1 %cmp.i.i.i, label %wfx_tx_policy_find.exit.i.i.i.if.end29.i.i.i_crit_edge, label %wfx_tx_policy_find.exit.i.i.i.if.else.i.i.i_crit_edge

wfx_tx_policy_find.exit.i.i.i.if.else.i.i.i_crit_edge: ; preds = %wfx_tx_policy_find.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i

wfx_tx_policy_find.exit.i.i.i.if.end29.i.i.i_crit_edge: ; preds = %wfx_tx_policy_find.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i.i

if.else.i.loopexit.i.i:                           ; preds = %for.cond12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i.i = ptrtoint ptr %tx_policy_cache.i.i.i to i32
  br label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.else.i.loopexit.i.i, %wfx_tx_policy_find.exit.i.i.i.if.else.i.i.i_crit_edge
  %sub.ptr.rhs.cast.i.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.else.i.loopexit.i.i ], [ %sub.ptr.rhs.cast.i.i.i.i, %wfx_tx_policy_find.exit.i.i.i.if.else.i.i.i_crit_edge ]
  %prev.i.i.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif.0, i32 0, i32 9, i32 2, i32 1
  %200 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i.i.i, align 4
  %rates24.i.i.i = getelementptr inbounds %struct.tx_policy, ptr %201, i32 0, i32 2
  %202 = call ptr @memcpy(ptr %rates24.i.i.i, ptr %rates.i.i.i.i.i, i32 12)
  %uploaded.i.i.i = getelementptr inbounds %struct.tx_policy, ptr %201, i32 0, i32 3
  %203 = ptrtoint ptr %uploaded.i.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 0, ptr %uploaded.i.i.i, align 4
  %usage_count.i.i.i = getelementptr inbounds %struct.tx_policy, ptr %201, i32 0, i32 1
  %204 = ptrtoint ptr %usage_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %usage_count.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %201 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.pre-phi.i.i
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.else.i.i.i, %wfx_tx_policy_find.exit.i.i.i.if.end29.i.i.i_crit_edge
  %tx_policy_renew.0.i.i = phi i8 [ 1, %if.else.i.i.i ], [ 0, %wfx_tx_policy_find.exit.i.i.i.if.end29.i.i.i_crit_edge ]
  %idx.0.in.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %if.else.i.i.i ], [ %sub.ptr.sub.i.i.i.i, %wfx_tx_policy_find.exit.i.i.i.if.end29.i.i.i_crit_edge ]
  %idx.0.i.i.i = sdiv exact i32 %idx.0.in.i.i.i, 28
  %arrayidx.i.i.i = getelementptr [15 x %struct.tx_policy], ptr %tx_policy_cache.i.i.i, i32 0, i32 %idx.0.i.i.i
  %usage_count.i.i.i.i = getelementptr [15 x %struct.tx_policy], ptr %tx_policy_cache.i.i.i, i32 0, i32 %idx.0.i.i.i, i32 1
  %205 = ptrtoint ptr %usage_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %usage_count.i.i.i.i, align 4
  %inc.i61.i.i.i = add i32 %206, 1
  store i32 %inc.i61.i.i.i, ptr %usage_count.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx.i.i.i) #10
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end29.i.i.i.__list_del_entry.exit.i.i.i.i.i_crit_edge

if.end29.i.i.i.__list_del_entry.exit.i.i.i.i.i_crit_edge: ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i.i.i, i32 0, i32 1
  %207 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %209 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %208, ptr %prev1.i.i.i.i.i.i.i, align 4
  %212 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr %210, ptr %208, align 4
  br label %__list_del_entry.exit.i.i.i.i.i

__list_del_entry.exit.i.i.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end29.i.i.i.__list_del_entry.exit.i.i.i.i.i_crit_edge
  %213 = ptrtoint ptr %used.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %used.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i.i.i, ptr noundef %used.i.i.i.i, ptr noundef %214) #10
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.i.i.wfx_tx_policy_use.exit.i.i.i_crit_edge

__list_del_entry.exit.i.i.i.i.i.wfx_tx_policy_use.exit.i.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_policy_use.exit.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %__list_del_entry.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %prev1.i.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %arrayidx.i.i.i, ptr %prev1.i.i2.i.i.i.i.i, align 4
  %216 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %214, ptr %arrayidx.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i.i.i, i32 0, i32 1
  %217 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %used.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %218 = ptrtoint ptr %used.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %arrayidx.i.i.i, ptr %used.i.i.i.i, align 4
  br label %wfx_tx_policy_use.exit.i.i.i

wfx_tx_policy_use.exit.i.i.i:                     ; preds = %if.end.i.i.i.i.i.i.i, %__list_del_entry.exit.i.i.i.i.i.wfx_tx_policy_use.exit.i.i.i_crit_edge
  %219 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile ptr, ptr %free.i.i.i, align 4
  %cmp.i63.not.i.i.i = icmp eq ptr %220, %free.i.i.i
  br i1 %cmp.i63.not.i.i.i, label %if.then34.i.i.i, label %wfx_tx_policy_use.exit.i.i.i.wfx_tx_policy_get.exit.i.i_crit_edge

wfx_tx_policy_use.exit.i.i.i.wfx_tx_policy_get.exit.i.i_crit_edge: ; preds = %wfx_tx_policy_use.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_policy_get.exit.i.i

if.then34.i.i.i:                                  ; preds = %wfx_tx_policy_use.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %221 = ptrtoint ptr %wvif.0 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %wvif.0, align 4
  %hw.i.i.i = getelementptr inbounds %struct.wfx_dev, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %hw.i.i.i, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %224) #10
  br label %wfx_tx_policy_get.exit.i.i

wfx_tx_policy_get.exit.i.i:                       ; preds = %if.then34.i.i.i, %wfx_tx_policy_use.exit.i.i.i.wfx_tx_policy_get.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wanted.i.i.i) #10
  %conv1.i.i = and i32 %idx.0.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv1.i.i)
  %cmp.i260.i = icmp eq i32 %conv1.i.i, 15
  br i1 %cmp.i260.i, label %wfx_tx_policy_get.exit.i.i.do.end.i.i_crit_edge, label %wfx_tx_policy_get.exit.i.i.if.end.i262.i_crit_edge

wfx_tx_policy_get.exit.i.i.if.end.i262.i_crit_edge: ; preds = %wfx_tx_policy_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i262.i

wfx_tx_policy_get.exit.i.i.do.end.i.i_crit_edge:  ; preds = %wfx_tx_policy_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %wfx_tx_policy_get.exit.i.i.do.end.i.i_crit_edge, %wfx_tx_policy_get.exit.thread.i.i
  %retval.0.i22.i.i = phi i32 [ 15, %wfx_tx_policy_get.exit.thread.i.i ], [ %idx.0.i.i.i, %wfx_tx_policy_get.exit.i.i.do.end.i.i_crit_edge ]
  %tx_policy_renew.120.i.i = phi i8 [ 0, %wfx_tx_policy_get.exit.thread.i.i ], [ %tx_policy_renew.0.i.i, %wfx_tx_policy_get.exit.i.i.do.end.i.i_crit_edge ]
  %225 = ptrtoint ptr %wvif.0 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %wvif.0, align 4
  %dev.i.i = getelementptr inbounds %struct.wfx_dev, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %228, ptr noundef nonnull @.str.16) #14
  br label %if.end.i262.i

if.end.i262.i:                                    ; preds = %do.end.i.i, %wfx_tx_policy_get.exit.i.i.if.end.i262.i_crit_edge
  %retval.0.i21.i.i = phi i32 [ %retval.0.i22.i.i, %do.end.i.i ], [ %idx.0.i.i.i, %wfx_tx_policy_get.exit.i.i.if.end.i262.i_crit_edge ]
  %tx_policy_renew.119.i.i = phi i8 [ %tx_policy_renew.120.i.i, %do.end.i.i ], [ %tx_policy_renew.0.i.i, %wfx_tx_policy_get.exit.i.i.if.end.i262.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_policy_renew.119.i.i)
  %tobool.not.i261.i = icmp eq i8 %tx_policy_renew.119.i.i, 0
  br i1 %tobool.not.i261.i, label %if.end.i262.i.wfx_tx_get_retry_policy_id.exit.i_crit_edge, label %if.then3.i.i

if.end.i262.i.wfx_tx_get_retry_policy_id.exit.i_crit_edge: ; preds = %if.end.i262.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_get_retry_policy_id.exit.i

if.then3.i.i:                                     ; preds = %if.end.i262.i
  %229 = ptrtoint ptr %wvif.0 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %wvif.0, align 4
  tail call void @wfx_tx_lock(ptr noundef %230) #10
  %tx_policy_upload_work.i.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif.0, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %231 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %231, ptr noundef %tx_policy_upload_work.i.i) #10
  br i1 %call.i.i.i.i, label %if.then3.i.i.wfx_tx_get_retry_policy_id.exit.i_crit_edge, label %if.then6.i.i

if.then3.i.i.wfx_tx_get_retry_policy_id.exit.i_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_get_retry_policy_id.exit.i

if.then6.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %232 = ptrtoint ptr %wvif.0 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %wvif.0, align 4
  tail call void @wfx_tx_unlock(ptr noundef %233) #10
  br label %wfx_tx_get_retry_policy_id.exit.i

wfx_tx_get_retry_policy_id.exit.i:                ; preds = %if.then6.i.i, %if.then3.i.i.wfx_tx_get_retry_policy_id.exit.i_crit_edge, %if.end.i262.i.wfx_tx_get_retry_policy_id.exit.i_crit_edge
  %conv.i263.i = trunc i32 %retval.0.i21.i.i to i8
  %234 = ptrtoint ptr %fc_offset.i to i32
  call void @__asan_loadN_noabort(i32 %234, i32 3)
  %bf.load152.i = load i24, ptr %fc_offset.i, align 1
  %235 = and i8 %conv.i263.i, 15
  %bf.value153.i = zext i8 %235 to i24
  %bf.clear154.i = and i24 %bf.load152.i, -16
  %bf.set155.i = or i24 %bf.clear154.i, %bf.value153.i
  store i24 %bf.set155.i, ptr %fc_offset.i, align 1
  %236 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %236, i32 2)
  %bf.load.i265.i = load i16, ptr %flags.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i265.i, 2047
  %conv.i266.i = zext i16 %bf.clear.i.i to i32
  %and.i.i = and i32 %conv.i266.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i267.i = icmp eq i32 %and.i.i, 0
  %and7.i.i = and i32 %conv.i266.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %237 = select i1 %tobool8.not.i.i, i8 16, i8 32
  %conv158.i = select i1 %tobool.not.i267.i, i8 0, i8 %237
  %frame_format.i = getelementptr inbounds %struct.hif_msg, ptr %126, i32 5
  %238 = ptrtoint ptr %frame_format.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %bf.load159.i = load i8, ptr %frame_format.i, align 1
  %bf.clear162.i = and i8 %bf.load159.i, 15
  %bf.set163.i = or i8 %conv158.i, %bf.clear162.i
  store i8 %bf.set163.i, ptr %frame_format.i, align 1
  %239 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %bf.load165.i = load i16, ptr %flags.i.i, align 1
  %240 = and i16 %bf.load165.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %240)
  %tobool169.not.i = icmp eq i16 %240, 0
  br i1 %tobool169.not.i, label %wfx_tx_get_retry_policy_id.exit.i.if.end174.i_crit_edge, label %if.then170.i

wfx_tx_get_retry_policy_id.exit.i.if.end174.i_crit_edge: ; preds = %wfx_tx_get_retry_policy_id.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end174.i

if.then170.i:                                     ; preds = %wfx_tx_get_retry_policy_id.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set173.i = or i8 %bf.set163.i, 4
  %241 = ptrtoint ptr %frame_format.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %bf.set173.i, ptr %frame_format.i, align 1
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.then170.i, %wfx_tx_get_retry_policy_id.exit.i.if.end174.i_crit_edge
  %242 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %cb.i, align 8
  %and176.i = and i32 %243, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i)
  %tobool177.not.i = icmp eq i32 %and176.i, 0
  br i1 %tobool177.not.i, label %if.end174.i.if.end182.i_crit_edge, label %if.then178.i

if.end174.i.if.end182.i_crit_edge:                ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182.i

if.then178.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #12
  %244 = ptrtoint ptr %fc_offset.i to i32
  call void @__asan_loadN_noabort(i32 %244, i32 3)
  %bf.load179.i = load i24, ptr %fc_offset.i, align 1
  %bf.set181.i = or i24 %bf.load179.i, 2048
  store i24 %bf.set181.i, ptr %fc_offset.i, align 1
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then178.i, %if.end174.i.if.end182.i_crit_edge
  tail call void @wfx_tx_queues_put(ptr noundef nonnull %wvif.0, ptr noundef %skb) #10
  %245 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %cb.i, align 8
  %and184.i = and i32 %246, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184.i)
  %tobool185.not.i = icmp eq i32 %and184.i, 0
  br i1 %tobool185.not.i, label %if.end182.i.wfx_tx_inner.exit.thread_crit_edge, label %if.then186.i

if.end182.i.wfx_tx_inner.exit.thread_crit_edge:   ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_inner.exit.thread

if.then186.i:                                     ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #12
  %update_tim_work.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif.0, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %247 = load ptr, ptr @system_wq, align 4
  %call.i.i270.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %247, ptr noundef %update_tim_work.i) #10
  br label %wfx_tx_inner.exit.thread

wfx_tx_inner.exit.thread:                         ; preds = %if.then186.i, %if.end182.i.wfx_tx_inner.exit.thread_crit_edge
  %248 = ptrtoint ptr %wvif.0 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %wvif.0, align 4
  tail call void @wfx_bh_request_tx(ptr noundef %249) #10
  br label %cleanup

wfx_tx_inner.exit:                                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %138, i32 0, i32 1
  %250 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %251, ptr noundef nonnull @.str.14, i32 noundef %136, i32 noundef %conv104.i) #14
  %call117.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add.i) #10
  br label %drop

drop:                                             ; preds = %wfx_tx_inner.exit, %do.end73, %do.end52
  %hw79 = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 2
  %252 = ptrtoint ptr %hw79 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hw79, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %253, ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %drop, %wfx_tx_inner.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_tx_confirm_cb(ptr noundef %wdev, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %packet_id = getelementptr inbounds %struct.hif_cnf_tx, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %packet_id to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %packet_id, align 1
  %call = tail call ptr @wfx_pending_get(ptr noundef %wdev, i32 noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %packet_id to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %packet_id, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %5) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %interface = getelementptr inbounds %struct.hif_msg, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.i = icmp ugt i8 %bf.clear, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_tx_confirm_cb, %if.then3.i)) #10
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !95

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %10, ptr noundef nonnull @.str.23, i32 noundef %conv) #10
  br label %do.end18

if.end4.i:                                        ; preds = %if.end
  %11 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #10, !srcloc !90
  %and.i = and i32 %11, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %13, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %13, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.do.end18_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_wvif.exit

if.end4.i.do.end18_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i134 = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %tobool5.not = icmp eq ptr %retval.0.i134, null
  br i1 %tobool5.not, label %wdev_to_wvif.exit.do.end18_crit_edge, label %if.end33, !prof !91

wdev_to_wvif.exit.do.end18_crit_edge:             ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end18:                                         ; preds = %wdev_to_wvif.exit.do.end18_crit_edge, %if.end4.i.do.end18_crit_edge, %if.then3.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end33:                                         ; preds = %wdev_to_wvif.exit
  %call34 = tail call i32 @wfx_pending_get_pkt_us_delay(ptr noundef %wdev, ptr noundef nonnull %call) #10
  tail call fastcc void @trace_tx_stats(ptr noundef %arg, ptr noundef nonnull %call, i32 noundef %call34)
  tail call fastcc void @wfx_tx_fill_rates(ptr noundef %wdev, ptr noundef %cb.i, ptr noundef %arg)
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %icv_size = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 32
  %16 = ptrtoint ptr %icv_size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %icv_size, align 8
  %conv35 = zext i8 %17 to i32
  %sub = sub i32 %15, %conv35
  tail call void @skb_trim(ptr noundef nonnull %call, i32 noundef %sub) #10
  %pad = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 20
  %18 = call ptr @memset(ptr %pad, i32 0, i32 28)
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arg, align 1
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %20, label %if.end33.if.end96_crit_edge [
    i32 0, label %if.then38
    i32 352321536, label %if.then50
  ]

if.end33.if.end96_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then38:                                        ; preds = %if.end33
  %media_delay = getelementptr inbounds %struct.hif_cnf_tx, ptr %arg, i32 0, i32 6
  %22 = ptrtoint ptr %media_delay to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %media_delay, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %tx_queue_delay = getelementptr inbounds %struct.hif_cnf_tx, ptr %arg, i32 0, i32 7
  %25 = ptrtoint ptr %tx_queue_delay to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %tx_queue_delay, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %sub39 = sub i32 %24, %27
  %conv40 = trunc i32 %sub39 to i16
  %tx_time = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 28
  %28 = ptrtoint ptr %tx_time to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv40, ptr %tx_time, align 4
  %29 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cb.i, align 8
  %and = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %30, -2147483648
  br label %if.end96.sink.split

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %or45 = or i32 %30, 512
  br label %if.end96.sink.split

if.then50:                                        ; preds = %if.end33
  %requeue = getelementptr inbounds %struct.hif_cnf_tx, ptr %arg, i32 0, i32 4
  %31 = ptrtoint ptr %requeue to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load52 = load i8, ptr %requeue, align 1
  %32 = and i8 %bf.load52, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool55.not = icmp eq i8 %32, 0
  br i1 %tobool55.not, label %do.end73, label %if.then50.if.end79_crit_edge, !prof !91

if.then50.if.end79_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.end73:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 532, i32 noundef 9, ptr noundef nonnull @.str.10) #10
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.then50.if.end79_crit_edge
  %33 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cb.i, align 8
  %and88 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end79.if.end92_crit_edge, label %if.then90

if.end79.if.end92_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then90:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %after_dtim_tx_allowed = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i134, i32 0, i32 5
  %35 = ptrtoint ptr %after_dtim_tx_allowed to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %after_dtim_tx_allowed, align 4
  %update_tim_work = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i134, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %update_tim_work) #10
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end79.if.end92_crit_edge
  %37 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cb.i, align 8
  %or94 = or i32 %38, 256
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.end92, %if.else, %if.then42
  %or94.sink = phi i32 [ %or94, %if.end92 ], [ %or, %if.then42 ], [ %or45, %if.else ]
  %39 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or94.sink, ptr %cb.i, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %if.end33.if.end96_crit_edge
  tail call fastcc void @wfx_skb_dtor(ptr noundef nonnull %retval.0.i134, ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %do.end18, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wfx_pending_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tx_stats(ptr noundef %tx_cnf, ptr noundef %skb, i32 noundef %delay) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tx_stats, i32 0, i32 1), ptr blockaddress(@trace_tx_stats, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !95

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  %call42 = tail call i32 @__traceiter_tx_stats(ptr noundef null, ptr noundef %tx_cnf, ptr noundef %skb, i32 noundef %delay) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tx_stats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tx_stats, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tx_stats.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_tx_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 439, ptr noundef nonnull @.str.25) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_pending_get_pkt_us_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wfx_tx_fill_rates(ptr nocapture noundef readonly %wdev, ptr nocapture noundef %tx_info, ptr nocapture noundef readonly %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_failures = getelementptr inbounds %struct.hif_cnf_tx, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %ack_failures to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ack_failures, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arg, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  %add = add nuw nsw i32 %conv, 1
  %tx_count.0 = select i1 %or.cond, i32 0, i32 %add
  %4 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %tx_info, i32 0, i32 2
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %txed_rate = getelementptr inbounds %struct.hif_cnf_tx, ptr %arg, i32 0, i32 2
  %hw.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %tx_count.1182 = phi i32 [ %tx_count.0, %entry ], [ %tx_count.2, %for.inc.for.body_crit_edge ]
  %i.0179 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %4, i32 0, i32 %i.0179
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp6 = icmp slt i8 %6, 0
  br i1 %cmp6, label %for.body.for.end_crit_edge, label %if.end9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end9:                                          ; preds = %for.body
  %count = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %4, i32 0, i32 %i.0179, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %conv10 = zext i16 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_count.1182, i32 %conv10)
  %cmp11 = icmp slt i32 %tx_count.1182, %conv10
  br i1 %cmp11, label %land.lhs.true, label %if.end9.if.end30_crit_edge

if.end9.if.end30_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end9
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arg, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 318767104, i32 %9)
  %cmp14 = icmp eq i32 %9, 318767104
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true16:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %ack_failures to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ack_failures, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %land.lhs.true16.if.end30_crit_edge, label %do.body

land.lhs.true16.if.end30_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.body:                                          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_tx_fill_rates.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_tx_fill_rates, %if.then24)) #10
          to label %if.end30 [label %if.then24], !srcloc !95

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %bf.load26 = load i16, ptr %count, align 1
  %bf.lshr27 = lshr i16 %bf.load26, 11
  %conv28 = zext i16 %bf.lshr27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_tx_fill_rates.__UNIQUE_ID_ddebug375, ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef %conv28, i32 noundef %tx_count.1182) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %do.body, %land.lhs.true16.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %if.end9.if.end30_crit_edge
  %15 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %bf.load32 = load i16, ptr %count, align 1
  %bf.lshr33 = lshr i16 %bf.load32, 11
  %conv34 = zext i16 %bf.lshr33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_count.1182, i32 %conv34)
  %cmp35.not = icmp sgt i32 %tx_count.1182, %conv34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_count.1182)
  %tobool38.not = icmp eq i32 %tx_count.1182, 0
  %or.cond142 = or i1 %tobool38.not, %cmp35.not
  br i1 %or.cond142, label %if.end30.if.end65_crit_edge, label %land.lhs.true39

if.end30.if.end65_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true39:                                  ; preds = %if.end30
  %16 = ptrtoint ptr %txed_rate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %txed_rate, align 1
  %conv40 = zext i8 %17 to i32
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv.i = sext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp slt i8 %19, 0
  br i1 %cmp.i, label %land.lhs.true39.do.body45_crit_edge, label %if.end.i

land.lhs.true39.do.body45_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

if.end.i:                                         ; preds = %land.lhs.true39
  %20 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %bf.load.i = load i16, ptr %count, align 1
  %21 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %if.end31.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp6.i = icmp ugt i8 %19, 7
  br i1 %cmp6.i, label %if.then3.i.do.body45.sink.split_crit_edge, label %if.end28.i

if.then3.i.do.body45.sink.split_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45.sink.split

if.end28.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %conv.i, 14
  br label %wfx_get_hw_rate.exit

if.end31.i:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wiphy.i, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %bands.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bands.i, align 16
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv.i)
  %cmp34.not.i = icmp sgt i32 %29, %conv.i
  br i1 %cmp34.not.i, label %if.end65.i, label %if.end31.i.do.body45.sink.split_crit_edge

if.end31.i.do.body45.sink.split_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45.sink.split

if.end65.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bitrates.i, align 4
  %hw_value.i = getelementptr %struct.ieee80211_rate, ptr %31, i32 %conv.i, i32 2
  %32 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hw_value.i, align 2
  %conv68.i = zext i16 %33 to i32
  br label %wfx_get_hw_rate.exit

wfx_get_hw_rate.exit:                             ; preds = %if.end65.i, %if.end28.i
  %retval.0.i149 = phi i32 [ %add.i, %if.end28.i ], [ %conv68.i, %if.end65.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i149, i32 %conv40)
  %cmp42.not = icmp eq i32 %retval.0.i149, %conv40
  br i1 %cmp42.not, label %wfx_get_hw_rate.exit.if.end65_crit_edge, label %wfx_get_hw_rate.exit.do.body45_crit_edge

wfx_get_hw_rate.exit.do.body45_crit_edge:         ; preds = %wfx_get_hw_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

wfx_get_hw_rate.exit.if.end65_crit_edge:          ; preds = %wfx_get_hw_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.body45.sink.split:                             ; preds = %if.end31.i.do.body45.sink.split_crit_edge, %if.then3.i.do.body45.sink.split_crit_edge
  %.sink = phi i32 [ 29, %if.then3.i.do.body45.sink.split_crit_edge ], [ 39, %if.end31.i.do.body45.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %.sink, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %conv.i) #10
  br label %do.body45

do.body45:                                        ; preds = %do.body45.sink.split, %wfx_get_hw_rate.exit.do.body45_crit_edge, %land.lhs.true39.do.body45_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_tx_fill_rates.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_tx_fill_rates, %if.then57)) #10
          to label %if.end65 [label %if.then57], !srcloc !95

if.then57:                                        ; preds = %do.body45
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %36 = ptrtoint ptr %txed_rate to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %txed_rate, align 1
  %conv60 = zext i8 %37 to i32
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv.i150 = sext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.i151 = icmp slt i8 %39, 0
  br i1 %cmp.i151, label %if.then57.wfx_get_hw_rate.exit173_crit_edge, label %if.end.i155

if.then57.wfx_get_hw_rate.exit173_crit_edge:      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_get_hw_rate.exit173

if.end.i155:                                      ; preds = %if.then57
  %40 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %bf.load.i153 = load i16, ptr %count, align 1
  %41 = and i16 %bf.load.i153, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i154 = icmp eq i16 %41, 0
  br i1 %tobool.not.i154, label %if.end31.i166, label %if.then3.i157

if.then3.i157:                                    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %39)
  %cmp6.i156 = icmp ugt i8 %39, 7
  br i1 %cmp6.i156, label %do.end.i158, label %if.end28.i160

do.end.i158:                                      ; preds = %if.then3.i157
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 29, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %conv.i150) #10
  br label %wfx_get_hw_rate.exit173

if.end28.i160:                                    ; preds = %if.then3.i157
  call void @__sanitizer_cov_trace_pc() #12
  %add.i159 = add nsw i32 %conv.i150, 14
  br label %wfx_get_hw_rate.exit173

if.end31.i166:                                    ; preds = %if.end.i155
  %42 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw.i, align 4
  %wiphy.i162 = getelementptr inbounds %struct.ieee80211_hw, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wiphy.i162 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wiphy.i162, align 8
  %bands.i163 = getelementptr inbounds %struct.wiphy, ptr %45, i32 0, i32 53
  %46 = ptrtoint ptr %bands.i163 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bands.i163, align 16
  %n_bitrates.i164 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %n_bitrates.i164 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_bitrates.i164, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv.i150)
  %cmp34.not.i165 = icmp sgt i32 %49, %conv.i150
  br i1 %cmp34.not.i165, label %if.end65.i171, label %do.end49.i167

do.end49.i167:                                    ; preds = %if.end31.i166
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %conv.i150) #10
  br label %wfx_get_hw_rate.exit173

if.end65.i171:                                    ; preds = %if.end31.i166
  call void @__sanitizer_cov_trace_pc() #12
  %bitrates.i168 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %bitrates.i168 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bitrates.i168, align 4
  %hw_value.i169 = getelementptr %struct.ieee80211_rate, ptr %51, i32 %conv.i150, i32 2
  %52 = ptrtoint ptr %hw_value.i169 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hw_value.i169, align 2
  %conv68.i170 = zext i16 %53 to i32
  br label %wfx_get_hw_rate.exit173

wfx_get_hw_rate.exit173:                          ; preds = %if.end65.i171, %do.end49.i167, %if.end28.i160, %do.end.i158, %if.then57.wfx_get_hw_rate.exit173_crit_edge
  %retval.0.i172 = phi i32 [ -1, %do.end.i158 ], [ %add.i159, %if.end28.i160 ], [ -1, %do.end49.i167 ], [ %conv68.i170, %if.end65.i171 ], [ -1, %if.then57.wfx_get_hw_rate.exit173_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_tx_fill_rates.__UNIQUE_ID_ddebug376, ptr noundef %35, ptr noundef nonnull @.str.29, i32 noundef %conv60, i32 noundef %retval.0.i172) #10
  br label %if.end65

if.end65:                                         ; preds = %wfx_get_hw_rate.exit173, %do.body45, %wfx_get_hw_rate.exit.if.end65_crit_edge, %if.end30.if.end65_crit_edge
  %54 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %bf.load67 = load i16, ptr %count, align 1
  %bf.lshr68 = lshr i16 %bf.load67, 11
  %conv69 = zext i16 %bf.lshr68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_count.1182, i32 %conv69)
  %cmp70 = icmp sgt i32 %tx_count.1182, %conv69
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %tx_count.1182, %conv69
  br label %for.inc

if.else:                                          ; preds = %if.end65
  br i1 %tobool38.not, label %if.then78, label %if.else82

if.then78:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear = and i16 %bf.load67, 2047
  %55 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %bf.clear, ptr %count, align 1
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %arrayidx, align 1
  br label %for.inc

if.else82:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv83 = trunc i32 %tx_count.1182 to i16
  %bf.shl = shl i16 %conv83, 11
  %bf.clear86 = and i16 %bf.load67, 2047
  %bf.set87 = or i16 %bf.clear86, %bf.shl
  %57 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %bf.set87, ptr %count, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else82, %if.then78, %if.then72
  %tx_count.2 = phi i32 [ %sub, %if.then72 ], [ 0, %if.else82 ], [ 0, %if.then78 ]
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
  %tx_count.1.lcssa = phi i32 [ %tx_count.1182, %for.body.for.end_crit_edge ], [ %tx_count.2, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_count.1.lcssa)
  %tobool90.not = icmp eq i32 %tx_count.1.lcssa, 0
  br i1 %tobool90.not, label %for.end.if.end109_crit_edge, label %do.body92

for.end.if.end109_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

do.body92:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_tx_fill_rates.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_tx_fill_rates, %if.then104)) #10
          to label %if.end109 [label %if.then104], !srcloc !95

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_tx_fill_rates.__UNIQUE_ID_ddebug377, ptr noundef %59, ptr noundef nonnull @.str.30, i32 noundef %tx_count.1.lcssa) #10
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %do.body92, %for.end.if.end109_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wfx_skb_dtor(ptr noundef %wvif, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wvif, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %body = getelementptr inbounds %struct.hif_msg, ptr %1, i32 0, i32 3
  %fc_offset = getelementptr inbounds %struct.hif_req_tx, ptr %body, i32 0, i32 2
  %2 = ptrtoint ptr %fc_offset to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %fc_offset, align 1
  %bf.lshr = lshr i24 %bf.load, 12
  %3 = and i24 %bf.lshr, 7
  %4 = or i24 %3, 24
  %add = zext i24 %4 to i32
  %5 = and i24 %bf.load, 15
  %cmp.i = icmp eq i24 %5, 15
  br i1 %cmp.i, label %if.end.wfx_tx_policy_put.exit_crit_edge, label %if.end.i

if.end.wfx_tx_policy_put.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_policy_put.exit

if.end.i:                                         ; preds = %if.end
  %bf.cast3 = zext i24 %5 to i32
  %tx_policy_cache.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 9
  %lock.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 9, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %free.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %free.i, align 4
  %cmp.i.i = icmp eq ptr %7, %free.i
  %arrayidx.i = getelementptr [15 x %struct.tx_policy], ptr %tx_policy_cache.i, i32 0, i32 %bf.cast3
  %usage_count.i.i = getelementptr [15 x %struct.tx_policy], ptr %tx_policy_cache.i, i32 0, i32 %bf.cast3, i32 1
  %8 = ptrtoint ptr %usage_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage_count.i.i, align 4
  %dec.i.i = add i32 %9, -1
  store i32 %dec.i.i, ptr %usage_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %16 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %free.i, ptr noundef %17) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.wfx_tx_policy_release.exit.i_crit_edge

__list_del_entry.exit.i.i.i.wfx_tx_policy_release.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfx_tx_policy_release.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.i, ptr %prev1.i.i2.i.i.i, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %arrayidx.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free.i, ptr %prev3.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %arrayidx.i, ptr %free.i, align 4
  br label %wfx_tx_policy_release.exit.i

wfx_tx_policy_release.exit.i:                     ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.wfx_tx_policy_release.exit.i_crit_edge
  br i1 %cmp.i.i, label %if.then4.i, label %wfx_tx_policy_release.exit.i.if.end5.i_crit_edge

wfx_tx_policy_release.exit.i.if.end5.i_crit_edge: ; preds = %wfx_tx_policy_release.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %wfx_tx_policy_release.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wvif, align 4
  %hw.i = getelementptr inbounds %struct.wfx_dev, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %25) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %wfx_tx_policy_release.exit.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %wfx_tx_policy_put.exit

wfx_tx_policy_put.exit:                           ; preds = %if.end5.i, %if.end.wfx_tx_policy_put.exit_crit_edge
  %call5 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #10
  %26 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wvif, align 4
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %29, ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %wfx_tx_policy_put.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_flush(ptr nocapture noundef readonly %hw, ptr noundef %vif, i32 noundef %queues, i1 noundef zeroext %drop) local_unnamed_addr #0 align 64 {
entry:
  %dropped = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dropped) #10
  %2 = call ptr @memset(ptr %dropped, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %dropped, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %3 = ptrtoint ptr %dropped to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dropped, ptr %dropped, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %dropped, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dropped, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %dropped, i32 0, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 0
  %dropped.17 = select i1 %drop, ptr %dropped, ptr null
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %dropped. = select i1 %drop, ptr %dropped, ptr null
  call fastcc void @wfx_flush_vif(ptr noundef %drv_priv, i32 noundef %queues, ptr noundef %dropped.)
  br label %if.end

while.cond:                                       ; preds = %while.body, %while.cond.preheader
  %wvif.0 = phi ptr [ %retval.0.i, %while.body ], [ null, %while.cond.preheader ]
  %tobool.not.i = icmp eq ptr %wvif.0, null
  %6 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 2) #10, !srcloc !90
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %8, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %8, i32 0, i32 19
  %tobool1.not.i = xor i1 %tobool.not.i, true
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not.i.i
  br i1 %or.cond.i, label %if.end4.i, label %while.cond.wvif_iterate.exit_crit_edge

while.cond.wvif_iterate.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit

if.end4.i:                                        ; preds = %while.cond
  %spec.select.i.i = select i1 %tobool12.not.i.i, ptr null, ptr %drv_priv.i.i
  %cmp5.i = icmp eq ptr %spec.select.i.i, %wvif.0
  %narrow.i = or i1 %tobool.not.i, %cmp5.i
  %9 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 2) #10, !srcloc !90
  %and.i.1.i = and i32 %9, 1
  %arrayidx.i.1.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i.1.i
  %10 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %11, null
  %drv_priv.i.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %11, i32 0, i32 19
  %tobool1.not.1.i = xor i1 %narrow.i, true
  %12 = select i1 %tobool1.not.1.i, i1 true, i1 %tobool12.not.i.1.i
  br i1 %12, label %if.end4.i.if.end_crit_edge, label %if.end4.i.wvif_iterate.exit_crit_edge

if.end4.i.wvif_iterate.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wvif_iterate.exit

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

wvif_iterate.exit:                                ; preds = %if.end4.i.wvif_iterate.exit_crit_edge, %while.cond.wvif_iterate.exit_crit_edge
  %retval.0.i = phi ptr [ %drv_priv.i.i, %while.cond.wvif_iterate.exit_crit_edge ], [ %drv_priv.i.1.i, %if.end4.i.wvif_iterate.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not, label %wvif_iterate.exit.if.end_crit_edge, label %while.body

wvif_iterate.exit.if.end_crit_edge:               ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body:                                       ; preds = %wvif_iterate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @wfx_flush_vif(ptr noundef nonnull %retval.0.i, i32 noundef %queues, ptr noundef %dropped.17)
  br label %while.cond

if.end:                                           ; preds = %wvif_iterate.exit.if.end_crit_edge, %if.end4.i.if.end_crit_edge, %if.then
  call void @wfx_tx_flush(ptr noundef %1) #10
  %chip_frozen = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_frozen, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @wfx_pending_drop(ptr noundef %1, ptr noundef nonnull %dropped) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %call1135 = call ptr @skb_dequeue(ptr noundef nonnull %dropped) #10
  %cmp12.not36 = icmp eq ptr %call1135, null
  br i1 %cmp12.not36, label %if.end9.while.end16_crit_edge, label %while.body13.lr.ph

if.end9.while.end16_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end16

while.body13.lr.ph:                               ; preds = %if.end9
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 1
  br label %while.body13

while.body13:                                     ; preds = %wdev_to_wvif.exit.while.body13_crit_edge, %while.body13.lr.ph
  %call1137 = phi ptr [ %call1135, %while.body13.lr.ph ], [ %call11, %wdev_to_wvif.exit.while.body13_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1137, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %interface = getelementptr inbounds %struct.hif_msg, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.i = icmp ugt i8 %bf.clear, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i31

do.body.i:                                        ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_flush, %if.then3.i)) #10
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !95

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %19, ptr noundef nonnull @.str.23, i32 noundef %conv) #10
  br label %wdev_to_wvif.exit

if.end4.i31:                                      ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #12
  %20 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #10, !srcloc !90
  %and.i = and i32 %20, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %1, i32 0, i32 3, i32 %and.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %22, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %22, i32 0, i32 19
  %spec.select.i30 = select i1 %tobool12.not.i, ptr null, ptr %drv_priv.i
  br label %wdev_to_wvif.exit

wdev_to_wvif.exit:                                ; preds = %if.end4.i31, %if.then3.i, %do.body.i
  %retval.0.i32 = phi ptr [ null, %if.then3.i ], [ %spec.select.i30, %if.end4.i31 ], [ null, %do.body.i ]
  %count.i = getelementptr %struct.sk_buff, ptr %call1137, i32 0, i32 3, i32 9
  %23 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %call1137, i32 0, i32 3, i32 12
  %24 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %call1137, i32 0, i32 3, i32 15
  %25 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %call1137, i32 0, i32 3, i32 18
  %26 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %call1137, i32 0, i32 3, i32 20
  %27 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  call fastcc void @wfx_skb_dtor(ptr noundef %retval.0.i32, ptr noundef nonnull %call1137)
  %call11 = call ptr @skb_dequeue(ptr noundef nonnull %dropped) #10
  %cmp12.not = icmp eq ptr %call11, null
  br i1 %cmp12.not, label %wdev_to_wvif.exit.while.end16_crit_edge, label %wdev_to_wvif.exit.while.body13_crit_edge

wdev_to_wvif.exit.while.body13_crit_edge:         ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body13

wdev_to_wvif.exit.while.end16_crit_edge:          ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end16

while.end16:                                      ; preds = %wdev_to_wvif.exit.while.end16_crit_edge, %if.end9.while.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dropped) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wfx_flush_vif(ptr noundef %wvif, i32 noundef %queues, ptr noundef %dropped) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool1.not = icmp eq ptr %dropped, null
  %and = and i32 %queues, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.for.inc_crit_edge, label %if.then2

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 0
  tail call void @wfx_tx_queue_drop(ptr noundef %wvif, ptr noundef %arrayidx, ptr noundef nonnull %dropped) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %entry.for.inc_crit_edge
  %and.1 = and i32 %queues, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %or.cond.1 = or i1 %tobool1.not, %tobool.not.1
  br i1 %or.cond.1, label %for.inc.for.inc.1_crit_edge, label %if.then2.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 1
  tail call void @wfx_tx_queue_drop(ptr noundef %wvif, ptr noundef %arrayidx.1, ptr noundef nonnull %dropped) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %queues, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %or.cond.2 = or i1 %tobool1.not, %tobool.not.2
  br i1 %or.cond.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then2.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.2 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 2
  tail call void @wfx_tx_queue_drop(ptr noundef %wvif, ptr noundef %arrayidx.2, ptr noundef nonnull %dropped) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then2.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %queues, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %or.cond.3 = or i1 %tobool1.not, %tobool.not.3
  br i1 %or.cond.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then2.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 3
  tail call void @wfx_tx_queue_drop(ptr noundef %wvif, ptr noundef %arrayidx.3, ptr noundef nonnull %dropped) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then2.3, %for.inc.2.for.inc.3_crit_edge
  %0 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wvif, align 4
  %chip_frozen = getelementptr inbounds %struct.wfx_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_frozen, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %for.inc.3.for.body9_crit_edge, label %for.inc.3.cleanup69_crit_edge

for.inc.3.cleanup69_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69

for.inc.3.for.body9_crit_edge:                    ; preds = %for.inc.3
  br label %for.body9

for.body9:                                        ; preds = %for.inc66.for.body9_crit_edge, %for.inc.3.for.body9_crit_edge
  %i.1112 = phi i32 [ %inc67, %for.inc66.for.body9_crit_edge ], [ 0, %for.inc.3.for.body9_crit_edge ]
  %shl10 = shl nuw nsw i32 1, %i.1112
  %and11 = and i32 %shl10, %queues
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.body9.for.inc66_crit_edge, label %if.end14

for.body9.for.inc66_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc66

if.end14:                                         ; preds = %for.body9
  %arrayidx16 = getelementptr %struct.wfx_vif, ptr %wvif, i32 0, i32 8, i32 %i.1112
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 563) #10
  %call20 = call zeroext i1 @wfx_tx_queue_empty(ptr noundef %wvif, ptr noundef %arrayidx16) #10
  br i1 %call20, label %if.end14.for.inc66_crit_edge, label %if.then28

if.end14.for.inc66_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc66

if.then28:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %5 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wvif, align 4
  %tx_dequeue108 = getelementptr inbounds %struct.wfx_dev, ptr %6, i32 0, i32 17
  %call33109 = call i32 @prepare_to_wait_event(ptr noundef %tx_dequeue108, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call35110 = call zeroext i1 @wfx_tx_queue_empty(ptr noundef %wvif, ptr noundef %arrayidx16) #10
  br i1 %call35110, label %if.then28.if.end57_crit_edge, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  br label %cleanup

if.then28.if.end57_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then28.cleanup_crit_edge
  %__ret29.1111 = phi i32 [ %__ret29.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then28.cleanup_crit_edge ]
  %call52 = call i32 @schedule_timeout(i32 noundef %__ret29.1111) #10
  %7 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wvif, align 4
  %tx_dequeue = getelementptr inbounds %struct.wfx_dev, ptr %8, i32 0, i32 17
  %call33 = call i32 @prepare_to_wait_event(ptr noundef %tx_dequeue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call35 = call zeroext i1 @wfx_tx_queue_empty(ptr noundef %wvif, ptr noundef %arrayidx16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool39.not = icmp eq i32 %call52, 0
  %9 = select i1 %call35, i1 %tobool39.not, i1 false
  %__ret29.1 = select i1 %9, i32 1, i32 %call52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.1)
  %tobool45.not = icmp eq i32 %__ret29.1, 0
  %10 = select i1 %call35, i1 true, i1 %tobool45.not
  br i1 %10, label %cleanup.if.end57_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.if.end57_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end57:                                         ; preds = %cleanup.if.end57_crit_edge, %if.then28.if.end57_crit_edge
  %__ret29.1.lcssa = phi i32 [ 100, %if.then28.if.end57_crit_edge ], [ %__ret29.1, %cleanup.if.end57_crit_edge ]
  %11 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wvif, align 4
  %tx_dequeue55 = getelementptr inbounds %struct.wfx_dev, ptr %12, i32 0, i32 17
  call void @finish_wait(ptr noundef %tx_dequeue55, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret29.1.lcssa)
  %cmp59 = icmp slt i32 %__ret29.1.lcssa, 1
  br i1 %cmp59, label %do.end63, label %if.end57.for.inc66_crit_edge

if.end57.for.inc66_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc66

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wvif, align 4
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.34) #14
  br label %for.inc66

for.inc66:                                        ; preds = %do.end63, %if.end57.for.inc66_crit_edge, %if.end14.for.inc66_crit_edge, %for.body9.for.inc66_crit_edge
  %inc67 = add nuw nsw i32 %i.1112, 1
  %exitcond.not = icmp eq i32 %inc67, 4
  br i1 %exitcond.not, label %for.inc66.cleanup69_crit_edge, label %for.inc66.for.body9_crit_edge

for.inc66.for.body9_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.inc66.cleanup69_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69

cleanup69:                                        ; preds = %for.inc66.cleanup69_crit_edge, %for.inc.3.cleanup69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_pending_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_set_tx_rate_retry_policy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_queues_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bh_request_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tx_stats(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_queue_drop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wfx_tx_queue_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @wfx_tx_policy_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/data_tx.c", i32 200, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/wfx/data_tx.c", i32 412, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/wfx/data_tx.c", i32 424, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wfx_tx._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @wfx_tx._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/wfx/data_tx.c", i32 500, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wfx_tx_confirm_cb._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @wfx_tx_confirm_cb._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/wfx/data_tx.c", i32 532, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/wfx/data_tx.c", i32 343, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/wfx/data_tx.c", i32 353, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/wfx/data_tx.c", i32 354, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/wfx/data_tx.c", i32 363, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wfx_tx_inner._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @wfx_tx_inner._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/wfx/data_tx.c", i32 297, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @wfx_tx_get_retry_policy_id._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @wfx_tx_get_retry_policy_id._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/wfx/data_tx.c", i32 54, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/wfx/data_tx.c", i32 29, i32 4}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/wfx/wfx.h", i32 98, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, !42, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/staging/wfx/traces.h", i32 366, i32 1}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!51 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/wfx/data_tx.c", i32 471, i32 4}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @wfx_tx_fill_rates.__UNIQUE_ID_ddebug375, !56, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/wfx/data_tx.c", i32 475, i32 4}
!61 = !{ptr @wfx_tx_fill_rates.__UNIQUE_ID_ddebug376, !60, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/wfx/data_tx.c", i32 488, i32 3}
!64 = !{ptr @wfx_tx_fill_rates.__UNIQUE_ID_ddebug377, !63, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/wfx/data_tx.c", i32 445, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @wfx_skb_dtor._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @wfx_skb_dtor._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @skb_queue_head_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/wfx/data_tx.c", i32 564, i32 4}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @wfx_flush_vif._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @wfx_flush_vif._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i8 0, i8 2}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 1068126, i64 1068143}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2148703755}
!93 = !{i64 2148619064, i64 2148619096, i64 2148619125, i64 2148619159, i64 2148619190, i64 2148619213}
!94 = !{i64 2148703984}
!95 = !{i64 2148437967, i64 2148437972, i64 2148437985, i64 2148438029, i64 2148438063, i64 2148438084}
!96 = !{i64 2157765784}
!97 = !{i64 2157765999}
!98 = !{i64 2149946240}
!99 = !{i64 2149947276}
