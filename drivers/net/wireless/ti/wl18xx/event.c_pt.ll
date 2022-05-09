; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl18xx/event.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl18xx/event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wl1271_scan = type { ptr, [2 x i32], i8, i8, [33 x i8], i32 }
%struct.wl1271_stats = type { ptr, i32, i32, i32, i32 }
%struct.wlcore_conf = type <{ %struct.conf_sg_settings, %struct.conf_rx_settings, %struct.conf_tx_settings, %struct.conf_conn_settings, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }>
%struct.conf_sg_settings = type <{ [67 x i32], i8 }>
%struct.conf_rx_settings = type <{ i32, i32, i16, i16, i16, i16, i16, i16, i16, i8 }>
%struct.conf_tx_settings = type <{ i8, %struct.conf_tx_rate_class, i8, [4 x %struct.conf_tx_ac_category], i8, i16, i8, [8 x %struct.conf_tx_tid], i16, i16, i16, i32, i32, i8, i8, i32, i8, i8 }>
%struct.conf_tx_rate_class = type <{ i32, i8, i8, i8 }>
%struct.conf_tx_ac_category = type <{ i8, i8, i16, i8, i16 }>
%struct.conf_tx_tid = type <{ i8, i8, i8, i8, i8, [2 x i32] }>
%struct.conf_conn_settings = type <{ i8, i8, i8, i8, i8, i8, [32 x %struct.conf_bcn_filt_rule], i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>
%struct.conf_bcn_filt_rule = type { i8, i8, [3 x i8], i8, [2 x i8] }
%struct.conf_sig_weights = type { i8, i8, i8, i8 }
%struct.conf_itrim_settings = type <{ i8, i32 }>
%struct.conf_pm_config_settings = type <{ i32, i8 }>
%struct.conf_roam_trigger_settings = type { i16, i8, i8, i8, i8 }
%struct.conf_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i16, i32 }>
%struct.conf_sched_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16 }>
%struct.conf_ht_setting = type <{ i8, i8, i16, i8 }>
%struct.conf_memory_settings = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.conf_fm_coex = type { i8, i8, i8, i8, i16, i16, i32, i16, i8, i8 }
%struct.conf_rx_streaming_settings = type <{ i32, i8, i8, i8 }>
%struct.conf_fwlog = type { i8, i8, i8, i8, i8, i8 }
%struct.conf_rate_policy_settings = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8] }
%struct.conf_hangover_settings = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.conf_recovery_settings = type { i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wl1271_link = type { [4 x %struct.sk_buff_head], i8, i8, [6 x i8], i8, i8, i8, ptr, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wl18xx_event_mailbox = type { i32, i8, i8, i16, [8 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], [64 x i8], [32 x i8], i8, i8, i16, i8, i8, i16 }
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.131, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.134 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.anon.134 = type { [0 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.130 = type { i32, i16 }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl18xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl18xx_process_mailbox_events\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ti/wl18xx/event.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wlcore: MBOX vector: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wlcore: scan results: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wl18xx_process_mailbox_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016wlcore: radar event: channel %d type %s\0A\00", [53 x i8] zeroinitializer }, align 32
@wl18xx_process_mailbox_events._entry_ptr = internal global ptr @wl18xx_process_mailbox_events._entry, section ".printk_index", align 4
@wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"wlcore: PERIODIC_SCAN_REPORT_EVENT (results %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@wlcore_event_time_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016wlcore: TIME_SYNC_EVENT_ID: clock_high %u, clock low %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wlcore_event_time_sync\00", [41 x i8] zeroinitializer }, align 32
@wlcore_event_time_sync._entry_ptr = internal global ptr @wlcore_event_time_sync._entry, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REGULAR\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CHIRP\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@wlcore_smart_config_sync_event.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore_smart_config_sync_event\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"wlcore: SMART_CONFIG_SYNC_EVENT_ID, freq: %d (chan: %d band %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@wlcore_smart_config_decode_event.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore_smart_config_decode_event\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wlcore: SMART_CONFIG_DECODE_EVENT_ID\0A\00", [58 x i8] zeroinitializer }, align 32
@wlcore_smart_config_decode_event.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wlcore: SSID:\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 122, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 125, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 140, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 149, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 112, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 41, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 43, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 46, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 64, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 85, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [42 x i8] c"../drivers/net/wireless/ti/wl18xx/event.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 86, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @wl18xx_process_mailbox_events._entry, ptr @wl18xx_process_mailbox_events._entry_ptr, ptr @wlcore_event_time_sync._entry, ptr @wlcore_event_time_sync._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_process_mailbox_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_event_time_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_wait_for_event(ptr noundef %wl, i32 noundef %event, ptr noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %local_event.0 = phi i32 [ 524288, %sw.bb1 ], [ 32768, %entry.sw.epilog_crit_edge ]
  %call = tail call i32 @wlcore_cmd_wait_for_event_or_timeout(ptr noundef %wl, i32 noundef %local_event.0, ptr noundef %timeout) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_cmd_wait_for_event_or_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_process_mailbox_events(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 73
  %0 = ptrtoint ptr %mbox1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %1, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %5 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body4, !prof !48

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_process_mailbox_events, %if.then12)) #5
          to label %do.end15 [label %if.then12], !srcloc !49

if.then12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.3, i32 noundef %4) #5
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body4, %entry.do.end15_crit_edge
  %and16 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end15.if.end52_crit_edge, label %do.body19

do.end15.if.end52_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.body19:                                        ; preds = %do.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %6 = load i32, ptr @wl12xx_debug_level, align 4
  %and20 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.end47_crit_edge, label %do.body29, !prof !48

do.body19.do.end47_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

do.body29:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_process_mailbox_events, %if.then41)) #5
          to label %do.end47 [label %if.then41], !srcloc !49

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %number_of_scan_results = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %number_of_scan_results to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %number_of_scan_results, align 1
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.4, i32 noundef %conv) #5
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body29, %do.body19.do.end47_crit_edge
  %scan_wlvif = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 78
  %9 = ptrtoint ptr %scan_wlvif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scan_wlvif, align 4
  %tobool48.not = icmp eq ptr %10, null
  br i1 %tobool48.not, label %do.end47.if.end52_crit_edge, label %if.then49

do.end47.if.end52_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then49:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wl18xx_scan_completed(ptr noundef %wl, ptr noundef nonnull %10) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %do.end47.if.end52_crit_edge, %do.end15.if.end52_crit_edge
  %and53 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end56_crit_edge, label %if.then55

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %time_sync_tsf_high_msb = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %time_sync_tsf_high_msb to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %time_sync_tsf_high_msb, align 1
  %time_sync_tsf_high_lsb = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %time_sync_tsf_high_lsb to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %time_sync_tsf_high_lsb, align 1
  %time_sync_tsf_low_msb = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 27
  %15 = ptrtoint ptr %time_sync_tsf_low_msb to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %time_sync_tsf_low_msb, align 1
  %time_sync_tsf_low_lsb = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 30
  %17 = ptrtoint ptr %time_sync_tsf_low_lsb to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %time_sync_tsf_low_lsb, align 1
  %conv.i = zext i16 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = zext i16 %14 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %conv2.i = zext i16 %16 to i32
  %shl3.i = shl nuw i32 %conv2.i, 16
  %conv4.i = zext i16 %18 to i32
  %or5.i = or i32 %shl3.i, %conv4.i
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %or.i, i32 noundef %or5.i) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52.if.end56_crit_edge
  %and57 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end70_crit_edge, label %do.end62

if.end56.if.end70_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.end62:                                         ; preds = %if.end56
  %radar_channel = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 28
  %19 = ptrtoint ptr %radar_channel to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %radar_channel, align 1
  %conv64 = zext i8 %20 to i32
  %radar_type = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 29
  %21 = ptrtoint ptr %radar_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %radar_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %switch.selectcmp.i = icmp eq i8 %22, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.10, ptr @.str.11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %switch.selectcmp3.i = icmp eq i8 %22, 1
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.9, ptr %switch.select.i
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv64, ptr noundef nonnull %switch.select4.i) #8
  %radar_debug_mode = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 135
  %23 = ptrtoint ptr %radar_debug_mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %radar_debug_mode, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool67.not = icmp eq i8 %24, 0
  br i1 %tobool67.not, label %if.then68, label %do.end62.if.end70_crit_edge

do.end62.if.end70_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then68:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_radar_detected(ptr noundef %26) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %do.end62.if.end70_crit_edge, %if.end56.if.end70_crit_edge
  %and71 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end104_crit_edge, label %do.body74

if.end70.if.end104_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

do.body74:                                        ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %27 = load i32, ptr @wl12xx_debug_level, align 4
  %and75 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.do.end103_crit_edge, label %do.body84, !prof !48

do.body74.do.end103_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end103

do.body84:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_process_mailbox_events, %if.then96)) #5
          to label %do.end103 [label %if.then96], !srcloc !49

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  %number_of_sched_scan_results = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %number_of_sched_scan_results to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %number_of_sched_scan_results, align 1
  %conv97 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.6, i32 noundef %conv97) #5
  br label %do.end103

do.end103:                                        ; preds = %if.then96, %do.body84, %do.body74.do.end103_crit_edge
  tail call void @wlcore_scan_sched_scan_results(ptr noundef %wl) #5
  br label %if.end104

if.end104:                                        ; preds = %do.end103, %if.end70.if.end104_crit_edge
  %and105 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end108_crit_edge, label %if.then107

if.end104.if.end108_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wlcore_event_sched_scan_completed(ptr noundef %wl, i8 noundef zeroext 1) #5
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end104.if.end108_crit_edge
  %and109 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end108.if.end112_crit_edge, label %if.then111

if.end108.if.end112_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  %rssi_snr_trigger_metric = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 4
  tail call void @wlcore_event_rssi_trigger(ptr noundef %wl, ptr noundef %rssi_snr_trigger_metric) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end108.if.end112_crit_edge
  %and113 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end118_crit_edge, label %if.then115

if.end112.if.end118_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  %rx_ba_role_id_bitmap = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %rx_ba_role_id_bitmap to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %rx_ba_role_id_bitmap, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv116 = zext i16 %32 to i32
  %rx_ba_allowed_bitmap = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %rx_ba_allowed_bitmap to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %rx_ba_allowed_bitmap, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv117 = zext i16 %35 to i32
  tail call void @wlcore_event_ba_rx_constraint(ptr noundef %wl, i32 noundef %conv116, i32 noundef %conv117) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end112.if.end118_crit_edge
  %and119 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end123_crit_edge, label %if.then121

if.end118.if.end123_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  %bss_loss_bitmap = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %bss_loss_bitmap to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %bss_loss_bitmap, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv122 = zext i16 %38 to i32
  tail call void @wlcore_event_beacon_loss(ptr noundef %wl, i32 noundef %conv122) #5
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end118.if.end123_crit_edge
  %and124 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end123.if.end128_crit_edge, label %if.then126

if.end123.if.end128_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  %channel_switch_role_id_bitmap = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %channel_switch_role_id_bitmap to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %channel_switch_role_id_bitmap, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv127 = zext i16 %41 to i32
  tail call void @wlcore_event_channel_switch(ptr noundef %wl, i32 noundef %conv127, i1 noundef zeroext true) #5
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end123.if.end128_crit_edge
  %and129 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end132_crit_edge, label %if.then131

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wlcore_event_dummy_packet(ptr noundef %wl) #5
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.end128.if.end132_crit_edge
  %and133 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end132.if.end137_crit_edge, label %if.then135

if.end132.if.end137_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  %tx_retry_exceeded_bitmap = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %tx_retry_exceeded_bitmap to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %tx_retry_exceeded_bitmap, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv136 = zext i16 %44 to i32
  tail call void @wlcore_event_max_tx_failure(ptr noundef %wl, i32 noundef %conv136) #5
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.end132.if.end137_crit_edge
  %and138 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end137.if.end142_crit_edge, label %if.then140

if.end137.if.end142_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  %inactive_sta_bitmap = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %inactive_sta_bitmap to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %inactive_sta_bitmap, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv141 = zext i16 %47 to i32
  tail call void @wlcore_event_inactive_sta(ptr noundef %wl, i32 noundef %conv141) #5
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.end137.if.end142_crit_edge
  %and143 = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end142.if.end146_crit_edge, label %if.then145

if.end142.if.end146_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wlcore_event_roc_complete(ptr noundef %wl) #5
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end142.if.end146_crit_edge
  %and147 = and i32 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end146.if.end151_crit_edge, label %if.then149

if.end146.if.end151_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  %sc_sync_channel = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 25
  %48 = ptrtoint ptr %sc_sync_channel to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sc_sync_channel, align 1
  %sc_sync_band = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 26
  %50 = ptrtoint ptr %sc_sync_band to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sc_sync_band, align 1
  tail call fastcc void @wlcore_smart_config_sync_event(ptr noundef %wl, i8 noundef zeroext %49, i8 noundef zeroext %51)
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end146.if.end151_crit_edge
  %and152 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end151.if.end158_crit_edge, label %if.then154

if.end151.if.end158_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then154:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  %sc_ssid_len = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 18
  %52 = ptrtoint ptr %sc_ssid_len to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sc_ssid_len, align 1
  %sc_ssid = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 22
  %sc_pwd_len = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 19
  %54 = ptrtoint ptr %sc_pwd_len to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sc_pwd_len, align 1
  %sc_pwd = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 23
  tail call fastcc void @wlcore_smart_config_decode_event(ptr noundef %wl, i8 noundef zeroext %53, ptr noundef %sc_ssid, i8 noundef zeroext %55, ptr noundef %sc_pwd)
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.end151.if.end158_crit_edge
  %and159 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end158.if.end163_crit_edge, label %if.then161

if.end158.if.end163_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end163

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  %call162 = tail call i32 @wlcore_event_fw_logger(ptr noundef %wl) #5
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end158.if.end163_crit_edge
  %and164 = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end163.if.end187_crit_edge, label %if.then166

if.end163.if.end187_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

if.then166:                                       ; preds = %if.end163
  %rx_ba_link_id = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 15
  %56 = ptrtoint ptr %rx_ba_link_id to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rx_ba_link_id, align 1
  %rx_ba_win_size = getelementptr inbounds %struct.wl18xx_event_mailbox, ptr %1, i32 0, i32 16
  %58 = ptrtoint ptr %rx_ba_win_size to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rx_ba_win_size, align 1
  %idxprom = zext i8 %57 to i32
  %wlvif167 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %idxprom, i32 7
  %60 = ptrtoint ptr %wlvif167 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wlvif167, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 -848
  %bss_type = getelementptr inbounds %struct.wl12xx_vif, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %cmp.not = icmp eq i8 %63, 3
  br i1 %cmp.not, label %if.else, label %if.then171

if.then171:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  %bss_conf = getelementptr i8, ptr %61, i32 -840
  %64 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bss_conf, align 8
  br label %if.end177

if.else:                                          ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  %addr175 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %idxprom, i32 3
  br label %if.end177

if.end177:                                        ; preds = %if.else, %if.then171
  %addr.0 = phi ptr [ %65, %if.then171 ], [ %addr175, %if.else ]
  %call178 = tail call ptr @ieee80211_find_sta(ptr noundef %add.ptr.i, ptr noundef %addr.0) #5
  %tobool179.not = icmp eq ptr %call178, null
  br i1 %tobool179.not, label %if.end177.if.end187_crit_edge, label %if.then180

if.end177.if.end187_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

if.then180:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  %conv181 = zext i8 %59 to i16
  %max_rx_aggregation_subframes = getelementptr inbounds %struct.ieee80211_sta, ptr %call178, i32 0, i32 9
  %66 = ptrtoint ptr %max_rx_aggregation_subframes to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv181, ptr %max_rx_aggregation_subframes, align 2
  %ba_bitmap = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %idxprom, i32 4
  %67 = ptrtoint ptr %ba_bitmap to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ba_bitmap, align 8
  %conv185 = zext i8 %68 to i16
  tail call void @ieee80211_stop_rx_ba_session(ptr noundef %add.ptr.i, i16 noundef zeroext %conv185, ptr noundef %addr.0) #5
  br label %if.end187

if.end187:                                        ; preds = %if.then180, %if.end177.if.end187_crit_edge, %if.end163.if.end187_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl18xx_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_radar_detected(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_scan_sched_scan_results(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_sched_scan_completed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_rssi_trigger(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_ba_rx_constraint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_beacon_loss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_channel_switch(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_dummy_packet(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_max_tx_failure(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_inactive_sta(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_event_roc_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlcore_smart_config_sync_event(ptr nocapture noundef readonly %wl, i8 noundef zeroext %sync_channel, i8 noundef zeroext %sync_band) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %sync_band to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %sync_band)
  %cmp = icmp eq i8 %sync_band, 1
  %. = zext i1 %cmp to i32
  %conv2 = zext i8 %sync_channel to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv2, i32 noundef %.) #5
  %div.i = udiv i32 %call.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body6, !prof !48

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_smart_config_sync_event.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_smart_config_sync_event, %if.then15)) #5
          to label %do.end21 [label %if.then15], !srcloc !49

if.then15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_smart_config_sync_event.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.13, i32 noundef %div.i, i32 noundef %conv2, i32 noundef %conv) #5
  br label %do.end21

do.end21:                                         ; preds = %if.then15, %do.body6, %entry.do.end21_crit_edge
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wiphy, align 8
  %call.i1 = tail call ptr @__cfg80211_alloc_event_skb(ptr noundef %4, ptr noundef null, i32 noundef 103, i32 noundef 197, i32 noundef 0, i32 noundef 0, i32 noundef 20, i32 noundef 3264) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %tmp.i, align 4
  %call.i2 = call i32 @nla_put(ptr noundef %call.i1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool24.not = icmp eq i32 %call.i2, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree_skb_reason(ptr noundef %call.i1, i32 noundef 0) #5
  br label %cleanup

if.end26:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void @__cfg80211_send_event_skb(ptr noundef %call.i1, i32 noundef 3264) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wlcore_smart_config_decode_event(ptr nocapture noundef readonly %wl, i8 noundef zeroext %ssid_len, ptr noundef %ssid, i8 noundef zeroext %pwd_len, ptr noundef %pwd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body15_crit_edge, label %do.body3, !prof !48

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_smart_config_decode_event.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_smart_config_decode_event, %if.then11)) #5
          to label %do.body15 [label %if.then11], !srcloc !49

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_smart_config_decode_event.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.15) #5
  br label %do.body15

do.body15:                                        ; preds = %if.then11, %do.body3, %entry.do.body15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %1 = load i32, ptr @wl12xx_debug_level, align 4
  %and16 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.end39_crit_edge, label %do.body19

do.body15.do.end39_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

do.body19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_smart_config_decode_event.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_smart_config_decode_event, %if.then31)) #5
          to label %do.end39 [label %if.then31], !srcloc !49

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %ssid_len to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %ssid, i32 noundef %conv, i1 noundef zeroext true) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then31, %do.body19, %do.body15.do.end39_crit_edge
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %conv40 = zext i8 %ssid_len to i32
  %conv41 = zext i8 %pwd_len to i32
  %add = add nuw nsw i32 %conv40, 20
  %add42 = add nuw nsw i32 %add, %conv41
  %call.i = tail call ptr @__cfg80211_alloc_event_skb(ptr noundef %5, ptr noundef null, i32 noundef 103, i32 noundef 197, i32 noundef 0, i32 noundef 1, i32 noundef %add42, i32 noundef 3264) #5
  %call45 = tail call i32 @nla_put(ptr noundef %call.i, i32 noundef 2, i32 noundef %conv40, ptr noundef %ssid) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %do.end39.if.then50_crit_edge

do.end39.if.then50_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

lor.lhs.false:                                    ; preds = %do.end39
  %call48 = tail call i32 @nla_put(ptr noundef %call.i, i32 noundef 1, i32 noundef %conv41, ptr noundef %pwd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %lor.lhs.false.if.then50_crit_edge

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %do.end39.if.then50_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %call.i, i32 noundef 0) #5
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__cfg80211_send_event_skb(ptr noundef %call.i, i32 noundef 3264) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_event_fw_logger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_rx_ba_session(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__cfg80211_alloc_event_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_send_event_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 122, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug353, !1, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 125, i32 3}
!8 = !{ptr @wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug354, !7, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 140, i32 3}
!11 = !{ptr @wl18xx_process_mailbox_events._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @wl18xx_process_mailbox_events._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 149, i32 3}
!15 = !{ptr @wl18xx_process_mailbox_events.__UNIQUE_ID_ddebug355, !14, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 112, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wlcore_event_time_sync._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @wlcore_event_time_sync._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 41, i32 10}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 43, i32 10}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 46, i32 10}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 64, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wlcore_smart_config_sync_event.__UNIQUE_ID_ddebug348, !28, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 85, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @wlcore_smart_config_decode_event.__UNIQUE_ID_ddebug349, !32, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ti/wl18xx/event.c", i32 86, i32 2}
!37 = !{ptr @wlcore_smart_config_decode_event.__UNIQUE_ID_ddebug352, !36, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2148897377, i64 2148897382, i64 2148897395, i64 2148897439, i64 2148897473, i64 2148897494}
!50 = !{i8 0, i8 2}
