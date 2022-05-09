; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/rx.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wl_fw_status = type { i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, %struct.anon.136, i32, ptr }
%struct.anon.136 = type { ptr, ptr, i8, i8, i8, i8 }
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
%struct.wlcore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1271_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1271_rx_descriptor = type { i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
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

@wlcore_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014wlcore: WARNING received empty data\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wlcore_rx\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wlcore/rx.c\00", [60 x i8] zeroinitializer }, align 32
@wlcore_rx._entry_ptr = internal global ptr @wlcore_rx._entry, section ".printk_index", align 4
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hlid (%d) exceeded MAX_LINKS\0A\00", [34 x i8] zeroinitializer }, align 32
@wl1271_rx_filter_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014wlcore: WARNING Request to enable an already enabled rx filter %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1271_rx_filter_enable\00", [40 x i8] zeroinitializer }, align 32
@wl1271_rx_filter_enable._entry_ptr = internal global ptr @wl1271_rx_filter_enable._entry, section ".printk_index", align 4
@wl1271_rx_filter_enable._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wlcore: ERROR Failed to %s rx data filter %d (err=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1271_rx_filter_enable._entry_ptr.8 = internal global ptr @wl1271_rx_filter_enable._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wlcore/io.h\00", [60 x i8] zeroinitializer }, align 32
@wl1271_rx_handle_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wlcore: ERROR Invalid packet arrived from HW. length %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1271_rx_handle_data\00", [42 x i8] zeroinitializer }, align 32
@wl1271_rx_handle_data._entry_ptr = internal global ptr @wl1271_rx_handle_data._entry, section ".printk_index", align 4
@wl1271_rx_handle_data._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014wlcore: WARNING corrupted packet in RX: status: 0x%x len: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wl1271_rx_handle_data._entry_ptr.16 = internal global ptr @wl1271_rx_handle_data._entry.14, section ".printk_index", align 4
@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl1271_rx_handle_data.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.13, ptr @.str.2, ptr @.str.18, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wlcore: PKT: \00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@wl1271_rx_handle_data._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wlcore: ERROR Couldn't allocate RX frame\0A\00", [52 x i8] zeroinitializer }, align 32
@wl1271_rx_handle_data._entry_ptr.22 = internal global ptr @wl1271_rx_handle_data._entry.20, section ".printk_index", align 4
@wl1271_rx_handle_data.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.13, ptr @.str.2, ptr @.str.23, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"wlcore: rx skb 0x%p: %d B %s seq %d hlid %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"beacon\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@wl1271_rx_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014wlcore: WARNING Michael MIC error. Desc: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl1271_rx_status\00", [47 x i8] zeroinitializer }, align 32
@wl1271_rx_status._entry_ptr = internal global ptr @wl1271_rx_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 235, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 269, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 306, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 314, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [39 x i8] c"../drivers/net/wireless/ti/wlcore/io.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 69, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 124, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 146, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 149, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 158, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 188, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [39 x i8] c"../drivers/net/wireless/ti/wlcore/rx.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 90, i32 4 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @wl1271_rx_filter_enable._entry, ptr @wl1271_rx_filter_enable._entry.6, ptr @wl1271_rx_filter_enable._entry_ptr, ptr @wl1271_rx_filter_enable._entry_ptr.8, ptr @wl1271_rx_handle_data._entry, ptr @wl1271_rx_handle_data._entry.14, ptr @wl1271_rx_handle_data._entry.20, ptr @wl1271_rx_handle_data._entry_ptr, ptr @wl1271_rx_handle_data._entry_ptr.16, ptr @wl1271_rx_handle_data._entry_ptr.22, ptr @wl1271_rx_status._entry, ptr @wl1271_rx_status._entry_ptr, ptr @wlcore_rx._entry, ptr @wlcore_rx._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_rx_filter_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_rx_filter_enable._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_rx_handle_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_rx_handle_data._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_rx_handle_data._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_rx_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_rx(ptr noundef %wl, ptr nocapture noundef readonly %status) local_unnamed_addr #0 align 64 {
entry:
  %active_hlids = alloca [1 x i32], align 4
  %hlid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_hlids) #6
  %0 = ptrtoint ptr %active_hlids to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %active_hlids, align 4
  %fw_rx_counter1 = getelementptr inbounds %struct.wl_fw_status, ptr %status, i32 0, i32 1
  %1 = ptrtoint ptr %fw_rx_counter1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fw_rx_counter1, align 4
  %conv = zext i8 %2 to i32
  %num_rx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 127
  %3 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_rx_desc, align 4
  %rem = urem i32 %conv, %4
  %rx_counter = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 60
  %5 = ptrtoint ptr %rx_counter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_counter, align 8
  %rem3 = urem i32 %6, %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hlid) #6
  %hlid5 = getelementptr inbounds %struct.wl_fw_status, ptr %status, i32 0, i32 10, i32 5
  %7 = ptrtoint ptr %hlid5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hlid5, align 1
  %9 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %hlid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp = icmp ult i8 %8, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = zext i8 %8 to i32
  %tx_last_rate_mbps = getelementptr inbounds %struct.wl_fw_status, ptr %status, i32 0, i32 10, i32 4
  %10 = ptrtoint ptr %tx_last_rate_mbps to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_last_rate_mbps, align 2
  %fw_rate_mbps = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv6, i32 6
  %12 = ptrtoint ptr %fw_rate_mbps to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %fw_rate_mbps, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %rem3, i32 %rem)
  %cmp9.not220 = icmp eq i32 %rem3, %rem
  br i1 %cmp9.not220, label %if.end.while.end91_crit_edge, label %while.cond11.preheader.lr.ph

if.end.while.end91_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end91

while.cond11.preheader.lr.ph:                     ; preds = %if.end
  %rx_pkt_descs = getelementptr inbounds %struct.wl_fw_status, ptr %status, i32 0, i32 4
  %quirks.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %aggr_buf_size = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 62
  %ops.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %aggr_buf = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 61
  %rtable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %num_links = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 128
  br label %while.body14.lr.ph

while.cond41.while.cond.loopexit_crit_edge:       ; preds = %if.end82
  %cmp9.not = icmp eq i32 %rem87, %rem
  br i1 %cmp9.not, label %while.cond41.while.cond.loopexit_crit_edge.while.end91_crit_edge, label %while.cond41.while.cond.loopexit_crit_edge.while.body14.lr.ph_crit_edge

while.cond41.while.cond.loopexit_crit_edge.while.body14.lr.ph_crit_edge: ; preds = %while.cond41.while.cond.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body14.lr.ph

while.cond41.while.cond.loopexit_crit_edge.while.end91_crit_edge: ; preds = %while.cond41.while.cond.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end91

while.body14.lr.ph:                               ; preds = %while.cond41.while.cond.loopexit_crit_edge.while.body14.lr.ph_crit_edge, %while.cond11.preheader.lr.ph
  %drv_rx_counter.0221244 = phi i32 [ %rem3, %while.cond11.preheader.lr.ph ], [ %rem87, %while.cond41.while.cond.loopexit_crit_edge.while.body14.lr.ph_crit_edge ]
  %ret.0222243 = phi i32 [ 0, %while.cond11.preheader.lr.ph ], [ %call27.i.i.i, %while.cond41.while.cond.loopexit_crit_edge.while.body14.lr.ph_crit_edge ]
  %13 = ptrtoint ptr %rx_pkt_descs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_pkt_descs, align 4
  %15 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %17 = ptrtoint ptr %aggr_buf_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aggr_buf_size, align 8
  br label %while.body14

while.body14:                                     ; preds = %if.end20.while.body14_crit_edge, %while.body14.lr.ph
  %buf_size.0214 = phi i32 [ 0, %while.body14.lr.ph ], [ %add, %if.end20.while.body14_crit_edge ]
  %rx_counter4.0213 = phi i32 [ %drv_rx_counter.0221244, %while.body14.lr.ph ], [ %rem23, %if.end20.while.body14_crit_edge ]
  %arrayidx15 = getelementptr i32, ptr %14, i32 %rx_counter4.0213
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx15, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %and1.i = lshr i32 %21, 8
  %shr.i = and i32 %and1.i, 65535
  %and2.i = lshr i32 %21, 6
  %shr3.i = and i32 %and2.i, 16380
  %retval.0.i = select i1 %tobool.not.i, i32 %shr3.i, i32 %shr.i
  %add.i = add nuw nsw i32 %retval.0.i, 255
  %and1.i158 = and i32 %add.i, 130816
  %retval.0.i159 = select i1 %tobool.not.i, i32 %shr3.i, i32 %and1.i158
  %add = add i32 %retval.0.i159, %buf_size.0214
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %18)
  %cmp17 = icmp ugt i32 %add, %18
  br i1 %cmp17, label %while.body14.while.end_crit_edge, label %if.end20

while.body14.while.end_crit_edge:                 ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end20:                                         ; preds = %while.body14
  %inc = add i32 %rx_counter4.0213, 1
  %22 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_rx_desc, align 4
  %rem23 = urem i32 %inc, %23
  %cmp12.not = icmp eq i32 %rem23, %rem
  br i1 %cmp12.not, label %if.end20.while.end_crit_edge, label %if.end20.while.body14_crit_edge

if.end20.while.body14_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body14

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %while.body14.while.end_crit_edge
  %buf_size.0.lcssa = phi i32 [ %add, %if.end20.while.end_crit_edge ], [ %buf_size.0214, %while.body14.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size.0.lcssa)
  %cmp24 = icmp eq i32 %buf_size.0.lcssa, 0
  br i1 %cmp24, label %do.end, label %if.end28

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %while.end91

if.end28:                                         ; preds = %while.end
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %prepare_read.i = getelementptr inbounds %struct.wlcore_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %prepare_read.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prepare_read.i, align 4
  %tobool.not.i160 = icmp eq ptr %27, null
  br i1 %tobool.not.i160, label %if.end28.if.end35_crit_edge, label %wlcore_hw_prepare_read.exit

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

wlcore_hw_prepare_read.exit:                      ; preds = %if.end28
  %28 = ptrtoint ptr %rx_pkt_descs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_pkt_descs, align 4
  %arrayidx30 = getelementptr i32, ptr %29, i32 %drv_rx_counter.0221244
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx30, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %call.i = tail call i32 %27(ptr noundef %wl, i32 noundef %32, i32 noundef %buf_size.0.lcssa) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp32 = icmp slt i32 %call.i, 0
  br i1 %cmp32, label %wlcore_hw_prepare_read.exit.out_crit_edge, label %wlcore_hw_prepare_read.exit.if.end35_crit_edge

wlcore_hw_prepare_read.exit.if.end35_crit_edge:   ; preds = %wlcore_hw_prepare_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

wlcore_hw_prepare_read.exit.out_crit_edge:        ; preds = %wlcore_hw_prepare_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end35:                                         ; preds = %wlcore_hw_prepare_read.exit.if.end35_crit_edge, %if.end28.if.end35_crit_edge
  %33 = ptrtoint ptr %aggr_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aggr_buf, align 4
  %35 = ptrtoint ptr %rtable.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rtable.i, align 4
  %arrayidx.i = getelementptr i32, ptr %36, i32 10
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %38) #6
  %39 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i.i.i, align 4
  %41 = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false.i.i.i:                              ; preds = %if.end35
  %42 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i.i.i, align 4
  %44 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.not.i.i.i = icmp ne i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i)
  %cmp.i.i.i = icmp ne i32 %call.i.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !58

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 70, i32 noundef 9, ptr noundef null) #6
  br label %out

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %45 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %if_ops.i.i.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %48(ptr noundef %50, i32 noundef %call.i.i, ptr noundef %34, i32 noundef %buf_size.0.lcssa, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.while.body44.preheader_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.while.body44.preheader_crit_edge:  ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body44.preheader

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %51 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp29.not.i.i.i = icmp eq i32 %52, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_read_data.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_read_data.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlcore_read_data.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #6
  br label %wlcore_read_data.exit

wlcore_read_data.exit:                            ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_read_data.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp37 = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp37, label %wlcore_read_data.exit.out_crit_edge, label %wlcore_read_data.exit.while.body44.preheader_crit_edge

wlcore_read_data.exit.while.body44.preheader_crit_edge: ; preds = %wlcore_read_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body44.preheader

wlcore_read_data.exit.out_crit_edge:              ; preds = %wlcore_read_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body44.preheader:                           ; preds = %wlcore_read_data.exit.while.body44.preheader_crit_edge, %if.end25.i.i.i.while.body44.preheader_crit_edge
  br label %while.body44

while.body44:                                     ; preds = %if.end82.while.body44_crit_edge, %while.body44.preheader
  %pkt_offset.0218 = phi i32 [ %add89, %if.end82.while.body44_crit_edge ], [ 0, %while.body44.preheader ]
  %drv_rx_counter.1217 = phi i32 [ %rem87, %if.end82.while.body44_crit_edge ], [ %drv_rx_counter.0221244, %while.body44.preheader ]
  %53 = ptrtoint ptr %rx_pkt_descs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_pkt_descs, align 4
  %arrayidx46 = getelementptr i32, ptr %54, i32 %drv_rx_counter.1217
  %55 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx46, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %quirks.i, align 8
  %and.i163 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool.not.i164 = icmp eq i32 %and.i163, 0
  %and1.i165 = lshr i32 %57, 8
  %shr.i166 = and i32 %and1.i165, 65535
  %and2.i167 = lshr i32 %57, 6
  %shr3.i168 = and i32 %and2.i167, 16380
  %retval.0.i169 = select i1 %tobool.not.i164, i32 %shr3.i168, i32 %shr.i166
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %get_rx_buf_align.i = getelementptr inbounds %struct.wlcore_ops, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %get_rx_buf_align.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %get_rx_buf_align.i, align 4
  %tobool.not.i171 = icmp eq ptr %63, null
  br i1 %tobool.not.i171, label %do.body1.i, label %wlcore_hw_get_rx_buf_align.exit

do.body1.i:                                       ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 49, 0\0A.popsection", ""() #6, !srcloc !59
  unreachable

wlcore_hw_get_rx_buf_align.exit:                  ; preds = %while.body44
  %call.i172 = tail call i32 %63(ptr noundef %wl, i32 noundef %57) #6
  %64 = ptrtoint ptr %aggr_buf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %aggr_buf, align 4
  %add.ptr = getelementptr i8, ptr %65, i32 %pkt_offset.0218
  %call50 = call fastcc i32 @wl1271_rx_handle_data(ptr noundef %wl, ptr noundef %add.ptr, i32 noundef %retval.0.i169, i32 noundef %call.i172, ptr noundef nonnull %hlid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 1
  br i1 %cmp51, label %if.then53, label %wlcore_hw_get_rx_buf_align.exit.if.end82_crit_edge

wlcore_hw_get_rx_buf_align.exit.if.end82_crit_edge: ; preds = %wlcore_hw_get_rx_buf_align.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then53:                                        ; preds = %wlcore_hw_get_rx_buf_align.exit
  %66 = ptrtoint ptr %hlid to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hlid, align 1
  %conv54 = zext i8 %67 to i32
  %68 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_links, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp56 = icmp ult i8 %67, %69
  br i1 %cmp56, label %if.then58, label %do.end66

if.then58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %rem.i = and i32 %conv54, 31
  %shl.i = shl nuw i32 1, %rem.i
  %70 = ptrtoint ptr %active_hlids to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %active_hlids, align 4
  %or.i = or i32 %71, %shl.i
  store i32 %or.i, ptr %active_hlids, align 4
  br label %if.end82

do.end66:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %conv54) #6
  br label %if.end82

if.end82:                                         ; preds = %do.end66, %if.then58, %wlcore_hw_get_rx_buf_align.exit.if.end82_crit_edge
  %72 = ptrtoint ptr %rx_counter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_counter, align 8
  %inc84 = add i32 %73, 1
  store i32 %inc84, ptr %rx_counter, align 8
  %inc85 = add i32 %drv_rx_counter.1217, 1
  %74 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_rx_desc, align 4
  %rem87 = urem i32 %inc85, %75
  %76 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %quirks.i, align 8
  %and.i174 = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  %add.i176 = add nuw nsw i32 %retval.0.i169, 255
  %and1.i177 = and i32 %add.i176, 130816
  %retval.0.i178 = select i1 %tobool.not.i175, i32 %retval.0.i169, i32 %and1.i177
  %add89 = add i32 %retval.0.i178, %pkt_offset.0218
  %cmp42 = icmp ult i32 %add89, %buf_size.0.lcssa
  br i1 %cmp42, label %if.end82.while.body44_crit_edge, label %while.cond41.while.cond.loopexit_crit_edge

if.end82.while.body44_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body44

while.end91:                                      ; preds = %do.end, %while.cond41.while.cond.loopexit_crit_edge.while.end91_crit_edge, %if.end.while.end91_crit_edge
  %ret.0211 = phi i32 [ %ret.0222243, %do.end ], [ 0, %if.end.while.end91_crit_edge ], [ %call27.i.i.i, %while.cond41.while.cond.loopexit_crit_edge.while.end91_crit_edge ]
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %78 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %quirks, align 8
  %and = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %while.end91.if.end100_crit_edge, label %if.then93

while.end91.if.end100_crit_edge:                  ; preds = %while.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then93:                                        ; preds = %while.end91
  %80 = ptrtoint ptr %rx_counter to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_counter, align 8
  %call.i179 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3147064) #6
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #6
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %83 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buffer_32.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %82, ptr %84, align 4
  %86 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i180 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %87 = ptrtoint ptr %flags.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flags.i.i.i180, align 4
  %89 = and i32 %88, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i.i181 = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i.i181, label %lor.lhs.false.i.i.i185, label %if.then93.out_crit_edge

if.then93.out_crit_edge:                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false.i.i.i185:                           ; preds = %if.then93
  %90 = ptrtoint ptr %flags.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %flags.i.i.i180, align 4
  %92 = and i32 %91, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool3.not.i.i.i182 = icmp ne i32 %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i179)
  %cmp.i.i.i183 = icmp ne i32 %call.i179, 131068
  %spec.select.i.i.i184 = and i1 %cmp.i.i.i183, %tobool3.not.i.i.i182
  br i1 %spec.select.i.i.i184, label %do.end.i.i.i186, label %if.end25.i.i.i191, !prof !58

do.end.i.i.i186:                                  ; preds = %lor.lhs.false.i.i.i185
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %out

if.end25.i.i.i191:                                ; preds = %lor.lhs.false.i.i.i185
  %if_ops.i.i.i187 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %93 = ptrtoint ptr %if_ops.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %if_ops.i.i.i187, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write.i.i.i, align 4
  %dev.i.i.i188 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %97 = ptrtoint ptr %dev.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i.i.i188, align 4
  %call27.i.i.i189 = tail call i32 %96(ptr noundef %98, i32 noundef %call.i179, ptr noundef %86, i32 noundef 4, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i189)
  %tobool28.not.i.i.i190 = icmp eq i32 %call27.i.i.i189, 0
  br i1 %tobool28.not.i.i.i190, label %if.end25.i.i.i191.if.end100_crit_edge, label %land.lhs.true.i.i.i194

if.end25.i.i.i191.if.end100_crit_edge:            ; preds = %if.end25.i.i.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

land.lhs.true.i.i.i194:                           ; preds = %if.end25.i.i.i191
  %state.i.i.i192 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %99 = ptrtoint ptr %state.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state.i.i.i192, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp29.not.i.i.i193 = icmp eq i32 %100, 0
  br i1 %cmp29.not.i.i.i193, label %land.lhs.true.i.i.i194.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i195

land.lhs.true.i.i.i194.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlcore_write32.exit

if.then30.i.i.i195:                               ; preds = %land.lhs.true.i.i.i194
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i180) #6
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i195, %land.lhs.true.i.i.i194.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i189)
  %cmp96 = icmp slt i32 %call27.i.i.i189, 0
  br i1 %cmp96, label %wlcore_write32.exit.out_crit_edge, label %wlcore_write32.exit.if.end100_crit_edge

wlcore_write32.exit.if.end100_crit_edge:          ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

wlcore_write32.exit.out_crit_edge:                ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end100:                                        ; preds = %wlcore_write32.exit.if.end100_crit_edge, %if.end25.i.i.i191.if.end100_crit_edge, %while.end91.if.end100_crit_edge
  %ret.1 = phi i32 [ %call27.i.i.i189, %wlcore_write32.exit.if.end100_crit_edge ], [ %ret.0211, %while.end91.if.end100_crit_edge ], [ 0, %if.end25.i.i.i191.if.end100_crit_edge ]
  call void @wl12xx_rearm_rx_streaming(ptr noundef %wl, ptr noundef nonnull %active_hlids) #6
  br label %out

out:                                              ; preds = %if.end100, %wlcore_write32.exit.out_crit_edge, %do.end.i.i.i186, %if.then93.out_crit_edge, %wlcore_read_data.exit.out_crit_edge, %do.end.i.i.i, %if.end35.out_crit_edge, %wlcore_hw_prepare_read.exit.out_crit_edge
  %ret.2 = phi i32 [ %call27.i.i.i189, %wlcore_write32.exit.out_crit_edge ], [ %ret.1, %if.end100 ], [ -5, %do.end.i.i.i ], [ -5, %do.end.i.i.i186 ], [ -5, %if.then93.out_crit_edge ], [ -5, %if.end35.out_crit_edge ], [ %call27.i.i.i, %wlcore_read_data.exit.out_crit_edge ], [ %call.i, %wlcore_hw_prepare_read.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hlid) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_hlids) #6
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_rx_handle_data(ptr noundef %wl, ptr noundef %data, i32 noundef %length, i32 noundef %rx_align, ptr nocapture noundef %hlid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plt = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 14
  %0 = ptrtoint ptr %plt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %plt, align 8, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %get_rx_packet_len.i = getelementptr inbounds %struct.wlcore_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %get_rx_packet_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_rx_packet_len.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body1.i, label %wlcore_hw_get_rx_packet_len.exit

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 67, 0\0A.popsection", ""() #6, !srcloc !62
  unreachable

wlcore_hw_get_rx_packet_len.exit:                 ; preds = %if.end
  %call.i = tail call i32 %5(ptr noundef %wl, ptr noundef %data, i32 noundef %length) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %wlcore_hw_get_rx_packet_len.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %length) #9
  br label %cleanup

if.end6:                                          ; preds = %wlcore_hw_get_rx_packet_len.exit
  %6 = zext i32 %rx_align to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rx_align, label %if.end11.fold.split [
    i32 1, label %if.end6.if.end11_crit_edge
    i32 2, label %if.then9
  ]

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11.fold.split:                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.end11.fold.split, %if.then9, %if.end6.if.end11_crit_edge
  %offset_to_data.0 = phi i32 [ 2, %if.then9 ], [ 0, %if.end6.if.end11_crit_edge ], [ 0, %if.end11.fold.split ]
  %reserved.0 = phi i32 [ 0, %if.then9 ], [ 2, %if.end6.if.end11_crit_edge ], [ 0, %if.end11.fold.split ]
  %packet_class = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %data, i32 0, i32 8
  %7 = ptrtoint ptr %packet_class to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %packet_class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp12 = icmp eq i8 %8, 8
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %length, -16
  %add.ptr = getelementptr i8, ptr %data, i32 16
  %call15 = tail call i32 @wl12xx_copy_fwlog(ptr noundef %wl, ptr noundef %add.ptr, i32 noundef %sub) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %status = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status, align 1
  %conv17 = zext i8 %10 to i32
  %and = and i32 %conv17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end64, label %if.then19

if.then19:                                        ; preds = %if.end16
  %add.ptr20 = getelementptr i8, ptr %data, i32 16
  %add.ptr22 = getelementptr i8, ptr %add.ptr20, i32 %offset_to_data.0
  %and29 = and i32 %conv17, 7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %and29, i32 noundef %call.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %11 = load i32, ptr @wl12xx_debug_level, align 4
  %and32 = and i32 %11, 4224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then19.cleanup_crit_edge, label %do.body35

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body35:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_rx_handle_data.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_rx_handle_data, %if.then45)) #6
          to label %cleanup [label %if.then45], !srcloc !63

if.then45:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr22, align 2
  %call47 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %13) #10
  %14 = tail call i32 @llvm.umin.i32(i32 %call.i, i32 %call47)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 1024)
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr20, i32 noundef %15, i1 noundef zeroext false) #6
  br label %cleanup

if.end64:                                         ; preds = %if.end16
  %add = add i32 %reserved.0, %call.i
  %call.i196 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 3264) #6
  %tobool67.not = icmp eq ptr %call.i196, null
  br i1 %tobool67.not, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end74:                                         ; preds = %if.end64
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %reserved.0
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %19, i32 %reserved.0
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %add.ptr76 = getelementptr i8, ptr %data, i32 16
  %call.i197 = tail call ptr @skb_put(ptr noundef nonnull %call.i196, i32 noundef %call.i) #6
  %20 = call ptr @memcpy(ptr %call.i197, ptr %add.ptr76, i32 %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rx_align)
  %cmp78 = icmp eq i32 %rx_align, 2
  br i1 %cmp78, label %if.then80, label %if.end74.if.end82_crit_edge

if.end74.if.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = tail call ptr @skb_pull(ptr noundef nonnull %call.i196, i32 noundef 2) #6
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end74.if.end82_crit_edge
  %hlid83 = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %data, i32 0, i32 9
  %21 = ptrtoint ptr %hlid83 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hlid83, align 1
  %23 = ptrtoint ptr %hlid to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %hlid, align 1
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %28 = and i16 %27, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %28)
  %cmp.i = icmp eq i16 %28, -32768
  %29 = and i16 %27, 19456
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %29)
  %cmp.i198 = icmp eq i16 %29, 2048
  %is_data.0 = zext i1 %cmp.i198 to i32
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 3
  %30 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %flags.i = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %data, i32 0, i32 2
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags.i, align 1
  %33 = and i8 %32, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.i200 = icmp ne i8 %33, 0
  %spec.select.i = zext i1 %cmp.i200 to i8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 3, i32 36
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select.i, ptr %34, align 4
  %rate.i = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %data, i32 0, i32 3
  %36 = ptrtoint ptr %rate.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rate.i, align 1
  %conv4.i = zext i1 %cmp.i200 to i32
  %call.i201 = tail call zeroext i8 @wlcore_rate_to_idx(ptr noundef %wl, i8 noundef zeroext %37, i32 noundef %conv4.i) #6
  %rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 3, i32 33
  %38 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call.i201, ptr %rate_idx.i, align 1
  %39 = ptrtoint ptr %rate.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rate.i, align 1
  %hw_min_ht_rate.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 132
  %41 = ptrtoint ptr %hw_min_ht_rate.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hw_min_ht_rate.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp8.not.i = icmp ugt i8 %40, %42
  br i1 %cmp8.not.i, label %if.end82.if.end11.i_crit_edge, label %if.then10.i

if.end82.if.end11.i_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %encoding.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 3, i32 31
  %43 = ptrtoint ptr %encoding.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load.i = load i16, ptr %encoding.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 16383
  %bf.set.i = or i16 %bf.clear.i, 16384
  store i16 %bf.set.i, ptr %encoding.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end82.if.end11.i_crit_edge
  %rssi.i = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %data, i32 0, i32 5
  %44 = ptrtoint ptr %rssi.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rssi.i, align 1
  %46 = or i8 %45, -128
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 3, i32 38
  %47 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %signal.i, align 2
  %48 = load i8, ptr %rssi.i, align 1
  %49 = lshr i8 %48, 7
  %antenna.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 3, i32 37
  %50 = ptrtoint ptr %antenna.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %antenna.i, align 1
  %51 = load i8, ptr %rssi.i, align 1
  %snr.i = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %data, i32 0, i32 6
  %52 = ptrtoint ptr %snr.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %snr.i, align 1
  %54 = lshr i8 %53, 1
  %sub.i = sub i8 %51, %54
  %noise.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 98
  %55 = ptrtoint ptr %noise.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %sub.i, ptr %noise.i, align 8
  %channel.i = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %data, i32 0, i32 4
  %56 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %channel.i, align 1
  %conv24.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %34, align 4
  %conv26.i = zext i8 %59 to i32
  %call.i.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv24.i, i32 noundef %conv26.i) #6
  %div.i.i = udiv i32 %call.i.i, 1000
  %conv28.i = trunc i32 %div.i.i to i16
  %freq.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 3, i32 28
  %60 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load29.i = load i16, ptr %freq.i, align 4
  %bf.shl.i = shl i16 %conv28.i, 3
  %bf.clear30.i = and i16 %bf.load29.i, 7
  %bf.set31.i = or i16 %bf.shl.i, %bf.clear30.i
  store i16 %bf.set31.i, ptr %freq.i, align 4
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %62)
  %tobool.not.i202 = icmp ult i8 %62, 32
  br i1 %tobool.not.i202, label %if.end11.i.if.end52.i_crit_edge, label %if.then35.i

if.end11.i.if.end52.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.then35.i:                                      ; preds = %if.end11.i
  %63 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %status, align 1
  %65 = and i8 %64, 7
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 3, i32 24
  %66 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flag.i, align 8
  %or40.i = or i32 %67, 26
  store i32 %or40.i, ptr %flag.i, align 8
  %conv41.i = zext i8 %65 to i32
  %and42.i = and i32 %conv41.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.then35.i.if.end52.i_crit_edge, label %if.then46.i, !prof !61

if.then35.i.if.end52.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.then46.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  %or48.i = or i32 %67, 27
  %68 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or48.i, ptr %flag.i, align 8
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv41.i) #9
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then46.i, %if.then35.i.if.end52.i_crit_edge, %if.end11.i.if.end52.i_crit_edge
  %69 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %28, label %if.end52.i.if.end59.i_crit_edge [
    i16 -32768, label %if.end52.i.if.then57.i_crit_edge
    i16 20480, label %if.end52.i.if.then57.i_crit_edge208
  ]

if.end52.i.if.then57.i_crit_edge208:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57.i

if.end52.i.if.then57.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57.i

if.end52.i.if.end59.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.then57.i:                                      ; preds = %if.end52.i.if.then57.i_crit_edge, %if.end52.i.if.then57.i_crit_edge208
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #6
  %boottime_ns.i = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 3, i32 8
  %70 = ptrtoint ptr %boottime_ns.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call.i.i.i, ptr %boottime_ns.i, align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then57.i, %if.end52.i.if.end59.i_crit_edge
  br i1 %cmp.i, label %if.then61.i, label %if.end59.i.wl1271_rx_status.exit_crit_edge

if.end59.i.wl1271_rx_status.exit_crit_edge:       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1271_rx_status.exit

if.then61.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %channel.i, align 1
  %conv63.i = zext i8 %72 to i16
  %73 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %34, align 4
  %conv65.i = zext i8 %74 to i32
  tail call void @wlcore_set_pending_regdomain_ch(ptr noundef %wl, i16 noundef zeroext %conv63.i, i32 noundef %conv65.i) #6
  br label %wl1271_rx_status.exit

wl1271_rx_status.exit:                            ; preds = %if.then61.i, %if.end59.i.wl1271_rx_status.exit_crit_edge
  %75 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i, align 4
  %set_rx_csum.i = getelementptr inbounds %struct.wlcore_ops, ptr %76, i32 0, i32 24
  %77 = ptrtoint ptr %set_rx_csum.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_rx_csum.i, align 4
  %tobool.not.i204 = icmp eq ptr %78, null
  br i1 %tobool.not.i204, label %wl1271_rx_status.exit.wlcore_hw_set_rx_csum.exit_crit_edge, label %if.then.i

wl1271_rx_status.exit.wlcore_hw_set_rx_csum.exit_crit_edge: ; preds = %wl1271_rx_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %wlcore_hw_set_rx_csum.exit

if.then.i:                                        ; preds = %wl1271_rx_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %78(ptr noundef %wl, ptr noundef %data, ptr noundef nonnull %call.i196) #6
  br label %wlcore_hw_set_rx_csum.exit

wlcore_hw_set_rx_csum.exit:                       ; preds = %if.then.i, %wl1271_rx_status.exit.wlcore_hw_set_rx_csum.exit_crit_edge
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %25, i32 0, i32 5
  %79 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %seq_ctrl, align 2
  %81 = and i16 %80, -3841
  %82 = tail call i16 @llvm.bswap.i16(i16 %81)
  %83 = lshr exact i16 %82, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %84 = load i32, ptr @wl12xx_debug_level, align 4
  %and101 = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %wlcore_hw_set_rx_csum.exit.do.end136_crit_edge, label %do.body110, !prof !61

wlcore_hw_set_rx_csum.exit.do.end136_crit_edge:   ; preds = %wlcore_hw_set_rx_csum.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end136

do.body110:                                       ; preds = %wlcore_hw_set_rx_csum.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_rx_handle_data.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_rx_handle_data, %if.then122)) #6
          to label %do.end136 [label %if.then122], !srcloc !63

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #8
  %len123 = getelementptr inbounds %struct.sk_buff, ptr %call.i196, i32 0, i32 6
  %85 = ptrtoint ptr %len123 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len123, align 4
  %pad_len = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %data, i32 0, i32 10
  %87 = ptrtoint ptr %pad_len to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pad_len, align 1
  %conv124 = zext i8 %88 to i32
  %sub125 = sub i32 %86, %conv124
  %cond128 = select i1 %cmp.i, ptr @.str.24, ptr @.str.25
  %conv129 = zext i16 %83 to i32
  %89 = ptrtoint ptr %hlid to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %hlid, align 1
  %conv130 = zext i8 %90 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_rx_handle_data.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.23, ptr noundef nonnull %call.i196, i32 noundef %sub125, ptr noundef nonnull %cond128, i32 noundef %conv129, i32 noundef %conv130) #6
  br label %do.end136

do.end136:                                        ; preds = %if.then122, %do.body110, %wlcore_hw_set_rx_csum.exit.do.end136_crit_edge
  %deferred_rx_queue = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 53
  tail call void @skb_queue_tail(ptr noundef %deferred_rx_queue, ptr noundef nonnull %call.i196) #6
  %freezable_wq = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 56
  %91 = ptrtoint ptr %freezable_wq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %freezable_wq, align 4
  %netstack_work = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 64
  %call.i205 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %92, ptr noundef %netstack_work) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %do.end71, %if.then45, %do.body35, %if.then19.cleanup_crit_edge, %if.then14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ %is_data.0, %do.end136 ], [ -12, %do.end71 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then45 ], [ -22, %if.then19.cleanup_crit_edge ], [ -22, %do.body35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_rearm_rx_streaming(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_rx_filter_enable(ptr noundef %wl, i32 noundef %index, i1 noundef zeroext %enable, ptr noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_filter_enabled = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 138
  %div3.i = lshr i32 %index, 5
  %arrayidx.i = getelementptr i32, ptr %rx_filter_enabled, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %index, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp eq i32 %3, 0
  %cmp = xor i1 %tobool, %enable
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %index) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv5 = trunc i32 %index to i8
  %call7 = tail call i32 @wl1271_acx_set_rx_filter(ptr noundef %wl, i8 noundef zeroext %conv5, i1 noundef zeroext %enable, ptr noundef %filter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end17, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %enable, ptr @.str.9, ptr @.str.10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, i32 noundef %index, i32 noundef %call7) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  br i1 %enable, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %5, %2
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %2, -1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and.i42 = and i32 %7, %neg.i
  store i32 %and.i42, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %do.end12, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call7, %do.end12 ], [ 0, %if.else ], [ 0, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_set_rx_filter(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_rx_filter_clear_all(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_filter_enabled = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 138
  %0 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rx_filter_enabled, align 4
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %rx_filter_enabled, align 4
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i = icmp eq i32 %5, 0
  br i1 %tobool.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 0) #9
  br label %for.inc

if.end.i:                                         ; preds = %if.end
  %call7.i = tail call i32 @wl1271_acx_set_rx_filter(ptr noundef %wl, i8 noundef zeroext 0, i1 noundef zeroext false, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end17.i, label %if.end.i.wl1271_rx_filter_enable.exit_crit_edge

if.end.i.wl1271_rx_filter_enable.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1271_rx_filter_enable.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_filter_enabled, align 4
  %and.i42.i = and i32 %7, -2
  store i32 %and.i42.i, ptr %rx_filter_enabled, align 4
  br label %for.inc

wl1271_rx_filter_enable.exit:                     ; preds = %if.end.i.4.wl1271_rx_filter_enable.exit_crit_edge, %if.end.i.3.wl1271_rx_filter_enable.exit_crit_edge, %if.end.i.2.wl1271_rx_filter_enable.exit_crit_edge, %if.end.i.1.wl1271_rx_filter_enable.exit_crit_edge, %if.end.i.wl1271_rx_filter_enable.exit_crit_edge
  %i.013.lcssa = phi i32 [ 0, %if.end.i.wl1271_rx_filter_enable.exit_crit_edge ], [ 1, %if.end.i.1.wl1271_rx_filter_enable.exit_crit_edge ], [ 2, %if.end.i.2.wl1271_rx_filter_enable.exit_crit_edge ], [ 3, %if.end.i.3.wl1271_rx_filter_enable.exit_crit_edge ], [ 4, %if.end.i.4.wl1271_rx_filter_enable.exit_crit_edge ]
  %call7.i.lcssa = phi i32 [ %call7.i, %if.end.i.wl1271_rx_filter_enable.exit_crit_edge ], [ %call7.i.1, %if.end.i.1.wl1271_rx_filter_enable.exit_crit_edge ], [ %call7.i.2, %if.end.i.2.wl1271_rx_filter_enable.exit_crit_edge ], [ %call7.i.3, %if.end.i.3.wl1271_rx_filter_enable.exit_crit_edge ], [ %call7.i.4, %if.end.i.4.wl1271_rx_filter_enable.exit_crit_edge ]
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, i32 noundef %i.013.lcssa, i32 noundef %call7.i.lcssa) #9
  br label %out

for.inc:                                          ; preds = %if.end17.i, %do.end.i, %entry.for.inc_crit_edge
  %8 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %rx_filter_enabled, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1 = icmp eq i32 %10, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %11 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %rx_filter_enabled, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.1 = icmp eq i32 %13, 0
  br i1 %tobool.i.1, label %do.end.i.1, label %if.end.i.1

if.end.i.1:                                       ; preds = %if.end.1
  %call7.i.1 = tail call i32 @wl1271_acx_set_rx_filter(ptr noundef %wl, i8 noundef zeroext 1, i1 noundef zeroext false, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.1)
  %tobool8.not.i.1 = icmp eq i32 %call7.i.1, 0
  br i1 %tobool8.not.i.1, label %if.end17.i.1, label %if.end.i.1.wl1271_rx_filter_enable.exit_crit_edge

if.end.i.1.wl1271_rx_filter_enable.exit_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1271_rx_filter_enable.exit

if.end17.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_filter_enabled, align 4
  %and.i42.i.1 = and i32 %15, -3
  store i32 %and.i42.i.1, ptr %rx_filter_enabled, align 4
  br label %for.inc.1

do.end.i.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 1) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.i.1, %if.end17.i.1, %for.inc.for.inc.1_crit_edge
  %16 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %rx_filter_enabled, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.2 = icmp eq i32 %18, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %19 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %rx_filter_enabled, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.2 = icmp eq i32 %21, 0
  br i1 %tobool.i.2, label %do.end.i.2, label %if.end.i.2

if.end.i.2:                                       ; preds = %if.end.2
  %call7.i.2 = tail call i32 @wl1271_acx_set_rx_filter(ptr noundef %wl, i8 noundef zeroext 2, i1 noundef zeroext false, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.2)
  %tobool8.not.i.2 = icmp eq i32 %call7.i.2, 0
  br i1 %tobool8.not.i.2, label %if.end17.i.2, label %if.end.i.2.wl1271_rx_filter_enable.exit_crit_edge

if.end.i.2.wl1271_rx_filter_enable.exit_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1271_rx_filter_enable.exit

if.end17.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_filter_enabled, align 4
  %and.i42.i.2 = and i32 %23, -5
  store i32 %and.i42.i.2, ptr %rx_filter_enabled, align 4
  br label %for.inc.2

do.end.i.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 2) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.i.2, %if.end17.i.2, %for.inc.1.for.inc.2_crit_edge
  %24 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %rx_filter_enabled, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.3 = icmp eq i32 %26, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %27 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %rx_filter_enabled, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.3 = icmp eq i32 %29, 0
  br i1 %tobool.i.3, label %do.end.i.3, label %if.end.i.3

if.end.i.3:                                       ; preds = %if.end.3
  %call7.i.3 = tail call i32 @wl1271_acx_set_rx_filter(ptr noundef %wl, i8 noundef zeroext 3, i1 noundef zeroext false, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.3)
  %tobool8.not.i.3 = icmp eq i32 %call7.i.3, 0
  br i1 %tobool8.not.i.3, label %if.end17.i.3, label %if.end.i.3.wl1271_rx_filter_enable.exit_crit_edge

if.end.i.3.wl1271_rx_filter_enable.exit_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1271_rx_filter_enable.exit

if.end17.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_filter_enabled, align 4
  %and.i42.i.3 = and i32 %31, -9
  store i32 %and.i42.i.3, ptr %rx_filter_enabled, align 4
  br label %for.inc.3

do.end.i.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 3) #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end.i.3, %if.end17.i.3, %for.inc.2.for.inc.3_crit_edge
  %32 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %rx_filter_enabled, align 4
  %34 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.4 = icmp eq i32 %34, 0
  br i1 %tobool.not.4, label %for.inc.3.out_crit_edge, label %if.end.4

for.inc.3.out_crit_edge:                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.4:                                         ; preds = %for.inc.3
  %35 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %rx_filter_enabled, align 4
  %37 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.4 = icmp eq i32 %37, 0
  br i1 %tobool.i.4, label %do.end.i.4, label %if.end.i.4

if.end.i.4:                                       ; preds = %if.end.4
  %call7.i.4 = tail call i32 @wl1271_acx_set_rx_filter(ptr noundef %wl, i8 noundef zeroext 4, i1 noundef zeroext false, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.4)
  %tobool8.not.i.4 = icmp eq i32 %call7.i.4, 0
  br i1 %tobool8.not.i.4, label %if.end17.i.4, label %if.end.i.4.wl1271_rx_filter_enable.exit_crit_edge

if.end.i.4.wl1271_rx_filter_enable.exit_crit_edge: ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1271_rx_filter_enable.exit

if.end17.i.4:                                     ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %rx_filter_enabled to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_filter_enabled, align 4
  %and.i42.i.4 = and i32 %39, -17
  store i32 %and.i42.i.4, ptr %rx_filter_enabled, align 4
  br label %out

do.end.i.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 4) #9
  br label %out

out:                                              ; preds = %do.end.i.4, %if.end17.i.4, %for.inc.3.out_crit_edge, %wl1271_rx_filter_enable.exit
  %ret.2 = phi i32 [ %call7.i.lcssa, %wl1271_rx_filter_enable.exit ], [ 0, %do.end.i.4 ], [ 0, %if.end17.i.4 ], [ 0, %for.inc.3.out_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_translate_addr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_copy_fwlog(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @wlcore_rate_to_idx(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_set_pending_regdomain_ch(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 235, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wlcore_rx._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wlcore_rx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 269, i32 6}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 306, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wl1271_rx_filter_enable._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @wl1271_rx_filter_enable._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 314, i32 3}
!15 = !{ptr @wl1271_rx_filter_enable._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @wl1271_rx_filter_enable._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ti/wlcore/io.h", i32 69, i32 6}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 124, i32 3}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @wl1271_rx_handle_data._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @wl1271_rx_handle_data._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 146, i32 3}
!28 = !{ptr @wl1271_rx_handle_data._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @wl1271_rx_handle_data._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 149, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wl1271_rx_handle_data.__UNIQUE_ID_ddebug354, !31, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!34 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 158, i32 3}
!37 = !{ptr @wl1271_rx_handle_data._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @wl1271_rx_handle_data._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 188, i32 2}
!41 = !{ptr @wl1271_rx_handle_data.__UNIQUE_ID_ddebug355, !40, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!42 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wlcore/rx.c", i32 90, i32 4}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @wl1271_rx_status._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @wl1271_rx_status._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2157531453, i64 2157531956, i64 2157531490, i64 2157531546, i64 2157531580, i64 2157531604, i64 2157531645, i64 2157531666, i64 2157531694, i64 2157531728}
!60 = !{i8 0, i8 2}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2157533406, i64 2157533909, i64 2157533443, i64 2157533499, i64 2157533533, i64 2157533557, i64 2157533598, i64 2157533619, i64 2157533647, i64 2157533681}
!63 = !{i64 2148184334, i64 2148184339, i64 2148184352, i64 2148184396, i64 2148184430, i64 2148184451}
