; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/ps.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/ps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl1271_ps_set_mode.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1271_ps_set_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wlcore/ps.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wlcore: entering psm (mode=%d,timeout=%u)\0A\00", [53 x i8] zeroinitializer }, align 32
@wl1271_ps_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wlcore: ERROR couldn't set wake up conditions\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1271_ps_set_mode._entry_ptr = internal global ptr @wl1271_ps_set_mode._entry, section ".printk_index", align 4
@wl1271_ps_set_mode.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wlcore: leaving psm\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1271_ps_set_mode._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING trying to set ps to unsupported mode %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_ps_set_mode._entry_ptr.8 = internal global ptr @wl1271_ps_set_mode._entry.6, section ".printk_index", align 4
@wl12xx_ps_link_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wl12xx_ps_link_start.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl12xx_ps_link_start\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"wlcore: start mac80211 PSM on hlid %d pkts %d clean_queues %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wl12xx_ps_link_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wlcore: ERROR could not find sta %pM for starting ps\0A\00", [40 x i8] zeroinitializer }, align 32
@wl12xx_ps_link_start._entry_ptr = internal global ptr @wl12xx_ps_link_start._entry, section ".printk_index", align 4
@wl12xx_ps_link_end.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl12xx_ps_link_end\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wlcore: end mac80211 PSM on hlid %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wl12xx_ps_link_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wlcore: ERROR could not find sta %pM for ending ps\0A\00", [42 x i8] zeroinitializer }, align 32
@wl12xx_ps_link_end._entry_ptr = internal global ptr @wl12xx_ps_link_end._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 24, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 31, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 53, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 70, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 126, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 133, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 157, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private constant [39 x i8] c"../drivers/net/wireless/ti/wlcore/ps.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 164, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 695, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 723, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @wl1271_ps_set_mode._entry, ptr @wl1271_ps_set_mode._entry.6, ptr @wl1271_ps_set_mode._entry_ptr, ptr @wl1271_ps_set_mode._entry_ptr.8, ptr @wl12xx_ps_link_end._entry, ptr @wl12xx_ps_link_end._entry_ptr, ptr @wl12xx_ps_link_start._entry, ptr @wl12xx_ps_link_start._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_ps_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_ps_set_mode._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_ps_link_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_ps_link_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_ps_set_mode(ptr noundef %wl, ptr noundef %wlvif, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3
  %dynamic_ps_timeout = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 19
  %0 = ptrtoint ptr %dynamic_ps_timeout to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %dynamic_ps_timeout, align 1
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.end98 [
    i32 0, label %entry.do.body_crit_edge
    i32 2, label %entry.do.body_crit_edge139
    i32 1, label %do.body46
  ]

entry.do.body_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %3 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end14_crit_edge, label %do.body3, !prof !52

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_ps_set_mode.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_ps_set_mode, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !53

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_ps_set_mode.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.3, i32 noundef %mode, i32 noundef %conv) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %do.body.do.end14_crit_edge
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %conn, align 1
  %listen_interval = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 3, i32 1
  %6 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %listen_interval, align 1
  %call19 = tail call i32 @wl1271_acx_wake_up_conditions(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %5, i8 noundef zeroext %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end24, label %if.end27

do.end24:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end27:                                         ; preds = %do.end14
  %conv28 = trunc i32 %mode to i8
  %call29 = tail call i32 @wl1271_cmd_ps_mode(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %conv28, i16 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %flags = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #6
  %band = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 14
  %8 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp34 = icmp eq i32 %9, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end33
  %basic_rate = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 19
  %10 = ptrtoint ptr %basic_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %basic_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp36 = icmp ult i32 %11, 16
  br i1 %cmp36, label %if.then38, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 @wl1271_acx_bet_enable(ptr noundef %wl, ptr noundef %wlvif, i1 noundef zeroext true) #6
  br label %cleanup

do.body46:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %12 = load i32, ptr @wl12xx_debug_level, align 4
  %and47 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.end74_crit_edge, label %do.body56, !prof !52

do.body46.do.end74_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end74

do.body56:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_ps_set_mode.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_ps_set_mode, %if.then68)) #6
          to label %do.end74 [label %if.then68], !srcloc !53

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_ps_set_mode.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.5) #6
  br label %do.end74

do.end74:                                         ; preds = %if.then68, %do.body56, %do.body46.do.end74_crit_edge
  %band75 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 14
  %13 = ptrtoint ptr %band75 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %band75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp76 = icmp eq i32 %14, 0
  br i1 %cmp76, label %land.lhs.true78, label %do.end74.if.end88_crit_edge

do.end74.if.end88_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

land.lhs.true78:                                  ; preds = %do.end74
  %basic_rate79 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 19
  %15 = ptrtoint ptr %basic_rate79 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %basic_rate79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %16)
  %cmp80 = icmp ult i32 %16, 16
  br i1 %cmp80, label %if.then82, label %land.lhs.true78.if.end88_crit_edge

land.lhs.true78.if.end88_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then82:                                        ; preds = %land.lhs.true78
  %call83 = tail call i32 @wl1271_acx_bet_enable(ptr noundef %wl, ptr noundef %wlvif, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then82.cleanup_crit_edge, label %if.then82.if.end88_crit_edge

if.then82.if.end88_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end88:                                         ; preds = %if.then82.if.end88_crit_edge, %land.lhs.true78.if.end88_crit_edge, %do.end74.if.end88_crit_edge
  %call90 = tail call i32 @wl1271_cmd_ps_mode(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext 1, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end88.cleanup_crit_edge, label %if.end94

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end94:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %flags95 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags95) #6
  br label %cleanup

do.end98:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %mode) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %if.end94, %if.end88.cleanup_crit_edge, %if.then82.cleanup_crit_edge, %if.then38, %land.lhs.true.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end24
  %retval.0 = phi i32 [ %call19, %do.end24 ], [ %call29, %if.end27.cleanup_crit_edge ], [ %call83, %if.then82.cleanup_crit_edge ], [ %call90, %if.end88.cleanup_crit_edge ], [ -22, %do.end98 ], [ %call90, %if.end94 ], [ %call39, %if.then38 ], [ %call29, %land.lhs.true.cleanup_crit_edge ], [ %call29, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_wake_up_conditions(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_ps_mode(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_bet_enable(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl12xx_ps_link_start(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %hlid, i1 noundef zeroext %clean_queues) local_unnamed_addr #0 align 64 {
entry:
  %filtered.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i130 = getelementptr i8, ptr %wlvif, i32 -848
  %bss_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 3
  %0 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end40, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b123 = load i1, ptr @wl12xx_ps_link_start.__already_done, align 1
  br i1 %.b123, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !52

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @wl12xx_ps_link_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 119, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %conv41 = zext i8 %hlid to i32
  %sta_hlid_map = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8, i32 0, i32 2
  %div3.i = lshr i32 %conv41, 5
  %arrayidx.i = getelementptr i32, ptr %sta_hlid_map, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv41, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool43.not = icmp eq i32 %5, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %lor.lhs.false

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end40
  %ap_ps_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 106
  %arrayidx.i126 = getelementptr i32, ptr %ap_ps_map, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i126, align 4
  %8 = and i32 %7, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool46.not = icmp eq i32 %8, 0
  br i1 %tobool46.not, label %do.body49, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body49:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %9 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %do.body49.do.end79_crit_edge, label %do.body58, !prof !52

do.body49.do.end79_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end79

do.body58:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_ps_link_start.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_ps_link_start, %if.then69)) #6
          to label %do.end79 [label %if.then69], !srcloc !53

if.then69:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  %allocated_pkts = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv41, i32 1
  %10 = ptrtoint ptr %allocated_pkts to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %allocated_pkts, align 8
  %conv71 = zext i8 %11 to i32
  %conv73 = zext i1 %clean_queues to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_ps_link_start.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.10, i32 noundef %conv41, i32 noundef %conv71, i32 noundef %conv73) #6
  br label %do.end79

do.end79:                                         ; preds = %if.then69, %do.body58, %do.body49.do.end79_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !42) #6
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %do.end79.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end79.rcu_read_lock.exit_crit_edge:            ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end79
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end79.rcu_read_lock.exit_crit_edge
  %addr = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv41, i32 3
  %call84 = tail call ptr @ieee80211_find_sta(ptr noundef %add.ptr.i130, ptr noundef %addr) #6
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %do.end89, label %if.end97

do.end89:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %addr) #9
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end97:                                         ; preds = %rcu_read_lock.exit
  tail call fastcc void @local_bh_disable() #6
  %call.i131 = tail call i32 @ieee80211_sta_ps_transition(ptr noundef nonnull %call84, i1 noundef zeroext true) #6
  tail call fastcc void @local_bh_enable() #6
  %call.i132 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i132, label %if.end97.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i135

if.end97.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i135:                               ; preds = %if.end97
  %call1.i133 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i133)
  %tobool.not.i134 = icmp eq i32 %call1.i133, 0
  br i1 %tobool.not.i134, label %land.lhs.true.i135.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i137

land.lhs.true.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i137:                              ; preds = %land.lhs.true.i135
  %.b4.i136 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i136, label %land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge, label %if.then.i138

land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i138:                                     ; preds = %land.lhs.true2.i137
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i138, %land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i135.rcu_read_unlock.exit_crit_edge, %if.end97.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !55
  %16 = tail call i32 @llvm.read_register.i32(metadata !42) #6
  %and.i.i.i.i.i139 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i139 to ptr
  %preempt_count.i.i.i.i140 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i140, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i140, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br i1 %clean_queues, label %if.then100, label %rcu_read_unlock.exit.if.end101_crit_edge

rcu_read_unlock.exit.if.end101_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then100:                                       ; preds = %rcu_read_unlock.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filtered.i) #6
  %20 = getelementptr inbounds [4 x i32], ptr %filtered.i, i32 0, i32 2
  %arrayidx.i141 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv41
  %hw.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %21 = call ptr @memset(ptr %filtered.i, i32 255, i32 16)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then100
  %i.084.i = phi i32 [ 0, %if.then100 ], [ %inc30.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr [4 x i32], ptr %filtered.i, i32 0, i32 %i.084.i
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [4 x %struct.sk_buff_head], ptr %arrayidx.i141, i32 0, i32 %i.084.i
  %call81.i = tail call ptr @skb_dequeue(ptr noundef %arrayidx2.i) #6
  %tobool.not82.i = icmp eq ptr %call81.i, null
  br i1 %tobool.not82.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.while.body.i_crit_edge

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %23 = phi i32 [ %inc.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ 0, %for.body.i.while.body.i_crit_edge ]
  %call83.i = phi ptr [ %call.i143, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call81.i, %for.body.i.while.body.i_crit_edge ]
  %inc.i = add i32 %23, 1
  %call4.i = tail call zeroext i1 @wl12xx_is_dummy_packet(ptr noundef %wl, ptr noundef nonnull %call83.i) #6
  br i1 %call4.i, label %do.end.i, label %if.end26.critedge.i, !prof !56

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 92, i32 noundef 9, ptr noundef null) #6
  br label %while.cond.backedge.i

if.end26.critedge.i:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call83.i, i32 0, i32 3
  %24 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb.i.i, align 8
  %or.i142 = or i32 %25, 256
  store i32 %or.i142, ptr %cb.i.i, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %call83.i, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %26, align 8
  %28 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i, align 4
  tail call fastcc void @local_bh_disable() #6
  tail call void @ieee80211_tx_status(ptr noundef %29, ptr noundef nonnull %call83.i) #6
  tail call fastcc void @local_bh_enable() #6
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end26.critedge.i, %do.end.i
  %call.i143 = tail call ptr @skb_dequeue(ptr noundef %arrayidx2.i) #6
  %tobool.not.i144 = icmp eq ptr %call.i143, null
  br i1 %tobool.not.i144, label %while.cond.for.inc_crit_edge.i, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.cond.for.inc_crit_edge.i:                   ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc.i, ptr %arrayidx1.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.cond.for.inc_crit_edge.i, %for.body.i.for.inc.i_crit_edge
  %inc30.i = add nuw nsw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc30.i, 4
  br i1 %exitcond.not.i, label %do.body32.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.body32.i:                                      ; preds = %for.inc.i
  %31 = getelementptr inbounds [4 x i32], ptr %filtered.i, i32 0, i32 1
  %32 = getelementptr inbounds [4 x i32], ptr %filtered.i, i32 0, i32 3
  %wl_lock.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 11
  %call36.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock.i) #6
  %wlvif.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv41, i32 7
  %33 = ptrtoint ptr %filtered.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %filtered.i, align 4
  %arrayidx46.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 0
  %35 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx46.i, align 4
  %sub.i = sub i32 %36, %34
  store i32 %sub.i, ptr %arrayidx46.i, align 4
  %37 = ptrtoint ptr %wlvif.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wlvif.i, align 4
  %tobool47.not.i = icmp eq ptr %38, null
  br i1 %tobool47.not.i, label %for.inc55.thread.i, label %for.inc55.i

for.inc55.thread.i:                               ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %31, align 4
  %arrayidx46.188.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 1
  br label %for.inc55.1.sink.split.i

for.inc55.i:                                      ; preds = %do.body32.i
  %arrayidx52.i = getelementptr %struct.wl12xx_vif, ptr %38, i32 0, i32 10, i32 0
  %41 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx52.i, align 4
  %sub53.i = sub i32 %42, %34
  store i32 %sub53.i, ptr %arrayidx52.i, align 4
  %43 = ptrtoint ptr %wlvif.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr.i = load ptr, ptr %wlvif.i, align 4
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %31, align 4
  %arrayidx46.1.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 1
  %46 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx46.1.i, align 4
  %sub.1.i = sub i32 %47, %45
  store i32 %sub.1.i, ptr %arrayidx46.1.i, align 4
  %tobool47.not.1.i = icmp eq ptr %.pr.i, null
  br i1 %tobool47.not.1.i, label %for.inc55.i.for.inc55.1.i_crit_edge, label %if.then48.1.i

for.inc55.i.for.inc55.1.i_crit_edge:              ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc55.1.i

if.then48.1.i:                                    ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx52.1.i = getelementptr %struct.wl12xx_vif, ptr %.pr.i, i32 0, i32 10, i32 1
  br label %for.inc55.1.sink.split.i

for.inc55.1.sink.split.i:                         ; preds = %if.then48.1.i, %for.inc55.thread.i
  %arrayidx46.188.sink96.i = phi ptr [ %arrayidx46.188.i, %for.inc55.thread.i ], [ %arrayidx52.1.i, %if.then48.1.i ]
  %.sink95.i = phi i32 [ %40, %for.inc55.thread.i ], [ %45, %if.then48.1.i ]
  %48 = ptrtoint ptr %arrayidx46.188.sink96.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx46.188.sink96.i, align 4
  %sub.189.i = sub i32 %49, %.sink95.i
  store i32 %sub.189.i, ptr %arrayidx46.188.sink96.i, align 4
  br label %for.inc55.1.i

for.inc55.1.i:                                    ; preds = %for.inc55.1.sink.split.i, %for.inc55.i.for.inc55.1.i_crit_edge
  %50 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %20, align 4
  %arrayidx46.2.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 2
  %52 = ptrtoint ptr %arrayidx46.2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx46.2.i, align 4
  %sub.2.i = sub i32 %53, %51
  store i32 %sub.2.i, ptr %arrayidx46.2.i, align 4
  %54 = ptrtoint ptr %wlvif.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wlvif.i, align 4
  %tobool47.not.2.i = icmp eq ptr %55, null
  br i1 %tobool47.not.2.i, label %for.inc55.2.thread.i, label %for.inc55.2.i

for.inc55.2.thread.i:                             ; preds = %for.inc55.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %32, align 4
  %arrayidx46.392.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 3
  br label %for.inc55.3.sink.split.i

for.inc55.2.i:                                    ; preds = %for.inc55.1.i
  %arrayidx52.2.i = getelementptr %struct.wl12xx_vif, ptr %55, i32 0, i32 10, i32 2
  %58 = ptrtoint ptr %arrayidx52.2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx52.2.i, align 4
  %sub53.2.i = sub i32 %59, %51
  store i32 %sub53.2.i, ptr %arrayidx52.2.i, align 4
  %60 = ptrtoint ptr %wlvif.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr91.i = load ptr, ptr %wlvif.i, align 4
  %61 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %32, align 4
  %arrayidx46.3.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 51, i32 3
  %63 = ptrtoint ptr %arrayidx46.3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx46.3.i, align 4
  %sub.3.i = sub i32 %64, %62
  store i32 %sub.3.i, ptr %arrayidx46.3.i, align 4
  %tobool47.not.3.i = icmp eq ptr %.pr91.i, null
  br i1 %tobool47.not.3.i, label %for.inc55.2.i.wl1271_ps_filter_frames.exit_crit_edge, label %if.then48.3.i

for.inc55.2.i.wl1271_ps_filter_frames.exit_crit_edge: ; preds = %for.inc55.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1271_ps_filter_frames.exit

if.then48.3.i:                                    ; preds = %for.inc55.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx52.3.i = getelementptr %struct.wl12xx_vif, ptr %.pr91.i, i32 0, i32 10, i32 3
  br label %for.inc55.3.sink.split.i

for.inc55.3.sink.split.i:                         ; preds = %if.then48.3.i, %for.inc55.2.thread.i
  %arrayidx46.392.sink98.i = phi ptr [ %arrayidx46.392.i, %for.inc55.2.thread.i ], [ %arrayidx52.3.i, %if.then48.3.i ]
  %.sink97.i = phi i32 [ %57, %for.inc55.2.thread.i ], [ %62, %if.then48.3.i ]
  %65 = ptrtoint ptr %arrayidx46.392.sink98.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx46.392.sink98.i, align 4
  %sub.393.i = sub i32 %66, %.sink97.i
  store i32 %sub.393.i, ptr %arrayidx46.392.sink98.i, align 4
  br label %wl1271_ps_filter_frames.exit

wl1271_ps_filter_frames.exit:                     ; preds = %for.inc55.3.sink.split.i, %for.inc55.2.i.wl1271_ps_filter_frames.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock.i, i32 noundef %call36.i) #6
  tail call void @wl1271_handle_tx_low_watermark(ptr noundef %wl) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filtered.i) #6
  br label %if.end101

if.end101:                                        ; preds = %wl1271_ps_filter_frames.exit, %rcu_read_unlock.exit.if.end101_crit_edge
  %67 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i126, align 4
  %or.i = or i32 %68, %4
  store i32 %or.i, ptr %arrayidx.i126, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %do.end89, %lor.lhs.false.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !55
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #6
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl12xx_ps_link_end(ptr noundef %wl, ptr noundef %wlvif, i8 noundef zeroext %hlid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i48 = getelementptr i8, ptr %wlvif, i32 -848
  %conv = zext i8 %hlid to i32
  %ap_ps_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 106
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %ap_ps_map, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %4 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end20_crit_edge, label %do.body6, !prof !52

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_ps_link_end.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_ps_link_end, %if.then15)) #6
          to label %do.end20 [label %if.then15], !srcloc !53

if.then15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_ps_link_end.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.13, i32 noundef %conv) #6
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body6, %do.body.do.end20_crit_edge
  %neg.i = xor i32 %2, -1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and.i47 = and i32 %6, %neg.i
  store i32 %and.i47, ptr %arrayidx.i, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !42) #6
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %do.end20.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end20.rcu_read_lock.exit_crit_edge:            ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end20
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end20.rcu_read_lock.exit_crit_edge
  %addr = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 102, i32 %conv, i32 3
  %call23 = tail call ptr @ieee80211_find_sta(ptr noundef %add.ptr.i48, ptr noundef %addr) #6
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end36

do.end28:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %addr) #9
  br label %end

if.end36:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @local_bh_disable() #6
  %call.i49 = tail call i32 @ieee80211_sta_ps_transition(ptr noundef nonnull %call23, i1 noundef zeroext false) #6
  tail call fastcc void @local_bh_enable() #6
  br label %end

end:                                              ; preds = %if.end36, %do.end28
  %call.i50 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i50, label %end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i53

end.rcu_read_unlock.exit_crit_edge:               ; preds = %end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i53:                                ; preds = %end
  %call1.i51 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool.not.i52 = icmp eq i32 %call1.i51, 0
  br i1 %tobool.not.i52, label %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i55

land.lhs.true.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i55:                               ; preds = %land.lhs.true.i53
  %.b4.i54 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i54, label %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, label %if.then.i56

land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i56:                                      ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i56, %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, %end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !55
  %11 = tail call i32 @llvm.read_register.i32(metadata !42) #6
  %and.i.i.i.i.i57 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i57 to ptr
  %preempt_count.i.i.i.i58 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i58, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i58, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_ps_transition(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wl12xx_is_dummy_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1271_handle_tx_low_watermark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/ps.c", i32 24, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl1271_ps_set_mode.__UNIQUE_ID_ddebug348, !1, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wlcore/ps.c", i32 31, i32 4}
!8 = !{ptr @wl1271_ps_set_mode._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wl1271_ps_set_mode._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wlcore/ps.c", i32 53, i32 3}
!12 = !{ptr @wl1271_ps_set_mode.__UNIQUE_ID_ddebug349, !11, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wlcore/ps.c", i32 70, i32 3}
!15 = !{ptr @wl1271_ps_set_mode._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @wl1271_ps_set_mode._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ti/wlcore/ps.c", i32 119, i32 6}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ti/wlcore/ps.c", i32 126, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wl12xx_ps_link_start.__UNIQUE_ID_ddebug350, !20, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ti/wlcore/ps.c", i32 133, i32 3}
!25 = !{ptr @wl12xx_ps_link_start._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @wl12xx_ps_link_start._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ti/wlcore/ps.c", i32 157, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wl12xx_ps_link_end.__UNIQUE_ID_ddebug351, !28, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ti/wlcore/ps.c", i32 164, i32 3}
!33 = !{ptr @wl12xx_ps_link_end._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @wl12xx_ps_link_end._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2148310493, i64 2148310498, i64 2148310511, i64 2148310555, i64 2148310589, i64 2148310610}
!54 = !{i64 2149324614}
!55 = !{i64 2149324880}
!56 = !{!"branch_weights", i32 1, i32 2000}
