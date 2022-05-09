; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/testmode.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/testmode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.109 }
%union.anon.109 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.130 = type { i32, i16 }
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
%struct.wl1271_link = type { [4 x %struct.sk_buff_head], i8, i8, [6 x i8], i8, i8, i8, ptr, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@wl1271_tm_policy = internal global { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 1024, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.109 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl1271_tm_cmd_test.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1271_tm_cmd_test\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ti/wlcore/testmode.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wlcore: testmode cmd test\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_tm_cmd_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014wlcore: WARNING testmode cmd test failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@wl1271_tm_cmd_test._entry_ptr = internal global ptr @wl1271_tm_cmd_test._entry, section ".printk_index", align 4
@wl1271_tm_cmd_test._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014wlcore: WARNING testmode cmd: radio status=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@wl1271_tm_cmd_test._entry_ptr.7 = internal global ptr @wl1271_tm_cmd_test._entry.5, section ".printk_index", align 4
@wl1271_tm_cmd_test._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016wlcore: testmode cmd: radio status=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@wl1271_tm_cmd_test._entry_ptr.10 = internal global ptr @wl1271_tm_cmd_test._entry.8, section ".printk_index", align 4
@wl1271_tm_cmd_interrogate.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl1271_tm_cmd_interrogate\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: testmode cmd interrogate\0A\00", [62 x i8] zeroinitializer }, align 32
@wl1271_tm_cmd_interrogate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING testmode cmd interrogate failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1271_tm_cmd_interrogate._entry_ptr = internal global ptr @wl1271_tm_cmd_interrogate._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wl1271_tm_cmd_configure.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1271_tm_cmd_configure\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wlcore: testmode cmd configure\0A\00", [32 x i8] zeroinitializer }, align 32
@wl1271_tm_cmd_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014wlcore: WARNING testmode cmd configure failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1271_tm_cmd_configure._entry_ptr = internal global ptr @wl1271_tm_cmd_configure._entry, section ".printk_index", align 4
@wl1271_tm_cmd_set_plt_mode.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1271_tm_cmd_set_plt_mode\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wlcore: testmode cmd set plt mode\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"wl1271_tm_policy\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 48, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 65, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 94, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 107, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 110, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 147, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 176, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 213, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 232, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [45 x i8] c"../drivers/net/wireless/ti/wlcore/testmode.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 281, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @wl1271_tm_cmd_configure._entry, ptr @wl1271_tm_cmd_configure._entry_ptr, ptr @wl1271_tm_cmd_interrogate._entry, ptr @wl1271_tm_cmd_interrogate._entry_ptr, ptr @wl1271_tm_cmd_test._entry, ptr @wl1271_tm_cmd_test._entry.5, ptr @wl1271_tm_cmd_test._entry.8, ptr @wl1271_tm_cmd_test._entry_ptr, ptr @wl1271_tm_cmd_test._entry_ptr.10, ptr @wl1271_tm_cmd_test._entry_ptr.7, ptr @wl1271_tm_policy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_tm_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_tm_cmd_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_tm_cmd_test._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_tm_cmd_test._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_tm_cmd_interrogate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_tm_cmd_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_tm_cmd(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %mac_addr.i = alloca [6 x i8], align 1
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #7
  %2 = call ptr @memset(ptr %tb, i32 255, i32 24)
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %data, i32 noundef %len, ptr noundef nonnull @wl1271_tm_policy, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %plt_mode = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ne i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp6.not = icmp eq i32 %7, 5
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end8.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb14
    i32 5, label %sw.bb17
    i32 7, label %sw.bb20
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call fastcc i32 @wl1271_tm_cmd_test(ptr noundef %1, ptr noundef nonnull %tb)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call fastcc i32 @wl1271_tm_cmd_interrogate(ptr noundef %1, ptr noundef nonnull %tb)
  br label %cleanup

sw.bb14:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call fastcc i32 @wl1271_tm_cmd_configure(ptr noundef %1, ptr noundef nonnull %tb)
  br label %cleanup

sw.bb17:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call fastcc i32 @wl1271_tm_cmd_set_plt_mode(ptr noundef %1, ptr noundef nonnull %tb)
  br label %cleanup

sw.bb20:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr.i) #7
  %11 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 1
  %12 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 2
  %13 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 3
  %14 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 4
  %15 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 5
  %mutex.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  %16 = call ptr @memset(ptr %mac_addr.i, i32 255, i32 6)
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %plt.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %plt.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %plt.i, align 8, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %sw.bb20.wl12xx_tm_cmd_get_mac.exit_crit_edge, label %if.end.i

sw.bb20.wl12xx_tm_cmd_get_mac.exit_crit_edge:     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %wl12xx_tm_cmd_get_mac.exit

if.end.i:                                         ; preds = %sw.bb20
  %fuse_oui_addr.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 28
  %19 = ptrtoint ptr %fuse_oui_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fuse_oui_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fuse_nic_addr.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 29
  %21 = ptrtoint ptr %fuse_nic_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fuse_nic_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.i = icmp eq i32 %22, 0
  br i1 %cmp1.i, label %land.lhs.true.i.wl12xx_tm_cmd_get_mac.exit_crit_edge, label %land.lhs.true.i.if.end3.i_crit_edge

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

land.lhs.true.i.wl12xx_tm_cmd_get_mac.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wl12xx_tm_cmd_get_mac.exit

if.end3.i:                                        ; preds = %land.lhs.true.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %shr.i = lshr i32 %20, 16
  %conv.i = trunc i32 %shr.i to i8
  %23 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %mac_addr.i, align 1
  %shr6.i = lshr i32 %20, 8
  %conv7.i = trunc i32 %shr6.i to i8
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv7.i, ptr %11, align 1
  %conv10.i = trunc i32 %20 to i8
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10.i, ptr %12, align 1
  %fuse_nic_addr12.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 29
  %26 = ptrtoint ptr %fuse_nic_addr12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fuse_nic_addr12.i, align 8
  %shr13.i = lshr i32 %27, 16
  %conv14.i = trunc i32 %shr13.i to i8
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv14.i, ptr %13, align 1
  %shr17.i = lshr i32 %27, 8
  %conv18.i = trunc i32 %shr17.i to i8
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv18.i, ptr %14, align 1
  %conv21.i = trunc i32 %27 to i8
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv21.i, ptr %15, align 1
  %hw.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy.i, align 8
  %call.i.i = call ptr @__cfg80211_alloc_reply_skb(ptr noundef %34, i32 noundef 45, i32 noundef 69, i32 noundef 6) #7
  %tobool23.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool23.not.i, label %if.end3.i.wl12xx_tm_cmd_get_mac.exit_crit_edge, label %if.end25.i

if.end3.i.wl12xx_tm_cmd_get_mac.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wl12xx_tm_cmd_get_mac.exit

if.end25.i:                                       ; preds = %if.end3.i
  %call26.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %mac_addr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  br label %wl12xx_tm_cmd_get_mac.exit

if.end29.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1.i = call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %call.i.i) #7
  br label %wl12xx_tm_cmd_get_mac.exit

wl12xx_tm_cmd_get_mac.exit:                       ; preds = %if.end29.i, %if.then28.i, %if.end3.i.wl12xx_tm_cmd_get_mac.exit_crit_edge, %land.lhs.true.i.wl12xx_tm_cmd_get_mac.exit_crit_edge, %sw.bb20.wl12xx_tm_cmd_get_mac.exit_crit_edge
  %ret.0.i = phi i32 [ -90, %if.then28.i ], [ %call.i1.i, %if.end29.i ], [ -22, %sw.bb20.wl12xx_tm_cmd_get_mac.exit_crit_edge ], [ -95, %land.lhs.true.i.wl12xx_tm_cmd_get_mac.exit_crit_edge ], [ -12, %if.end3.i.wl12xx_tm_cmd_get_mac.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %wl12xx_tm_cmd_get_mac.exit, %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %wl12xx_tm_cmd_get_mac.exit ], [ %call19, %sw.bb17 ], [ %call16, %sw.bb14 ], [ %call13, %sw.bb11 ], [ %call10, %sw.bb ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %if.end3.cleanup_crit_edge ], [ -95, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_tm_cmd_test(ptr noundef %wl, ptr nocapture noundef readonly %tb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !50

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_tm_cmd_test.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_tm_cmd_test, %if.then11)) #7
          to label %do.end14 [label %if.then11], !srcloc !51

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_tm_cmd_test.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.3) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %2, null
  br i1 %tobool15.not, label %do.end14.cleanup95_crit_edge, label %if.end17

do.end14.cleanup95_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup95

if.end17:                                         ; preds = %do.end14
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv.i = zext i16 %4 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %arrayidx22 = getelementptr ptr, ptr %tb, i32 2
  %5 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %6, null
  br i1 %tobool23.not, label %if.end17.if.end27_crit_edge, label %if.then24

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i.i, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end17.if.end27_crit_edge
  %answer.0 = phi i8 [ %8, %if.then24 ], [ 0, %if.end17.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.i, 576
  br i1 %cmp, label %if.end27.cleanup95_crit_edge, label %if.end29

if.end27.cleanup95_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup95

if.end29:                                         ; preds = %if.end27
  %mutex = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp30.not = icmp eq i32 %10, 2
  br i1 %cmp30.not, label %if.end38, label %if.end29.out_crit_edge, !prof !50

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end38:                                         ; preds = %if.end29
  %dev = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp40 = icmp slt i32 %call.i, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !53
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then41.out_crit_edge, label %do.end11.i.i.i.i

if.then41.out_crit_edge:                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  br label %out

if.end43:                                         ; preds = %if.end38
  %call44 = tail call i32 @wl1271_cmd_test(ptr noundef %wl, ptr noundef %add.ptr.i, i32 noundef %sub.i, i8 noundef zeroext %answer.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call44) #10
  br label %out_sleep

if.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %answer.0)
  %tobool53.not = icmp eq i8 %answer.0, 0
  br i1 %tobool53.not, label %if.end52.out_sleep_crit_edge, label %if.then54

if.end52.out_sleep_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_sleep

if.then54:                                        ; preds = %if.end52
  %radio_status55 = getelementptr i8, ptr %2, i32 520
  %16 = ptrtoint ptr %radio_status55 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %radio_status55, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %test = getelementptr i8, ptr %2, i32 8
  %19 = ptrtoint ptr %test to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp56 = icmp eq i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp59 = icmp slt i16 %18, 0
  %or.cond = select i1 %cmp56, i1 %cmp59, i1 false
  %conv58 = sext i16 %18 to i32
  %.str.6..str.9 = select i1 %or.cond, ptr @.str.6, ptr @.str.9
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6..str.9, i32 noundef %conv58) #10
  %sub.i130 = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %sub.i130, 131068
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy, align 8
  %call.i131 = tail call ptr @__cfg80211_alloc_reply_skb(ptr noundef %24, i32 noundef 45, i32 noundef 69, i32 noundef %and.i) #7
  %tobool77.not = icmp eq ptr %call.i131, null
  br i1 %tobool77.not, label %if.then54.out_sleep_crit_edge, label %if.end79

if.then54.out_sleep_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_sleep

if.end79:                                         ; preds = %if.then54
  %call80 = tail call i32 @nla_put(ptr noundef nonnull %call.i131, i32 noundef 3, i32 noundef %sub.i, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i131, i32 noundef 0) #7
  br label %out_sleep

if.end83:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %call.i132 = tail call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %call.i131) #7
  br label %out_sleep

out_sleep:                                        ; preds = %if.end83, %if.then82, %if.then54.out_sleep_crit_edge, %if.end52.out_sleep_crit_edge, %do.end49
  %ret.1 = phi i32 [ %call44, %do.end49 ], [ %call44, %if.end52.out_sleep_crit_edge ], [ -90, %if.then82 ], [ -12, %if.then54.out_sleep_crit_edge ], [ %call.i132, %if.end83 ]
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call.i133 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i133, ptr %last_busy.i, align 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call.i134 = tail call i32 @__pm_runtime_suspend(ptr noundef %29, i32 noundef 13) #7
  br label %out

out:                                              ; preds = %out_sleep, %do.end11.i.i.i.i, %if.then41.out_crit_edge, %if.end29.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_sleep ], [ -22, %if.end29.out_crit_edge ], [ %call.i, %if.then41.out_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup95

cleanup95:                                        ; preds = %out, %if.end27.cleanup95_crit_edge, %do.end14.cleanup95_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -22, %do.end14.cleanup95_crit_edge ], [ -90, %if.end27.cleanup95_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_tm_cmd_interrogate(ptr noundef %wl, ptr nocapture noundef readonly %tb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !50

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_tm_cmd_interrogate.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_tm_cmd_interrogate, %if.then11)) #7
          to label %do.end14 [label %if.then11], !srcloc !51

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_tm_cmd_interrogate.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.12) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %2, null
  br i1 %tobool15.not, label %do.end14.cleanup_crit_edge, label %if.end17

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %do.end14
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr.i.i, align 1
  %mutex = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not = icmp eq i32 %6, 2
  br i1 %cmp.not, label %if.end27, label %if.end17.out_crit_edge, !prof !50

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end27:                                         ; preds = %if.end17
  %dev = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp29 = icmp slt i32 %call.i, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !53
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then30.out_crit_edge, label %do.end11.i.i.i.i

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  br label %out

if.end32:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 576) #11
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %if.end32.out_sleep_crit_edge, label %if.end36

if.end32.out_sleep_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_sleep

if.end36:                                         ; preds = %if.end32
  %conv = zext i8 %4 to i16
  %call37 = tail call i32 @wl1271_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 576) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call37) #10
  br label %out_free

if.end46:                                         ; preds = %if.end36
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy, align 8
  %call.i85 = tail call ptr @__cfg80211_alloc_reply_skb(ptr noundef %16, i32 noundef 45, i32 noundef 69, i32 noundef 576) #7
  %tobool48.not = icmp eq ptr %call.i85, null
  br i1 %tobool48.not, label %if.end46.out_free_crit_edge, label %if.end50

if.end46.out_free_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end50:                                         ; preds = %if.end46
  %call51 = tail call i32 @nla_put(ptr noundef nonnull %call.i85, i32 noundef 3, i32 noundef 576, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i85, i32 noundef 0) #7
  br label %out_free

if.end54:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %call.i86 = tail call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %call.i85) #7
  br label %out_free

out_free:                                         ; preds = %if.end54, %if.then53, %if.end46.out_free_crit_edge, %do.end43
  %ret.0 = phi i32 [ %call37, %do.end43 ], [ -90, %if.then53 ], [ %call.i86, %if.end54 ], [ -12, %if.end46.out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out_sleep

out_sleep:                                        ; preds = %out_free, %if.end32.out_sleep_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free ], [ -12, %if.end32.out_sleep_crit_edge ]
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i87 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i87, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i88 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #7
  br label %out

out:                                              ; preds = %out_sleep, %do.end11.i.i.i.i, %if.then30.out_crit_edge, %if.end17.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_sleep ], [ -22, %if.end17.out_crit_edge ], [ %call.i, %if.then30.out_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -22, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_tm_cmd_configure(ptr noundef %wl, ptr nocapture noundef readonly %tb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !50

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_tm_cmd_configure.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_tm_cmd_configure, %if.then11)) #7
          to label %do.end14 [label %if.then11], !srcloc !51

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_tm_cmd_configure.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.15) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %2, null
  br i1 %tobool15.not, label %do.end14.cleanup_crit_edge, label %if.end17

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %do.end14
  %arrayidx18 = getelementptr ptr, ptr %tb, i32 4
  %3 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %4, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %2, align 2
  %conv.i = zext i16 %6 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.i, 576
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end29

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i.i, align 1
  %mutex = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %conv = zext i8 %8 to i16
  %call30 = tail call i32 @wl1271_cmd_configure(ptr noundef %wl, i16 noundef zeroext %conv, ptr noundef %add.ptr.i, i32 noundef %sub.i) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp32 = icmp slt i32 %call30, 0
  br i1 %cmp32, label %do.end37, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call30) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end29.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %do.end37 ], [ -22, %do.end14.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -90, %if.end21.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_tm_cmd_set_plt_mode(ptr noundef %wl, ptr nocapture noundef readonly %tb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !50

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_tm_cmd_set_plt_mode.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_tm_cmd_set_plt_mode, %if.then11)) #7
          to label %do.end14 [label %if.then11], !srcloc !51

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_tm_cmd_set_plt_mode.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.18) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  %arrayidx = getelementptr ptr, ptr %tb, i32 5
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %2, null
  br i1 %tobool15.not, label %do.end14.cleanup_crit_edge, label %if.end17

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %do.end14
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %4, label %if.end17.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end17.sw.bb21_crit_edge
    i32 3, label %if.end17.sw.bb21_crit_edge32
    i32 2, label %sw.bb23
  ]

if.end17.sw.bb21_crit_edge32:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end17.sw.bb21_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @wl1271_plt_stop(ptr noundef %wl) #7
  br label %cleanup

sw.bb21:                                          ; preds = %if.end17.sw.bb21_crit_edge, %if.end17.sw.bb21_crit_edge32
  %call22 = tail call i32 @wl1271_plt_start(ptr noundef %wl, i32 noundef %4) #7
  br label %cleanup

sw.bb23:                                          ; preds = %if.end17
  %call.i = tail call i32 @wl1271_plt_start(ptr noundef %wl, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb23.cleanup_crit_edge, label %if.end.i

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb23
  %mutex.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %hw.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 8
  %call.i.i = tail call ptr @__cfg80211_alloc_reply_skb(ptr noundef %9, i32 noundef 45, i32 noundef 69, i32 noundef 8) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.out_mutex.i_crit_edge, label %if.end4.i

if.end.i.out_mutex.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_mutex.i

if.end4.i:                                        ; preds = %if.end.i
  %fem_manuf.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 16
  %call5.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 1, ptr noundef %fem_manuf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  br label %out_mutex.i

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1.i = tail call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %call.i.i) #7
  br label %out_mutex.i

out_mutex.i:                                      ; preds = %if.end8.i, %if.then7.i, %if.end.i.out_mutex.i_crit_edge
  %ret.0.i = phi i32 [ -90, %if.then7.i ], [ %call.i1.i, %if.end8.i ], [ -12, %if.end.i.out_mutex.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  %call11.i = tail call i32 @wl1271_plt_stop(ptr noundef %wl) #7
  br label %cleanup

cleanup:                                          ; preds = %out_mutex.i, %sw.bb23.cleanup_crit_edge, %sw.bb21, %sw.bb, %if.end17.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end14.cleanup_crit_edge ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb ], [ -22, %if.end17.cleanup_crit_edge ], [ %call.i, %sw.bb23.cleanup_crit_edge ], [ %ret.0.i, %out_mutex.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_test(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__cfg80211_alloc_reply_skb(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_vendor_cmd_reply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_interrogate(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_configure(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_plt_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_plt_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @wl1271_tm_policy, !1, !"wl1271_tm_policy", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 48, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 65, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @wl1271_tm_cmd_test.__UNIQUE_ID_ddebug349, !3, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 94, i32 3}
!10 = !{ptr @wl1271_tm_cmd_test._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @wl1271_tm_cmd_test._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 107, i32 4}
!14 = !{ptr @wl1271_tm_cmd_test._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @wl1271_tm_cmd_test._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 110, i32 4}
!18 = !{ptr @wl1271_tm_cmd_test._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @wl1271_tm_cmd_test._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 147, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wl1271_tm_cmd_interrogate.__UNIQUE_ID_ddebug350, !21, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 176, i32 3}
!26 = !{ptr @wl1271_tm_cmd_interrogate._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wl1271_tm_cmd_interrogate._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 213, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wl1271_tm_cmd_configure.__UNIQUE_ID_ddebug351, !29, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 232, i32 3}
!34 = !{ptr @wl1271_tm_cmd_configure._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @wl1271_tm_cmd_configure._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wlcore/testmode.c", i32 281, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wl1271_tm_cmd_set_plt_mode.__UNIQUE_ID_ddebug352, !37, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2148429492, i64 2148429497, i64 2148429510, i64 2148429554, i64 2148429588, i64 2148429609}
!52 = !{i64 2148609288}
!53 = !{i64 1095888, i64 1095913, i64 1095935, i64 1095951, i64 1095963, i64 1095983, i64 1096007, i64 1096023, i64 1096035}
!54 = !{i64 2148609476}
