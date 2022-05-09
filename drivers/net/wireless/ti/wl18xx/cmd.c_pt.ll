; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl18xx/cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl18xx/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_channel_switch = type { i64, i32, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.129, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.132 }
%struct.list_head = type { ptr, ptr }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.132 = type { [0 x i8] }
%struct.wl18xx_cmd_channel_switch = type { %struct.wl1271_cmd_header, i8, i8, i8, i8, i32, i8, i8, [2 x i8] }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
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
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.wl1271_link = type { [4 x %struct.sk_buff_head], i8, i8, [6 x i8], i8, i8, i8, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wlcore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl18xx_cmd_smart_config_start = type { %struct.wl1271_cmd_header, i32 }
%struct.wl18xx_cmd_smart_config_set_group_key = type { %struct.wl1271_cmd_header, i32, [16 x i8] }
%struct.wlcore_cmd_cac_start = type { %struct.wl1271_cmd_header, i8, i8, i8, i8 }
%struct.wl18xx_cmd_dfs_radar_debug = type { %struct.wl1271_cmd_header, i8, [3 x i8] }
%struct.wl18xx_cmd_dfs_master_restart = type { %struct.wl1271_cmd_header, i8, [3 x i8] }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl18xx_cmd_channel_switch.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl18xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl18xx_cmd_channel_switch\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ti/wl18xx/cmd.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wlcore: cmd channel switch (count=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@wl18xx_cmd_channel_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wlcore: ERROR invalid channel switch band: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@wl18xx_cmd_channel_switch._entry_ptr = internal global ptr @wl18xx_cmd_channel_switch._entry, section ".printk_index", align 4
@wl18xx_cmd_channel_switch._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wlcore: ERROR failed to send channel switch command\0A\00", [41 x i8] zeroinitializer }, align 32
@wl18xx_cmd_channel_switch._entry_ptr.7 = internal global ptr @wl18xx_cmd_channel_switch._entry.5, section ".printk_index", align 4
@wl18xx_cmd_smart_config_start.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl18xx_cmd_smart_config_start\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"wlcore: cmd smart config start group_bitmap=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@wl18xx_cmd_smart_config_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wlcore: ERROR failed to send smart config start command\0A\00", [37 x i8] zeroinitializer }, align 32
@wl18xx_cmd_smart_config_start._entry_ptr = internal global ptr @wl18xx_cmd_smart_config_start._entry, section ".printk_index", align 4
@wl18xx_cmd_smart_config_stop.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl18xx_cmd_smart_config_stop\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wlcore: cmd smart config stop\0A\00", [33 x i8] zeroinitializer }, align 32
@wl18xx_cmd_smart_config_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013wlcore: ERROR failed to send smart config stop command\0A\00", [38 x i8] zeroinitializer }, align 32
@wl18xx_cmd_smart_config_stop._entry_ptr = internal global ptr @wl18xx_cmd_smart_config_stop._entry, section ".printk_index", align 4
@wl18xx_cmd_smart_config_set_group_key.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wl18xx_cmd_smart_config_set_group_key\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"wlcore: cmd smart config set group key id=0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@wl18xx_cmd_smart_config_set_group_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wlcore: ERROR invalid group key size: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@wl18xx_cmd_smart_config_set_group_key._entry_ptr = internal global ptr @wl18xx_cmd_smart_config_set_group_key._entry, section ".printk_index", align 4
@wl18xx_cmd_smart_config_set_group_key._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013wlcore: ERROR failed to send smart config set group key cmd\0A\00", [33 x i8] zeroinitializer }, align 32
@wl18xx_cmd_smart_config_set_group_key._entry_ptr.19 = internal global ptr @wl18xx_cmd_smart_config_set_group_key._entry.17, section ".printk_index", align 4
@wl18xx_cmd_set_cac.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl18xx_cmd_set_cac\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wlcore: cmd cac (channel %d) %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@wl18xx_cmd_set_cac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wlcore: ERROR failed to send cac command\0A\00", [52 x i8] zeroinitializer }, align 32
@wl18xx_cmd_set_cac._entry_ptr = internal global ptr @wl18xx_cmd_set_cac._entry, section ".printk_index", align 4
@wl18xx_cmd_radar_detection_debug.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wl18xx_cmd_radar_detection_debug\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"wlcore: cmd radar detection debug (chan %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@wl18xx_cmd_radar_detection_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013wlcore: ERROR failed to send radar detection debug command\0A\00", [34 x i8] zeroinitializer }, align 32
@wl18xx_cmd_radar_detection_debug._entry_ptr = internal global ptr @wl18xx_cmd_radar_detection_debug._entry, section ".printk_index", align 4
@wl18xx_cmd_dfs_master_restart.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl18xx_cmd_dfs_master_restart\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"wlcore: cmd dfs master restart (role %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@wl18xx_cmd_dfs_master_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wlcore: ERROR failed to send dfs master restart command\0A\00", [37 x i8] zeroinitializer }, align 32
@wl18xx_cmd_dfs_master_restart._entry_ptr = internal global ptr @wl18xx_cmd_dfs_master_restart._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 22, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 44, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 63, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 78, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 91, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 106, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 116, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 132, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 136, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 152, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 167, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 184, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 198, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 210, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 224, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [40 x i8] c"../drivers/net/wireless/ti/wl18xx/cmd.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 236, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @wl18xx_cmd_channel_switch._entry, ptr @wl18xx_cmd_channel_switch._entry.5, ptr @wl18xx_cmd_channel_switch._entry_ptr, ptr @wl18xx_cmd_channel_switch._entry_ptr.7, ptr @wl18xx_cmd_dfs_master_restart._entry, ptr @wl18xx_cmd_dfs_master_restart._entry_ptr, ptr @wl18xx_cmd_radar_detection_debug._entry, ptr @wl18xx_cmd_radar_detection_debug._entry_ptr, ptr @wl18xx_cmd_set_cac._entry, ptr @wl18xx_cmd_set_cac._entry_ptr, ptr @wl18xx_cmd_smart_config_set_group_key._entry, ptr @wl18xx_cmd_smart_config_set_group_key._entry.17, ptr @wl18xx_cmd_smart_config_set_group_key._entry_ptr, ptr @wl18xx_cmd_smart_config_set_group_key._entry_ptr.19, ptr @wl18xx_cmd_smart_config_start._entry, ptr @wl18xx_cmd_smart_config_start._entry_ptr, ptr @wl18xx_cmd_smart_config_stop._entry, ptr @wl18xx_cmd_smart_config_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_cmd_channel_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_cmd_channel_switch._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_cmd_smart_config_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_cmd_smart_config_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_cmd_smart_config_set_group_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_cmd_smart_config_set_group_key._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_cmd_set_cac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_cmd_radar_detection_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_cmd_dfs_master_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_cmd_channel_switch(ptr noundef %wl, ptr noundef %wlvif, ptr nocapture noundef readonly %ch_switch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !77

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_cmd_channel_switch.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_cmd_channel_switch, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !78

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %count = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 4
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %count, align 4
  %conv = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_cmd_channel_switch.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.3, i32 noundef %conv) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %do.end14
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %4 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %role_id, align 2
  %role_id19 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %role_id19 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %role_id19, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 3
  %7 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chandef, align 8
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hw_value, align 2
  %conv20 = trunc i16 %10 to i8
  %channel = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv20, ptr %channel, align 1
  %count21 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 4
  %12 = ptrtoint ptr %count21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %count21, align 4
  %switch_time = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %switch_time to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %switch_time, align 2
  %block_tx = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 2
  %15 = ptrtoint ptr %block_tx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %block_tx, align 4, !range !79
  %stop_tx = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %stop_tx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %stop_tx, align 1
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %8, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.end31 [
    i32 0, label %if.end18.sw.epilog_crit_edge
    i32 1, label %sw.bb27
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end31:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %19) #9
  br label %out_free

sw.epilog:                                        ; preds = %sw.bb27, %if.end18.sw.epilog_crit_edge
  %.sink = phi i8 [ 1, %sw.bb27 ], [ 0, %if.end18.sw.epilog_crit_edge ]
  %band28 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %band28 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %band28, align 1
  %bss_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 3
  %22 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp = icmp eq i8 %23, 2
  %ops.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  br i1 %cmp, label %if.then39, label %if.else

if.then39:                                        ; preds = %sw.epilog
  %sta_get_ap_rate_mask.i = getelementptr inbounds %struct.wlcore_ops, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %sta_get_ap_rate_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sta_get_ap_rate_mask.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.body1.i, label %if.then39.if.end43.sink.split_crit_edge

if.then39.if.end43.sink.split_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.sink.split

do.body1.i:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ti/wl18xx/../wlcore/hw_ops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 108, 0\0A.popsection", ""() #5, !srcloc !80
  unreachable

if.else:                                          ; preds = %sw.epilog
  %ap_get_mimo_wide_rate_mask.i = getelementptr inbounds %struct.wlcore_ops, ptr %25, i32 0, i32 25
  %28 = ptrtoint ptr %ap_get_mimo_wide_rate_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ap_get_mimo_wide_rate_mask.i, align 4
  %tobool.not.i87 = icmp eq ptr %29, null
  br i1 %tobool.not.i87, label %if.else.if.end43_crit_edge, label %if.else.if.end43.sink.split_crit_edge

if.else.if.end43.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.sink.split

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end43.sink.split:                              ; preds = %if.else.if.end43.sink.split_crit_edge, %if.then39.if.end43.sink.split_crit_edge
  %.sink91 = phi ptr [ %27, %if.then39.if.end43.sink.split_crit_edge ], [ %29, %if.else.if.end43.sink.split_crit_edge ]
  %call.i88 = tail call i32 %.sink91(ptr noundef %wl, ptr noundef %wlvif) #5
  %phi.bo = or i32 %call.i88, 2096895
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else.if.end43_crit_edge
  %supported_rates.0.in = phi i32 [ 2096895, %if.else.if.end43_crit_edge ], [ %phi.bo, %if.end43.sink.split ]
  %p2p = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 4
  %30 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %p2p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool44.not = icmp eq i8 %31, 0
  %and46 = and i32 %supported_rates.0.in, -40
  %spec.select = select i1 %tobool44.not, i32 %supported_rates.0.in, i32 %and46
  %32 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %local_supported_rates = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %local_supported_rates to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %local_supported_rates, align 8
  %channel_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 16
  %34 = ptrtoint ptr %channel_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel_type, align 4
  %conv48 = trunc i32 %35 to i8
  %channel_type49 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, ptr %call7.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %channel_type49 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv48, ptr %channel_type49, align 4
  %call50 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 20, ptr noundef nonnull %call7.i.i, i32 noundef 16, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end56, label %if.end43.out_free_crit_edge

if.end43.out_free_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end56:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %out_free

out_free:                                         ; preds = %do.end56, %if.end43.out_free_crit_edge, %do.end31
  %ret.0 = phi i32 [ -22, %do.end31 ], [ %call50, %do.end56 ], [ %call50, %if.end43.out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %out

out:                                              ; preds = %out_free, %do.end14.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free ], [ -12, %do.end14.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_send(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_cmd_smart_config_start(ptr noundef %wl, i32 noundef %group_bitmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !77

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_cmd_smart_config_start.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_cmd_smart_config_start, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !78

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_cmd_smart_config_start.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.9, i32 noundef %group_bitmap) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %do.end14
  %2 = tail call i32 @llvm.bswap.i32(i32 %group_bitmap)
  %group_id_bitmask = getelementptr inbounds %struct.wl18xx_cmd_smart_config_start, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %group_id_bitmask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %group_id_bitmask, align 4
  %call19 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 61, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end18.out_free_crit_edge

if.end18.out_free_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %out_free

out_free:                                         ; preds = %do.end23, %if.end18.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %out

out:                                              ; preds = %out_free, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call19, %out_free ], [ -12, %do.end14.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_cmd_smart_config_stop(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !77

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_cmd_smart_config_stop.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_cmd_smart_config_stop, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !78

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_cmd_smart_config_stop.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.12) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.out_crit_edge, label %if.end18

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %do.end14
  %call19 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 62, ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end18.out_free_crit_edge

if.end18.out_free_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %out_free

out_free:                                         ; preds = %do.end23, %if.end18.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %out

out:                                              ; preds = %out_free, %do.end14.out_crit_edge
  %ret.0 = phi i32 [ %call19, %out_free ], [ -12, %do.end14.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_cmd_smart_config_set_group_key(ptr noundef %wl, i16 noundef zeroext %group_id, i8 noundef zeroext %key_len, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !77

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_cmd_smart_config_set_group_key.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_cmd_smart_config_set_group_key, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !78

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %group_id to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_cmd_smart_config_set_group_key.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.15, i32 noundef %conv) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %key_len)
  %cmp.not = icmp eq i8 %key_len, 16
  br i1 %cmp.not, label %if.end24, label %do.end20

do.end20:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %conv15 = zext i8 %key_len to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv15) #9
  br label %cleanup

if.end24:                                         ; preds = %do.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #8
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %conv29 = zext i16 %group_id to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv29)
  %group_id30 = getelementptr inbounds %struct.wl18xx_cmd_smart_config_set_group_key, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %group_id30 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %group_id30, align 4
  %key31 = getelementptr inbounds %struct.wl18xx_cmd_smart_config_set_group_key, ptr %call7.i.i, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %key31, ptr %key, i32 16)
  %call33 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 63, ptr noundef nonnull %call7.i.i, i32 noundef 24, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end39, label %if.end28.out_free_crit_edge

if.end28.out_free_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %out_free

out_free:                                         ; preds = %do.end39, %if.end28.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end24.cleanup_crit_edge, %do.end20
  %retval.0 = phi i32 [ -7, %do.end20 ], [ %call33, %out_free ], [ -12, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_cmd_set_cac(ptr noundef %wl, ptr nocapture noundef readonly %wlvif, i1 noundef zeroext %start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body3, !prof !77

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_cmd_set_cac.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_cmd_set_cac, %if.then12)) #5
          to label %do.end16 [label %if.then12], !srcloc !78

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %channel = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 15
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel, align 8
  %cond = select i1 %start, ptr @.str.22, ptr @.str.23
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_cmd_set_cac.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.21, i32 noundef %2, ptr noundef nonnull %cond) #5
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body3, %entry.do.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #8
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %do.end16.cleanup_crit_edge, label %if.end20

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %4 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %role_id, align 2
  %role_id21 = getelementptr inbounds %struct.wlcore_cmd_cac_start, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %role_id21 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %role_id21, align 4
  %channel22 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 15
  %7 = ptrtoint ptr %channel22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel22, align 8
  %conv = trunc i32 %8 to i8
  %channel23 = getelementptr inbounds %struct.wlcore_cmd_cac_start, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %channel23 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %channel23, align 1
  %band = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 14
  %10 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then25, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %band26 = getelementptr inbounds %struct.wlcore_cmd_cac_start, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %band26 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %band26, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end20.if.end27_crit_edge
  %channel_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 16
  %13 = ptrtoint ptr %channel_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel_type, align 4
  %conv28 = trunc i32 %14 to i8
  %call29 = tail call zeroext i8 @wlcore_get_native_channel_type(i8 noundef zeroext %conv28) #5
  %bandwidth = getelementptr inbounds %struct.wlcore_cmd_cac_start, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call29, ptr %bandwidth, align 1
  %conv33 = select i1 %start, i16 64, i16 65
  %call34 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext %conv33, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.end27.out_free_crit_edge

if.end27.out_free_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end40:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %out_free

out_free:                                         ; preds = %do.end40, %if.end27.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %out_free ], [ -12, %do.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @wlcore_get_native_channel_type(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_cmd_radar_detection_debug(ptr noundef %wl, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !77

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_cmd_radar_detection_debug.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_cmd_radar_detection_debug, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !78

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %channel to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_cmd_radar_detection_debug.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.26, i32 noundef %conv) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.cleanup_crit_edge, label %if.end18

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %channel19 = getelementptr inbounds %struct.wl18xx_cmd_dfs_radar_debug, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %channel19 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %channel, ptr %channel19, align 4
  %call20 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 67, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end25, label %if.end18.out_free_crit_edge

if.end18.out_free_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %out_free

out_free:                                         ; preds = %do.end25, %if.end18.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %out_free ], [ -12, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_cmd_dfs_master_restart(ptr noundef %wl, ptr nocapture noundef readonly %wlvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %0 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3, !prof !77

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_cmd_dfs_master_restart.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_cmd_dfs_master_restart, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !78

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %role_id = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %1 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %role_id, align 2
  %conv = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_cmd_dfs_master_restart.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.29, i32 noundef %conv) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body3, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.cleanup_crit_edge, label %if.end18

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %role_id19 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 5
  %4 = ptrtoint ptr %role_id19 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %role_id19, align 2
  %role_id20 = getelementptr inbounds %struct.wl18xx_cmd_dfs_master_restart, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %role_id20 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %role_id20, align 4
  %call21 = tail call i32 @wl1271_cmd_send(ptr noundef %wl, i16 noundef zeroext 66, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end26, label %if.end18.out_free_crit_edge

if.end18.out_free_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  br label %out_free

out_free:                                         ; preds = %do.end26, %if.end18.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %out_free ], [ -12, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 22, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl18xx_cmd_channel_switch.__UNIQUE_ID_ddebug348, !1, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 44, i32 3}
!8 = !{ptr @wl18xx_cmd_channel_switch._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wl18xx_cmd_channel_switch._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 63, i32 3}
!12 = !{ptr @wl18xx_cmd_channel_switch._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @wl18xx_cmd_channel_switch._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 78, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wl18xx_cmd_smart_config_start.__UNIQUE_ID_ddebug349, !15, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 91, i32 3}
!20 = !{ptr @wl18xx_cmd_smart_config_start._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @wl18xx_cmd_smart_config_start._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 106, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wl18xx_cmd_smart_config_stop.__UNIQUE_ID_ddebug350, !23, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 116, i32 3}
!28 = !{ptr @wl18xx_cmd_smart_config_stop._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @wl18xx_cmd_smart_config_stop._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 132, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wl18xx_cmd_smart_config_set_group_key.__UNIQUE_ID_ddebug351, !31, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 136, i32 3}
!36 = !{ptr @wl18xx_cmd_smart_config_set_group_key._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @wl18xx_cmd_smart_config_set_group_key._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 152, i32 3}
!40 = !{ptr @wl18xx_cmd_smart_config_set_group_key._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wl18xx_cmd_smart_config_set_group_key._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 167, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @wl18xx_cmd_set_cac.__UNIQUE_ID_ddebug352, !43, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!46 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 184, i32 3}
!50 = !{ptr @wl18xx_cmd_set_cac._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wl18xx_cmd_set_cac._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 198, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @wl18xx_cmd_radar_detection_debug.__UNIQUE_ID_ddebug353, !53, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 210, i32 3}
!58 = !{ptr @wl18xx_cmd_radar_detection_debug._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wl18xx_cmd_radar_detection_debug._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 224, i32 2}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @wl18xx_cmd_dfs_master_restart.__UNIQUE_ID_ddebug354, !61, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ti/wl18xx/cmd.c", i32 236, i32 3}
!66 = !{ptr @wl18xx_cmd_dfs_master_restart._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @wl18xx_cmd_dfs_master_restart._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2148328546, i64 2148328551, i64 2148328564, i64 2148328608, i64 2148328642, i64 2148328663}
!79 = !{i8 0, i8 2}
!80 = !{i64 2157483193, i64 2157483707, i64 2157483230, i64 2157483286, i64 2157483320, i64 2157483344, i64 2157483385, i64 2157483406, i64 2157483434, i64 2157483468}
