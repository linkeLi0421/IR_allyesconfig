; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl18xx/scan.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl18xx/scan.c"
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
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.129, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.132 }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.anon.132 = type { [0 x i8] }
%struct.wl18xx_cmd_scan_params = type { %struct.wl1271_cmd_header, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i16, i16, i8, i8, [2 x i8], %union.anon.137, [32 x i8], i8, i8, i8, i8, i8, [3 x i8] }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%union.anon.137 = type { [24 x %struct.tracking_ch_params], [120 x i8] }
%struct.tracking_ch_params = type { %struct.conn_scan_ch_params, i32, i16, [2 x i8] }
%struct.conn_scan_ch_params = type { i16, i16, i16, i8, i8, i8, [3 x i8] }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.wlcore_scan_channels = type { [3 x i8], [3 x i8], i8, i8, [14 x %struct.conn_scan_ch_params], [42 x %struct.conn_scan_ch_params], [4 x %struct.conn_scan_ch_params] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.wl18xx_cmd_scan_stop = type { %struct.wl1271_cmd_header, i8, i8, [2 x i8] }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl18xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl18xx_scan_sched_scan_config\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wl18xx/scan.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wlcore: cmd sched_scan scan config\0A\00", [60 x i8] zeroinitializer }, align 32
@wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"wlcore: short_interval: %d, long_interval: %d, num_short: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wl18xx_scan_sched_scan_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wlcore: ERROR 2.4GHz PROBE request template failed\0A\00", [42 x i8] zeroinitializer }, align 32
@wl18xx_scan_sched_scan_config._entry_ptr = internal global ptr @wl18xx_scan_sched_scan_config._entry, section ".printk_index", align 4
@wl18xx_scan_sched_scan_config._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wlcore: ERROR 5GHz PROBE request template failed\0A\00", [44 x i8] zeroinitializer }, align 32
@wl18xx_scan_sched_scan_config._entry_ptr.8 = internal global ptr @wl18xx_scan_sched_scan_config._entry.6, section ".printk_index", align 4
@wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wlcore: SCAN: \00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@wl18xx_scan_sched_scan_config._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013wlcore: ERROR SCAN failed\0A\00", [35 x i8] zeroinitializer }, align 32
@wl18xx_scan_sched_scan_config._entry_ptr.13 = internal global ptr @wl18xx_scan_sched_scan_config._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__wl18xx_scan_stop.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__wl18xx_scan_stop\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wlcore: cmd periodic scan stop\0A\00", [32 x i8] zeroinitializer }, align 32
@__wl18xx_scan_stop._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 306, ptr null, ptr null }, align 1
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013wlcore: ERROR failed to alloc memory to send sched scan stop\0A\00", [32 x i8] zeroinitializer }, align 32
@__wl18xx_scan_stop._entry_ptr = internal global ptr @__wl18xx_scan_stop._entry, section ".printk_index", align 4
@__wl18xx_scan_stop._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 315, ptr null, ptr null }, align 1
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wlcore: ERROR failed to send sched scan stop command\0A\00", [40 x i8] zeroinitializer }, align 32
@__wl18xx_scan_stop._entry_ptr.19 = internal global ptr @__wl18xx_scan_stop._entry.17, section ".printk_index", align 4
@wl18xx_scan_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.20, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl18xx_scan_send\00", [47 x i8] zeroinitializer }, align 32
@wl18xx_scan_send._entry_ptr = internal global ptr @wl18xx_scan_send._entry, section ".printk_index", align 4
@wl18xx_scan_send._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.20, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wl18xx_scan_send._entry_ptr.22 = internal global ptr @wl18xx_scan_send._entry.21, section ".printk_index", align 4
@wl18xx_scan_send.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.9, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wl18xx_scan_send._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.20, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wl18xx_scan_send._entry_ptr.24 = internal global ptr @wl18xx_scan_send._entry.23, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 166, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 228, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 253, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 270, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 275, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 279, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 302, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 306, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 315, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 110, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 127, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private constant [41 x i8] c"../drivers/net/wireless/ti/wl18xx/scan.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 136, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__wl18xx_scan_stop._entry, ptr @__wl18xx_scan_stop._entry.17, ptr @__wl18xx_scan_stop._entry_ptr, ptr @__wl18xx_scan_stop._entry_ptr.19, ptr @wl18xx_scan_sched_scan_config._entry, ptr @wl18xx_scan_sched_scan_config._entry.11, ptr @wl18xx_scan_sched_scan_config._entry.6, ptr @wl18xx_scan_sched_scan_config._entry_ptr, ptr @wl18xx_scan_sched_scan_config._entry_ptr.13, ptr @wl18xx_scan_sched_scan_config._entry_ptr.8, ptr @wl18xx_scan_send._entry, ptr @wl18xx_scan_send._entry.21, ptr @wl18xx_scan_send._entry.23, ptr @wl18xx_scan_send._entry_ptr, ptr @wl18xx_scan_send._entry_ptr.22, ptr @wl18xx_scan_send._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_scan_sched_scan_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_scan_sched_scan_config._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_scan_sched_scan_config._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_scan_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_scan_send._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_scan_send._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl18xx_scan_completed(ptr noundef %wl, ptr nocapture noundef readnone %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %failed = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 79, i32 2
  %0 = ptrtoint ptr %failed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %failed, align 4
  %scan_complete_work = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 80
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scan_complete_work) #5
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %2, ptr noundef %scan_complete_work, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_sched_scan_start(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req, ptr nocapture noundef readonly %ies) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wl18xx_scan_sched_scan_config(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req, ptr noundef %ies)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl18xx_scan_sched_scan_config(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req, ptr nocapture noundef readonly %ies) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !58

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_scan_sched_scan_config, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !59

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.3) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  %call15 = tail call i32 @wlcore_scan_sched_scan_ssid_list(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end14.cleanup246_crit_edge, label %if.end17

do.end14.cleanup246_crit_edge:                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup246

if.end17:                                         ; preds = %do.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 672) #8
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end21:                                         ; preds = %if.end17
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id22 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id22 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp24 = icmp eq i8 %3, -1
  br i1 %cmp24, label %do.end41, label %if.end57, !prof !60

do.end41:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 180, i32 noundef 9, ptr noundef null) #5
  br label %out

if.end57:                                         ; preds = %if.end21
  %scan_type = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %scan_type, align 1
  %rssi_threshold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 7
  %6 = ptrtoint ptr %rssi_threshold to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rssi_threshold, align 1
  %rssi_threshold58 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %rssi_threshold58 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %rssi_threshold58, align 2
  %snr_threshold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 8
  %9 = ptrtoint ptr %snr_threshold to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %snr_threshold, align 1
  %snr_threshold59 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %snr_threshold59 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %snr_threshold59, align 1
  %bss_type = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %bss_type, align 8
  %ssid_from_list = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %ssid_from_list to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %ssid_from_list, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp60 = icmp eq i32 %call15, 2
  br i1 %cmp60, label %if.then62, label %if.end57.if.end63_crit_edge

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %filter = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %filter to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %filter, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end57.if.end63_crit_edge
  %add_broadcast = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %add_broadcast to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %add_broadcast, align 1
  %urgency = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %urgency to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %urgency, align 4
  %protect = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %protect to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %protect, align 1
  %num_probe_reqs = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 6
  %18 = ptrtoint ptr %num_probe_reqs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_probe_reqs, align 1
  %n_probe_reqs = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %n_probe_reqs to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %n_probe_reqs, align 2
  %terminate_after = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 12
  %21 = ptrtoint ptr %terminate_after to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %terminate_after, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i346 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 728) #8
  %tobool65.not = icmp eq ptr %call7.i.i346, null
  br i1 %tobool65.not, label %if.end63.out_crit_edge, label %if.end67

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end67:                                         ; preds = %if.end63
  %channels = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 27
  %n_channels = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 3
  %23 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels, align 8
  %n_ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_ssids, align 4
  %call68 = tail call zeroext i1 @wlcore_set_scan_chan_params(ptr noundef %wl, ptr noundef nonnull %call7.i.i346, ptr noundef %channels, i32 noundef %24, i32 noundef %26, i32 noundef 1) #5
  %passive.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 13
  %27 = call ptr @memcpy(ptr %passive.i, ptr %call7.i.i346, i32 3)
  %active.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 14
  %active4.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i346, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %active.i, ptr %active4.i, i32 3)
  %dfs.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i346, i32 0, i32 2
  %29 = ptrtoint ptr %dfs.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dfs.i, align 2
  %dfs6.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 15
  %31 = ptrtoint ptr %dfs6.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %dfs6.i, align 2
  %passive_active.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i346, i32 0, i32 3
  %32 = ptrtoint ptr %passive_active.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %passive_active.i, align 1
  %passive_active7.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %passive_active7.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %passive_active7.i, align 1
  %35 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 22
  %channels_29.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i346, i32 0, i32 4
  %36 = call ptr @memcpy(ptr %35, ptr %channels_29.i, i32 168)
  %channels_5.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 8, i32 0, i32 5
  %channels_512.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i346, i32 0, i32 5
  %37 = call ptr @memcpy(ptr %channels_5.i, ptr %channels_512.i, i32 384)
  %num_short_intervals = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 9
  %38 = ptrtoint ptr %num_short_intervals to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_short_intervals, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool70.not = icmp eq i8 %39, 0
  br i1 %tobool70.not, label %if.end67.if.else_crit_edge, label %land.lhs.true

if.end67.if.else_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end67
  %long_interval = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 8, i32 10
  %40 = ptrtoint ptr %long_interval to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %long_interval, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool72.not = icmp eq i16 %41, 0
  br i1 %tobool72.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true73

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true73:                                  ; preds = %land.lhs.true
  %conv71 = zext i16 %41 to i32
  %scan_plans = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 12
  %42 = ptrtoint ptr %scan_plans to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %scan_plans, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %mul = mul i32 %45, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv71)
  %cmp76 = icmp ult i32 %mul, %conv71
  br i1 %cmp76, label %if.then78, label %land.lhs.true73.if.else_crit_edge

land.lhs.true73.if.else_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then78:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  %conv83 = trunc i32 %mul to i16
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv83)
  %short_cycles_msec = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 17
  %47 = ptrtoint ptr %short_cycles_msec to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %short_cycles_msec, align 8
  br label %do.body95

if.else:                                          ; preds = %land.lhs.true73.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end67.if.else_crit_edge
  %short_cycles_msec86 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 17
  %48 = ptrtoint ptr %short_cycles_msec86 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %short_cycles_msec86, align 8
  %scan_plans87 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 12
  %49 = ptrtoint ptr %scan_plans87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %scan_plans87, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = trunc i32 %52 to i16
  %conv91 = mul i16 %53, 1000
  br label %do.body95

do.body95:                                        ; preds = %if.else, %if.then78
  %.sink353 = phi i16 [ %41, %if.then78 ], [ %conv91, %if.else ]
  %.sink = phi i8 [ %39, %if.then78 ], [ 0, %if.else ]
  %54 = tail call i16 @llvm.bswap.i16(i16 %.sink353)
  %long_cycles_msec = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 18
  %55 = ptrtoint ptr %long_cycles_msec to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %long_cycles_msec, align 2
  %short_cycles_count = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %short_cycles_count to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink, ptr %short_cycles_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %57 = load i32, ptr @wl12xx_debug_level, align 4
  %and96 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.body95.do.end129_crit_edge, label %do.body105, !prof !58

do.body95.do.end129_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end129

do.body105:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_scan_sched_scan_config, %if.then117)) #5
          to label %do.end129 [label %if.then117], !srcloc !59

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  %short_cycles_msec118 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 17
  %58 = ptrtoint ptr %short_cycles_msec118 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %short_cycles_msec118, align 8
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %conv119 = zext i16 %60 to i32
  %long_cycles_msec120 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 18
  %61 = ptrtoint ptr %long_cycles_msec120 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %long_cycles_msec120, align 2
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  %conv121 = zext i16 %63 to i32
  %short_cycles_count122 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 19
  %64 = ptrtoint ptr %short_cycles_count122 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %short_cycles_count122, align 4
  %conv123 = zext i8 %65 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.4, i32 noundef %conv119, i32 noundef %conv121, i32 noundef %conv123) #5
  br label %do.end129

do.end129:                                        ; preds = %if.then117, %do.body105, %do.body95.do.end129_crit_edge
  %total_cycles = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 20
  %66 = ptrtoint ptr %total_cycles to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %total_cycles, align 1
  %tag = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 25
  %67 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %tag, align 1
  %report_threshold = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 27
  %68 = ptrtoint ptr %report_threshold to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %report_threshold, align 1
  %terminate_on_report = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 28
  %69 = ptrtoint ptr %terminate_on_report to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %terminate_on_report, align 4
  %70 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %active.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool131.not = icmp eq i8 %71, 0
  br i1 %tobool131.not, label %do.end129.if.end161_crit_edge, label %if.then132

do.end129.if.end161_crit_edge:                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end161

if.then132:                                       ; preds = %do.end129
  %72 = ptrtoint ptr %role_id22 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %role_id22, align 4
  %ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 1
  %74 = ptrtoint ptr %ssids to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ssids, align 8
  %tobool134.not = icmp eq ptr %75, null
  br i1 %tobool134.not, label %if.then132.cond.end145_crit_edge, label %cond.true140

if.then132.cond.end145_crit_edge:                 ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end145

cond.true140:                                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #7
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ssid_len, align 1
  %conv143 = zext i8 %77 to i32
  br label %cond.end145

cond.end145:                                      ; preds = %cond.true140, %if.then132.cond.end145_crit_edge
  %cond146 = phi i32 [ %conv143, %cond.true140 ], [ 0, %if.then132.cond.end145_crit_edge ]
  %78 = ptrtoint ptr %ies to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ies, align 4
  %len = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len, align 4
  %common_ies = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 2
  %82 = ptrtoint ptr %common_ies to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %common_ies, align 4
  %common_ie_len = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 3
  %84 = ptrtoint ptr %common_ie_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %common_ie_len, align 4
  %call151 = tail call i32 @wl12xx_cmd_build_probe_req(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %73, i8 noundef zeroext 0, ptr noundef %75, i32 noundef %cond146, ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %85, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %cleanup, label %cond.end145.if.end161_crit_edge

cond.end145.if.end161_crit_edge:                  ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end161

cleanup:                                          ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #7
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %out

if.end161:                                        ; preds = %cond.end145.if.end161_crit_edge, %do.end129.if.end161_crit_edge
  %arrayidx163 = getelementptr %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 14, i32 1
  %86 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx163, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool165.not = icmp eq i8 %87, 0
  br i1 %tobool165.not, label %lor.lhs.false, label %if.end161.if.then168_crit_edge

if.end161.if.then168_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then168

lor.lhs.false:                                    ; preds = %if.end161
  %88 = ptrtoint ptr %dfs6.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %dfs6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool167.not = icmp eq i8 %89, 0
  br i1 %tobool167.not, label %lor.lhs.false.do.body213_crit_edge, label %lor.lhs.false.if.then168_crit_edge

lor.lhs.false.if.then168_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then168

lor.lhs.false.do.body213_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body213

if.then168:                                       ; preds = %lor.lhs.false.if.then168_crit_edge, %if.end161.if.then168_crit_edge
  %90 = ptrtoint ptr %role_id22 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %role_id22, align 4
  %ssids171 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 1
  %92 = ptrtoint ptr %ssids171 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ssids171, align 8
  %tobool172.not = icmp eq ptr %93, null
  br i1 %tobool172.not, label %if.then168.cond.end189_crit_edge, label %cond.true183

if.then168.cond.end189_crit_edge:                 ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end189

cond.true183:                                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #7
  %ssid_len186 = getelementptr inbounds %struct.cfg80211_ssid, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %ssid_len186 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ssid_len186, align 1
  %conv187 = zext i8 %95 to i32
  br label %cond.end189

cond.end189:                                      ; preds = %cond.true183, %if.then168.cond.end189_crit_edge
  %cond190 = phi i32 [ %conv187, %cond.true183 ], [ 0, %if.then168.cond.end189_crit_edge ]
  %arrayidx193 = getelementptr [6 x ptr], ptr %ies, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx193, align 4
  %arrayidx196 = getelementptr %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx196, align 4
  %common_ies197 = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 2
  %100 = ptrtoint ptr %common_ies197 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %common_ies197, align 4
  %common_ie_len198 = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 3
  %102 = ptrtoint ptr %common_ie_len198 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %common_ie_len198, align 4
  %call199 = tail call i32 @wl12xx_cmd_build_probe_req(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %91, i8 noundef zeroext 1, ptr noundef %93, i32 noundef %cond190, ptr noundef %97, i32 noundef %99, ptr noundef %101, i32 noundef %103, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %cleanup209, label %cond.end189.do.body213_crit_edge

cond.end189.do.body213_crit_edge:                 ; preds = %cond.end189
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body213

cleanup209:                                       ; preds = %cond.end189
  call void @__sanitizer_cov_trace_pc() #7
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %out

do.body213:                                       ; preds = %cond.end189.do.body213_crit_edge, %lor.lhs.false.do.body213_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %104 = load i32, ptr @wl12xx_debug_level, align 4
  %and214 = and i32 %104, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %do.body213.do.end235_crit_edge, label %do.body217

do.body213.do.end235_crit_edge:                   ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end235

do.body217:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_scan_sched_scan_config, %if.then229)) #5
          to label %do.end235 [label %if.then229], !srcloc !59

if.then229:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef 672, i1 noundef zeroext false) #5
  br label %do.end235

do.end235:                                        ; preds = %if.then229, %do.body217, %do.body213.do.end235_crit_edge
  %call236 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 7, ptr noundef nonnull %call7.i.i, i32 noundef 672, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %do.end242, label %do.end235.out_crit_edge

do.end235.out_crit_edge:                          ; preds = %do.end235
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end242:                                        ; preds = %do.end235
  call void @__sanitizer_cov_trace_pc() #7
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %out

out:                                              ; preds = %do.end242, %do.end235.out_crit_edge, %cleanup209, %cleanup, %if.end63.out_crit_edge, %do.end41, %if.end17.out_crit_edge
  %ret.0 = phi i32 [ -22, %do.end41 ], [ %call151, %cleanup ], [ %call199, %cleanup209 ], [ %call236, %do.end242 ], [ %call236, %do.end235.out_crit_edge ], [ -12, %if.end17.out_crit_edge ], [ -12, %if.end63.out_crit_edge ]
  %cmd_channels.0 = phi ptr [ null, %do.end41 ], [ %call7.i.i346, %cleanup ], [ %call7.i.i346, %cleanup209 ], [ %call7.i.i346, %do.end242 ], [ %call7.i.i346, %do.end235.out_crit_edge ], [ null, %if.end17.out_crit_edge ], [ null, %if.end63.out_crit_edge ]
  tail call void @kfree(ptr noundef %cmd_channels.0) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup246

cleanup246:                                       ; preds = %out, %do.end14.cleanup246_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call15, %do.end14.cleanup246_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl18xx_scan_sched_scan_stop(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__wl18xx_scan_stop(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__wl18xx_scan_stop(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i8 noundef zeroext %scan_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !58

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wl18xx_scan_stop.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wl18xx_scan_stop, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !59

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__wl18xx_scan_stop.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.15) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end23:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %2 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_id, align 2
  %role_id24 = getelementptr inbounds %struct.wl18xx_cmd_scan_stop, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %role_id24 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %role_id24, align 4
  %scan_type25 = getelementptr inbounds %struct.wl18xx_cmd_scan_stop, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %scan_type25 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %scan_type, ptr %scan_type25, align 1
  %call26 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 8, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.end23.out_free_crit_edge

if.end23.out_free_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %out_free

out_free:                                         ; preds = %do.end30, %if.end23.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end20
  %retval.0 = phi i32 [ %call26, %out_free ], [ -12, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_scan_start(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wl18xx_scan_send(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl18xx_scan_send(ptr noundef %wl, ptr noundef %wlvif, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 672) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %wlvif, i32 -848
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %cmp.i = icmp eq i32 %2, 10
  %dev_role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 6
  %role_id3 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %.sink.in = select i1 %cmp.i, ptr %dev_role_id, ptr %role_id3
  %3 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %.sink = load i8, ptr %.sink.in, align 1
  %4 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.sink)
  %cmp = icmp eq i8 %.sink, -1
  br i1 %cmp, label %do.end, label %if.end31, !prof !60

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 46, i32 noundef 9, ptr noundef null) #5
  br label %out

if.end31:                                         ; preds = %if.end
  %scan_type = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %scan_type, align 1
  %rssi_threshold = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %rssi_threshold to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -127, ptr %rssi_threshold, align 2
  %snr_threshold = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %snr_threshold to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %snr_threshold, align 1
  %bss_type = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %bss_type, align 8
  %ssid_from_list = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 6
  %num_probe_reqs = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 7, i32 6
  %10 = call ptr @memset(ptr %ssid_from_list, i32 0, i32 5)
  %11 = ptrtoint ptr %num_probe_reqs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_probe_reqs, align 2
  %conv32 = trunc i16 %12 to i8
  %n_probe_reqs = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %n_probe_reqs to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv32, ptr %n_probe_reqs, align 2
  %terminate_after = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 12
  %14 = ptrtoint ptr %terminate_after to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %terminate_after, align 1
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp34 = icmp sgt i32 %16, 1
  br i1 %cmp34, label %do.end51, label %if.end31.if.end57_crit_edge, !prof !60

if.end31.if.end57_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.end51:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 68, i32 noundef 9, ptr noundef null) #5
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end31.if.end57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i267 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 728) #8
  %tobool66.not = icmp eq ptr %call7.i.i267, null
  br i1 %tobool66.not, label %if.end57.out_crit_edge, label %if.end68

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end68:                                         ; preds = %if.end57
  %channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_channels, align 8
  %20 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_ssids, align 4
  %call70 = tail call zeroext i1 @wlcore_set_scan_chan_params(ptr noundef %wl, ptr noundef nonnull %call7.i.i267, ptr noundef %channels, i32 noundef %19, i32 noundef %21, i32 noundef 0) #5
  %passive.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 13
  %22 = call ptr @memcpy(ptr %passive.i, ptr %call7.i.i267, i32 3)
  %active.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 14
  %active4.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i267, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %active.i, ptr %active4.i, i32 3)
  %dfs.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i267, i32 0, i32 2
  %24 = ptrtoint ptr %dfs.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dfs.i, align 2
  %dfs6.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 15
  %26 = ptrtoint ptr %dfs6.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %dfs6.i, align 2
  %passive_active.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i267, i32 0, i32 3
  %27 = ptrtoint ptr %passive_active.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %passive_active.i, align 1
  %passive_active7.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 16
  %29 = ptrtoint ptr %passive_active7.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %passive_active7.i, align 1
  %30 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 22
  %channels_29.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i267, i32 0, i32 4
  %31 = call ptr @memcpy(ptr %30, ptr %channels_29.i, i32 168)
  %channels_5.i = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 8, i32 0, i32 5
  %channels_512.i = getelementptr inbounds %struct.wlcore_scan_channels, ptr %call7.i.i267, i32 0, i32 5
  %32 = call ptr @memcpy(ptr %channels_5.i, ptr %channels_512.i, i32 384)
  %total_cycles = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 20
  %33 = ptrtoint ptr %total_cycles to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %total_cycles, align 1
  %no_cck = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 18
  %34 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %no_cck, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool71.not = icmp eq i8 %35, 0
  br i1 %tobool71.not, label %if.end68.if.end73_crit_edge, label %if.then72

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %rate = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 26
  %36 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %rate, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end68.if.end73_crit_edge
  %tag = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 25
  %37 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %tag, align 1
  %38 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool75.not = icmp eq i32 %39, 0
  br i1 %tobool75.not, label %if.end73.if.end85_crit_edge, label %if.then76

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %req, align 8
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ssid_len, align 1
  %ssid_len77 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 24
  %44 = ptrtoint ptr %ssid_len77 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %ssid_len77, align 8
  %ssid = getelementptr inbounds %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 23
  %conv84 = zext i8 %43 to i32
  %45 = call ptr @memcpy(ptr %ssid, ptr %41, i32 %conv84)
  br label %if.end85

if.end85:                                         ; preds = %if.then76, %if.end73.if.end85_crit_edge
  %46 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %active.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool87.not = icmp eq i8 %47, 0
  br i1 %tobool87.not, label %if.end85.if.end116_crit_edge, label %if.then88

if.end85.if.end116_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then88:                                        ; preds = %if.end85
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %4, align 4
  %50 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %req, align 8
  %tobool91.not = icmp eq ptr %51, null
  br i1 %tobool91.not, label %if.then88.cond.end104_crit_edge, label %cond.true98

if.then88.cond.end104_crit_edge:                  ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end104

cond.true98:                                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  %ssid_len101 = getelementptr inbounds %struct.cfg80211_ssid, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ssid_len101 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ssid_len101, align 1
  %conv102 = zext i8 %53 to i32
  br label %cond.end104

cond.end104:                                      ; preds = %cond.true98, %if.then88.cond.end104_crit_edge
  %cond105 = phi i32 [ %conv102, %cond.true98 ], [ 0, %if.then88.cond.end104_crit_edge ]
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 4
  %54 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ie, align 8
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 5
  %56 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ie_len, align 4
  %call106 = tail call i32 @wl12xx_cmd_build_probe_req(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %49, i8 noundef zeroext 0, ptr noundef %51, i32 noundef %cond105, ptr noundef %55, i32 noundef %57, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %cleanup, label %cond.end104.if.end116_crit_edge

cond.end104.if.end116_crit_edge:                  ; preds = %cond.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

cleanup:                                          ; preds = %cond.end104
  call void @__sanitizer_cov_trace_pc() #7
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %out

if.end116:                                        ; preds = %cond.end104.if.end116_crit_edge, %if.end85.if.end116_crit_edge
  %arrayidx118 = getelementptr %struct.wl18xx_cmd_scan_params, ptr %call7.i.i, i32 0, i32 14, i32 1
  %58 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx118, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool120.not = icmp eq i8 %59, 0
  br i1 %tobool120.not, label %lor.lhs.false, label %if.end116.if.then123_crit_edge

if.end116.if.then123_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then123

lor.lhs.false:                                    ; preds = %if.end116
  %60 = ptrtoint ptr %dfs6.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dfs6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool122.not = icmp eq i8 %61, 0
  br i1 %tobool122.not, label %lor.lhs.false.do.body162_crit_edge, label %lor.lhs.false.if.then123_crit_edge

lor.lhs.false.if.then123_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then123

lor.lhs.false.do.body162_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body162

if.then123:                                       ; preds = %lor.lhs.false.if.then123_crit_edge, %if.end116.if.then123_crit_edge
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %4, align 4
  %64 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %req, align 8
  %tobool127.not = icmp eq ptr %65, null
  br i1 %tobool127.not, label %if.then123.cond.end144_crit_edge, label %cond.true138

if.then123.cond.end144_crit_edge:                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end144

cond.true138:                                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  %ssid_len141 = getelementptr inbounds %struct.cfg80211_ssid, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %ssid_len141 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ssid_len141, align 1
  %conv142 = zext i8 %67 to i32
  br label %cond.end144

cond.end144:                                      ; preds = %cond.true138, %if.then123.cond.end144_crit_edge
  %cond145 = phi i32 [ %conv142, %cond.true138 ], [ 0, %if.then123.cond.end144_crit_edge ]
  %ie146 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 4
  %68 = ptrtoint ptr %ie146 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ie146, align 8
  %ie_len147 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 5
  %70 = ptrtoint ptr %ie_len147 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ie_len147, align 4
  %call148 = tail call i32 @wl12xx_cmd_build_probe_req(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %63, i8 noundef zeroext 1, ptr noundef %65, i32 noundef %cond145, ptr noundef %69, i32 noundef %71, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %cleanup158, label %cond.end144.do.body162_crit_edge

cond.end144.do.body162_crit_edge:                 ; preds = %cond.end144
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body162

cleanup158:                                       ; preds = %cond.end144
  call void @__sanitizer_cov_trace_pc() #7
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %out

do.body162:                                       ; preds = %cond.end144.do.body162_crit_edge, %lor.lhs.false.do.body162_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %72 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool163.not = icmp eq i32 %and, 0
  br i1 %tobool163.not, label %do.body162.do.end181_crit_edge, label %do.body165

do.body162.do.end181_crit_edge:                   ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end181

do.body165:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_scan_send.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_scan_send, %if.then175)) #5
          to label %do.end181 [label %if.then175], !srcloc !59

if.then175:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef 672, i1 noundef zeroext false) #5
  br label %do.end181

do.end181:                                        ; preds = %if.then175, %do.body165, %do.body162.do.end181_crit_edge
  %call182 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 7, ptr noundef nonnull %call7.i.i, i32 noundef 672, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %do.end188, label %do.end181.out_crit_edge

do.end181.out_crit_edge:                          ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end188:                                        ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #7
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %out

out:                                              ; preds = %do.end188, %do.end181.out_crit_edge, %cleanup158, %cleanup, %if.end57.out_crit_edge, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ %call106, %cleanup ], [ %call148, %cleanup158 ], [ %call182, %do.end188 ], [ %call182, %do.end181.out_crit_edge ], [ -12, %entry.out_crit_edge ], [ -12, %if.end57.out_crit_edge ]
  %cmd_channels.0 = phi ptr [ null, %do.end ], [ %call7.i.i267, %cleanup ], [ %call7.i.i267, %cleanup158 ], [ %call7.i.i267, %do.end188 ], [ %call7.i.i267, %do.end181.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %if.end57.out_crit_edge ]
  tail call void @kfree(ptr noundef %cmd_channels.0) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_scan_stop(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__wl18xx_scan_stop(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_scan_sched_scan_ssid_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wlcore_set_scan_chan_params(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_cmd_build_probe_req(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_send(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 166, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug351, !1, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 228, i32 2}
!8 = !{ptr @wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug352, !7, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 253, i32 4}
!11 = !{ptr @wl18xx_scan_sched_scan_config._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @wl18xx_scan_sched_scan_config._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 270, i32 4}
!15 = !{ptr @wl18xx_scan_sched_scan_config._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @wl18xx_scan_sched_scan_config._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 275, i32 2}
!19 = !{ptr @wl18xx_scan_sched_scan_config.__UNIQUE_ID_ddebug355, !18, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 279, i32 3}
!23 = !{ptr @wl18xx_scan_sched_scan_config._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @wl18xx_scan_sched_scan_config._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 302, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__wl18xx_scan_stop.__UNIQUE_ID_ddebug356, !26, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 306, i32 3}
!31 = !{ptr @__wl18xx_scan_stop._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__wl18xx_scan_stop._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 315, i32 3}
!35 = !{ptr @__wl18xx_scan_stop._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @__wl18xx_scan_stop._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 110, i32 4}
!39 = !{ptr @wl18xx_scan_send._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wl18xx_scan_send._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @wl18xx_scan_send._entry.21, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 127, i32 4}
!43 = !{ptr @wl18xx_scan_send._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @wl18xx_scan_send.__UNIQUE_ID_ddebug350, !45, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 132, i32 2}
!46 = !{ptr @wl18xx_scan_send._entry.23, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wl18xx/scan.c", i32 136, i32 3}
!48 = !{ptr @wl18xx_scan_send._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2148966478, i64 2148966483, i64 2148966496, i64 2148966540, i64 2148966574, i64 2148966595}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i8 0, i8 2}
