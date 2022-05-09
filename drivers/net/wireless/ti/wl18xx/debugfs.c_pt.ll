; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl18xx/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl18xx/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wl18xx_acx_statistics = type { %struct.acx_header, %struct.wl18xx_acx_error_stats, %struct.wl18xx_acx_tx_stats, %struct.wl18xx_acx_rx_stats, %struct.wl18xx_acx_isr_stats, %struct.wl18xx_acx_pwr_stats, %struct.wl18xx_acx_rx_filter_stats, %struct.wl18xx_acx_rx_rate_stats, %struct.wl18xx_acx_aggr_stats, %struct.wl18xx_acx_pipeline_stats, %struct.wl18xx_acx_diversity_stats, %struct.wl18xx_acx_thermal_stats, %struct.wl18xx_acx_calib_failure_stats, %struct.wl18xx_roaming_stats, %struct.wl18xx_dfs_stats }
%struct.acx_header = type { %struct.wl1271_cmd_header, i16, i16 }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl18xx_acx_error_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl18xx_acx_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [30 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl18xx_acx_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl18xx_acx_isr_stats = type { i32 }
%struct.wl18xx_acx_pwr_stats = type { i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl18xx_acx_rx_filter_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl18xx_acx_rx_rate_stats = type { [50 x i32] }
%struct.wl18xx_acx_aggr_stats = type { [16 x i32], [16 x i32], [16 x i32] }
%struct.wl18xx_acx_pipeline_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i16], i16 }
%struct.wl18xx_acx_diversity_stats = type { [2 x i32], i32 }
%struct.wl18xx_acx_thermal_stats = type { i16, i16, i16, i16, i16, i16 }
%struct.wl18xx_acx_calib_failure_stats = type { [18 x i16], i32 }
%struct.wl18xx_roaming_stats = type { i32 }
%struct.wl18xx_dfs_stats = type { i32 }
%struct.wl18xx_priv = type { [740 x i8], %struct.wl18xx_priv_conf, i8, i32 }
%struct.wl18xx_priv_conf = type { %struct.wl18xx_ht_settings, %struct.wl18xx_mac_and_phy_params, %struct.conf_ap_sleep_settings }
%struct.wl18xx_ht_settings = type { i8 }
%struct.wl18xx_mac_and_phy_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, [150 x i8], i8, [7 x i8], i8, i8, [13 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [18 x i8], i8, i8, i8, i8, [1 x i8] }
%struct.conf_ap_sleep_settings = type { i8, i8, i8, i8 }
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

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl18xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_stats\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clear_fw_stats\00", [17 x i8] zeroinitializer }, align 32
@clear_fw_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @clear_fw_stats_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error_error_frame_non_ctrl\00", [37 x i8] zeroinitializer }, align 32
@error_error_frame_non_ctrl_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_error_frame_non_ctrl_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error_error_frame_ctrl\00", [41 x i8] zeroinitializer }, align 32
@error_error_frame_ctrl_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_error_frame_ctrl_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error_error_frame_during_protection\00", [60 x i8] zeroinitializer }, align 32
@error_error_frame_during_protection_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_error_frame_during_protection_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error_null_frame_tx_start\00", [38 x i8] zeroinitializer }, align 32
@error_null_frame_tx_start_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_null_frame_tx_start_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error_null_frame_cts_start\00", [37 x i8] zeroinitializer }, align 32
@error_null_frame_cts_start_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_null_frame_cts_start_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"error_bar_retry\00", [16 x i8] zeroinitializer }, align 32
@error_bar_retry_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_bar_retry_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error_num_frame_cts_nul_flid\00", [35 x i8] zeroinitializer }, align 32
@error_num_frame_cts_nul_flid_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_num_frame_cts_nul_flid_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error_tx_abort_failure\00", [41 x i8] zeroinitializer }, align 32
@error_tx_abort_failure_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_tx_abort_failure_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error_tx_resume_failure\00", [40 x i8] zeroinitializer }, align 32
@error_tx_resume_failure_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_tx_resume_failure_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error_rx_cmplt_db_overflow_cnt\00", [33 x i8] zeroinitializer }, align 32
@error_rx_cmplt_db_overflow_cnt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_rx_cmplt_db_overflow_cnt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error_elp_while_rx_exch\00", [40 x i8] zeroinitializer }, align 32
@error_elp_while_rx_exch_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_elp_while_rx_exch_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error_elp_while_tx_exch\00", [40 x i8] zeroinitializer }, align 32
@error_elp_while_tx_exch_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_elp_while_tx_exch_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"error_elp_while_tx\00", [45 x i8] zeroinitializer }, align 32
@error_elp_while_tx_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_elp_while_tx_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error_elp_while_nvic_pending\00", [35 x i8] zeroinitializer }, align 32
@error_elp_while_nvic_pending_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_elp_while_nvic_pending_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error_rx_excessive_frame_len\00", [35 x i8] zeroinitializer }, align 32
@error_rx_excessive_frame_len_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_rx_excessive_frame_len_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error_burst_mismatch\00", [43 x i8] zeroinitializer }, align 32
@error_burst_mismatch_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_burst_mismatch_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error_tbc_exch_mismatch\00", [40 x i8] zeroinitializer }, align 32
@error_tbc_exch_mismatch_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @error_tbc_exch_mismatch_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_tx_prepared_descs\00", [43 x i8] zeroinitializer }, align 32
@tx_tx_prepared_descs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_prepared_descs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_tx_cmplt\00", [20 x i8] zeroinitializer }, align 32
@tx_tx_cmplt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_cmplt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_tx_template_prepared\00", [40 x i8] zeroinitializer }, align 32
@tx_tx_template_prepared_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_template_prepared_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_tx_data_prepared\00", [44 x i8] zeroinitializer }, align 32
@tx_tx_data_prepared_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_data_prepared_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_tx_template_programmed\00", [38 x i8] zeroinitializer }, align 32
@tx_tx_template_programmed_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_template_programmed_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_tx_data_programmed\00", [42 x i8] zeroinitializer }, align 32
@tx_tx_data_programmed_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_data_programmed_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_tx_burst_programmed\00", [41 x i8] zeroinitializer }, align 32
@tx_tx_burst_programmed_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_burst_programmed_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_tx_starts\00", [19 x i8] zeroinitializer }, align 32
@tx_tx_starts_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_starts_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_tx_stop\00", [21 x i8] zeroinitializer }, align 32
@tx_tx_stop_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_stop_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_tx_start_templates\00", [42 x i8] zeroinitializer }, align 32
@tx_tx_start_templates_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_start_templates_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_tx_start_int_templates\00", [38 x i8] zeroinitializer }, align 32
@tx_tx_start_int_templates_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_start_int_templates_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_tx_start_fw_gen\00", [45 x i8] zeroinitializer }, align 32
@tx_tx_start_fw_gen_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_start_fw_gen_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_tx_start_data\00", [47 x i8] zeroinitializer }, align 32
@tx_tx_start_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_start_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_tx_start_null_frame\00", [41 x i8] zeroinitializer }, align 32
@tx_tx_start_null_frame_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_start_null_frame_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_tx_exch\00", [21 x i8] zeroinitializer }, align 32
@tx_tx_exch_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_exch_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_tx_retry_template\00", [43 x i8] zeroinitializer }, align 32
@tx_tx_retry_template_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_retry_template_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_tx_retry_data\00", [47 x i8] zeroinitializer }, align 32
@tx_tx_retry_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_retry_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_tx_retry_per_rate\00", [43 x i8] zeroinitializer }, align 32
@tx_tx_retry_per_rate_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_retry_per_rate_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_tx_exch_pending\00", [45 x i8] zeroinitializer }, align 32
@tx_tx_exch_pending_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_exch_pending_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_tx_exch_expiry\00", [46 x i8] zeroinitializer }, align 32
@tx_tx_exch_expiry_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_exch_expiry_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_tx_done_template\00", [44 x i8] zeroinitializer }, align 32
@tx_tx_done_template_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_done_template_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_tx_done_data\00", [16 x i8] zeroinitializer }, align 32
@tx_tx_done_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_done_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_tx_done_int_template\00", [40 x i8] zeroinitializer }, align 32
@tx_tx_done_int_template_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_done_int_template_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_tx_cfe1\00", [21 x i8] zeroinitializer }, align 32
@tx_tx_cfe1_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_cfe1_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_tx_cfe2\00", [21 x i8] zeroinitializer }, align 32
@tx_tx_cfe2_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_tx_cfe2_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_frag_called\00", [17 x i8] zeroinitializer }, align 32
@tx_frag_called_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_called_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_frag_mpdu_alloc_failed\00", [38 x i8] zeroinitializer }, align 32
@tx_frag_mpdu_alloc_failed_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_mpdu_alloc_failed_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_frag_init_called\00", [44 x i8] zeroinitializer }, align 32
@tx_frag_init_called_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_init_called_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_frag_in_process_called\00", [38 x i8] zeroinitializer }, align 32
@tx_frag_in_process_called_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_in_process_called_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_frag_tkip_called\00", [44 x i8] zeroinitializer }, align 32
@tx_frag_tkip_called_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_tkip_called_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_frag_key_not_found\00", [42 x i8] zeroinitializer }, align 32
@tx_frag_key_not_found_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_key_not_found_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_frag_need_fragmentation\00", [37 x i8] zeroinitializer }, align 32
@tx_frag_need_fragmentation_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_need_fragmentation_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_frag_bad_mblk_num\00", [43 x i8] zeroinitializer }, align 32
@tx_frag_bad_mblk_num_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_bad_mblk_num_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_frag_failed\00", [17 x i8] zeroinitializer }, align 32
@tx_frag_failed_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_failed_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_frag_cache_hit\00", [46 x i8] zeroinitializer }, align 32
@tx_frag_cache_hit_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_cache_hit_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_frag_cache_miss\00", [45 x i8] zeroinitializer }, align 32
@tx_frag_cache_miss_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_frag_cache_miss_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_rx_beacon_early_term\00", [40 x i8] zeroinitializer }, align 32
@rx_rx_beacon_early_term_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_beacon_early_term_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_rx_out_of_mpdu_nodes\00", [40 x i8] zeroinitializer }, align 32
@rx_rx_out_of_mpdu_nodes_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_out_of_mpdu_nodes_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_rx_hdr_overflow\00", [45 x i8] zeroinitializer }, align 32
@rx_rx_hdr_overflow_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_hdr_overflow_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_rx_dropped_frame\00", [44 x i8] zeroinitializer }, align 32
@rx_rx_dropped_frame_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_dropped_frame_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_rx_done\00", [21 x i8] zeroinitializer }, align 32
@rx_rx_done_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_done_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_rx_defrag\00", [19 x i8] zeroinitializer }, align 32
@rx_rx_defrag_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_defrag_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_rx_defrag_end\00", [47 x i8] zeroinitializer }, align 32
@rx_rx_defrag_end_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_defrag_end_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_rx_cmplt\00", [20 x i8] zeroinitializer }, align 32
@rx_rx_cmplt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_cmplt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_rx_pre_complt\00", [47 x i8] zeroinitializer }, align 32
@rx_rx_pre_complt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_pre_complt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_rx_cmplt_task\00", [47 x i8] zeroinitializer }, align 32
@rx_rx_cmplt_task_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_cmplt_task_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_rx_phy_hdr\00", [18 x i8] zeroinitializer }, align 32
@rx_rx_phy_hdr_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_phy_hdr_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_rx_timeout\00", [18 x i8] zeroinitializer }, align 32
@rx_rx_timeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_timeout_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_rx_rts_timeout\00", [46 x i8] zeroinitializer }, align 32
@rx_rx_rts_timeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_rts_timeout_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_rx_timeout_wa\00", [47 x i8] zeroinitializer }, align 32
@rx_rx_timeout_wa_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_timeout_wa_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_defrag_called\00", [47 x i8] zeroinitializer }, align 32
@rx_defrag_called_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_defrag_called_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_defrag_init_called\00", [42 x i8] zeroinitializer }, align 32
@rx_defrag_init_called_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_defrag_init_called_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_defrag_in_process_called\00", [36 x i8] zeroinitializer }, align 32
@rx_defrag_in_process_called_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_defrag_in_process_called_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_defrag_tkip_called\00", [42 x i8] zeroinitializer }, align 32
@rx_defrag_tkip_called_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_defrag_tkip_called_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_defrag_need_defrag\00", [42 x i8] zeroinitializer }, align 32
@rx_defrag_need_defrag_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_defrag_need_defrag_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_defrag_decrypt_failed\00", [39 x i8] zeroinitializer }, align 32
@rx_defrag_decrypt_failed_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_defrag_decrypt_failed_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_decrypt_key_not_found\00", [39 x i8] zeroinitializer }, align 32
@rx_decrypt_key_not_found_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_decrypt_key_not_found_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_defrag_need_decrypt\00", [41 x i8] zeroinitializer }, align 32
@rx_defrag_need_decrypt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_defrag_need_decrypt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_rx_tkip_replays\00", [45 x i8] zeroinitializer }, align 32
@rx_rx_tkip_replays_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_tkip_replays_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_rx_xfr\00", [22 x i8] zeroinitializer }, align 32
@rx_rx_xfr_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rx_xfr_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isr_irqs\00", [23 x i8] zeroinitializer }, align 32
@isr_irqs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_irqs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwr_missing_bcns_cnt\00", [43 x i8] zeroinitializer }, align 32
@pwr_missing_bcns_cnt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_missing_bcns_cnt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwr_rcvd_bcns_cnt\00", [46 x i8] zeroinitializer }, align 32
@pwr_rcvd_bcns_cnt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_rcvd_bcns_cnt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwr_connection_out_of_sync\00", [37 x i8] zeroinitializer }, align 32
@pwr_connection_out_of_sync_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_connection_out_of_sync_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pwr_cont_miss_bcns_spread\00", [38 x i8] zeroinitializer }, align 32
@pwr_cont_miss_bcns_spread_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_cont_miss_bcns_spread_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwr_rcvd_awake_bcns_cnt\00", [40 x i8] zeroinitializer }, align 32
@pwr_rcvd_awake_bcns_cnt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_rcvd_awake_bcns_cnt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwr_sleep_time_count\00", [43 x i8] zeroinitializer }, align 32
@pwr_sleep_time_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_sleep_time_count_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwr_sleep_time_avg\00", [45 x i8] zeroinitializer }, align 32
@pwr_sleep_time_avg_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_sleep_time_avg_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwr_sleep_cycle_avg\00", [44 x i8] zeroinitializer }, align 32
@pwr_sleep_cycle_avg_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_sleep_cycle_avg_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwr_sleep_percent\00", [46 x i8] zeroinitializer }, align 32
@pwr_sleep_percent_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_sleep_percent_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pwr_ap_sleep_active_conf\00", [39 x i8] zeroinitializer }, align 32
@pwr_ap_sleep_active_conf_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_ap_sleep_active_conf_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwr_ap_sleep_user_conf\00", [41 x i8] zeroinitializer }, align 32
@pwr_ap_sleep_user_conf_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_ap_sleep_user_conf_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwr_ap_sleep_counter\00", [43 x i8] zeroinitializer }, align 32
@pwr_ap_sleep_counter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_ap_sleep_counter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_filter_beacon_filter\00", [40 x i8] zeroinitializer }, align 32
@rx_filter_beacon_filter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_filter_beacon_filter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_filter_arp_filter\00", [43 x i8] zeroinitializer }, align 32
@rx_filter_arp_filter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_filter_arp_filter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_filter_mc_filter\00", [44 x i8] zeroinitializer }, align 32
@rx_filter_mc_filter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_filter_mc_filter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_filter_dup_filter\00", [43 x i8] zeroinitializer }, align 32
@rx_filter_dup_filter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_filter_dup_filter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_filter_data_filter\00", [42 x i8] zeroinitializer }, align 32
@rx_filter_data_filter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_filter_data_filter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_filter_ibss_filter\00", [42 x i8] zeroinitializer }, align 32
@rx_filter_ibss_filter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_filter_ibss_filter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_filter_protection_filter\00", [36 x i8] zeroinitializer }, align 32
@rx_filter_protection_filter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_filter_protection_filter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rx_filter_accum_arp_pend_requests\00", [62 x i8] zeroinitializer }, align 32
@rx_filter_accum_arp_pend_requests_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_filter_accum_arp_pend_requests_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_filter_max_arp_queue_dep\00", [36 x i8] zeroinitializer }, align 32
@rx_filter_max_arp_queue_dep_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_filter_max_arp_queue_dep_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_rate_rx_frames_per_rates\00", [36 x i8] zeroinitializer }, align 32
@rx_rate_rx_frames_per_rates_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_rate_rx_frames_per_rates_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aggr_size_tx_agg_rate\00", [42 x i8] zeroinitializer }, align 32
@aggr_size_tx_agg_rate_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aggr_size_tx_agg_rate_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aggr_size_tx_agg_len\00", [43 x i8] zeroinitializer }, align 32
@aggr_size_tx_agg_len_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aggr_size_tx_agg_len_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aggr_size_rx_size\00", [46 x i8] zeroinitializer }, align 32
@aggr_size_rx_size_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aggr_size_rx_size_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pipeline_hs_tx_stat_fifo_int\00", [35 x i8] zeroinitializer }, align 32
@pipeline_hs_tx_stat_fifo_int_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_hs_tx_stat_fifo_int_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pipeline_enc_tx_stat_fifo_int\00", [34 x i8] zeroinitializer }, align 32
@pipeline_enc_tx_stat_fifo_int_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_enc_tx_stat_fifo_int_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pipeline_enc_rx_stat_fifo_int\00", [34 x i8] zeroinitializer }, align 32
@pipeline_enc_rx_stat_fifo_int_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_enc_rx_stat_fifo_int_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pipeline_rx_complete_stat_fifo_int\00", [61 x i8] zeroinitializer }, align 32
@pipeline_rx_complete_stat_fifo_int_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_rx_complete_stat_fifo_int_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pipeline_pre_proc_swi\00", [42 x i8] zeroinitializer }, align 32
@pipeline_pre_proc_swi_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_pre_proc_swi_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pipeline_post_proc_swi\00", [41 x i8] zeroinitializer }, align 32
@pipeline_post_proc_swi_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_post_proc_swi_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pipeline_sec_frag_swi\00", [42 x i8] zeroinitializer }, align 32
@pipeline_sec_frag_swi_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_sec_frag_swi_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pipeline_pre_to_defrag_swi\00", [37 x i8] zeroinitializer }, align 32
@pipeline_pre_to_defrag_swi_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_pre_to_defrag_swi_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pipeline_defrag_to_rx_xfer_swi\00", [33 x i8] zeroinitializer }, align 32
@pipeline_defrag_to_rx_xfer_swi_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_defrag_to_rx_xfer_swi_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pipeline_dec_packet_in\00", [41 x i8] zeroinitializer }, align 32
@pipeline_dec_packet_in_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_dec_packet_in_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pipeline_dec_packet_in_fifo_full\00", [63 x i8] zeroinitializer }, align 32
@pipeline_dec_packet_in_fifo_full_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_dec_packet_in_fifo_full_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pipeline_dec_packet_out\00", [40 x i8] zeroinitializer }, align 32
@pipeline_dec_packet_out_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_dec_packet_out_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pipeline_pipeline_fifo_full\00", [36 x i8] zeroinitializer }, align 32
@pipeline_pipeline_fifo_full_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pipeline_pipeline_fifo_full_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"diversity_num_of_packets_per_ant\00", [63 x i8] zeroinitializer }, align 32
@diversity_num_of_packets_per_ant_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @diversity_num_of_packets_per_ant_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"diversity_total_num_of_toggles\00", [33 x i8] zeroinitializer }, align 32
@diversity_total_num_of_toggles_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @diversity_total_num_of_toggles_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"thermal_irq_thr_low\00", [44 x i8] zeroinitializer }, align 32
@thermal_irq_thr_low_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @thermal_irq_thr_low_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"thermal_irq_thr_high\00", [43 x i8] zeroinitializer }, align 32
@thermal_irq_thr_high_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @thermal_irq_thr_high_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_tx_stop\00", [16 x i8] zeroinitializer }, align 32
@thermal_tx_stop_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @thermal_tx_stop_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"thermal_tx_resume\00", [46 x i8] zeroinitializer }, align 32
@thermal_tx_resume_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @thermal_tx_resume_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"thermal_false_irq\00", [46 x i8] zeroinitializer }, align 32
@thermal_false_irq_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @thermal_false_irq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"thermal_adc_source_unexpected\00", [34 x i8] zeroinitializer }, align 32
@thermal_adc_source_unexpected_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @thermal_adc_source_unexpected_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calib_fail_count\00", [47 x i8] zeroinitializer }, align 32
@calib_fail_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @calib_fail_count_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"calib_calib_count\00", [46 x i8] zeroinitializer }, align 32
@calib_calib_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @calib_calib_count_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"roaming_rssi_level\00", [45 x i8] zeroinitializer }, align 32
@roaming_rssi_level_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @roaming_rssi_level_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dfs_num_of_radar_detections\00", [36 x i8] zeroinitializer }, align 32
@dfs_num_of_radar_detections_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @dfs_num_of_radar_detections_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"conf\00", [27 x i8] zeroinitializer }, align 32
@conf_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @conf_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radar_detection\00", [16 x i8] zeroinitializer }, align 32
@radar_detection_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @radar_detection_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radar_debug_mode\00", [47 x i8] zeroinitializer }, align 32
@radar_debug_mode_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @radar_debug_mode_read, ptr @radar_debug_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dynamic_fw_traces\00", [46 x i8] zeroinitializer }, align 32
@dynamic_fw_traces_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dynamic_fw_traces_read, ptr @dynamic_fw_traces_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[%d] = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@radar_detection_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.141, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014wlcore: WARNING illegal channel\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radar_detection_write\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ti/wl18xx/debugfs.c\00", [55 x i8] zeroinitializer }, align 32
@radar_detection_write._entry_ptr = internal global ptr @radar_detection_write._entry, section ".printk_index", align 4
@radar_debug_mode_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.141, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING illegal radar_debug_mode value!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radar_debug_mode_write\00", [41 x i8] zeroinitializer }, align 32
@radar_debug_mode_write._entry_ptr = internal global ptr @radar_debug_mode_write._entry, section ".printk_index", align 4
@radar_debug_mode_write._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.141, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014wlcore: WARNING value is not in valid!\0A\00", [54 x i8] zeroinitializer }, align 32
@radar_debug_mode_write._entry_ptr.146 = internal global ptr @radar_debug_mode_write._entry.144, section ".printk_index", align 4
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 413, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 414, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 416, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"clear_fw_stats_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 242, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 418, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [31 x i8] c"error_error_frame_non_ctrl_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 419, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [27 x i8] c"error_error_frame_ctrl_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 28, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 420, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [40 x i8] c"error_error_frame_during_protection_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 29, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 421, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [30 x i8] c"error_null_frame_tx_start_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 30, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 422, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [31 x i8] c"error_null_frame_cts_start_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 31, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 423, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"error_bar_retry_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 32, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 424, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [33 x i8] c"error_num_frame_cts_nul_flid_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 33, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 425, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"error_tx_abort_failure_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 34, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 426, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [28 x i8] c"error_tx_resume_failure_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 35, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 427, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [35 x i8] c"error_rx_cmplt_db_overflow_cnt_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 36, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 428, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [28 x i8] c"error_elp_while_rx_exch_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 37, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 429, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [28 x i8] c"error_elp_while_tx_exch_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 38, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 430, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [23 x i8] c"error_elp_while_tx_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 39, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 431, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [33 x i8] c"error_elp_while_nvic_pending_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 40, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 432, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [33 x i8] c"error_rx_excessive_frame_len_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 41, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 433, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [25 x i8] c"error_burst_mismatch_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 42, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 434, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [28 x i8] c"error_tbc_exch_mismatch_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 43, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 436, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [25 x i8] c"tx_tx_prepared_descs_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 45, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 437, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"tx_tx_cmplt_ops\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 46, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 438, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [28 x i8] c"tx_tx_template_prepared_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 47, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 439, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [24 x i8] c"tx_tx_data_prepared_ops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 48, i32 1 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 440, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [30 x i8] c"tx_tx_template_programmed_ops\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 49, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 441, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [26 x i8] c"tx_tx_data_programmed_ops\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 50, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 442, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [27 x i8] c"tx_tx_burst_programmed_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 51, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 443, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"tx_tx_starts_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 52, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 444, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [15 x i8] c"tx_tx_stop_ops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 53, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 445, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [26 x i8] c"tx_tx_start_templates_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 54, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 446, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [30 x i8] c"tx_tx_start_int_templates_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 55, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 447, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [23 x i8] c"tx_tx_start_fw_gen_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 56, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 448, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [21 x i8] c"tx_tx_start_data_ops\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 57, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 449, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [27 x i8] c"tx_tx_start_null_frame_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 58, i32 1 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 450, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [15 x i8] c"tx_tx_exch_ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 59, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 451, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [25 x i8] c"tx_tx_retry_template_ops\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 60, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 452, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [21 x i8] c"tx_tx_retry_data_ops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 61, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 453, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [25 x i8] c"tx_tx_retry_per_rate_ops\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 454, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [23 x i8] c"tx_tx_exch_pending_ops\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 64, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 455, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [22 x i8] c"tx_tx_exch_expiry_ops\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 65, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 456, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [24 x i8] c"tx_tx_done_template_ops\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 66, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 457, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c"tx_tx_done_data_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 67, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 458, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [28 x i8] c"tx_tx_done_int_template_ops\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 68, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 459, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [15 x i8] c"tx_tx_cfe1_ops\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 69, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 460, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [15 x i8] c"tx_tx_cfe2_ops\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 70, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 461, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [19 x i8] c"tx_frag_called_ops\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 71, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 462, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [30 x i8] c"tx_frag_mpdu_alloc_failed_ops\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 72, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 463, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [24 x i8] c"tx_frag_init_called_ops\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 73, i32 1 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 464, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [30 x i8] c"tx_frag_in_process_called_ops\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 74, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 465, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [24 x i8] c"tx_frag_tkip_called_ops\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 75, i32 1 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 466, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [26 x i8] c"tx_frag_key_not_found_ops\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 76, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 467, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [31 x i8] c"tx_frag_need_fragmentation_ops\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 77, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 468, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [25 x i8] c"tx_frag_bad_mblk_num_ops\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 78, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 469, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [19 x i8] c"tx_frag_failed_ops\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 79, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 470, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [22 x i8] c"tx_frag_cache_hit_ops\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 80, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 471, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [23 x i8] c"tx_frag_cache_miss_ops\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 81, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 473, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [28 x i8] c"rx_rx_beacon_early_term_ops\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 83, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 474, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [28 x i8] c"rx_rx_out_of_mpdu_nodes_ops\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 84, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 475, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [23 x i8] c"rx_rx_hdr_overflow_ops\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 85, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 476, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [24 x i8] c"rx_rx_dropped_frame_ops\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 86, i32 1 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 477, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [15 x i8] c"rx_rx_done_ops\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 87, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 478, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [17 x i8] c"rx_rx_defrag_ops\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 88, i32 1 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 479, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [21 x i8] c"rx_rx_defrag_end_ops\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 89, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 480, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [16 x i8] c"rx_rx_cmplt_ops\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 90, i32 1 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 481, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [21 x i8] c"rx_rx_pre_complt_ops\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 91, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 482, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [21 x i8] c"rx_rx_cmplt_task_ops\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 92, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 483, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [18 x i8] c"rx_rx_phy_hdr_ops\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 93, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 484, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [18 x i8] c"rx_rx_timeout_ops\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 94, i32 1 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 485, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [22 x i8] c"rx_rx_rts_timeout_ops\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 95, i32 1 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 486, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant [21 x i8] c"rx_rx_timeout_wa_ops\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 96, i32 1 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 487, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [21 x i8] c"rx_defrag_called_ops\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 97, i32 1 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 488, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant [26 x i8] c"rx_defrag_init_called_ops\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 98, i32 1 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 489, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant [32 x i8] c"rx_defrag_in_process_called_ops\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 99, i32 1 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 490, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [26 x i8] c"rx_defrag_tkip_called_ops\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 100, i32 1 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 491, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [26 x i8] c"rx_defrag_need_defrag_ops\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 101, i32 1 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 492, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [29 x i8] c"rx_defrag_decrypt_failed_ops\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 102, i32 1 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 493, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant [29 x i8] c"rx_decrypt_key_not_found_ops\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 103, i32 1 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 494, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [27 x i8] c"rx_defrag_need_decrypt_ops\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 104, i32 1 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 495, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [23 x i8] c"rx_rx_tkip_replays_ops\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 105, i32 1 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 496, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant [14 x i8] c"rx_rx_xfr_ops\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 106, i32 1 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 498, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [13 x i8] c"isr_irqs_ops\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 108, i32 1 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 500, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant [25 x i8] c"pwr_missing_bcns_cnt_ops\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 110, i32 1 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 501, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [22 x i8] c"pwr_rcvd_bcns_cnt_ops\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 111, i32 1 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 502, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant [31 x i8] c"pwr_connection_out_of_sync_ops\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 112, i32 1 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 503, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant [30 x i8] c"pwr_cont_miss_bcns_spread_ops\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 113, i32 1 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 504, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant [28 x i8] c"pwr_rcvd_awake_bcns_cnt_ops\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 115, i32 1 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 505, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [25 x i8] c"pwr_sleep_time_count_ops\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 116, i32 1 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 506, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant [23 x i8] c"pwr_sleep_time_avg_ops\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 117, i32 1 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 507, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant [24 x i8] c"pwr_sleep_cycle_avg_ops\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 118, i32 1 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 508, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant [22 x i8] c"pwr_sleep_percent_ops\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 119, i32 1 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 509, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant [29 x i8] c"pwr_ap_sleep_active_conf_ops\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 120, i32 1 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 510, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant [27 x i8] c"pwr_ap_sleep_user_conf_ops\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 121, i32 1 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 511, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant [25 x i8] c"pwr_ap_sleep_counter_ops\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 122, i32 1 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 513, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [28 x i8] c"rx_filter_beacon_filter_ops\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 124, i32 1 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 514, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant [25 x i8] c"rx_filter_arp_filter_ops\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 125, i32 1 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 515, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant [24 x i8] c"rx_filter_mc_filter_ops\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 126, i32 1 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 516, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant [25 x i8] c"rx_filter_dup_filter_ops\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 127, i32 1 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 517, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [26 x i8] c"rx_filter_data_filter_ops\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 128, i32 1 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 518, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant [26 x i8] c"rx_filter_ibss_filter_ops\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 129, i32 1 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 519, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant [32 x i8] c"rx_filter_protection_filter_ops\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 130, i32 1 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 520, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant [38 x i8] c"rx_filter_accum_arp_pend_requests_ops\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 131, i32 1 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 521, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant [32 x i8] c"rx_filter_max_arp_queue_dep_ops\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 132, i32 1 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 523, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant [32 x i8] c"rx_rate_rx_frames_per_rates_ops\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 134, i32 1 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 525, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant [26 x i8] c"aggr_size_tx_agg_rate_ops\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 136, i32 1 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 526, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [25 x i8] c"aggr_size_tx_agg_len_ops\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 138, i32 1 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 527, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant [22 x i8] c"aggr_size_rx_size_ops\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 140, i32 1 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 529, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant [33 x i8] c"pipeline_hs_tx_stat_fifo_int_ops\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 143, i32 1 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 530, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant [34 x i8] c"pipeline_enc_tx_stat_fifo_int_ops\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 144, i32 1 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 531, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [34 x i8] c"pipeline_enc_rx_stat_fifo_int_ops\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 145, i32 1 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 532, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant [39 x i8] c"pipeline_rx_complete_stat_fifo_int_ops\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 146, i32 1 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 533, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant [26 x i8] c"pipeline_pre_proc_swi_ops\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 147, i32 1 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 534, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant [27 x i8] c"pipeline_post_proc_swi_ops\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 148, i32 1 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 535, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [26 x i8] c"pipeline_sec_frag_swi_ops\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 149, i32 1 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 536, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant [31 x i8] c"pipeline_pre_to_defrag_swi_ops\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 150, i32 1 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 537, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant [35 x i8] c"pipeline_defrag_to_rx_xfer_swi_ops\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 151, i32 1 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 538, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant [27 x i8] c"pipeline_dec_packet_in_ops\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 152, i32 1 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 539, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant [37 x i8] c"pipeline_dec_packet_in_fifo_full_ops\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 153, i32 1 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 540, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant [28 x i8] c"pipeline_dec_packet_out_ops\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 154, i32 1 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 541, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant [32 x i8] c"pipeline_pipeline_fifo_full_ops\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 156, i32 1 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 543, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant [37 x i8] c"diversity_num_of_packets_per_ant_ops\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 159, i32 1 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 544, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant [35 x i8] c"diversity_total_num_of_toggles_ops\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 161, i32 1 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 546, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant [24 x i8] c"thermal_irq_thr_low_ops\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 163, i32 1 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 547, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant [25 x i8] c"thermal_irq_thr_high_ops\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 164, i32 1 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 548, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant [20 x i8] c"thermal_tx_stop_ops\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 165, i32 1 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 549, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant [22 x i8] c"thermal_tx_resume_ops\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 166, i32 1 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 550, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant [22 x i8] c"thermal_false_irq_ops\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 167, i32 1 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 551, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant [34 x i8] c"thermal_adc_source_unexpected_ops\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 168, i32 1 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 553, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant [21 x i8] c"calib_fail_count_ops\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 170, i32 1 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 555, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant [22 x i8] c"calib_calib_count_ops\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 172, i32 1 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 557, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant [23 x i8] c"roaming_rssi_level_ops\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 559, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant [32 x i8] c"dfs_num_of_radar_detections_ops\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 176, i32 1 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 561, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant [9 x i8] c"conf_ops\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 214, i32 37 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 562, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant [20 x i8] c"radar_detection_ops\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 284, i32 37 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 564, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant [21 x i8] c"radar_debug_mode_ops\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 400, i32 37 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 566, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant [22 x i8] c"dynamic_fw_traces_ops\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 335, i32 37 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 27, i32 1 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 62, i32 1 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 174, i32 1 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 258, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 354, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.987 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.988 = private constant [44 x i8] c"../drivers/net/wireless/ti/wl18xx/debugfs.c\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.988, i32 360, i32 3 }
@llvm.compiler.used = appending global [284 x ptr] [ptr @radar_debug_mode_write._entry, ptr @radar_debug_mode_write._entry.144, ptr @radar_debug_mode_write._entry_ptr, ptr @radar_debug_mode_write._entry_ptr.146, ptr @radar_detection_write._entry, ptr @radar_detection_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clear_fw_stats_ops, ptr @.str.3, ptr @error_error_frame_non_ctrl_ops, ptr @.str.4, ptr @error_error_frame_ctrl_ops, ptr @.str.5, ptr @error_error_frame_during_protection_ops, ptr @.str.6, ptr @error_null_frame_tx_start_ops, ptr @.str.7, ptr @error_null_frame_cts_start_ops, ptr @.str.8, ptr @error_bar_retry_ops, ptr @.str.9, ptr @error_num_frame_cts_nul_flid_ops, ptr @.str.10, ptr @error_tx_abort_failure_ops, ptr @.str.11, ptr @error_tx_resume_failure_ops, ptr @.str.12, ptr @error_rx_cmplt_db_overflow_cnt_ops, ptr @.str.13, ptr @error_elp_while_rx_exch_ops, ptr @.str.14, ptr @error_elp_while_tx_exch_ops, ptr @.str.15, ptr @error_elp_while_tx_ops, ptr @.str.16, ptr @error_elp_while_nvic_pending_ops, ptr @.str.17, ptr @error_rx_excessive_frame_len_ops, ptr @.str.18, ptr @error_burst_mismatch_ops, ptr @.str.19, ptr @error_tbc_exch_mismatch_ops, ptr @.str.20, ptr @tx_tx_prepared_descs_ops, ptr @.str.21, ptr @tx_tx_cmplt_ops, ptr @.str.22, ptr @tx_tx_template_prepared_ops, ptr @.str.23, ptr @tx_tx_data_prepared_ops, ptr @.str.24, ptr @tx_tx_template_programmed_ops, ptr @.str.25, ptr @tx_tx_data_programmed_ops, ptr @.str.26, ptr @tx_tx_burst_programmed_ops, ptr @.str.27, ptr @tx_tx_starts_ops, ptr @.str.28, ptr @tx_tx_stop_ops, ptr @.str.29, ptr @tx_tx_start_templates_ops, ptr @.str.30, ptr @tx_tx_start_int_templates_ops, ptr @.str.31, ptr @tx_tx_start_fw_gen_ops, ptr @.str.32, ptr @tx_tx_start_data_ops, ptr @.str.33, ptr @tx_tx_start_null_frame_ops, ptr @.str.34, ptr @tx_tx_exch_ops, ptr @.str.35, ptr @tx_tx_retry_template_ops, ptr @.str.36, ptr @tx_tx_retry_data_ops, ptr @.str.37, ptr @tx_tx_retry_per_rate_ops, ptr @.str.38, ptr @tx_tx_exch_pending_ops, ptr @.str.39, ptr @tx_tx_exch_expiry_ops, ptr @.str.40, ptr @tx_tx_done_template_ops, ptr @.str.41, ptr @tx_tx_done_data_ops, ptr @.str.42, ptr @tx_tx_done_int_template_ops, ptr @.str.43, ptr @tx_tx_cfe1_ops, ptr @.str.44, ptr @tx_tx_cfe2_ops, ptr @.str.45, ptr @tx_frag_called_ops, ptr @.str.46, ptr @tx_frag_mpdu_alloc_failed_ops, ptr @.str.47, ptr @tx_frag_init_called_ops, ptr @.str.48, ptr @tx_frag_in_process_called_ops, ptr @.str.49, ptr @tx_frag_tkip_called_ops, ptr @.str.50, ptr @tx_frag_key_not_found_ops, ptr @.str.51, ptr @tx_frag_need_fragmentation_ops, ptr @.str.52, ptr @tx_frag_bad_mblk_num_ops, ptr @.str.53, ptr @tx_frag_failed_ops, ptr @.str.54, ptr @tx_frag_cache_hit_ops, ptr @.str.55, ptr @tx_frag_cache_miss_ops, ptr @.str.56, ptr @rx_rx_beacon_early_term_ops, ptr @.str.57, ptr @rx_rx_out_of_mpdu_nodes_ops, ptr @.str.58, ptr @rx_rx_hdr_overflow_ops, ptr @.str.59, ptr @rx_rx_dropped_frame_ops, ptr @.str.60, ptr @rx_rx_done_ops, ptr @.str.61, ptr @rx_rx_defrag_ops, ptr @.str.62, ptr @rx_rx_defrag_end_ops, ptr @.str.63, ptr @rx_rx_cmplt_ops, ptr @.str.64, ptr @rx_rx_pre_complt_ops, ptr @.str.65, ptr @rx_rx_cmplt_task_ops, ptr @.str.66, ptr @rx_rx_phy_hdr_ops, ptr @.str.67, ptr @rx_rx_timeout_ops, ptr @.str.68, ptr @rx_rx_rts_timeout_ops, ptr @.str.69, ptr @rx_rx_timeout_wa_ops, ptr @.str.70, ptr @rx_defrag_called_ops, ptr @.str.71, ptr @rx_defrag_init_called_ops, ptr @.str.72, ptr @rx_defrag_in_process_called_ops, ptr @.str.73, ptr @rx_defrag_tkip_called_ops, ptr @.str.74, ptr @rx_defrag_need_defrag_ops, ptr @.str.75, ptr @rx_defrag_decrypt_failed_ops, ptr @.str.76, ptr @rx_decrypt_key_not_found_ops, ptr @.str.77, ptr @rx_defrag_need_decrypt_ops, ptr @.str.78, ptr @rx_rx_tkip_replays_ops, ptr @.str.79, ptr @rx_rx_xfr_ops, ptr @.str.80, ptr @isr_irqs_ops, ptr @.str.81, ptr @pwr_missing_bcns_cnt_ops, ptr @.str.82, ptr @pwr_rcvd_bcns_cnt_ops, ptr @.str.83, ptr @pwr_connection_out_of_sync_ops, ptr @.str.84, ptr @pwr_cont_miss_bcns_spread_ops, ptr @.str.85, ptr @pwr_rcvd_awake_bcns_cnt_ops, ptr @.str.86, ptr @pwr_sleep_time_count_ops, ptr @.str.87, ptr @pwr_sleep_time_avg_ops, ptr @.str.88, ptr @pwr_sleep_cycle_avg_ops, ptr @.str.89, ptr @pwr_sleep_percent_ops, ptr @.str.90, ptr @pwr_ap_sleep_active_conf_ops, ptr @.str.91, ptr @pwr_ap_sleep_user_conf_ops, ptr @.str.92, ptr @pwr_ap_sleep_counter_ops, ptr @.str.93, ptr @rx_filter_beacon_filter_ops, ptr @.str.94, ptr @rx_filter_arp_filter_ops, ptr @.str.95, ptr @rx_filter_mc_filter_ops, ptr @.str.96, ptr @rx_filter_dup_filter_ops, ptr @.str.97, ptr @rx_filter_data_filter_ops, ptr @.str.98, ptr @rx_filter_ibss_filter_ops, ptr @.str.99, ptr @rx_filter_protection_filter_ops, ptr @.str.100, ptr @rx_filter_accum_arp_pend_requests_ops, ptr @.str.101, ptr @rx_filter_max_arp_queue_dep_ops, ptr @.str.102, ptr @rx_rate_rx_frames_per_rates_ops, ptr @.str.103, ptr @aggr_size_tx_agg_rate_ops, ptr @.str.104, ptr @aggr_size_tx_agg_len_ops, ptr @.str.105, ptr @aggr_size_rx_size_ops, ptr @.str.106, ptr @pipeline_hs_tx_stat_fifo_int_ops, ptr @.str.107, ptr @pipeline_enc_tx_stat_fifo_int_ops, ptr @.str.108, ptr @pipeline_enc_rx_stat_fifo_int_ops, ptr @.str.109, ptr @pipeline_rx_complete_stat_fifo_int_ops, ptr @.str.110, ptr @pipeline_pre_proc_swi_ops, ptr @.str.111, ptr @pipeline_post_proc_swi_ops, ptr @.str.112, ptr @pipeline_sec_frag_swi_ops, ptr @.str.113, ptr @pipeline_pre_to_defrag_swi_ops, ptr @.str.114, ptr @pipeline_defrag_to_rx_xfer_swi_ops, ptr @.str.115, ptr @pipeline_dec_packet_in_ops, ptr @.str.116, ptr @pipeline_dec_packet_in_fifo_full_ops, ptr @.str.117, ptr @pipeline_dec_packet_out_ops, ptr @.str.118, ptr @pipeline_pipeline_fifo_full_ops, ptr @.str.119, ptr @diversity_num_of_packets_per_ant_ops, ptr @.str.120, ptr @diversity_total_num_of_toggles_ops, ptr @.str.121, ptr @thermal_irq_thr_low_ops, ptr @.str.122, ptr @thermal_irq_thr_high_ops, ptr @.str.123, ptr @thermal_tx_stop_ops, ptr @.str.124, ptr @thermal_tx_resume_ops, ptr @.str.125, ptr @thermal_false_irq_ops, ptr @.str.126, ptr @thermal_adc_source_unexpected_ops, ptr @.str.127, ptr @calib_fail_count_ops, ptr @.str.128, ptr @calib_calib_count_ops, ptr @.str.129, ptr @roaming_rssi_level_ops, ptr @.str.130, ptr @dfs_num_of_radar_detections_ops, ptr @.str.131, ptr @conf_ops, ptr @.str.132, ptr @radar_detection_ops, ptr @.str.133, ptr @radar_debug_mode_ops, ptr @.str.134, ptr @dynamic_fw_traces_ops, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145], section "llvm.metadata"
@0 = internal global [281 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_fw_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_error_frame_non_ctrl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_error_frame_ctrl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_error_frame_during_protection_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_null_frame_tx_start_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_null_frame_cts_start_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_bar_retry_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_num_frame_cts_nul_flid_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_tx_abort_failure_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_tx_resume_failure_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_rx_cmplt_db_overflow_cnt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_elp_while_rx_exch_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_elp_while_tx_exch_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_elp_while_tx_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_elp_while_nvic_pending_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_rx_excessive_frame_len_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_burst_mismatch_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_tbc_exch_mismatch_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_prepared_descs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_cmplt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_template_prepared_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_data_prepared_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_template_programmed_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_data_programmed_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_burst_programmed_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_starts_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_stop_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_start_templates_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_start_int_templates_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_start_fw_gen_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_start_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_start_null_frame_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_exch_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_retry_template_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_retry_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_retry_per_rate_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_exch_pending_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_exch_expiry_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_done_template_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_done_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_done_int_template_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_cfe1_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_tx_cfe2_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_called_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_mpdu_alloc_failed_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_init_called_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_in_process_called_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_tkip_called_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_key_not_found_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_need_fragmentation_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_bad_mblk_num_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_failed_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_cache_hit_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_frag_cache_miss_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_beacon_early_term_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_out_of_mpdu_nodes_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_hdr_overflow_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_dropped_frame_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_done_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_defrag_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_defrag_end_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_cmplt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_pre_complt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_cmplt_task_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_phy_hdr_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_timeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_rts_timeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_timeout_wa_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_defrag_called_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_defrag_init_called_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_defrag_in_process_called_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_defrag_tkip_called_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_defrag_need_defrag_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_defrag_decrypt_failed_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_decrypt_key_not_found_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_defrag_need_decrypt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_tkip_replays_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rx_xfr_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_irqs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_missing_bcns_cnt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_rcvd_bcns_cnt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_connection_out_of_sync_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_cont_miss_bcns_spread_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_rcvd_awake_bcns_cnt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_sleep_time_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_sleep_time_avg_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_sleep_cycle_avg_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_sleep_percent_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_ap_sleep_active_conf_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_ap_sleep_user_conf_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_ap_sleep_counter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_filter_beacon_filter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_filter_arp_filter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_filter_mc_filter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_filter_dup_filter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_filter_data_filter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_filter_ibss_filter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_filter_protection_filter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_filter_accum_arp_pend_requests_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_filter_max_arp_queue_dep_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rate_rx_frames_per_rates_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggr_size_tx_agg_rate_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggr_size_tx_agg_len_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggr_size_rx_size_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_hs_tx_stat_fifo_int_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_enc_tx_stat_fifo_int_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_enc_rx_stat_fifo_int_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_rx_complete_stat_fifo_int_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_pre_proc_swi_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_post_proc_swi_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_sec_frag_swi_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_pre_to_defrag_swi_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_defrag_to_rx_xfer_swi_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_dec_packet_in_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_dec_packet_in_fifo_full_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_dec_packet_out_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_pipeline_fifo_full_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diversity_num_of_packets_per_ant_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diversity_total_num_of_toggles_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_irq_thr_low_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_irq_thr_high_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_tx_stop_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_tx_resume_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_false_irq_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_adc_source_unexpected_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calib_fail_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calib_calib_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roaming_rssi_level_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_num_of_radar_detections_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conf_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radar_detection_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radar_debug_mode_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_fw_traces_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radar_detection_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radar_debug_mode_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radar_debug_mode_write._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_debugfs_add_files(ptr noundef %wl, ptr noundef %rootdir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %rootdir) #7
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %call) #7
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @clear_fw_stats_ops) #7
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_error_frame_non_ctrl_ops) #7
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_error_frame_ctrl_ops) #7
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_error_frame_during_protection_ops) #7
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_null_frame_tx_start_ops) #7
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_null_frame_cts_start_ops) #7
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_bar_retry_ops) #7
  %call28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_num_frame_cts_nul_flid_ops) #7
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_tx_abort_failure_ops) #7
  %call36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_tx_resume_failure_ops) #7
  %call40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_rx_cmplt_db_overflow_cnt_ops) #7
  %call44 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_elp_while_rx_exch_ops) #7
  %call48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_elp_while_tx_exch_ops) #7
  %call52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_elp_while_tx_ops) #7
  %call56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_elp_while_nvic_pending_ops) #7
  %call60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_rx_excessive_frame_len_ops) #7
  %call64 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_burst_mismatch_ops) #7
  %call68 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @error_tbc_exch_mismatch_ops) #7
  %call72 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_prepared_descs_ops) #7
  %call76 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_cmplt_ops) #7
  %call80 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_template_prepared_ops) #7
  %call84 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_data_prepared_ops) #7
  %call88 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_template_programmed_ops) #7
  %call92 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_data_programmed_ops) #7
  %call96 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_burst_programmed_ops) #7
  %call100 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_starts_ops) #7
  %call104 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_stop_ops) #7
  %call108 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_start_templates_ops) #7
  %call112 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_start_int_templates_ops) #7
  %call116 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_start_fw_gen_ops) #7
  %call120 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_start_data_ops) #7
  %call124 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_start_null_frame_ops) #7
  %call128 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_exch_ops) #7
  %call132 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_retry_template_ops) #7
  %call136 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_retry_data_ops) #7
  %call140 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_retry_per_rate_ops) #7
  %call144 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_exch_pending_ops) #7
  %call148 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_exch_expiry_ops) #7
  %call152 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_done_template_ops) #7
  %call156 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_done_data_ops) #7
  %call160 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_done_int_template_ops) #7
  %call164 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_cfe1_ops) #7
  %call168 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_tx_cfe2_ops) #7
  %call172 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_called_ops) #7
  %call176 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_mpdu_alloc_failed_ops) #7
  %call180 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_init_called_ops) #7
  %call184 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_in_process_called_ops) #7
  %call188 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_tkip_called_ops) #7
  %call192 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_key_not_found_ops) #7
  %call196 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_need_fragmentation_ops) #7
  %call200 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_bad_mblk_num_ops) #7
  %call204 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_failed_ops) #7
  %call208 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_cache_hit_ops) #7
  %call212 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_frag_cache_miss_ops) #7
  %call216 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_beacon_early_term_ops) #7
  %call220 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_out_of_mpdu_nodes_ops) #7
  %call224 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.58, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_hdr_overflow_ops) #7
  %call228 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.59, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_dropped_frame_ops) #7
  %call232 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.60, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_done_ops) #7
  %call236 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.61, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_defrag_ops) #7
  %call240 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.62, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_defrag_end_ops) #7
  %call244 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.63, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_cmplt_ops) #7
  %call248 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.64, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_pre_complt_ops) #7
  %call252 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.65, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_cmplt_task_ops) #7
  %call256 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.66, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_phy_hdr_ops) #7
  %call260 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.67, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_timeout_ops) #7
  %call264 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.68, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_rts_timeout_ops) #7
  %call268 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.69, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_timeout_wa_ops) #7
  %call272 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.70, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_defrag_called_ops) #7
  %call276 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.71, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_defrag_init_called_ops) #7
  %call280 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.72, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_defrag_in_process_called_ops) #7
  %call284 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.73, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_defrag_tkip_called_ops) #7
  %call288 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.74, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_defrag_need_defrag_ops) #7
  %call292 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.75, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_defrag_decrypt_failed_ops) #7
  %call296 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.76, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_decrypt_key_not_found_ops) #7
  %call300 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.77, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_defrag_need_decrypt_ops) #7
  %call304 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.78, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_tkip_replays_ops) #7
  %call308 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rx_xfr_ops) #7
  %call312 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.80, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_irqs_ops) #7
  %call316 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.81, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_missing_bcns_cnt_ops) #7
  %call320 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.82, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_rcvd_bcns_cnt_ops) #7
  %call324 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.83, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_connection_out_of_sync_ops) #7
  %call328 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.84, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_cont_miss_bcns_spread_ops) #7
  %call332 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.85, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_rcvd_awake_bcns_cnt_ops) #7
  %call336 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.86, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_sleep_time_count_ops) #7
  %call340 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.87, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_sleep_time_avg_ops) #7
  %call344 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.88, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_sleep_cycle_avg_ops) #7
  %call348 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.89, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_sleep_percent_ops) #7
  %call352 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.90, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_ap_sleep_active_conf_ops) #7
  %call356 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.91, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_ap_sleep_user_conf_ops) #7
  %call360 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.92, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_ap_sleep_counter_ops) #7
  %call364 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.93, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_filter_beacon_filter_ops) #7
  %call368 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.94, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_filter_arp_filter_ops) #7
  %call372 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.95, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_filter_mc_filter_ops) #7
  %call376 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.96, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_filter_dup_filter_ops) #7
  %call380 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.97, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_filter_data_filter_ops) #7
  %call384 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.98, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_filter_ibss_filter_ops) #7
  %call388 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.99, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_filter_protection_filter_ops) #7
  %call392 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.100, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_filter_accum_arp_pend_requests_ops) #7
  %call396 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.101, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_filter_max_arp_queue_dep_ops) #7
  %call400 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.102, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_rate_rx_frames_per_rates_ops) #7
  %call404 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.103, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @aggr_size_tx_agg_rate_ops) #7
  %call408 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.104, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @aggr_size_tx_agg_len_ops) #7
  %call412 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.105, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @aggr_size_rx_size_ops) #7
  %call416 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.106, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_hs_tx_stat_fifo_int_ops) #7
  %call420 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.107, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_enc_tx_stat_fifo_int_ops) #7
  %call424 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.108, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_enc_rx_stat_fifo_int_ops) #7
  %call428 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.109, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_rx_complete_stat_fifo_int_ops) #7
  %call432 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.110, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_pre_proc_swi_ops) #7
  %call436 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.111, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_post_proc_swi_ops) #7
  %call440 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.112, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_sec_frag_swi_ops) #7
  %call444 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.113, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_pre_to_defrag_swi_ops) #7
  %call448 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.114, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_defrag_to_rx_xfer_swi_ops) #7
  %call452 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.115, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_dec_packet_in_ops) #7
  %call456 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.116, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_dec_packet_in_fifo_full_ops) #7
  %call460 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.117, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_dec_packet_out_ops) #7
  %call464 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.118, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pipeline_pipeline_fifo_full_ops) #7
  %call468 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.119, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @diversity_num_of_packets_per_ant_ops) #7
  %call472 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.120, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @diversity_total_num_of_toggles_ops) #7
  %call476 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.121, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @thermal_irq_thr_low_ops) #7
  %call480 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.122, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @thermal_irq_thr_high_ops) #7
  %call484 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.123, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @thermal_tx_stop_ops) #7
  %call488 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.124, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @thermal_tx_resume_ops) #7
  %call492 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.125, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @thermal_false_irq_ops) #7
  %call496 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.126, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @thermal_adc_source_unexpected_ops) #7
  %call500 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.127, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @calib_fail_count_ops) #7
  %call504 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.128, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @calib_calib_count_ops) #7
  %call508 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.129, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @roaming_rssi_level_ops) #7
  %call512 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.130, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @dfs_num_of_radar_detections_ops) #7
  %call516 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.131, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @conf_ops) #7
  %call520 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.132, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @radar_detection_ops) #7
  %call524 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.133, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @radar_debug_mode_ops) #7
  %call528 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.134, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @dynamic_fw_traces_ops) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_fw_stats_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !564

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @wl18xx_acx_clear_statistics(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp2, i32 %call, i32 %count
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %count.addr.0 = phi i32 [ %count, %entry.out_crit_edge ], [ %spec.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %count.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_clear_statistics(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_error_frame_non_ctrl_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %error = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %error to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %error, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1271_debugfs_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_format_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_error_frame_ctrl_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %error_frame_ctrl = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %error_frame_ctrl to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %error_frame_ctrl, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_error_frame_during_protection_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %error_frame_during_protection = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %error_frame_during_protection to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %error_frame_during_protection, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_null_frame_tx_start_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %null_frame_tx_start = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %null_frame_tx_start to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %null_frame_tx_start, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_null_frame_cts_start_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %null_frame_cts_start = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %null_frame_cts_start to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %null_frame_cts_start, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_bar_retry_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %bar_retry = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %bar_retry to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %bar_retry, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_num_frame_cts_nul_flid_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %num_frame_cts_nul_flid = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %num_frame_cts_nul_flid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %num_frame_cts_nul_flid, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_tx_abort_failure_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_abort_failure = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %tx_abort_failure to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_abort_failure, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_tx_resume_failure_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_resume_failure = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %tx_resume_failure to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_resume_failure, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_rx_cmplt_db_overflow_cnt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_cmplt_db_overflow_cnt = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 9
  %4 = ptrtoint ptr %rx_cmplt_db_overflow_cnt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_cmplt_db_overflow_cnt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_elp_while_rx_exch_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %elp_while_rx_exch = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %elp_while_rx_exch to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %elp_while_rx_exch, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_elp_while_tx_exch_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %elp_while_tx_exch = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %elp_while_tx_exch to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %elp_while_tx_exch, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_elp_while_tx_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %elp_while_tx = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %elp_while_tx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %elp_while_tx, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_elp_while_nvic_pending_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %elp_while_nvic_pending = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 13
  %4 = ptrtoint ptr %elp_while_nvic_pending to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %elp_while_nvic_pending, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_rx_excessive_frame_len_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_excessive_frame_len = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 14
  %4 = ptrtoint ptr %rx_excessive_frame_len to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_excessive_frame_len, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_burst_mismatch_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %burst_mismatch = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 15
  %4 = ptrtoint ptr %burst_mismatch to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %burst_mismatch, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_tbc_exch_mismatch_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tbc_exch_mismatch = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %tbc_exch_mismatch to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tbc_exch_mismatch, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_prepared_descs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_cmplt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_cmplt = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %tx_cmplt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_cmplt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_template_prepared_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_template_prepared = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tx_template_prepared to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_template_prepared, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_data_prepared_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_data_prepared = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %tx_data_prepared to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_data_prepared, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_template_programmed_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_template_programmed = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %tx_template_programmed to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_template_programmed, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_data_programmed_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_data_programmed = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %tx_data_programmed to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_data_programmed, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_burst_programmed_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_burst_programmed = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %tx_burst_programmed to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_burst_programmed, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_starts_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_starts = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %tx_starts to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_starts, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_stop_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_stop = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %tx_stop to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_stop, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_start_templates_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_start_templates = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 9
  %4 = ptrtoint ptr %tx_start_templates to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_start_templates, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_start_int_templates_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_start_int_templates = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 10
  %4 = ptrtoint ptr %tx_start_int_templates to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_start_int_templates, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_start_fw_gen_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_start_fw_gen = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 11
  %4 = ptrtoint ptr %tx_start_fw_gen to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_start_fw_gen, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_start_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_start_data = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 12
  %4 = ptrtoint ptr %tx_start_data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_start_data, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_start_null_frame_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_start_null_frame = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 13
  %4 = ptrtoint ptr %tx_start_null_frame to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_start_null_frame, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_exch_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_exch = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 14
  %4 = ptrtoint ptr %tx_exch to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_exch, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_retry_template_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_retry_template = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 15
  %4 = ptrtoint ptr %tx_retry_template to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_retry_template, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_retry_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_retry_data = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 16
  %4 = ptrtoint ptr %tx_retry_data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_retry_data, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_retry_per_rate_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 0, i32 256)
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pos.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.012
  %sub = sub nuw nsw i32 256, %pos.012
  %arrayidx = getelementptr %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 17, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx, align 1
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.136, i32 noundef %i.013, i32 noundef %6)
  %add = add i32 %call, %pos.012
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %i.013)
  %cmp = icmp ult i32 %i.013, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp2 = icmp ult i32 %add, 256
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_exch_pending_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_exch_pending = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 18
  %4 = ptrtoint ptr %tx_exch_pending to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_exch_pending, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_exch_expiry_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_exch_expiry = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 19
  %4 = ptrtoint ptr %tx_exch_expiry to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_exch_expiry, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_done_template_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_done_template = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 20
  %4 = ptrtoint ptr %tx_done_template to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_done_template, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_done_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_done_data = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 21
  %4 = ptrtoint ptr %tx_done_data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_done_data, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_done_int_template_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_done_int_template = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 22
  %4 = ptrtoint ptr %tx_done_int_template to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_done_int_template, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_cfe1_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_cfe1 = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 23
  %4 = ptrtoint ptr %tx_cfe1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_cfe1, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_tx_cfe2_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_cfe2 = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 24
  %4 = ptrtoint ptr %tx_cfe2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_cfe2, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_called_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_called = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 25
  %4 = ptrtoint ptr %frag_called to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_called, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_mpdu_alloc_failed_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_mpdu_alloc_failed = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 26
  %4 = ptrtoint ptr %frag_mpdu_alloc_failed to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_mpdu_alloc_failed, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_init_called_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_init_called = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 27
  %4 = ptrtoint ptr %frag_init_called to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_init_called, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_in_process_called_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_in_process_called = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 28
  %4 = ptrtoint ptr %frag_in_process_called to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_in_process_called, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_tkip_called_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_tkip_called = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 29
  %4 = ptrtoint ptr %frag_tkip_called to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_tkip_called, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_key_not_found_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_key_not_found = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 30
  %4 = ptrtoint ptr %frag_key_not_found to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_key_not_found, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_need_fragmentation_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_need_fragmentation = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 31
  %4 = ptrtoint ptr %frag_need_fragmentation to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_need_fragmentation, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_bad_mblk_num_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_bad_mblk_num = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 32
  %4 = ptrtoint ptr %frag_bad_mblk_num to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_bad_mblk_num, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_failed_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_failed = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 33
  %4 = ptrtoint ptr %frag_failed to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_failed, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_cache_hit_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_cache_hit = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 34
  %4 = ptrtoint ptr %frag_cache_hit to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_cache_hit, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_frag_cache_miss_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %frag_cache_miss = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 2, i32 35
  %4 = ptrtoint ptr %frag_cache_miss to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %frag_cache_miss, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_beacon_early_term_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_out_of_mpdu_nodes_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_out_of_mpdu_nodes = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %rx_out_of_mpdu_nodes to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_out_of_mpdu_nodes, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_hdr_overflow_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_hdr_overflow = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %rx_hdr_overflow to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_hdr_overflow, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_dropped_frame_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_dropped_frame = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %rx_dropped_frame to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_dropped_frame, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_done_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_done = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %rx_done to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_done, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_defrag_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_defrag = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %rx_defrag to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_defrag, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_defrag_end_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_defrag_end = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %rx_defrag_end to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_defrag_end, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_cmplt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_cmplt = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %rx_cmplt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_cmplt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_pre_complt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_pre_complt = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 9
  %4 = ptrtoint ptr %rx_pre_complt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_pre_complt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_cmplt_task_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_cmplt_task = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 10
  %4 = ptrtoint ptr %rx_cmplt_task to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_cmplt_task, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_phy_hdr_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_phy_hdr = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 11
  %4 = ptrtoint ptr %rx_phy_hdr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_phy_hdr, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_timeout_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_timeout = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_timeout, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_rts_timeout_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_rts_timeout = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 13
  %4 = ptrtoint ptr %rx_rts_timeout to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_rts_timeout, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_timeout_wa_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_timeout_wa = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 14
  %4 = ptrtoint ptr %rx_timeout_wa to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_timeout_wa, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_defrag_called_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %defrag_called = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 15
  %4 = ptrtoint ptr %defrag_called to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %defrag_called, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_defrag_init_called_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %defrag_init_called = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 16
  %4 = ptrtoint ptr %defrag_init_called to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %defrag_init_called, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_defrag_in_process_called_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %defrag_in_process_called = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 17
  %4 = ptrtoint ptr %defrag_in_process_called to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %defrag_in_process_called, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_defrag_tkip_called_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %defrag_tkip_called = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %defrag_tkip_called to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %defrag_tkip_called, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_defrag_need_defrag_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %defrag_need_defrag = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 19
  %4 = ptrtoint ptr %defrag_need_defrag to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %defrag_need_defrag, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_defrag_decrypt_failed_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %defrag_decrypt_failed = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 20
  %4 = ptrtoint ptr %defrag_decrypt_failed to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %defrag_decrypt_failed, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_decrypt_key_not_found_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %decrypt_key_not_found = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 21
  %4 = ptrtoint ptr %decrypt_key_not_found to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %decrypt_key_not_found, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_defrag_need_decrypt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %defrag_need_decrypt = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 22
  %4 = ptrtoint ptr %defrag_need_decrypt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %defrag_need_decrypt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_tkip_replays_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_tkip_replays = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 23
  %4 = ptrtoint ptr %rx_tkip_replays to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_tkip_replays, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rx_xfr_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_xfr = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %rx_xfr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_xfr, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_irqs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %isr = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %isr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %isr, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_missing_bcns_cnt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %pwr = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pwr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pwr, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_rcvd_bcns_cnt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rcvd_bcns_cnt = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %rcvd_bcns_cnt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rcvd_bcns_cnt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_connection_out_of_sync_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %connection_out_of_sync = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %connection_out_of_sync to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %connection_out_of_sync, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_cont_miss_bcns_spread_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 0, i32 256)
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pos.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.012
  %sub = sub nuw nsw i32 256, %pos.012
  %arrayidx = getelementptr %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 3, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx, align 1
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.136, i32 noundef %i.013, i32 noundef %6)
  %add = add i32 %call, %pos.012
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.013)
  %cmp = icmp ult i32 %i.013, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp2 = icmp ult i32 %add, 256
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_rcvd_awake_bcns_cnt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rcvd_awake_bcns_cnt = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %rcvd_awake_bcns_cnt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rcvd_awake_bcns_cnt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_sleep_time_count_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %sleep_time_count = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %sleep_time_count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sleep_time_count, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_sleep_time_avg_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %sleep_time_avg = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 6
  %4 = ptrtoint ptr %sleep_time_avg to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sleep_time_avg, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_sleep_cycle_avg_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %sleep_cycle_avg = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 7
  %4 = ptrtoint ptr %sleep_cycle_avg to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sleep_cycle_avg, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_sleep_percent_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %sleep_percent = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %sleep_percent to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sleep_percent, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_ap_sleep_active_conf_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %ap_sleep_active_conf = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 9
  %4 = ptrtoint ptr %ap_sleep_active_conf to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ap_sleep_active_conf, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_ap_sleep_user_conf_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %ap_sleep_user_conf = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 10
  %4 = ptrtoint ptr %ap_sleep_user_conf to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ap_sleep_user_conf, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_ap_sleep_counter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %ap_sleep_counter = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 5, i32 11
  %4 = ptrtoint ptr %ap_sleep_counter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ap_sleep_counter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_filter_beacon_filter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_filter = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rx_filter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_filter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_filter_arp_filter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %arp_filter = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arp_filter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arp_filter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_filter_mc_filter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %mc_filter = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %mc_filter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %mc_filter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_filter_dup_filter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %dup_filter = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %dup_filter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dup_filter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_filter_data_filter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %data_filter = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %data_filter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %data_filter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_filter_ibss_filter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %ibss_filter = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %ibss_filter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ibss_filter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_filter_protection_filter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %protection_filter = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %protection_filter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %protection_filter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_filter_accum_arp_pend_requests_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %accum_arp_pend_requests = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %accum_arp_pend_requests to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %accum_arp_pend_requests, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_filter_max_arp_queue_dep_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %max_arp_queue_dep = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %max_arp_queue_dep to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %max_arp_queue_dep, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_rate_rx_frames_per_rates_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 0, i32 256)
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_rate = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pos.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.012
  %sub = sub nuw nsw i32 256, %pos.012
  %arrayidx = getelementptr [50 x i32], ptr %rx_rate, i32 0, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx, align 1
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.136, i32 noundef %i.013, i32 noundef %6)
  %add = add i32 %call, %pos.012
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %i.013)
  %cmp = icmp ult i32 %i.013, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp2 = icmp ult i32 %add, 256
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aggr_size_tx_agg_rate_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 0, i32 256)
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %aggr_size = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pos.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.012
  %sub = sub nuw nsw i32 256, %pos.012
  %arrayidx = getelementptr [16 x i32], ptr %aggr_size, i32 0, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx, align 1
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.136, i32 noundef %i.013, i32 noundef %6)
  %add = add i32 %call, %pos.012
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.013)
  %cmp = icmp ult i32 %i.013, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp2 = icmp ult i32 %add, 256
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aggr_size_tx_agg_len_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 0, i32 256)
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pos.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.012
  %sub = sub nuw nsw i32 256, %pos.012
  %arrayidx = getelementptr %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 8, i32 1, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx, align 1
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.136, i32 noundef %i.013, i32 noundef %6)
  %add = add i32 %call, %pos.012
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.013)
  %cmp = icmp ult i32 %i.013, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp2 = icmp ult i32 %add, 256
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aggr_size_rx_size_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 0, i32 256)
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pos.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.012
  %sub = sub nuw nsw i32 256, %pos.012
  %arrayidx = getelementptr %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 8, i32 2, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx, align 1
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.136, i32 noundef %i.013, i32 noundef %6)
  %add = add i32 %call, %pos.012
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.013)
  %cmp = icmp ult i32 %i.013, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp2 = icmp ult i32 %add, 256
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_hs_tx_stat_fifo_int_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %pipeline = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pipeline to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pipeline, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_enc_tx_stat_fifo_int_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %enc_tx_stat_fifo_int = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %enc_tx_stat_fifo_int to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %enc_tx_stat_fifo_int, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_enc_rx_stat_fifo_int_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %enc_rx_stat_fifo_int = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %enc_rx_stat_fifo_int to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %enc_rx_stat_fifo_int, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_rx_complete_stat_fifo_int_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %rx_complete_stat_fifo_int = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 4
  %4 = ptrtoint ptr %rx_complete_stat_fifo_int to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_complete_stat_fifo_int, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_pre_proc_swi_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %pre_proc_swi = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 5
  %4 = ptrtoint ptr %pre_proc_swi to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pre_proc_swi, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_post_proc_swi_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %post_proc_swi = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 6
  %4 = ptrtoint ptr %post_proc_swi to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %post_proc_swi, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_sec_frag_swi_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %sec_frag_swi = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 7
  %4 = ptrtoint ptr %sec_frag_swi to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sec_frag_swi, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_pre_to_defrag_swi_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %pre_to_defrag_swi = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 8
  %4 = ptrtoint ptr %pre_to_defrag_swi to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pre_to_defrag_swi, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_defrag_to_rx_xfer_swi_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %defrag_to_rx_xfer_swi = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 9
  %4 = ptrtoint ptr %defrag_to_rx_xfer_swi to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %defrag_to_rx_xfer_swi, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_dec_packet_in_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %dec_packet_in = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 10
  %4 = ptrtoint ptr %dec_packet_in to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dec_packet_in, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_dec_packet_in_fifo_full_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %dec_packet_in_fifo_full = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 11
  %4 = ptrtoint ptr %dec_packet_in_fifo_full to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dec_packet_in_fifo_full, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_dec_packet_out_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %dec_packet_out = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 12
  %4 = ptrtoint ptr %dec_packet_out to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dec_packet_out, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipeline_pipeline_fifo_full_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 0, i32 256)
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pos.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.012
  %sub = sub nuw nsw i32 256, %pos.012
  %arrayidx = getelementptr %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 9, i32 13, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %arrayidx, align 1
  %conv = zext i16 %6 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.136, i32 noundef %i.013, i32 noundef %conv)
  %add = add i32 %call, %pos.012
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.013)
  %cmp = icmp ult i32 %i.013, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp2 = icmp ult i32 %add, 256
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diversity_num_of_packets_per_ant_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 0, i32 256)
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %diversity = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %diversity to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %diversity, align 1
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef nonnull @.str.136, i32 noundef 0, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call)
  %cmp2 = icmp ult i32 %call, 256
  br i1 %cmp2, label %for.body.1, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub nuw nsw i32 256, %call
  %arrayidx.1 = getelementptr %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 10, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx.1, align 1
  %call.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.136, i32 noundef 1, i32 noundef %8)
  br label %for.end

for.end:                                          ; preds = %for.body.1, %entry.for.end_crit_edge
  %call4 = call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diversity_total_num_of_toggles_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %total_num_of_toggles = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %total_num_of_toggles to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %total_num_of_toggles, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_irq_thr_low_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %thermal = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %thermal to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %thermal, align 1
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_irq_thr_high_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %irq_thr_high = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %irq_thr_high to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %irq_thr_high, align 1
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_tx_stop_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_stop = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %tx_stop to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %tx_stop, align 1
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_tx_resume_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %tx_resume = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %tx_resume to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %tx_resume, align 1
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_false_irq_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %false_irq = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %false_irq to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %false_irq, align 1
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_adc_source_unexpected_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %adc_source_unexpected = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 11, i32 5
  %4 = ptrtoint ptr %adc_source_unexpected to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %adc_source_unexpected, align 1
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calib_fail_count_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 0, i32 256)
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %calib = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pos.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.012
  %sub = sub nuw nsw i32 256, %pos.012
  %arrayidx = getelementptr [18 x i16], ptr %calib, i32 0, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %arrayidx, align 1
  %conv = zext i16 %6 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.136, i32 noundef %i.013, i32 noundef %conv)
  %add = add i32 %call, %pos.012
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i.013)
  %cmp = icmp ult i32 %i.013, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp2 = icmp ult i32 %add, 256
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calib_calib_count_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %calib_count = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %calib_count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %calib_count, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.135, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roaming_rssi_level_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %roaming = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %roaming to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %roaming, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.138, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfs_num_of_radar_detections_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #7
  %dfs = getelementptr inbounds %struct.wl18xx_acx_statistics, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %dfs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dfs, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.138, i32 noundef %5) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conf_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 125
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1229) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -905912048, ptr %call7.i, align 8
  %header.sroa.5.0.pos.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 4
  %6 = ptrtoint ptr %header.sroa.5.0.pos.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 117442304, ptr %header.sroa.5.0.pos.0..sroa_idx, align 4
  %header.sroa.7.0.pos.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 8
  %7 = ptrtoint ptr %header.sroa.7.0.pos.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %header.sroa.7.0.pos.0..sroa_idx, align 8
  %add.ptr = getelementptr i8, ptr %call7.i, i32 12
  %conf = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %conf, i32 924)
  %add.ptr2 = getelementptr i8, ptr %call7.i, i32 936
  %conf3 = getelementptr inbounds %struct.wl18xx_priv, ptr %3, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %add.ptr2, ptr %conf3, i32 293)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef 1229) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radar_detection_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %channel = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %channel) #7
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %channel, align 1, !annotation !565
  %call = call i32 @kstrtou8_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %channel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2.not = icmp eq i32 %4, 2
  br i1 %cmp2.not, label %if.end5, label %if.end.out_crit_edge, !prof !564

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !566
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !567
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then8.out_crit_edge, label %do.end11.i.i.i.i

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !568
  br label %out

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel, align 1
  %call11 = call i32 @wl18xx_cmd_radar_detection_debug(ptr noundef %1, i8 noundef zeroext %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  %spec.select = select i1 %cmp12, i32 %call11, i32 %count
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i32 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i32, ptr %last_busy.i, align 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i33 = call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #7
  br label %out

out:                                              ; preds = %if.end10, %do.end11.i.i.i.i, %if.then8.out_crit_edge, %if.end.out_crit_edge
  %count.addr.1 = phi i32 [ %count, %if.end.out_crit_edge ], [ %spec.select, %if.end10 ], [ %count, %if.then8.out_crit_edge ], [ %count, %do.end11.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count.addr.1, %out ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %channel) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_cmd_radar_detection_debug(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radar_debug_mode_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %radar_debug_mode = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 135
  %2 = ptrtoint ptr %radar_debug_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %radar_debug_mode, align 4, !range !569
  %4 = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.138, i32 noundef %4) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radar_debug_mode_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !565
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  %radar_debug_mode = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 135
  %frombool = zext i1 %tobool to i8
  %7 = ptrtoint ptr %radar_debug_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %radar_debug_mode, align 4
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp11.not = icmp eq i32 %9, 2
  br i1 %cmp11.not, label %if.end15, label %if.end10.out_crit_edge, !prof !564

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %if.end10
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !566
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !567
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then18.out_crit_edge, label %do.end11.i.i.i.i

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !568
  br label %out

if.end20:                                         ; preds = %if.end15
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 39
  %15 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn64 = load ptr, ptr %wlvif_list, align 4
  %cmp23.not66 = icmp eq ptr %.pn64, %wlvif_list
  br i1 %cmp23.not66, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20.for.body_crit_edge
  %.pn67 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn64, %if.end20.for.body_crit_edge ]
  %bss_type = getelementptr i8, ptr %.pn67, i32 12
  %16 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp26 = icmp eq i8 %17, 3
  br i1 %cmp26, label %if.then28, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %wlvif.068 = getelementptr i8, ptr %.pn67, i32 -4
  %18 = ptrtoint ptr %radar_debug_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %radar_debug_mode, align 4, !range !569
  %call32 = call i32 @wlcore_cmd_generic_cfg(ptr noundef %1, ptr noundef %wlvif.068, i8 noundef zeroext 2, i8 noundef zeroext %19, i8 noundef zeroext 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn67, align 4
  %cmp23.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end20.for.end_crit_edge
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i62 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i62, ptr %last_busy.i, align 8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i63 = call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #7
  br label %out

out:                                              ; preds = %for.end, %do.end11.i.i.i.i, %if.then18.out_crit_edge, %if.end10.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %out ], [ -22, %do.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_cmd_generic_cfg(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dynamic_fw_traces_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dynamic_fw_traces = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 149
  %2 = ptrtoint ptr %dynamic_fw_traces to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dynamic_fw_traces, align 8
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.138, i32 noundef %3) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dynamic_fw_traces_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !565
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %dynamic_fw_traces = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 149
  %5 = ptrtoint ptr %dynamic_fw_traces to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dynamic_fw_traces, align 8
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.not = icmp eq i32 %7, 2
  br i1 %cmp1.not, label %if.end4, label %if.end.out_crit_edge, !prof !564

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !566
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !567
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then7.out_crit_edge, label %do.end11.i.i.i.i

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !568
  br label %out

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 @wl18xx_acx_dynamic_fw_traces(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  %spec.select = select i1 %cmp11, i32 %call10, i32 %count
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i33 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i33, ptr %last_busy.i, align 8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i34 = call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #7
  br label %out

out:                                              ; preds = %if.end9, %do.end11.i.i.i.i, %if.then7.out_crit_edge, %if.end.out_crit_edge
  %count.addr.1 = phi i32 [ %count, %if.end.out_crit_edge ], [ %spec.select, %if.end9 ], [ %count, %if.then7.out_crit_edge ], [ %count, %do.end11.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.1, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_dynamic_fw_traces(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 281)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 281)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !344, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !530, !532, !534, !536, !538, !539, !540, !541, !542, !544, !546, !547, !548, !549, !551, !552, !553}
!llvm.module.flags = !{!555, !556, !557, !558, !559, !560, !561, !562}
!llvm.ident = !{!563}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 413, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 414, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 416, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 418, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 419, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 420, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 421, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 422, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 423, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 424, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 425, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 426, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 427, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 428, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 429, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 430, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 431, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 432, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 433, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 434, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 436, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 437, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 438, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 439, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 440, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 441, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 442, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 443, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 444, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 445, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 446, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 447, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 448, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 449, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 450, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 451, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 452, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 453, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 454, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 455, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 456, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 457, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 458, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 459, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 460, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 461, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 462, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 463, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 464, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 465, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 466, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 467, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 468, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 469, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 470, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 471, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 473, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 474, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 475, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 476, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 477, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 478, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 479, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 480, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 481, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 482, i32 2}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 483, i32 2}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 484, i32 2}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 485, i32 2}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 486, i32 2}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 487, i32 2}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 488, i32 2}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 489, i32 2}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 490, i32 2}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 491, i32 2}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 492, i32 2}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 493, i32 2}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 494, i32 2}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 495, i32 2}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 496, i32 2}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 498, i32 2}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 500, i32 2}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 501, i32 2}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 502, i32 2}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 503, i32 2}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 504, i32 2}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 505, i32 2}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 506, i32 2}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 507, i32 2}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 508, i32 2}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 509, i32 2}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 510, i32 2}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 511, i32 2}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 513, i32 2}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 514, i32 2}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 515, i32 2}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 516, i32 2}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 517, i32 2}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 518, i32 2}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 519, i32 2}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 520, i32 2}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 521, i32 2}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 523, i32 2}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 525, i32 2}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 526, i32 2}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 527, i32 2}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 529, i32 2}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 530, i32 2}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 531, i32 2}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 532, i32 2}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 533, i32 2}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 534, i32 2}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 535, i32 2}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 536, i32 2}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 537, i32 2}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 538, i32 2}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 539, i32 2}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 540, i32 2}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 541, i32 2}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 543, i32 2}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 544, i32 2}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 546, i32 2}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 547, i32 2}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 548, i32 2}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 549, i32 2}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 550, i32 2}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 551, i32 2}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 553, i32 2}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 555, i32 2}
!258 = !{ptr @.str.129, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 557, i32 2}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 559, i32 2}
!262 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 561, i32 2}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 562, i32 2}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 564, i32 2}
!268 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 566, i32 2}
!270 = !{ptr @clear_fw_stats_ops, !271, !"clear_fw_stats_ops", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 242, i32 37}
!272 = !{ptr @error_error_frame_non_ctrl_ops, !273, !"error_error_frame_non_ctrl_ops", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 27, i32 1}
!274 = !{ptr @.str.135, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @error_error_frame_ctrl_ops, !276, !"error_error_frame_ctrl_ops", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 28, i32 1}
!277 = !{ptr @error_error_frame_during_protection_ops, !278, !"error_error_frame_during_protection_ops", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 29, i32 1}
!279 = !{ptr @error_null_frame_tx_start_ops, !280, !"error_null_frame_tx_start_ops", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 30, i32 1}
!281 = !{ptr @error_null_frame_cts_start_ops, !282, !"error_null_frame_cts_start_ops", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 31, i32 1}
!283 = !{ptr @error_bar_retry_ops, !284, !"error_bar_retry_ops", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 32, i32 1}
!285 = !{ptr @error_num_frame_cts_nul_flid_ops, !286, !"error_num_frame_cts_nul_flid_ops", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 33, i32 1}
!287 = !{ptr @error_tx_abort_failure_ops, !288, !"error_tx_abort_failure_ops", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 34, i32 1}
!289 = !{ptr @error_tx_resume_failure_ops, !290, !"error_tx_resume_failure_ops", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 35, i32 1}
!291 = !{ptr @error_rx_cmplt_db_overflow_cnt_ops, !292, !"error_rx_cmplt_db_overflow_cnt_ops", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 36, i32 1}
!293 = !{ptr @error_elp_while_rx_exch_ops, !294, !"error_elp_while_rx_exch_ops", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 37, i32 1}
!295 = !{ptr @error_elp_while_tx_exch_ops, !296, !"error_elp_while_tx_exch_ops", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 38, i32 1}
!297 = !{ptr @error_elp_while_tx_ops, !298, !"error_elp_while_tx_ops", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 39, i32 1}
!299 = !{ptr @error_elp_while_nvic_pending_ops, !300, !"error_elp_while_nvic_pending_ops", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 40, i32 1}
!301 = !{ptr @error_rx_excessive_frame_len_ops, !302, !"error_rx_excessive_frame_len_ops", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 41, i32 1}
!303 = !{ptr @error_burst_mismatch_ops, !304, !"error_burst_mismatch_ops", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 42, i32 1}
!305 = !{ptr @error_tbc_exch_mismatch_ops, !306, !"error_tbc_exch_mismatch_ops", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 43, i32 1}
!307 = !{ptr @tx_tx_prepared_descs_ops, !308, !"tx_tx_prepared_descs_ops", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 45, i32 1}
!309 = !{ptr @tx_tx_cmplt_ops, !310, !"tx_tx_cmplt_ops", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 46, i32 1}
!311 = !{ptr @tx_tx_template_prepared_ops, !312, !"tx_tx_template_prepared_ops", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 47, i32 1}
!313 = !{ptr @tx_tx_data_prepared_ops, !314, !"tx_tx_data_prepared_ops", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 48, i32 1}
!315 = !{ptr @tx_tx_template_programmed_ops, !316, !"tx_tx_template_programmed_ops", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 49, i32 1}
!317 = !{ptr @tx_tx_data_programmed_ops, !318, !"tx_tx_data_programmed_ops", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 50, i32 1}
!319 = !{ptr @tx_tx_burst_programmed_ops, !320, !"tx_tx_burst_programmed_ops", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 51, i32 1}
!321 = !{ptr @tx_tx_starts_ops, !322, !"tx_tx_starts_ops", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 52, i32 1}
!323 = !{ptr @tx_tx_stop_ops, !324, !"tx_tx_stop_ops", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 53, i32 1}
!325 = !{ptr @tx_tx_start_templates_ops, !326, !"tx_tx_start_templates_ops", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 54, i32 1}
!327 = !{ptr @tx_tx_start_int_templates_ops, !328, !"tx_tx_start_int_templates_ops", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 55, i32 1}
!329 = !{ptr @tx_tx_start_fw_gen_ops, !330, !"tx_tx_start_fw_gen_ops", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 56, i32 1}
!331 = !{ptr @tx_tx_start_data_ops, !332, !"tx_tx_start_data_ops", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 57, i32 1}
!333 = !{ptr @tx_tx_start_null_frame_ops, !334, !"tx_tx_start_null_frame_ops", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 58, i32 1}
!335 = !{ptr @tx_tx_exch_ops, !336, !"tx_tx_exch_ops", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 59, i32 1}
!337 = !{ptr @tx_tx_retry_template_ops, !338, !"tx_tx_retry_template_ops", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 60, i32 1}
!339 = !{ptr @tx_tx_retry_data_ops, !340, !"tx_tx_retry_data_ops", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 61, i32 1}
!341 = !{ptr @tx_tx_retry_per_rate_ops, !342, !"tx_tx_retry_per_rate_ops", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 62, i32 1}
!343 = !{ptr @.str.136, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.137, !342, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @tx_tx_exch_pending_ops, !346, !"tx_tx_exch_pending_ops", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 64, i32 1}
!347 = !{ptr @tx_tx_exch_expiry_ops, !348, !"tx_tx_exch_expiry_ops", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 65, i32 1}
!349 = !{ptr @tx_tx_done_template_ops, !350, !"tx_tx_done_template_ops", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 66, i32 1}
!351 = !{ptr @tx_tx_done_data_ops, !352, !"tx_tx_done_data_ops", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 67, i32 1}
!353 = !{ptr @tx_tx_done_int_template_ops, !354, !"tx_tx_done_int_template_ops", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 68, i32 1}
!355 = !{ptr @tx_tx_cfe1_ops, !356, !"tx_tx_cfe1_ops", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 69, i32 1}
!357 = !{ptr @tx_tx_cfe2_ops, !358, !"tx_tx_cfe2_ops", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 70, i32 1}
!359 = !{ptr @tx_frag_called_ops, !360, !"tx_frag_called_ops", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 71, i32 1}
!361 = !{ptr @tx_frag_mpdu_alloc_failed_ops, !362, !"tx_frag_mpdu_alloc_failed_ops", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 72, i32 1}
!363 = !{ptr @tx_frag_init_called_ops, !364, !"tx_frag_init_called_ops", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 73, i32 1}
!365 = !{ptr @tx_frag_in_process_called_ops, !366, !"tx_frag_in_process_called_ops", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 74, i32 1}
!367 = !{ptr @tx_frag_tkip_called_ops, !368, !"tx_frag_tkip_called_ops", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 75, i32 1}
!369 = !{ptr @tx_frag_key_not_found_ops, !370, !"tx_frag_key_not_found_ops", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 76, i32 1}
!371 = !{ptr @tx_frag_need_fragmentation_ops, !372, !"tx_frag_need_fragmentation_ops", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 77, i32 1}
!373 = !{ptr @tx_frag_bad_mblk_num_ops, !374, !"tx_frag_bad_mblk_num_ops", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 78, i32 1}
!375 = !{ptr @tx_frag_failed_ops, !376, !"tx_frag_failed_ops", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 79, i32 1}
!377 = !{ptr @tx_frag_cache_hit_ops, !378, !"tx_frag_cache_hit_ops", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 80, i32 1}
!379 = !{ptr @tx_frag_cache_miss_ops, !380, !"tx_frag_cache_miss_ops", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 81, i32 1}
!381 = !{ptr @rx_rx_beacon_early_term_ops, !382, !"rx_rx_beacon_early_term_ops", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 83, i32 1}
!383 = !{ptr @rx_rx_out_of_mpdu_nodes_ops, !384, !"rx_rx_out_of_mpdu_nodes_ops", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 84, i32 1}
!385 = !{ptr @rx_rx_hdr_overflow_ops, !386, !"rx_rx_hdr_overflow_ops", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 85, i32 1}
!387 = !{ptr @rx_rx_dropped_frame_ops, !388, !"rx_rx_dropped_frame_ops", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 86, i32 1}
!389 = !{ptr @rx_rx_done_ops, !390, !"rx_rx_done_ops", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 87, i32 1}
!391 = !{ptr @rx_rx_defrag_ops, !392, !"rx_rx_defrag_ops", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 88, i32 1}
!393 = !{ptr @rx_rx_defrag_end_ops, !394, !"rx_rx_defrag_end_ops", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 89, i32 1}
!395 = !{ptr @rx_rx_cmplt_ops, !396, !"rx_rx_cmplt_ops", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 90, i32 1}
!397 = !{ptr @rx_rx_pre_complt_ops, !398, !"rx_rx_pre_complt_ops", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 91, i32 1}
!399 = !{ptr @rx_rx_cmplt_task_ops, !400, !"rx_rx_cmplt_task_ops", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 92, i32 1}
!401 = !{ptr @rx_rx_phy_hdr_ops, !402, !"rx_rx_phy_hdr_ops", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 93, i32 1}
!403 = !{ptr @rx_rx_timeout_ops, !404, !"rx_rx_timeout_ops", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 94, i32 1}
!405 = !{ptr @rx_rx_rts_timeout_ops, !406, !"rx_rx_rts_timeout_ops", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 95, i32 1}
!407 = !{ptr @rx_rx_timeout_wa_ops, !408, !"rx_rx_timeout_wa_ops", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 96, i32 1}
!409 = !{ptr @rx_defrag_called_ops, !410, !"rx_defrag_called_ops", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 97, i32 1}
!411 = !{ptr @rx_defrag_init_called_ops, !412, !"rx_defrag_init_called_ops", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 98, i32 1}
!413 = !{ptr @rx_defrag_in_process_called_ops, !414, !"rx_defrag_in_process_called_ops", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 99, i32 1}
!415 = !{ptr @rx_defrag_tkip_called_ops, !416, !"rx_defrag_tkip_called_ops", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 100, i32 1}
!417 = !{ptr @rx_defrag_need_defrag_ops, !418, !"rx_defrag_need_defrag_ops", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 101, i32 1}
!419 = !{ptr @rx_defrag_decrypt_failed_ops, !420, !"rx_defrag_decrypt_failed_ops", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 102, i32 1}
!421 = !{ptr @rx_decrypt_key_not_found_ops, !422, !"rx_decrypt_key_not_found_ops", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 103, i32 1}
!423 = !{ptr @rx_defrag_need_decrypt_ops, !424, !"rx_defrag_need_decrypt_ops", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 104, i32 1}
!425 = !{ptr @rx_rx_tkip_replays_ops, !426, !"rx_rx_tkip_replays_ops", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 105, i32 1}
!427 = !{ptr @rx_rx_xfr_ops, !428, !"rx_rx_xfr_ops", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 106, i32 1}
!429 = !{ptr @isr_irqs_ops, !430, !"isr_irqs_ops", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 108, i32 1}
!431 = !{ptr @pwr_missing_bcns_cnt_ops, !432, !"pwr_missing_bcns_cnt_ops", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 110, i32 1}
!433 = !{ptr @pwr_rcvd_bcns_cnt_ops, !434, !"pwr_rcvd_bcns_cnt_ops", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 111, i32 1}
!435 = !{ptr @pwr_connection_out_of_sync_ops, !436, !"pwr_connection_out_of_sync_ops", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 112, i32 1}
!437 = !{ptr @pwr_cont_miss_bcns_spread_ops, !438, !"pwr_cont_miss_bcns_spread_ops", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 113, i32 1}
!439 = !{ptr @pwr_rcvd_awake_bcns_cnt_ops, !440, !"pwr_rcvd_awake_bcns_cnt_ops", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 115, i32 1}
!441 = !{ptr @pwr_sleep_time_count_ops, !442, !"pwr_sleep_time_count_ops", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 116, i32 1}
!443 = !{ptr @pwr_sleep_time_avg_ops, !444, !"pwr_sleep_time_avg_ops", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 117, i32 1}
!445 = !{ptr @pwr_sleep_cycle_avg_ops, !446, !"pwr_sleep_cycle_avg_ops", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 118, i32 1}
!447 = !{ptr @pwr_sleep_percent_ops, !448, !"pwr_sleep_percent_ops", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 119, i32 1}
!449 = !{ptr @pwr_ap_sleep_active_conf_ops, !450, !"pwr_ap_sleep_active_conf_ops", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 120, i32 1}
!451 = !{ptr @pwr_ap_sleep_user_conf_ops, !452, !"pwr_ap_sleep_user_conf_ops", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 121, i32 1}
!453 = !{ptr @pwr_ap_sleep_counter_ops, !454, !"pwr_ap_sleep_counter_ops", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 122, i32 1}
!455 = !{ptr @rx_filter_beacon_filter_ops, !456, !"rx_filter_beacon_filter_ops", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 124, i32 1}
!457 = !{ptr @rx_filter_arp_filter_ops, !458, !"rx_filter_arp_filter_ops", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 125, i32 1}
!459 = !{ptr @rx_filter_mc_filter_ops, !460, !"rx_filter_mc_filter_ops", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 126, i32 1}
!461 = !{ptr @rx_filter_dup_filter_ops, !462, !"rx_filter_dup_filter_ops", i1 false, i1 false}
!462 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 127, i32 1}
!463 = !{ptr @rx_filter_data_filter_ops, !464, !"rx_filter_data_filter_ops", i1 false, i1 false}
!464 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 128, i32 1}
!465 = !{ptr @rx_filter_ibss_filter_ops, !466, !"rx_filter_ibss_filter_ops", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 129, i32 1}
!467 = !{ptr @rx_filter_protection_filter_ops, !468, !"rx_filter_protection_filter_ops", i1 false, i1 false}
!468 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 130, i32 1}
!469 = !{ptr @rx_filter_accum_arp_pend_requests_ops, !470, !"rx_filter_accum_arp_pend_requests_ops", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 131, i32 1}
!471 = !{ptr @rx_filter_max_arp_queue_dep_ops, !472, !"rx_filter_max_arp_queue_dep_ops", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 132, i32 1}
!473 = !{ptr @rx_rate_rx_frames_per_rates_ops, !474, !"rx_rate_rx_frames_per_rates_ops", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 134, i32 1}
!475 = !{ptr @aggr_size_tx_agg_rate_ops, !476, !"aggr_size_tx_agg_rate_ops", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 136, i32 1}
!477 = !{ptr @aggr_size_tx_agg_len_ops, !478, !"aggr_size_tx_agg_len_ops", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 138, i32 1}
!479 = !{ptr @aggr_size_rx_size_ops, !480, !"aggr_size_rx_size_ops", i1 false, i1 false}
!480 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 140, i32 1}
!481 = !{ptr @pipeline_hs_tx_stat_fifo_int_ops, !482, !"pipeline_hs_tx_stat_fifo_int_ops", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 143, i32 1}
!483 = !{ptr @pipeline_enc_tx_stat_fifo_int_ops, !484, !"pipeline_enc_tx_stat_fifo_int_ops", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 144, i32 1}
!485 = !{ptr @pipeline_enc_rx_stat_fifo_int_ops, !486, !"pipeline_enc_rx_stat_fifo_int_ops", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 145, i32 1}
!487 = !{ptr @pipeline_rx_complete_stat_fifo_int_ops, !488, !"pipeline_rx_complete_stat_fifo_int_ops", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 146, i32 1}
!489 = !{ptr @pipeline_pre_proc_swi_ops, !490, !"pipeline_pre_proc_swi_ops", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 147, i32 1}
!491 = !{ptr @pipeline_post_proc_swi_ops, !492, !"pipeline_post_proc_swi_ops", i1 false, i1 false}
!492 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 148, i32 1}
!493 = !{ptr @pipeline_sec_frag_swi_ops, !494, !"pipeline_sec_frag_swi_ops", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 149, i32 1}
!495 = !{ptr @pipeline_pre_to_defrag_swi_ops, !496, !"pipeline_pre_to_defrag_swi_ops", i1 false, i1 false}
!496 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 150, i32 1}
!497 = !{ptr @pipeline_defrag_to_rx_xfer_swi_ops, !498, !"pipeline_defrag_to_rx_xfer_swi_ops", i1 false, i1 false}
!498 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 151, i32 1}
!499 = !{ptr @pipeline_dec_packet_in_ops, !500, !"pipeline_dec_packet_in_ops", i1 false, i1 false}
!500 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 152, i32 1}
!501 = !{ptr @pipeline_dec_packet_in_fifo_full_ops, !502, !"pipeline_dec_packet_in_fifo_full_ops", i1 false, i1 false}
!502 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 153, i32 1}
!503 = !{ptr @pipeline_dec_packet_out_ops, !504, !"pipeline_dec_packet_out_ops", i1 false, i1 false}
!504 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 154, i32 1}
!505 = !{ptr @pipeline_pipeline_fifo_full_ops, !506, !"pipeline_pipeline_fifo_full_ops", i1 false, i1 false}
!506 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 156, i32 1}
!507 = !{ptr @diversity_num_of_packets_per_ant_ops, !508, !"diversity_num_of_packets_per_ant_ops", i1 false, i1 false}
!508 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 159, i32 1}
!509 = !{ptr @diversity_total_num_of_toggles_ops, !510, !"diversity_total_num_of_toggles_ops", i1 false, i1 false}
!510 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 161, i32 1}
!511 = !{ptr @thermal_irq_thr_low_ops, !512, !"thermal_irq_thr_low_ops", i1 false, i1 false}
!512 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 163, i32 1}
!513 = !{ptr @thermal_irq_thr_high_ops, !514, !"thermal_irq_thr_high_ops", i1 false, i1 false}
!514 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 164, i32 1}
!515 = !{ptr @thermal_tx_stop_ops, !516, !"thermal_tx_stop_ops", i1 false, i1 false}
!516 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 165, i32 1}
!517 = !{ptr @thermal_tx_resume_ops, !518, !"thermal_tx_resume_ops", i1 false, i1 false}
!518 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 166, i32 1}
!519 = !{ptr @thermal_false_irq_ops, !520, !"thermal_false_irq_ops", i1 false, i1 false}
!520 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 167, i32 1}
!521 = !{ptr @thermal_adc_source_unexpected_ops, !522, !"thermal_adc_source_unexpected_ops", i1 false, i1 false}
!522 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 168, i32 1}
!523 = !{ptr @calib_fail_count_ops, !524, !"calib_fail_count_ops", i1 false, i1 false}
!524 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 170, i32 1}
!525 = !{ptr @calib_calib_count_ops, !526, !"calib_calib_count_ops", i1 false, i1 false}
!526 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 172, i32 1}
!527 = !{ptr @roaming_rssi_level_ops, !528, !"roaming_rssi_level_ops", i1 false, i1 false}
!528 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 174, i32 1}
!529 = !{ptr @.str.138, !528, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @dfs_num_of_radar_detections_ops, !531, !"dfs_num_of_radar_detections_ops", i1 false, i1 false}
!531 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 176, i32 1}
!532 = !{ptr @conf_ops, !533, !"conf_ops", i1 false, i1 false}
!533 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 214, i32 37}
!534 = !{ptr @radar_detection_ops, !535, !"radar_detection_ops", i1 false, i1 false}
!535 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 284, i32 37}
!536 = !{ptr @.str.139, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 258, i32 3}
!538 = !{ptr @.str.140, !537, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @.str.141, !537, !"<string literal>", i1 false, i1 false}
!540 = !{ptr @radar_detection_write._entry, !537, !"_entry", i1 false, i1 false}
!541 = !{ptr @radar_detection_write._entry_ptr, !537, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @radar_debug_mode_ops, !543, !"radar_debug_mode_ops", i1 false, i1 false}
!543 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 400, i32 37}
!544 = !{ptr @.str.142, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 354, i32 3}
!546 = !{ptr @.str.143, !545, !"<string literal>", i1 false, i1 false}
!547 = !{ptr @radar_debug_mode_write._entry, !545, !"_entry", i1 false, i1 false}
!548 = !{ptr @radar_debug_mode_write._entry_ptr, !545, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.145, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 360, i32 3}
!551 = !{ptr @radar_debug_mode_write._entry.144, !550, !"_entry", i1 false, i1 false}
!552 = !{ptr @radar_debug_mode_write._entry_ptr.146, !550, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @dynamic_fw_traces_ops, !554, !"dynamic_fw_traces_ops", i1 false, i1 false}
!554 = !{!"../drivers/net/wireless/ti/wl18xx/debugfs.c", i32 335, i32 37}
!555 = !{i32 1, !"wchar_size", i32 2}
!556 = !{i32 1, !"min_enum_size", i32 4}
!557 = !{i32 8, !"branch-target-enforcement", i32 0}
!558 = !{i32 8, !"sign-return-address", i32 0}
!559 = !{i32 8, !"sign-return-address-all", i32 0}
!560 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!561 = !{i32 7, !"uwtable", i32 1}
!562 = !{i32 7, !"frame-pointer", i32 2}
!563 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!564 = !{!"branch_weights", i32 2000, i32 1}
!565 = !{!"auto-init"}
!566 = !{i64 2148501431}
!567 = !{i64 988031, i64 988056, i64 988078, i64 988094, i64 988106, i64 988126, i64 988150, i64 988166, i64 988178}
!568 = !{i64 2148501619}
!569 = !{i8 0, i8 2}
