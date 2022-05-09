; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl12xx/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl12xx/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wl12xx_acx_statistics = type { %struct.acx_header, %struct.wl12xx_acx_tx_statistics, %struct.wl12xx_acx_rx_statistics, %struct.wl12xx_acx_dma_statistics, %struct.wl12xx_acx_isr_statistics, %struct.wl12xx_acx_wep_statistics, %struct.wl12xx_acx_pwr_statistics, %struct.wl12xx_acx_aes_statistics, %struct.wl12xx_acx_mic_statistics, %struct.wl12xx_acx_event_statistics, %struct.wl12xx_acx_ps_statistics, %struct.wl12xx_acx_rxpipe_statistics }
%struct.acx_header = type { %struct.wl1271_cmd_header, i16, i16 }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl12xx_acx_tx_statistics = type { i32 }
%struct.wl12xx_acx_rx_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_acx_dma_statistics = type { i32, i32, i32, i32 }
%struct.wl12xx_acx_isr_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_acx_wep_statistics = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_acx_pwr_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, [10 x i32], i32 }
%struct.wl12xx_acx_aes_statistics = type { i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_acx_mic_statistics = type { i32, i32 }
%struct.wl12xx_acx_event_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_acx_ps_statistics = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_acx_rxpipe_statistics = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl12xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_stats\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_internal_desc_overflow\00", [38 x i8] zeroinitializer }, align 32
@tx_internal_desc_overflow_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_internal_desc_overflow_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_out_of_mem\00", [18 x i8] zeroinitializer }, align 32
@rx_out_of_mem_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_out_of_mem_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_hdr_overflow\00", [16 x i8] zeroinitializer }, align 32
@rx_hdr_overflow_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_hdr_overflow_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_hw_stuck\00", [20 x i8] zeroinitializer }, align 32
@rx_hw_stuck_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_hw_stuck_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_dropped\00", [21 x i8] zeroinitializer }, align 32
@rx_dropped_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_dropped_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_fcs_err\00", [21 x i8] zeroinitializer }, align 32
@rx_fcs_err_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_fcs_err_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_xfr_hint_trig\00", [47 x i8] zeroinitializer }, align 32
@rx_xfr_hint_trig_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_xfr_hint_trig_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_path_reset\00", [18 x i8] zeroinitializer }, align 32
@rx_path_reset_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_path_reset_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_reset_counter\00", [47 x i8] zeroinitializer }, align 32
@rx_reset_counter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_reset_counter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma_rx_requested\00", [47 x i8] zeroinitializer }, align 32
@dma_rx_requested_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @dma_rx_requested_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_rx_errors\00", [18 x i8] zeroinitializer }, align 32
@dma_rx_errors_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @dma_rx_errors_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma_tx_requested\00", [47 x i8] zeroinitializer }, align 32
@dma_tx_requested_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @dma_tx_requested_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_tx_errors\00", [18 x i8] zeroinitializer }, align 32
@dma_tx_errors_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @dma_tx_errors_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isr_cmd_cmplt\00", [18 x i8] zeroinitializer }, align 32
@isr_cmd_cmplt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_cmd_cmplt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isr_fiqs\00", [23 x i8] zeroinitializer }, align 32
@isr_fiqs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_fiqs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isr_rx_headers\00", [17 x i8] zeroinitializer }, align 32
@isr_rx_headers_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_rx_headers_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isr_rx_mem_overflow\00", [44 x i8] zeroinitializer }, align 32
@isr_rx_mem_overflow_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_rx_mem_overflow_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isr_rx_rdys\00", [20 x i8] zeroinitializer }, align 32
@isr_rx_rdys_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_rx_rdys_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isr_irqs\00", [23 x i8] zeroinitializer }, align 32
@isr_irqs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_irqs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isr_tx_procs\00", [19 x i8] zeroinitializer }, align 32
@isr_tx_procs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_tx_procs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isr_decrypt_done\00", [47 x i8] zeroinitializer }, align 32
@isr_decrypt_done_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_decrypt_done_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isr_dma0_done\00", [18 x i8] zeroinitializer }, align 32
@isr_dma0_done_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_dma0_done_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isr_dma1_done\00", [18 x i8] zeroinitializer }, align 32
@isr_dma1_done_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_dma1_done_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isr_tx_exch_complete\00", [43 x i8] zeroinitializer }, align 32
@isr_tx_exch_complete_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_tx_exch_complete_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isr_commands\00", [19 x i8] zeroinitializer }, align 32
@isr_commands_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_commands_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isr_rx_procs\00", [19 x i8] zeroinitializer }, align 32
@isr_rx_procs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_rx_procs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isr_hw_pm_mode_changes\00", [41 x i8] zeroinitializer }, align 32
@isr_hw_pm_mode_changes_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_hw_pm_mode_changes_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isr_host_acknowledges\00", [42 x i8] zeroinitializer }, align 32
@isr_host_acknowledges_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_host_acknowledges_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isr_pci_pm\00", [21 x i8] zeroinitializer }, align 32
@isr_pci_pm_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_pci_pm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isr_wakeups\00", [20 x i8] zeroinitializer }, align 32
@isr_wakeups_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_wakeups_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isr_low_rssi\00", [19 x i8] zeroinitializer }, align 32
@isr_low_rssi_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_low_rssi_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wep_addr_key_count\00", [45 x i8] zeroinitializer }, align 32
@wep_addr_key_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_addr_key_count_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wep_default_key_count\00", [42 x i8] zeroinitializer }, align 32
@wep_default_key_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_default_key_count_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wep_key_not_found\00", [46 x i8] zeroinitializer }, align 32
@wep_key_not_found_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_key_not_found_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wep_decrypt_fail\00", [47 x i8] zeroinitializer }, align 32
@wep_decrypt_fail_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_decrypt_fail_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wep_packets\00", [20 x i8] zeroinitializer }, align 32
@wep_packets_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_packets_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wep_interrupt\00", [18 x i8] zeroinitializer }, align 32
@wep_interrupt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_interrupt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwr_ps_enter\00", [19 x i8] zeroinitializer }, align 32
@pwr_ps_enter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_ps_enter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwr_elp_enter\00", [18 x i8] zeroinitializer }, align 32
@pwr_elp_enter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_elp_enter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwr_missing_bcns\00", [47 x i8] zeroinitializer }, align 32
@pwr_missing_bcns_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_missing_bcns_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwr_wake_on_host\00", [47 x i8] zeroinitializer }, align 32
@pwr_wake_on_host_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_wake_on_host_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwr_wake_on_timer_exp\00", [42 x i8] zeroinitializer }, align 32
@pwr_wake_on_timer_exp_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_wake_on_timer_exp_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwr_tx_with_ps\00", [17 x i8] zeroinitializer }, align 32
@pwr_tx_with_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_tx_with_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwr_tx_without_ps\00", [46 x i8] zeroinitializer }, align 32
@pwr_tx_without_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_tx_without_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwr_rcvd_beacons\00", [47 x i8] zeroinitializer }, align 32
@pwr_rcvd_beacons_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_rcvd_beacons_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwr_power_save_off\00", [45 x i8] zeroinitializer }, align 32
@pwr_power_save_off_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_power_save_off_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwr_enable_ps\00", [18 x i8] zeroinitializer }, align 32
@pwr_enable_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_enable_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwr_disable_ps\00", [17 x i8] zeroinitializer }, align 32
@pwr_disable_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_disable_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwr_fix_tsf_ps\00", [17 x i8] zeroinitializer }, align 32
@pwr_fix_tsf_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_fix_tsf_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwr_rcvd_awake_beacons\00", [41 x i8] zeroinitializer }, align 32
@pwr_rcvd_awake_beacons_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_rcvd_awake_beacons_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mic_rx_pkts\00", [20 x i8] zeroinitializer }, align 32
@mic_rx_pkts_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @mic_rx_pkts_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mic_calc_failure\00", [47 x i8] zeroinitializer }, align 32
@mic_calc_failure_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @mic_calc_failure_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aes_encrypt_fail\00", [47 x i8] zeroinitializer }, align 32
@aes_encrypt_fail_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_encrypt_fail_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aes_decrypt_fail\00", [47 x i8] zeroinitializer }, align 32
@aes_decrypt_fail_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_decrypt_fail_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aes_encrypt_packets\00", [44 x i8] zeroinitializer }, align 32
@aes_encrypt_packets_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_encrypt_packets_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aes_decrypt_packets\00", [44 x i8] zeroinitializer }, align 32
@aes_decrypt_packets_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_decrypt_packets_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aes_encrypt_interrupt\00", [42 x i8] zeroinitializer }, align 32
@aes_encrypt_interrupt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_encrypt_interrupt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aes_decrypt_interrupt\00", [42 x i8] zeroinitializer }, align 32
@aes_decrypt_interrupt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_decrypt_interrupt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"event_heart_beat\00", [47 x i8] zeroinitializer }, align 32
@event_heart_beat_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_heart_beat_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"event_calibration\00", [46 x i8] zeroinitializer }, align 32
@event_calibration_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_calibration_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"event_rx_mismatch\00", [46 x i8] zeroinitializer }, align 32
@event_rx_mismatch_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_rx_mismatch_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event_rx_mem_empty\00", [45 x i8] zeroinitializer }, align 32
@event_rx_mem_empty_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_rx_mem_empty_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"event_rx_pool\00", [18 x i8] zeroinitializer }, align 32
@event_rx_pool_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_rx_pool_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event_oom_late\00", [17 x i8] zeroinitializer }, align 32
@event_oom_late_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_oom_late_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event_phy_transmit_error\00", [39 x i8] zeroinitializer }, align 32
@event_phy_transmit_error_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_phy_transmit_error_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event_tx_stuck\00", [17 x i8] zeroinitializer }, align 32
@event_tx_stuck_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_tx_stuck_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ps_pspoll_timeouts\00", [45 x i8] zeroinitializer }, align 32
@ps_pspoll_timeouts_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_pspoll_timeouts_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ps_upsd_timeouts\00", [47 x i8] zeroinitializer }, align 32
@ps_upsd_timeouts_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_upsd_timeouts_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ps_upsd_max_sptime\00", [45 x i8] zeroinitializer }, align 32
@ps_upsd_max_sptime_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_upsd_max_sptime_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ps_upsd_max_apturn\00", [45 x i8] zeroinitializer }, align 32
@ps_upsd_max_apturn_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_upsd_max_apturn_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ps_pspoll_max_apturn\00", [43 x i8] zeroinitializer }, align 32
@ps_pspoll_max_apturn_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_pspoll_max_apturn_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ps_pspoll_utilization\00", [42 x i8] zeroinitializer }, align 32
@ps_pspoll_utilization_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_pspoll_utilization_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ps_upsd_utilization\00", [44 x i8] zeroinitializer }, align 32
@ps_upsd_utilization_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_upsd_utilization_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxpipe_rx_prep_beacon_drop\00", [37 x i8] zeroinitializer }, align 32
@rxpipe_rx_prep_beacon_drop_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_rx_prep_beacon_drop_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rxpipe_descr_host_int_trig_rx_data\00", [61 x i8] zeroinitializer }, align 32
@rxpipe_descr_host_int_trig_rx_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_descr_host_int_trig_rx_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rxpipe_beacon_buffer_thres_host_int_trig_rx_data\00", [47 x i8] zeroinitializer }, align 32
@rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rxpipe_missed_beacon_host_int_trig_rx_data\00", [53 x i8] zeroinitializer }, align 32
@rxpipe_missed_beacon_host_int_trig_rx_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_missed_beacon_host_int_trig_rx_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxpipe_tx_xfr_host_int_trig_rx_data\00", [60 x i8] zeroinitializer }, align 32
@rxpipe_tx_xfr_host_int_trig_rx_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_tx_xfr_host_int_trig_rx_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 116, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 117, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 119, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [30 x i8] c"tx_internal_desc_overflow_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 121, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"rx_out_of_mem_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 21, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 122, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c"rx_hdr_overflow_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 22, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 123, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"rx_hw_stuck_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 23, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 124, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"rx_dropped_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 24, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 125, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"rx_fcs_err_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 25, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 126, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"rx_xfr_hint_trig_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 26, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 127, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"rx_path_reset_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 27, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 128, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"rx_reset_counter_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 28, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 130, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"dma_rx_requested_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 30, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 131, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [18 x i8] c"dma_rx_errors_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 31, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 132, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [21 x i8] c"dma_tx_requested_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 32, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 133, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"dma_tx_errors_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 33, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 135, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"isr_cmd_cmplt_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 35, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 136, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"isr_fiqs_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 36, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 137, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"isr_rx_headers_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 37, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 138, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [24 x i8] c"isr_rx_mem_overflow_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 38, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 139, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"isr_rx_rdys_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 39, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 140, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [13 x i8] c"isr_irqs_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 40, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 141, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"isr_tx_procs_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 41, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 142, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [21 x i8] c"isr_decrypt_done_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 42, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 143, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"isr_dma0_done_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 43, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 144, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [18 x i8] c"isr_dma1_done_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 44, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 145, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [25 x i8] c"isr_tx_exch_complete_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 45, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 146, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"isr_commands_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 46, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 147, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"isr_rx_procs_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 47, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 148, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [27 x i8] c"isr_hw_pm_mode_changes_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 48, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 149, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [26 x i8] c"isr_host_acknowledges_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 49, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 150, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [15 x i8] c"isr_pci_pm_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 50, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 151, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [16 x i8] c"isr_wakeups_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 51, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 152, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"isr_low_rssi_ops\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 52, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 154, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [23 x i8] c"wep_addr_key_count_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 54, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 155, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [26 x i8] c"wep_default_key_count_ops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 55, i32 1 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 157, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [22 x i8] c"wep_key_not_found_ops\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 57, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 158, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [21 x i8] c"wep_decrypt_fail_ops\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 58, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 159, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [16 x i8] c"wep_packets_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 59, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 160, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [18 x i8] c"wep_interrupt_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 60, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 162, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"pwr_ps_enter_ops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 62, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 163, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [18 x i8] c"pwr_elp_enter_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 63, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 164, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [21 x i8] c"pwr_missing_bcns_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 64, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 165, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [21 x i8] c"pwr_wake_on_host_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 65, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 166, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [26 x i8] c"pwr_wake_on_timer_exp_ops\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 66, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 167, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [19 x i8] c"pwr_tx_with_ps_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 67, i32 1 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 168, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [22 x i8] c"pwr_tx_without_ps_ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 68, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 169, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [21 x i8] c"pwr_rcvd_beacons_ops\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 69, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 170, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [23 x i8] c"pwr_power_save_off_ops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 70, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 171, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [18 x i8] c"pwr_enable_ps_ops\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 71, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 172, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [19 x i8] c"pwr_disable_ps_ops\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 72, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 173, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [19 x i8] c"pwr_fix_tsf_ps_ops\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 73, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 175, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [27 x i8] c"pwr_rcvd_awake_beacons_ops\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 75, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 177, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [16 x i8] c"mic_rx_pkts_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 77, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 178, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [21 x i8] c"mic_calc_failure_ops\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 78, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 180, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [21 x i8] c"aes_encrypt_fail_ops\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 80, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 181, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [21 x i8] c"aes_decrypt_fail_ops\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 81, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 182, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [24 x i8] c"aes_encrypt_packets_ops\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 82, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 183, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [24 x i8] c"aes_decrypt_packets_ops\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 83, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 184, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [26 x i8] c"aes_encrypt_interrupt_ops\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 84, i32 1 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 185, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [26 x i8] c"aes_decrypt_interrupt_ops\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 85, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 187, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [21 x i8] c"event_heart_beat_ops\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 87, i32 1 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 188, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [22 x i8] c"event_calibration_ops\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 88, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 189, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [22 x i8] c"event_rx_mismatch_ops\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 89, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 190, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [23 x i8] c"event_rx_mem_empty_ops\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 90, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 191, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [18 x i8] c"event_rx_pool_ops\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 91, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 192, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [19 x i8] c"event_oom_late_ops\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 92, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 193, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [29 x i8] c"event_phy_transmit_error_ops\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 93, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 194, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [19 x i8] c"event_tx_stuck_ops\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 94, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 196, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [23 x i8] c"ps_pspoll_timeouts_ops\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 96, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 197, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [21 x i8] c"ps_upsd_timeouts_ops\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 97, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 198, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [23 x i8] c"ps_upsd_max_sptime_ops\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 98, i32 1 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 199, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [23 x i8] c"ps_upsd_max_apturn_ops\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 99, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 200, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [25 x i8] c"ps_pspoll_max_apturn_ops\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 100, i32 1 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 201, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [26 x i8] c"ps_pspoll_utilization_ops\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 101, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 202, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [24 x i8] c"ps_upsd_utilization_ops\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 102, i32 1 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 204, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [31 x i8] c"rxpipe_rx_prep_beacon_drop_ops\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 104, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 205, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [39 x i8] c"rxpipe_descr_host_int_trig_rx_data_ops\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 105, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 206, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [53 x i8] c"rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 106, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 207, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [47 x i8] c"rxpipe_missed_beacon_host_int_trig_rx_data_ops\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 108, i32 1 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 208, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [40 x i8] c"rxpipe_tx_xfr_host_int_trig_rx_data_ops\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 109, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.556 = private constant [44 x i8] c"../drivers/net/wireless/ti/wl12xx/debugfs.c\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 19, i32 1 }
@llvm.compiler.used = appending global [159 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tx_internal_desc_overflow_ops, ptr @.str.3, ptr @rx_out_of_mem_ops, ptr @.str.4, ptr @rx_hdr_overflow_ops, ptr @.str.5, ptr @rx_hw_stuck_ops, ptr @.str.6, ptr @rx_dropped_ops, ptr @.str.7, ptr @rx_fcs_err_ops, ptr @.str.8, ptr @rx_xfr_hint_trig_ops, ptr @.str.9, ptr @rx_path_reset_ops, ptr @.str.10, ptr @rx_reset_counter_ops, ptr @.str.11, ptr @dma_rx_requested_ops, ptr @.str.12, ptr @dma_rx_errors_ops, ptr @.str.13, ptr @dma_tx_requested_ops, ptr @.str.14, ptr @dma_tx_errors_ops, ptr @.str.15, ptr @isr_cmd_cmplt_ops, ptr @.str.16, ptr @isr_fiqs_ops, ptr @.str.17, ptr @isr_rx_headers_ops, ptr @.str.18, ptr @isr_rx_mem_overflow_ops, ptr @.str.19, ptr @isr_rx_rdys_ops, ptr @.str.20, ptr @isr_irqs_ops, ptr @.str.21, ptr @isr_tx_procs_ops, ptr @.str.22, ptr @isr_decrypt_done_ops, ptr @.str.23, ptr @isr_dma0_done_ops, ptr @.str.24, ptr @isr_dma1_done_ops, ptr @.str.25, ptr @isr_tx_exch_complete_ops, ptr @.str.26, ptr @isr_commands_ops, ptr @.str.27, ptr @isr_rx_procs_ops, ptr @.str.28, ptr @isr_hw_pm_mode_changes_ops, ptr @.str.29, ptr @isr_host_acknowledges_ops, ptr @.str.30, ptr @isr_pci_pm_ops, ptr @.str.31, ptr @isr_wakeups_ops, ptr @.str.32, ptr @isr_low_rssi_ops, ptr @.str.33, ptr @wep_addr_key_count_ops, ptr @.str.34, ptr @wep_default_key_count_ops, ptr @.str.35, ptr @wep_key_not_found_ops, ptr @.str.36, ptr @wep_decrypt_fail_ops, ptr @.str.37, ptr @wep_packets_ops, ptr @.str.38, ptr @wep_interrupt_ops, ptr @.str.39, ptr @pwr_ps_enter_ops, ptr @.str.40, ptr @pwr_elp_enter_ops, ptr @.str.41, ptr @pwr_missing_bcns_ops, ptr @.str.42, ptr @pwr_wake_on_host_ops, ptr @.str.43, ptr @pwr_wake_on_timer_exp_ops, ptr @.str.44, ptr @pwr_tx_with_ps_ops, ptr @.str.45, ptr @pwr_tx_without_ps_ops, ptr @.str.46, ptr @pwr_rcvd_beacons_ops, ptr @.str.47, ptr @pwr_power_save_off_ops, ptr @.str.48, ptr @pwr_enable_ps_ops, ptr @.str.49, ptr @pwr_disable_ps_ops, ptr @.str.50, ptr @pwr_fix_tsf_ps_ops, ptr @.str.51, ptr @pwr_rcvd_awake_beacons_ops, ptr @.str.52, ptr @mic_rx_pkts_ops, ptr @.str.53, ptr @mic_calc_failure_ops, ptr @.str.54, ptr @aes_encrypt_fail_ops, ptr @.str.55, ptr @aes_decrypt_fail_ops, ptr @.str.56, ptr @aes_encrypt_packets_ops, ptr @.str.57, ptr @aes_decrypt_packets_ops, ptr @.str.58, ptr @aes_encrypt_interrupt_ops, ptr @.str.59, ptr @aes_decrypt_interrupt_ops, ptr @.str.60, ptr @event_heart_beat_ops, ptr @.str.61, ptr @event_calibration_ops, ptr @.str.62, ptr @event_rx_mismatch_ops, ptr @.str.63, ptr @event_rx_mem_empty_ops, ptr @.str.64, ptr @event_rx_pool_ops, ptr @.str.65, ptr @event_oom_late_ops, ptr @.str.66, ptr @event_phy_transmit_error_ops, ptr @.str.67, ptr @event_tx_stuck_ops, ptr @.str.68, ptr @ps_pspoll_timeouts_ops, ptr @.str.69, ptr @ps_upsd_timeouts_ops, ptr @.str.70, ptr @ps_upsd_max_sptime_ops, ptr @.str.71, ptr @ps_upsd_max_apturn_ops, ptr @.str.72, ptr @ps_pspoll_max_apturn_ops, ptr @.str.73, ptr @ps_pspoll_utilization_ops, ptr @.str.74, ptr @ps_upsd_utilization_ops, ptr @.str.75, ptr @rxpipe_rx_prep_beacon_drop_ops, ptr @.str.76, ptr @rxpipe_descr_host_int_trig_rx_data_ops, ptr @.str.77, ptr @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops, ptr @.str.78, ptr @rxpipe_missed_beacon_host_int_trig_rx_data_ops, ptr @.str.79, ptr @rxpipe_tx_xfr_host_int_trig_rx_data_ops, ptr @.str.80], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_internal_desc_overflow_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_out_of_mem_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_hdr_overflow_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_hw_stuck_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_dropped_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_fcs_err_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_xfr_hint_trig_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_path_reset_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_reset_counter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_rx_requested_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_rx_errors_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_tx_requested_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_tx_errors_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_cmd_cmplt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_fiqs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_rx_headers_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_rx_mem_overflow_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_rx_rdys_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_irqs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_tx_procs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_decrypt_done_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_dma0_done_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_dma1_done_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_tx_exch_complete_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_commands_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_rx_procs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_hw_pm_mode_changes_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_host_acknowledges_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_pci_pm_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_wakeups_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_low_rssi_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_addr_key_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_default_key_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_key_not_found_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_decrypt_fail_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_packets_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_interrupt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_ps_enter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_elp_enter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_missing_bcns_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_wake_on_host_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_wake_on_timer_exp_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_tx_with_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_tx_without_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_rcvd_beacons_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_power_save_off_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_enable_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_disable_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_fix_tsf_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_rcvd_awake_beacons_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_rx_pkts_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_calc_failure_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_encrypt_fail_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_decrypt_fail_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_encrypt_packets_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_decrypt_packets_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_encrypt_interrupt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_decrypt_interrupt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_heart_beat_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_calibration_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rx_mismatch_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rx_mem_empty_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rx_pool_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_oom_late_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_phy_transmit_error_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tx_stuck_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_pspoll_timeouts_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_upsd_timeouts_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_upsd_max_sptime_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_upsd_max_apturn_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_pspoll_max_apturn_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_pspoll_utilization_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_upsd_utilization_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_rx_prep_beacon_drop_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_descr_host_int_trig_rx_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_missed_beacon_host_int_trig_rx_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_tx_xfr_host_int_trig_rx_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl12xx_debugfs_add_files(ptr noundef %wl, ptr noundef %rootdir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %rootdir) #2
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %call) #2
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @tx_internal_desc_overflow_ops) #2
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_out_of_mem_ops) #2
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_hdr_overflow_ops) #2
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_hw_stuck_ops) #2
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_dropped_ops) #2
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_fcs_err_ops) #2
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_xfr_hint_trig_ops) #2
  %call28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_path_reset_ops) #2
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rx_reset_counter_ops) #2
  %call36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @dma_rx_requested_ops) #2
  %call40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @dma_rx_errors_ops) #2
  %call44 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @dma_tx_requested_ops) #2
  %call48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @dma_tx_errors_ops) #2
  %call52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_cmd_cmplt_ops) #2
  %call56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_fiqs_ops) #2
  %call60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_rx_headers_ops) #2
  %call64 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_rx_mem_overflow_ops) #2
  %call68 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_rx_rdys_ops) #2
  %call72 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_irqs_ops) #2
  %call76 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_tx_procs_ops) #2
  %call80 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_decrypt_done_ops) #2
  %call84 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_dma0_done_ops) #2
  %call88 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_dma1_done_ops) #2
  %call92 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_tx_exch_complete_ops) #2
  %call96 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_commands_ops) #2
  %call100 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_rx_procs_ops) #2
  %call104 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_hw_pm_mode_changes_ops) #2
  %call108 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_host_acknowledges_ops) #2
  %call112 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_pci_pm_ops) #2
  %call116 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_wakeups_ops) #2
  %call120 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @isr_low_rssi_ops) #2
  %call124 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @wep_addr_key_count_ops) #2
  %call128 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @wep_default_key_count_ops) #2
  %call132 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @wep_key_not_found_ops) #2
  %call136 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @wep_decrypt_fail_ops) #2
  %call140 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @wep_packets_ops) #2
  %call144 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @wep_interrupt_ops) #2
  %call148 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_ps_enter_ops) #2
  %call152 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_elp_enter_ops) #2
  %call156 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_missing_bcns_ops) #2
  %call160 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_wake_on_host_ops) #2
  %call164 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_wake_on_timer_exp_ops) #2
  %call168 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_tx_with_ps_ops) #2
  %call172 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_tx_without_ps_ops) #2
  %call176 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_rcvd_beacons_ops) #2
  %call180 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_power_save_off_ops) #2
  %call184 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_enable_ps_ops) #2
  %call188 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_disable_ps_ops) #2
  %call192 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_fix_tsf_ps_ops) #2
  %call196 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @pwr_rcvd_awake_beacons_ops) #2
  %call200 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @mic_rx_pkts_ops) #2
  %call204 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @mic_calc_failure_ops) #2
  %call208 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @aes_encrypt_fail_ops) #2
  %call212 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @aes_decrypt_fail_ops) #2
  %call216 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @aes_encrypt_packets_ops) #2
  %call220 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @aes_decrypt_packets_ops) #2
  %call224 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.58, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @aes_encrypt_interrupt_ops) #2
  %call228 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.59, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @aes_decrypt_interrupt_ops) #2
  %call232 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.60, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @event_heart_beat_ops) #2
  %call236 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.61, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @event_calibration_ops) #2
  %call240 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.62, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @event_rx_mismatch_ops) #2
  %call244 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.63, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @event_rx_mem_empty_ops) #2
  %call248 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.64, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @event_rx_pool_ops) #2
  %call252 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.65, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @event_oom_late_ops) #2
  %call256 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.66, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @event_phy_transmit_error_ops) #2
  %call260 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.67, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @event_tx_stuck_ops) #2
  %call264 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.68, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @ps_pspoll_timeouts_ops) #2
  %call268 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.69, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @ps_upsd_timeouts_ops) #2
  %call272 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.70, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @ps_upsd_max_sptime_ops) #2
  %call276 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.71, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @ps_upsd_max_apturn_ops) #2
  %call280 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.72, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @ps_pspoll_max_apturn_ops) #2
  %call284 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.73, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @ps_pspoll_utilization_ops) #2
  %call288 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.74, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @ps_upsd_utilization_ops) #2
  %call292 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.75, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rxpipe_rx_prep_beacon_drop_ops) #2
  %call296 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.76, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rxpipe_descr_host_int_trig_rx_data_ops) #2
  %call300 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.77, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops) #2
  %call304 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.78, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rxpipe_missed_beacon_host_int_trig_rx_data_ops) #2
  %call308 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %wl, ptr noundef nonnull @rxpipe_tx_xfr_host_int_trig_rx_data_ops) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_internal_desc_overflow_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %tx = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1271_debugfs_update_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_format_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_out_of_mem_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rx = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_hdr_overflow_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %hdr_overflow = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %hdr_overflow to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %hdr_overflow, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_hw_stuck_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %hw_stuck = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %hw_stuck to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %hw_stuck, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_dropped_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %dropped = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %dropped to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dropped, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_fcs_err_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %fcs_err = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %fcs_err to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %fcs_err, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_xfr_hint_trig_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %xfr_hint_trig = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %xfr_hint_trig to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %xfr_hint_trig, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_path_reset_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %path_reset = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %path_reset to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %path_reset, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_reset_counter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %reset_counter = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %reset_counter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %reset_counter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_rx_requested_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %dma = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dma, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_rx_errors_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rx_errors = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %rx_errors to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_errors, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_tx_requested_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %tx_requested = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %tx_requested to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_requested, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_tx_errors_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %tx_errors = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %tx_errors to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_errors, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_cmd_cmplt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %isr = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %isr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %isr, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_fiqs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %fiqs = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fiqs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %fiqs, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_rx_headers_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rx_headers = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %rx_headers to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_headers, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_rx_mem_overflow_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rx_mem_overflow = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %rx_mem_overflow to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_mem_overflow, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_rx_rdys_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rx_rdys = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %rx_rdys to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_rdys, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_irqs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %irqs = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %irqs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %irqs, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_tx_procs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %tx_procs = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %tx_procs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_procs, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_decrypt_done_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %decrypt_done = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %decrypt_done to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %decrypt_done, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_dma0_done_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %dma0_done = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 9
  %4 = ptrtoint ptr %dma0_done to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dma0_done, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_dma1_done_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %dma1_done = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 10
  %4 = ptrtoint ptr %dma1_done to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dma1_done, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_tx_exch_complete_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %tx_exch_complete = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 11
  %4 = ptrtoint ptr %tx_exch_complete to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_exch_complete, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_commands_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %commands = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 12
  %4 = ptrtoint ptr %commands to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %commands, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_rx_procs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rx_procs = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 13
  %4 = ptrtoint ptr %rx_procs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_procs, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_hw_pm_mode_changes_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %hw_pm_mode_changes = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 14
  %4 = ptrtoint ptr %hw_pm_mode_changes to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %hw_pm_mode_changes, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_host_acknowledges_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %host_acknowledges = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 15
  %4 = ptrtoint ptr %host_acknowledges to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %host_acknowledges, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_pci_pm_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %pci_pm = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 16
  %4 = ptrtoint ptr %pci_pm to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pci_pm, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_wakeups_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %wakeups = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 17
  %4 = ptrtoint ptr %wakeups to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %wakeups, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_low_rssi_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %low_rssi = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 4, i32 18
  %4 = ptrtoint ptr %low_rssi to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %low_rssi, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_addr_key_count_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %wep = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %wep to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %wep, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_default_key_count_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %default_key_count = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %default_key_count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %default_key_count, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_key_not_found_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %key_not_found = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %key_not_found to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %key_not_found, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_decrypt_fail_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %decrypt_fail = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %decrypt_fail to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %decrypt_fail, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_packets_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %packets = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %packets to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %packets, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_interrupt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %interrupt = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 5, i32 6
  %4 = ptrtoint ptr %interrupt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %interrupt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_ps_enter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %pwr = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pwr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pwr, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_elp_enter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %elp_enter = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %elp_enter to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %elp_enter, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_missing_bcns_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %missing_bcns = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %missing_bcns to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %missing_bcns, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_wake_on_host_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %wake_on_host = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %wake_on_host to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %wake_on_host, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_wake_on_timer_exp_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %wake_on_timer_exp = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %wake_on_timer_exp to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %wake_on_timer_exp, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_tx_with_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %tx_with_ps = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %tx_with_ps to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_with_ps, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_tx_without_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %tx_without_ps = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %tx_without_ps to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_without_ps, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_rcvd_beacons_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rcvd_beacons = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %rcvd_beacons to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rcvd_beacons, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_power_save_off_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %power_save_off = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %power_save_off to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %power_save_off, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_enable_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %enable_ps = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 9
  %4 = ptrtoint ptr %enable_ps to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %enable_ps, align 1
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %conv) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_disable_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %disable_ps = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 10
  %4 = ptrtoint ptr %disable_ps to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %disable_ps, align 1
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %conv) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_fix_tsf_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %fix_tsf_ps = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 11
  %4 = ptrtoint ptr %fix_tsf_ps to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %fix_tsf_ps, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_rcvd_awake_beacons_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rcvd_awake_beacons = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 6, i32 13
  %4 = ptrtoint ptr %rcvd_awake_beacons to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rcvd_awake_beacons, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_rx_pkts_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %mic = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mic to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %mic, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_calc_failure_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %calc_failure = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %calc_failure to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %calc_failure, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_encrypt_fail_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %aes = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %aes to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %aes, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_decrypt_fail_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %decrypt_fail = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %decrypt_fail to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %decrypt_fail, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_encrypt_packets_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %encrypt_packets = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %encrypt_packets to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %encrypt_packets, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_decrypt_packets_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %decrypt_packets = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %decrypt_packets to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %decrypt_packets, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_encrypt_interrupt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %encrypt_interrupt = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %encrypt_interrupt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %encrypt_interrupt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_decrypt_interrupt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %decrypt_interrupt = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %decrypt_interrupt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %decrypt_interrupt, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_heart_beat_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %event = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %event, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_calibration_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %calibration = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %calibration to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %calibration, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_rx_mismatch_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rx_mismatch = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %rx_mismatch to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_mismatch, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_rx_mem_empty_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rx_mem_empty = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %rx_mem_empty to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_mem_empty, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_rx_pool_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rx_pool = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 9, i32 4
  %4 = ptrtoint ptr %rx_pool to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_pool, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_oom_late_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %oom_late = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 9, i32 5
  %4 = ptrtoint ptr %oom_late to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %oom_late, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_phy_transmit_error_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %phy_transmit_error = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 9, i32 6
  %4 = ptrtoint ptr %phy_transmit_error to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %phy_transmit_error, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_tx_stuck_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %tx_stuck = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 9, i32 7
  %4 = ptrtoint ptr %tx_stuck to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_stuck, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_pspoll_timeouts_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %ps = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ps to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ps, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_upsd_timeouts_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %upsd_timeouts = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %upsd_timeouts to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %upsd_timeouts, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_upsd_max_sptime_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %upsd_max_sptime = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %upsd_max_sptime to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %upsd_max_sptime, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_upsd_max_apturn_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %upsd_max_apturn = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %upsd_max_apturn to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %upsd_max_apturn, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_pspoll_max_apturn_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %pspoll_max_apturn = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %pspoll_max_apturn to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pspoll_max_apturn, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_pspoll_utilization_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %pspoll_utilization = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 10, i32 5
  %4 = ptrtoint ptr %pspoll_utilization to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pspoll_utilization, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_upsd_utilization_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %upsd_utilization = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 10, i32 6
  %4 = ptrtoint ptr %upsd_utilization to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %upsd_utilization, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_rx_prep_beacon_drop_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %rxpipe = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %rxpipe to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rxpipe, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_descr_host_int_trig_rx_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %descr_host_int_trig_rx_data = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %descr_host_int_trig_rx_data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %descr_host_int_trig_rx_data, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %beacon_buffer_thres_host_int_trig_rx_data = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %beacon_buffer_thres_host_int_trig_rx_data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %beacon_buffer_thres_host_int_trig_rx_data, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_missed_beacon_host_int_trig_rx_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %missed_beacon_host_int_trig_rx_data = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %missed_beacon_host_int_trig_rx_data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %missed_beacon_host_int_trig_rx_data, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_tx_xfr_host_int_trig_rx_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stats1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1) #2
  %tx_xfr_host_int_trig_rx_data = getelementptr inbounds %struct.wl12xx_acx_statistics, ptr %3, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %tx_xfr_host_int_trig_rx_data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_xfr_host_int_trig_rx_data, align 1
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.80, i32 noundef %5) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315}
!llvm.module.flags = !{!317, !318, !319, !320, !321, !322, !323, !324}
!llvm.ident = !{!325}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 116, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 117, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 119, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 121, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 122, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 123, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 124, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 125, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 126, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 127, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 128, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 130, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 131, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 132, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 133, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 135, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 136, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 137, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 138, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 139, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 140, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 141, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 142, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 143, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 144, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 145, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 146, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 147, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 148, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 149, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 150, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 151, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 152, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 154, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 155, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 157, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 158, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 159, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 160, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 162, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 163, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 164, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 165, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 166, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 167, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 168, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 169, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 170, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 171, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 172, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 173, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 175, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 177, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 178, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 180, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 181, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 182, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 183, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 184, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 185, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 187, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 188, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 189, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 190, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 191, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 192, i32 2}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 193, i32 2}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 194, i32 2}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 196, i32 2}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 197, i32 2}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 198, i32 2}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 199, i32 2}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 200, i32 2}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 201, i32 2}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 202, i32 2}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 204, i32 2}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 205, i32 2}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 206, i32 2}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 207, i32 2}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 208, i32 2}
!160 = !{ptr @tx_internal_desc_overflow_ops, !161, !"tx_internal_desc_overflow_ops", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 19, i32 1}
!162 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @rx_out_of_mem_ops, !164, !"rx_out_of_mem_ops", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 21, i32 1}
!165 = !{ptr @rx_hdr_overflow_ops, !166, !"rx_hdr_overflow_ops", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 22, i32 1}
!167 = !{ptr @rx_hw_stuck_ops, !168, !"rx_hw_stuck_ops", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 23, i32 1}
!169 = !{ptr @rx_dropped_ops, !170, !"rx_dropped_ops", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 24, i32 1}
!171 = !{ptr @rx_fcs_err_ops, !172, !"rx_fcs_err_ops", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 25, i32 1}
!173 = !{ptr @rx_xfr_hint_trig_ops, !174, !"rx_xfr_hint_trig_ops", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 26, i32 1}
!175 = !{ptr @rx_path_reset_ops, !176, !"rx_path_reset_ops", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 27, i32 1}
!177 = !{ptr @rx_reset_counter_ops, !178, !"rx_reset_counter_ops", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 28, i32 1}
!179 = !{ptr @dma_rx_requested_ops, !180, !"dma_rx_requested_ops", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 30, i32 1}
!181 = !{ptr @dma_rx_errors_ops, !182, !"dma_rx_errors_ops", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 31, i32 1}
!183 = !{ptr @dma_tx_requested_ops, !184, !"dma_tx_requested_ops", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 32, i32 1}
!185 = !{ptr @dma_tx_errors_ops, !186, !"dma_tx_errors_ops", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 33, i32 1}
!187 = !{ptr @isr_cmd_cmplt_ops, !188, !"isr_cmd_cmplt_ops", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 35, i32 1}
!189 = !{ptr @isr_fiqs_ops, !190, !"isr_fiqs_ops", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 36, i32 1}
!191 = !{ptr @isr_rx_headers_ops, !192, !"isr_rx_headers_ops", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 37, i32 1}
!193 = !{ptr @isr_rx_mem_overflow_ops, !194, !"isr_rx_mem_overflow_ops", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 38, i32 1}
!195 = !{ptr @isr_rx_rdys_ops, !196, !"isr_rx_rdys_ops", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 39, i32 1}
!197 = !{ptr @isr_irqs_ops, !198, !"isr_irqs_ops", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 40, i32 1}
!199 = !{ptr @isr_tx_procs_ops, !200, !"isr_tx_procs_ops", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 41, i32 1}
!201 = !{ptr @isr_decrypt_done_ops, !202, !"isr_decrypt_done_ops", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 42, i32 1}
!203 = !{ptr @isr_dma0_done_ops, !204, !"isr_dma0_done_ops", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 43, i32 1}
!205 = !{ptr @isr_dma1_done_ops, !206, !"isr_dma1_done_ops", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 44, i32 1}
!207 = !{ptr @isr_tx_exch_complete_ops, !208, !"isr_tx_exch_complete_ops", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 45, i32 1}
!209 = !{ptr @isr_commands_ops, !210, !"isr_commands_ops", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 46, i32 1}
!211 = !{ptr @isr_rx_procs_ops, !212, !"isr_rx_procs_ops", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 47, i32 1}
!213 = !{ptr @isr_hw_pm_mode_changes_ops, !214, !"isr_hw_pm_mode_changes_ops", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 48, i32 1}
!215 = !{ptr @isr_host_acknowledges_ops, !216, !"isr_host_acknowledges_ops", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 49, i32 1}
!217 = !{ptr @isr_pci_pm_ops, !218, !"isr_pci_pm_ops", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 50, i32 1}
!219 = !{ptr @isr_wakeups_ops, !220, !"isr_wakeups_ops", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 51, i32 1}
!221 = !{ptr @isr_low_rssi_ops, !222, !"isr_low_rssi_ops", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 52, i32 1}
!223 = !{ptr @wep_addr_key_count_ops, !224, !"wep_addr_key_count_ops", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 54, i32 1}
!225 = !{ptr @wep_default_key_count_ops, !226, !"wep_default_key_count_ops", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 55, i32 1}
!227 = !{ptr @wep_key_not_found_ops, !228, !"wep_key_not_found_ops", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 57, i32 1}
!229 = !{ptr @wep_decrypt_fail_ops, !230, !"wep_decrypt_fail_ops", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 58, i32 1}
!231 = !{ptr @wep_packets_ops, !232, !"wep_packets_ops", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 59, i32 1}
!233 = !{ptr @wep_interrupt_ops, !234, !"wep_interrupt_ops", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 60, i32 1}
!235 = !{ptr @pwr_ps_enter_ops, !236, !"pwr_ps_enter_ops", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 62, i32 1}
!237 = !{ptr @pwr_elp_enter_ops, !238, !"pwr_elp_enter_ops", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 63, i32 1}
!239 = !{ptr @pwr_missing_bcns_ops, !240, !"pwr_missing_bcns_ops", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 64, i32 1}
!241 = !{ptr @pwr_wake_on_host_ops, !242, !"pwr_wake_on_host_ops", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 65, i32 1}
!243 = !{ptr @pwr_wake_on_timer_exp_ops, !244, !"pwr_wake_on_timer_exp_ops", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 66, i32 1}
!245 = !{ptr @pwr_tx_with_ps_ops, !246, !"pwr_tx_with_ps_ops", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 67, i32 1}
!247 = !{ptr @pwr_tx_without_ps_ops, !248, !"pwr_tx_without_ps_ops", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 68, i32 1}
!249 = !{ptr @pwr_rcvd_beacons_ops, !250, !"pwr_rcvd_beacons_ops", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 69, i32 1}
!251 = !{ptr @pwr_power_save_off_ops, !252, !"pwr_power_save_off_ops", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 70, i32 1}
!253 = !{ptr @pwr_enable_ps_ops, !254, !"pwr_enable_ps_ops", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 71, i32 1}
!255 = !{ptr @pwr_disable_ps_ops, !256, !"pwr_disable_ps_ops", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 72, i32 1}
!257 = !{ptr @pwr_fix_tsf_ps_ops, !258, !"pwr_fix_tsf_ps_ops", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 73, i32 1}
!259 = !{ptr @pwr_rcvd_awake_beacons_ops, !260, !"pwr_rcvd_awake_beacons_ops", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 75, i32 1}
!261 = !{ptr @mic_rx_pkts_ops, !262, !"mic_rx_pkts_ops", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 77, i32 1}
!263 = !{ptr @mic_calc_failure_ops, !264, !"mic_calc_failure_ops", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 78, i32 1}
!265 = !{ptr @aes_encrypt_fail_ops, !266, !"aes_encrypt_fail_ops", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 80, i32 1}
!267 = !{ptr @aes_decrypt_fail_ops, !268, !"aes_decrypt_fail_ops", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 81, i32 1}
!269 = !{ptr @aes_encrypt_packets_ops, !270, !"aes_encrypt_packets_ops", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 82, i32 1}
!271 = !{ptr @aes_decrypt_packets_ops, !272, !"aes_decrypt_packets_ops", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 83, i32 1}
!273 = !{ptr @aes_encrypt_interrupt_ops, !274, !"aes_encrypt_interrupt_ops", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 84, i32 1}
!275 = !{ptr @aes_decrypt_interrupt_ops, !276, !"aes_decrypt_interrupt_ops", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 85, i32 1}
!277 = !{ptr @event_heart_beat_ops, !278, !"event_heart_beat_ops", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 87, i32 1}
!279 = !{ptr @event_calibration_ops, !280, !"event_calibration_ops", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 88, i32 1}
!281 = !{ptr @event_rx_mismatch_ops, !282, !"event_rx_mismatch_ops", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 89, i32 1}
!283 = !{ptr @event_rx_mem_empty_ops, !284, !"event_rx_mem_empty_ops", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 90, i32 1}
!285 = !{ptr @event_rx_pool_ops, !286, !"event_rx_pool_ops", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 91, i32 1}
!287 = !{ptr @event_oom_late_ops, !288, !"event_oom_late_ops", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 92, i32 1}
!289 = !{ptr @event_phy_transmit_error_ops, !290, !"event_phy_transmit_error_ops", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 93, i32 1}
!291 = !{ptr @event_tx_stuck_ops, !292, !"event_tx_stuck_ops", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 94, i32 1}
!293 = !{ptr @ps_pspoll_timeouts_ops, !294, !"ps_pspoll_timeouts_ops", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 96, i32 1}
!295 = !{ptr @ps_upsd_timeouts_ops, !296, !"ps_upsd_timeouts_ops", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 97, i32 1}
!297 = !{ptr @ps_upsd_max_sptime_ops, !298, !"ps_upsd_max_sptime_ops", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 98, i32 1}
!299 = !{ptr @ps_upsd_max_apturn_ops, !300, !"ps_upsd_max_apturn_ops", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 99, i32 1}
!301 = !{ptr @ps_pspoll_max_apturn_ops, !302, !"ps_pspoll_max_apturn_ops", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 100, i32 1}
!303 = !{ptr @ps_pspoll_utilization_ops, !304, !"ps_pspoll_utilization_ops", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 101, i32 1}
!305 = !{ptr @ps_upsd_utilization_ops, !306, !"ps_upsd_utilization_ops", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 102, i32 1}
!307 = !{ptr @rxpipe_rx_prep_beacon_drop_ops, !308, !"rxpipe_rx_prep_beacon_drop_ops", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 104, i32 1}
!309 = !{ptr @rxpipe_descr_host_int_trig_rx_data_ops, !310, !"rxpipe_descr_host_int_trig_rx_data_ops", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 105, i32 1}
!311 = !{ptr @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops, !312, !"rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 106, i32 1}
!313 = !{ptr @rxpipe_missed_beacon_host_int_trig_rx_data_ops, !314, !"rxpipe_missed_beacon_host_int_trig_rx_data_ops", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 108, i32 1}
!315 = !{ptr @rxpipe_tx_xfr_host_int_trig_rx_data_ops, !316, !"rxpipe_tx_xfr_host_int_trig_rx_data_ops", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ti/wl12xx/debugfs.c", i32 109, i32 1}
!317 = !{i32 1, !"wchar_size", i32 2}
!318 = !{i32 1, !"min_enum_size", i32 4}
!319 = !{i32 8, !"branch-target-enforcement", i32 0}
!320 = !{i32 8, !"sign-return-address", i32 0}
!321 = !{i32 8, !"sign-return-address-all", i32 0}
!322 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!323 = !{i32 7, !"uwtable", i32 1}
!324 = !{i32 7, !"frame-pointer", i32 2}
!325 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
