; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wl1271_format_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1271_format_buffer\09\09\09\09"
module asm "\09.long\09__crc_wl1271_format_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1271_format_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1271_format_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_wl1271_format_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wl1271_debugfs_update_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1271_debugfs_update_stats\09\09\09\09"
module asm "\09.long\09__crc_wl1271_debugfs_update_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1271_debugfs_update_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1271_debugfs_update_stats\22\09\09\09\09\09"
module asm "__kstrtabns_wl1271_debugfs_update_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.__va_list = type { ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.wlcore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wl1271_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_wl1271_format_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1271_format_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1271_format_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1271_format_buffer to i32), ptr @__kstrtab_wl1271_format_buffer, ptr @__kstrtabns_wl1271_format_buffer }, section "___ksymtab_gpl+wl1271_format_buffer", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_wl1271_debugfs_update_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1271_debugfs_update_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1271_debugfs_update_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1271_debugfs_update_stats to i32), ptr @__kstrtab_wl1271_debugfs_update_stats, ptr @__kstrtabns_wl1271_debugfs_update_stats }, section "___ksymtab_gpl+wl1271_debugfs_update_stats", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_queue_len\00", [19 x i8] zeroinitializer }, align 32
@tx_queue_len_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @tx_queue_len_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"retry_count\00", [20 x i8] zeroinitializer }, align 32
@retry_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @retry_count_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"excessive_retries\00", [46 x i8] zeroinitializer }, align 32
@excessive_retries_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @excessive_retries_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio_power\00", [21 x i8] zeroinitializer }, align 32
@gpio_power_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @gpio_power_read, ptr @gpio_power_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start_recovery\00", [17 x i8] zeroinitializer }, align 32
@start_recovery_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @start_recovery_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"driver_state\00", [19 x i8] zeroinitializer }, align 32
@driver_state_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @driver_state_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vifs_state\00", [21 x i8] zeroinitializer }, align 32
@vifs_state_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @vifs_state_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dtim_interval\00", [18 x i8] zeroinitializer }, align 32
@dtim_interval_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dtim_interval_read, ptr @dtim_interval_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"suspend_dtim_interval\00", [42 x i8] zeroinitializer }, align 32
@suspend_dtim_interval_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @suspend_dtim_interval_read, ptr @suspend_dtim_interval_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"beacon_interval\00", [16 x i8] zeroinitializer }, align 32
@beacon_interval_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @beacon_interval_read, ptr @beacon_interval_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"beacon_filtering\00", [47 x i8] zeroinitializer }, align 32
@beacon_filtering_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @beacon_filtering_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dynamic_ps_timeout\00", [45 x i8] zeroinitializer }, align 32
@dynamic_ps_timeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dynamic_ps_timeout_read, ptr @dynamic_ps_timeout_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"forced_ps\00", [22 x i8] zeroinitializer }, align 32
@forced_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @forced_ps_read, ptr @forced_ps_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"split_scan_timeout\00", [45 x i8] zeroinitializer }, align 32
@split_scan_timeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @split_scan_timeout_read, ptr @split_scan_timeout_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq_pkt_threshold\00", [46 x i8] zeroinitializer }, align 32
@irq_pkt_threshold_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @irq_pkt_threshold_read, ptr @irq_pkt_threshold_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq_blk_threshold\00", [46 x i8] zeroinitializer }, align 32
@irq_blk_threshold_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @irq_blk_threshold_read, ptr @irq_blk_threshold_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irq_timeout\00", [20 x i8] zeroinitializer }, align 32
@irq_timeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @irq_timeout_read, ptr @irq_timeout_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_stats_raw\00", [19 x i8] zeroinitializer }, align 32
@fw_stats_raw_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @fw_stats_raw_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sleep_auth\00", [21 x i8] zeroinitializer }, align 32
@sleep_auth_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @sleep_auth_read, ptr @sleep_auth_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fw_logger\00", [22 x i8] zeroinitializer }, align 32
@fw_logger_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @fw_logger_read, ptr @fw_logger_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_streaming\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"interval\00", [23 x i8] zeroinitializer }, align 32
@rx_streaming_interval_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rx_streaming_interval_read, ptr @rx_streaming_interval_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"always\00", [25 x i8] zeroinitializer }, align 32
@rx_streaming_always_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rx_streaming_always_read, ptr @rx_streaming_always_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@dev_mem_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @dev_mem_seek, ptr @dev_mem_read, ptr @dev_mem_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@gpio_power_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.29, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wlcore: WARNING illegal value in gpio_power\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpio_power_write\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ti/wlcore/debugfs.c\00", [55 x i8] zeroinitializer }, align 32
@gpio_power_write._entry_ptr = internal global ptr @gpio_power_write._entry, section ".printk_index", align 4
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"channel = %d (%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"P2P-CL\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STA\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"P2P-GO\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AP\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_blocks_available = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_allocated_blocks = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_allocated_pkts[0] = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_allocated_pkts[1] = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_allocated_pkts[2] = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_allocated_pkts[3] = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_frames_cnt = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_frames_map[0] = 0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_queue_count[0] = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_queue_count[1] = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_queue_count[2] = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_queue_count[3] = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_packets_count = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_results_count = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flags = 0x%lx\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_blocks_freed = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_counter = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"state = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"band = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power_level = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sg_enabled = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enable_11a = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"noise = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ap_fw_ps_map = 0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ap_ps_map = 0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"quirks = 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irq = 0x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw_pg_ver = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq_flags = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chip.id = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chip.fw_ver_str = %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip.phy_fw_ver_str = %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"recovery_count = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"role_id = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bss_type = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2p = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dev_role_id = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dev_hlid = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sta.hlid = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sta.basic_rate_idx = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sta.ap_rate_idx = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sta.p2p_rate_idx = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sta.qos = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ap.global_hlid = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ap.bcast_hlid = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ap.sta_hlid_map[0] = 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ap.mgmt_rate_idx = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ap.bcast_rate_idx = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ap.ucast_rate_idx[0] = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ap.ucast_rate_idx[1] = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ap.ucast_rate_idx[2] = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ap.ucast_rate_idx[3] = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last_tx_hlid = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"links_map[0] = 0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssid = %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"channel = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bitrate_masks[0] = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bitrate_masks[1] = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"basic_rate_set = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"basic_rate = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rate_set = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"beacon_int = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"default_key = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aid = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"psm_entry_retry = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rssi_thold = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"last_rssi_event = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ba_support = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ba_allowed = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"total_freed_pkts = 0x%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@dtim_interval_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.29, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wlcore: WARNING illegal value for dtim_interval\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dtim_interval_write\00", [44 x i8] zeroinitializer }, align 32
@dtim_interval_write._entry_ptr = internal global ptr @dtim_interval_write._entry, section ".printk_index", align 4
@dtim_interval_write._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.29, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014wlcore: WARNING dtim value is not in valid range\0A\00", [44 x i8] zeroinitializer }, align 32
@dtim_interval_write._entry_ptr.109 = internal global ptr @dtim_interval_write._entry.107, section ".printk_index", align 4
@suspend_dtim_interval_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.29, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING illegal value for suspend_dtim_interval\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"suspend_dtim_interval_write\00", [36 x i8] zeroinitializer }, align 32
@suspend_dtim_interval_write._entry_ptr = internal global ptr @suspend_dtim_interval_write._entry, section ".printk_index", align 4
@suspend_dtim_interval_write._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.29, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014wlcore: WARNING suspend_dtim value is not in valid range\0A\00", [36 x i8] zeroinitializer }, align 32
@suspend_dtim_interval_write._entry_ptr.114 = internal global ptr @suspend_dtim_interval_write._entry.112, section ".printk_index", align 4
@beacon_interval_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.29, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014wlcore: WARNING illegal value for beacon_interval\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beacon_interval_write\00", [42 x i8] zeroinitializer }, align 32
@beacon_interval_write._entry_ptr = internal global ptr @beacon_interval_write._entry, section ".printk_index", align 4
@beacon_interval_write._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.29, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014wlcore: WARNING beacon interval value is not in valid range\0A\00", [33 x i8] zeroinitializer }, align 32
@beacon_interval_write._entry_ptr.119 = internal global ptr @beacon_interval_write._entry.117, section ".printk_index", align 4
@beacon_filtering_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.29, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING illegal value for beacon_filtering!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beacon_filtering_write\00", [41 x i8] zeroinitializer }, align 32
@beacon_filtering_write._entry_ptr = internal global ptr @beacon_filtering_write._entry, section ".printk_index", align 4
@dynamic_ps_timeout_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.29, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wlcore: WARNING illegal value in dynamic_ps\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dynamic_ps_timeout_write\00", [39 x i8] zeroinitializer }, align 32
@dynamic_ps_timeout_write._entry_ptr = internal global ptr @dynamic_ps_timeout_write._entry, section ".printk_index", align 4
@dynamic_ps_timeout_write._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.29, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014wlcore: WARNING dynamic_ps_timeout is not in valid range\0A\00", [36 x i8] zeroinitializer }, align 32
@dynamic_ps_timeout_write._entry_ptr.126 = internal global ptr @dynamic_ps_timeout_write._entry.124, section ".printk_index", align 4
@forced_ps_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.29, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014wlcore: WARNING illegal value in forced_ps\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"forced_ps_write\00", [16 x i8] zeroinitializer }, align 32
@forced_ps_write._entry_ptr = internal global ptr @forced_ps_write._entry, section ".printk_index", align 4
@forced_ps_write._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.29, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014wlcore: WARNING forced_ps should be either 0 or 1\0A\00", [43 x i8] zeroinitializer }, align 32
@forced_ps_write._entry_ptr.131 = internal global ptr @forced_ps_write._entry.129, section ".printk_index", align 4
@split_scan_timeout_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.29, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING illegal value in split_scan_timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"split_scan_timeout_write\00", [39 x i8] zeroinitializer }, align 32
@split_scan_timeout_write._entry_ptr = internal global ptr @split_scan_timeout_write._entry, section ".printk_index", align 4
@split_scan_timeout_write._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.29, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016wlcore: split scan will be disabled\0A\00", [57 x i8] zeroinitializer }, align 32
@split_scan_timeout_write._entry_ptr.136 = internal global ptr @split_scan_timeout_write._entry.134, section ".printk_index", align 4
@irq_pkt_threshold_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.29, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING illegal value for irq_pkt_threshold\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irq_pkt_threshold_write\00", [40 x i8] zeroinitializer }, align 32
@irq_pkt_threshold_write._entry_ptr = internal global ptr @irq_pkt_threshold_write._entry, section ".printk_index", align 4
@irq_pkt_threshold_write._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.29, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING irq_pkt_threshold is not in valid range\0A\00", [37 x i8] zeroinitializer }, align 32
@irq_pkt_threshold_write._entry_ptr.141 = internal global ptr @irq_pkt_threshold_write._entry.139, section ".printk_index", align 4
@chip_op_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.29, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014wlcore: WARNING debugfs chip_op_handler with no callback\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chip_op_handler\00", [16 x i8] zeroinitializer }, align 32
@chip_op_handler._entry_ptr = internal global ptr @chip_op_handler._entry, section ".printk_index", align 4
@irq_blk_threshold_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.29, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING illegal value for irq_blk_threshold\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irq_blk_threshold_write\00", [40 x i8] zeroinitializer }, align 32
@irq_blk_threshold_write._entry_ptr = internal global ptr @irq_blk_threshold_write._entry, section ".printk_index", align 4
@irq_blk_threshold_write._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.29, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING irq_blk_threshold is not in valid range\0A\00", [37 x i8] zeroinitializer }, align 32
@irq_blk_threshold_write._entry_ptr.148 = internal global ptr @irq_blk_threshold_write._entry.146, section ".printk_index", align 4
@irq_timeout_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.29, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014wlcore: WARNING illegal value for irq_timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq_timeout_write\00", [46 x i8] zeroinitializer }, align 32
@irq_timeout_write._entry_ptr = internal global ptr @irq_timeout_write._entry, section ".printk_index", align 4
@irq_timeout_write._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.29, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014wlcore: WARNING irq_timeout is not in valid range\0A\00", [43 x i8] zeroinitializer }, align 32
@irq_timeout_write._entry_ptr.153 = internal global ptr @irq_timeout_write._entry.151, section ".printk_index", align 4
@sleep_auth_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.29, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wlcore: WARNING illegal value in sleep_auth\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sleep_auth_write\00", [47 x i8] zeroinitializer }, align 32
@sleep_auth_write._entry_ptr = internal global ptr @sleep_auth_write._entry, section ".printk_index", align 4
@sleep_auth_write._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.29, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING sleep_auth must be between 0 and %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sleep_auth_write._entry_ptr.158 = internal global ptr @sleep_auth_write._entry.156, section ".printk_index", align 4
@fw_logger_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.29, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014wlcore: WARNING illegal value in fw_logger\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fw_logger_write\00", [16 x i8] zeroinitializer }, align 32
@fw_logger_write._entry_ptr = internal global ptr @fw_logger_write._entry, section ".printk_index", align 4
@fw_logger_write._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.29, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014wlcore: WARNING fw_logger value must be 1-UART 2-SDIO\0A\00", [39 x i8] zeroinitializer }, align 32
@fw_logger_write._entry_ptr.163 = internal global ptr @fw_logger_write._entry.161, section ".printk_index", align 4
@fw_logger_write._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.29, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\014wlcore: WARNING invalid operation - fw logger disabled by default, please change mode via wlconf\0A\00", [60 x i8] zeroinitializer }, align 32
@fw_logger_write._entry_ptr.166 = internal global ptr @fw_logger_write._entry.164, section ".printk_index", align 4
@rx_streaming_interval_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.29, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014wlcore: WARNING illegal value in rx_streaming_interval!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_streaming_interval_write\00", [36 x i8] zeroinitializer }, align 32
@rx_streaming_interval_write._entry_ptr = internal global ptr @rx_streaming_interval_write._entry, section ".printk_index", align 4
@rx_streaming_interval_write._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.29, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014wlcore: WARNING value is not in range!\0A\00", [54 x i8] zeroinitializer }, align 32
@rx_streaming_interval_write._entry_ptr.171 = internal global ptr @rx_streaming_interval_write._entry.169, section ".printk_index", align 4
@rx_streaming_always_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.29, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014wlcore: WARNING illegal value in rx_streaming_write!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_streaming_always_write\00", [38 x i8] zeroinitializer }, align 32
@rx_streaming_always_write._entry_ptr = internal global ptr @rx_streaming_always_write._entry, section ".printk_index", align 4
@rx_streaming_always_write._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.29, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014wlcore: WARNING value is not in valid!\0A\00", [54 x i8] zeroinitializer }, align 32
@rx_streaming_always_write._entry_ptr.176 = internal global ptr @rx_streaming_always_write._entry.174, section ".printk_index", align 4
@.str.177 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wlcore/io.h\00", [60 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 8]
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1333, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1288, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"tx_queue_len_ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 94, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1289, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"retry_count_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 76, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1290, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [22 x i8] c"excessive_retries_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 77, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1292, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"gpio_power_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 219, i32 37 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1293, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"start_recovery_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 239, i32 37 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1294, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"driver_state_ops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 519, i32 37 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1295, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"vifs_state_ops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 629, i32 37 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1296, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [18 x i8] c"dtim_interval_ops\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 686, i32 37 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1297, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [26 x i8] c"suspend_dtim_interval_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 744, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1298, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c"beacon_interval_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 802, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1299, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [21 x i8] c"beacon_filtering_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 959, i32 37 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1300, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [23 x i8] c"dynamic_ps_timeout_ops\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 305, i32 37 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1301, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [14 x i8] c"forced_ps_ops\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 377, i32 37 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1302, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [23 x i8] c"split_scan_timeout_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 419, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1303, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [22 x i8] c"irq_pkt_threshold_ops\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1304, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [22 x i8] c"irq_blk_threshold_ops\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1305, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [16 x i8] c"irq_timeout_ops\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1306, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"fw_stats_raw_ops\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 978, i32 37 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1307, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [15 x i8] c"sleep_auth_ops\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1042, i32 37 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1308, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [14 x i8] c"fw_logger_ops\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1276, i32 37 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1310, i32 33 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1312, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [26 x i8] c"rx_streaming_interval_ops\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 860, i32 37 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1313, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [24 x i8] c"rx_streaming_always_ops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 918, i32 37 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1315, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [12 x i8] c"dev_mem_ops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1215, i32 37 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 90, i32 36 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 189, i32 36 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 204, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 461, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 466, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 469, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 470, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 471, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 472, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 473, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 474, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 475, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 476, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 477, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 478, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 479, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 480, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 481, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 482, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 483, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 484, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 485, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 486, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 487, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 488, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 489, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 490, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 491, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 492, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 493, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 494, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 495, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 497, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 498, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 499, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 500, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 501, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 502, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 562, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 563, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 565, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 566, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 567, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 571, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 572, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 573, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 574, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 575, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 577, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 578, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 579, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 580, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 581, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 582, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 583, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 584, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 585, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 587, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 592, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 593, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 595, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 596, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 597, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 598, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 599, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 600, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 601, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 602, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 603, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 604, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 606, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 607, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 608, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 609, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 610, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 660, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 665, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 721, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 726, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 776, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 781, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 936, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 266, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 271, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 333, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 338, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 404, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 409, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 173, i32 1 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 107, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 175, i32 1 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 177, i32 1 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1004, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1009, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1242, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1247, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1252, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 820, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 826, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 878, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.788 = private constant [44 x i8] c"../drivers/net/wireless/ti/wlcore/debugfs.c\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 884, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant [39 x i8] c"../drivers/net/wireless/ti/wlcore/io.h\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.791, i32 69, i32 6 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 230, i32 6 }
@___asan_gen_.797 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 214, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.800 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.800, i32 174, i32 2 }
@llvm.compiler.used = appending global [238 x ptr] [ptr @__ksymtab_wl1271_debugfs_update_stats, ptr @__ksymtab_wl1271_format_buffer, ptr @beacon_filtering_write._entry, ptr @beacon_filtering_write._entry_ptr, ptr @beacon_interval_write._entry, ptr @beacon_interval_write._entry.117, ptr @beacon_interval_write._entry_ptr, ptr @beacon_interval_write._entry_ptr.119, ptr @chip_op_handler._entry, ptr @chip_op_handler._entry_ptr, ptr @dtim_interval_write._entry, ptr @dtim_interval_write._entry.107, ptr @dtim_interval_write._entry_ptr, ptr @dtim_interval_write._entry_ptr.109, ptr @dynamic_ps_timeout_write._entry, ptr @dynamic_ps_timeout_write._entry.124, ptr @dynamic_ps_timeout_write._entry_ptr, ptr @dynamic_ps_timeout_write._entry_ptr.126, ptr @forced_ps_write._entry, ptr @forced_ps_write._entry.129, ptr @forced_ps_write._entry_ptr, ptr @forced_ps_write._entry_ptr.131, ptr @fw_logger_write._entry, ptr @fw_logger_write._entry.161, ptr @fw_logger_write._entry.164, ptr @fw_logger_write._entry_ptr, ptr @fw_logger_write._entry_ptr.163, ptr @fw_logger_write._entry_ptr.166, ptr @gpio_power_write._entry, ptr @gpio_power_write._entry_ptr, ptr @irq_blk_threshold_write._entry, ptr @irq_blk_threshold_write._entry.146, ptr @irq_blk_threshold_write._entry_ptr, ptr @irq_blk_threshold_write._entry_ptr.148, ptr @irq_pkt_threshold_write._entry, ptr @irq_pkt_threshold_write._entry.139, ptr @irq_pkt_threshold_write._entry_ptr, ptr @irq_pkt_threshold_write._entry_ptr.141, ptr @irq_timeout_write._entry, ptr @irq_timeout_write._entry.151, ptr @irq_timeout_write._entry_ptr, ptr @irq_timeout_write._entry_ptr.153, ptr @rx_streaming_always_write._entry, ptr @rx_streaming_always_write._entry.174, ptr @rx_streaming_always_write._entry_ptr, ptr @rx_streaming_always_write._entry_ptr.176, ptr @rx_streaming_interval_write._entry, ptr @rx_streaming_interval_write._entry.169, ptr @rx_streaming_interval_write._entry_ptr, ptr @rx_streaming_interval_write._entry_ptr.171, ptr @sleep_auth_write._entry, ptr @sleep_auth_write._entry.156, ptr @sleep_auth_write._entry_ptr, ptr @sleep_auth_write._entry_ptr.158, ptr @split_scan_timeout_write._entry, ptr @split_scan_timeout_write._entry.134, ptr @split_scan_timeout_write._entry_ptr, ptr @split_scan_timeout_write._entry_ptr.136, ptr @suspend_dtim_interval_write._entry, ptr @suspend_dtim_interval_write._entry.112, ptr @suspend_dtim_interval_write._entry_ptr, ptr @suspend_dtim_interval_write._entry_ptr.114, ptr @.str, ptr @.str.1, ptr @tx_queue_len_ops, ptr @.str.2, ptr @retry_count_ops, ptr @.str.3, ptr @excessive_retries_ops, ptr @.str.4, ptr @gpio_power_ops, ptr @.str.5, ptr @start_recovery_ops, ptr @.str.6, ptr @driver_state_ops, ptr @.str.7, ptr @vifs_state_ops, ptr @.str.8, ptr @dtim_interval_ops, ptr @.str.9, ptr @suspend_dtim_interval_ops, ptr @.str.10, ptr @beacon_interval_ops, ptr @.str.11, ptr @beacon_filtering_ops, ptr @.str.12, ptr @dynamic_ps_timeout_ops, ptr @.str.13, ptr @forced_ps_ops, ptr @.str.14, ptr @split_scan_timeout_ops, ptr @.str.15, ptr @irq_pkt_threshold_ops, ptr @.str.16, ptr @irq_blk_threshold_ops, ptr @.str.17, ptr @irq_timeout_ops, ptr @.str.18, ptr @fw_stats_raw_ops, ptr @.str.19, ptr @sleep_auth_ops, ptr @.str.20, ptr @fw_logger_ops, ptr @.str.21, ptr @.str.22, ptr @rx_streaming_interval_ops, ptr @.str.23, ptr @rx_streaming_always_ops, ptr @.str.24, ptr @dev_mem_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180], section "llvm.metadata"
@0 = internal global [206 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_queue_len_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retry_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @excessive_retries_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_power_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_recovery_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_state_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vifs_state_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtim_interval_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_dtim_interval_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_interval_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_filtering_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_ps_timeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @forced_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_scan_timeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_pkt_threshold_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_blk_threshold_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_timeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_stats_raw_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sleep_auth_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_logger_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_streaming_interval_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_streaming_always_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_mem_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_power_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtim_interval_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtim_interval_write._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_dtim_interval_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_dtim_interval_write._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_interval_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_interval_write._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_filtering_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_ps_timeout_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_ps_timeout_write._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @forced_ps_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @forced_ps_write._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_scan_timeout_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_scan_timeout_write._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_pkt_threshold_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_pkt_threshold_write._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_op_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_blk_threshold_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_blk_threshold_write._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_timeout_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_timeout_write._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sleep_auth_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sleep_auth_write._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_logger_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_logger_write._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_logger_write._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_streaming_interval_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_streaming_interval_write._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_streaming_always_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_streaming_always_write._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #10
  %1 = call ptr @memset(ptr %buf, i32 255, i32 256)
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vscnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #10
  call void @llvm.va_end(ptr nonnull %args)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_debugfs_update_stats(ptr noundef %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !401

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !402
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !403
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then3.out_crit_edge, label %do.end11.i.i.i.i

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !404
  br label %out

if.end5:                                          ; preds = %if.end
  %plt = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 14
  %7 = ptrtoint ptr %plt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %plt, align 8, !range !405
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end5
  %fw_stats_update = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 1
  %9 = ptrtoint ptr %fw_stats_update to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_stats_update, align 4
  %add = add i32 %10, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp8 = icmp slt i32 %sub, 0
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 8
  %call11 = tail call i32 @wl1271_acx_statistics(ptr noundef %wl, ptr noundef %13) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %fw_stats_update to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fw_stats_update, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i30 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i30, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i31 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #10
  br label %out

out:                                              ; preds = %if.end14, %do.end11.i.i.i.i, %if.then3.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_statistics(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wl1271_debugfs_reset(ptr nocapture noundef %wl) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw_stats_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 2
  %2 = ptrtoint ptr %fw_stats_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_stats_len, align 8
  %4 = call ptr @memset(ptr %1, i32 0, i32 %3)
  %retry_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 3
  %5 = ptrtoint ptr %retry_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %retry_count, align 4
  %excessive_retries = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 4
  %6 = ptrtoint ptr %excessive_retries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %excessive_retries, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1271_debugfs_init(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %5) #10
  %stats = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87
  %fw_stats_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 2
  %6 = ptrtoint ptr %fw_stats_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_stats_len, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #13
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %stats, align 8
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.out_remove_crit_edge, label %if.end

entry.out_remove_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_remove

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %fw_stats_update = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 1
  %10 = ptrtoint ptr %fw_stats_update to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fw_stats_update, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @tx_queue_len_ops) #10
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @retry_count_ops) #10
  %call6.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @excessive_retries_ops) #10
  %call10.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @gpio_power_ops) #10
  %call14.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @start_recovery_ops) #10
  %call18.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @driver_state_ops) #10
  %call22.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @vifs_state_ops) #10
  %call26.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @dtim_interval_ops) #10
  %call30.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @suspend_dtim_interval_ops) #10
  %call34.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @beacon_interval_ops) #10
  %call38.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @beacon_filtering_ops) #10
  %call42.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @dynamic_ps_timeout_ops) #10
  %call46.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @forced_ps_ops) #10
  %call50.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @split_scan_timeout_ops) #10
  %call54.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @irq_pkt_threshold_ops) #10
  %call58.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @irq_blk_threshold_ops) #10
  %call62.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @irq_timeout_ops) #10
  %call66.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @fw_stats_raw_ops) #10
  %call70.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @sleep_auth_ops) #10
  %call74.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @fw_logger_ops) #10
  %call77.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.21, ptr noundef %call) #10
  %call79.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %call77.i, ptr noundef %wl, ptr noundef nonnull @rx_streaming_interval_ops) #10
  %call83.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef %call77.i, ptr noundef %wl, ptr noundef nonnull @rx_streaming_always_ops) #10
  %call87.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %wl, ptr noundef nonnull @dev_mem_ops) #10
  %ops.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %debugfs_init.i = getelementptr inbounds %struct.wlcore_ops, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %debugfs_init.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debugfs_init.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %wlcore_debugfs_init.exit

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

wlcore_debugfs_init.exit:                         ; preds = %if.end
  %call.i19 = tail call i32 %14(ptr noundef %wl, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp = icmp slt i32 %call.i19, 0
  br i1 %cmp, label %out_exit, label %wlcore_debugfs_init.exit.out_crit_edge

wlcore_debugfs_init.exit.out_crit_edge:           ; preds = %wlcore_debugfs_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out_exit:                                         ; preds = %wlcore_debugfs_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stats, align 8
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %stats, align 8
  br label %out_remove

out_remove:                                       ; preds = %out_exit, %entry.out_remove_crit_edge
  %ret.0 = phi i32 [ %call.i19, %out_exit ], [ -12, %entry.out_remove_crit_edge ]
  tail call void @debugfs_remove(ptr noundef %call) #10
  br label %out

out:                                              ; preds = %out_remove, %wlcore_debugfs_init.exit.out_crit_edge, %if.end.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_remove ], [ %call.i19, %wlcore_debugfs_init.exit.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1271_debugfs_exit(ptr nocapture noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 8
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %stats, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_queue_len_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #10
  %arrayidx.i = getelementptr %struct.wl1271, ptr %1, i32 0, i32 51, i32 0
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.wl1271, ptr %1, i32 0, i32 51, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i, align 4
  %add.1.i = add i32 %6, %4
  %arrayidx.2.i = getelementptr %struct.wl1271, ptr %1, i32 0, i32 51, i32 2
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.2.i, align 4
  %add.2.i = add i32 %add.1.i, %8
  %arrayidx.3.i = getelementptr %struct.wl1271, ptr %1, i32 0, i32 51, i32 3
  %9 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3.i, align 4
  %add.3.i = add i32 %add.2.i, %10
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %add.3.i) #10
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #10
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @retry_count_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %retry_count = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87, i32 3
  %2 = ptrtoint ptr %retry_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %retry_count, align 4
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.25, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @excessive_retries_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %excessive_retries = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87, i32 4
  %2 = ptrtoint ptr %excessive_retries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %excessive_retries, align 8
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.25, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_power_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #10
  %4 = call ptr @memset(ptr %buf, i32 255, i32 10)
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull @.str.26, i32 noundef %and1.i) #10
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call2) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #10
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_power_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %if_ops.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %if_ops.i, align 8
  %power.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then2.if.then3.i_crit_edge, label %if.then.i

if.then2.if.then3.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.then.i:                                        ; preds = %if.then2
  %dev.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %call.i = call i32 %8(ptr noundef %10, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp.i = icmp eq i32 %call.i, 0
  br i1 %phi.cmp.i, label %if.then.i.if.then3.i_crit_edge, label %if.then.i.if.end4_crit_edge

if.then.i.if.end4_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i.if.then3.i_crit_edge, %if.then2.if.then3.i_crit_edge
  %flags.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 19
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #10
  br label %if.end4

if.else:                                          ; preds = %if.end
  %flags.i12 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i12, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i13 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i13, label %if.else.if.end4_crit_edge, label %if.end.i

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i:                                         ; preds = %if.else
  %if_ops.i14 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %if_ops.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %if_ops.i14, align 8
  %power.i15 = getelementptr inbounds %struct.wl1271_if_operations, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %power.i15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %power.i15, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %if.end.i.if.then8.i_crit_edge, label %if.then2.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then2.i:                                       ; preds = %if.end.i
  %dev.i16 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i16, align 4
  %call5.i = call i32 %16(ptr noundef %18, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %phi.cmp.i17 = icmp eq i32 %call5.i, 0
  br i1 %phi.cmp.i17, label %if.then2.i.if.then8.i_crit_edge, label %if.then2.i.if.end4_crit_edge

if.then2.i.if.end4_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2.i.if.then8.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.then2.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i12) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then8.i, %if.then2.i.if.end4_crit_edge, %if.else.if.end4_crit_edge, %if.then3.i, %if.then.i.if.end4_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_recovery_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @wl12xx_queue_recovery_work(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_queue_recovery_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_state_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 39
  %3 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn406 = load ptr, ptr %wlvif_list, align 4
  %cmp.not407 = icmp eq ptr %.pn406, %wlvif_list
  br i1 %cmp.not407, label %if.end.for.cond24.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond24.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.inc.for.cond24.preheader_crit_edge, %if.end.for.cond24.preheader_crit_edge
  %res.0.lcssa = phi i32 [ 0, %if.end.for.cond24.preheader_crit_edge ], [ %res.1, %for.inc.for.cond24.preheader_crit_edge ]
  %4 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn405410 = load ptr, ptr %wlvif_list, align 4
  %cmp27.not411 = icmp eq ptr %.pn405410, %wlvif_list
  br i1 %cmp27.not411, label %for.cond24.preheader.for.end52_crit_edge, label %for.cond24.preheader.for.body30_crit_edge

for.cond24.preheader.for.body30_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body30

for.cond24.preheader.for.end52_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end52

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn409 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn406, %if.end.for.body_crit_edge ]
  %res.0408 = phi i32 [ %res.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %bss_type = getelementptr i8, ptr %.pn409, i32 12
  %5 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp2 = icmp eq i8 %6, 2
  br i1 %cmp2, label %if.then4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn409, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then4.for.inc_crit_edge, label %if.end8

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr9 = getelementptr i8, ptr %call7.i, i32 %res.0408
  %sub = sub i32 1024, %res.0408
  %channel = getelementptr i8, ptr %.pn409, i32 156
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 8
  %p2p = getelementptr i8, ptr %.pn409, i32 13
  %12 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p2p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool11.not, ptr @.str.32, ptr @.str.31
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub, ptr noundef nonnull @.str.30, i32 noundef %11, ptr noundef nonnull %cond) #10
  %add = add i32 %call12, %res.0408
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %res.1 = phi i32 [ %add, %if.end8 ], [ %res.0408, %if.then4.for.inc_crit_edge ], [ %res.0408, %for.body.for.inc_crit_edge ]
  %14 = ptrtoint ptr %.pn409 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn409, align 4
  %cmp.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp.not, label %for.inc.for.cond24.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.cond24.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond24.preheader

for.body30:                                       ; preds = %for.inc46.for.body30_crit_edge, %for.cond24.preheader.for.body30_crit_edge
  %.pn405413 = phi ptr [ %.pn405, %for.inc46.for.body30_crit_edge ], [ %.pn405410, %for.cond24.preheader.for.body30_crit_edge ]
  %res.2412 = phi i32 [ %res.3, %for.inc46.for.body30_crit_edge ], [ %res.0.lcssa, %for.cond24.preheader.for.body30_crit_edge ]
  %bss_type31 = getelementptr i8, ptr %.pn405413, i32 12
  %15 = ptrtoint ptr %bss_type31 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bss_type31, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp33 = icmp eq i8 %16, 3
  br i1 %cmp33, label %if.then35, label %for.body30.for.inc46_crit_edge

for.body30.for.inc46_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc46

if.then35:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr36 = getelementptr i8, ptr %call7.i, i32 %res.2412
  %sub37 = sub i32 1024, %res.2412
  %channel38 = getelementptr i8, ptr %.pn405413, i32 156
  %17 = ptrtoint ptr %channel38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel38, align 8
  %p2p39 = getelementptr i8, ptr %.pn405413, i32 13
  %19 = ptrtoint ptr %p2p39 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %p2p39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool41.not = icmp eq i8 %20, 0
  %cond42 = select i1 %tobool41.not, ptr @.str.34, ptr @.str.33
  %call43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.30, i32 noundef %18, ptr noundef nonnull %cond42) #10
  %add44 = add i32 %call43, %res.2412
  br label %for.inc46

for.inc46:                                        ; preds = %if.then35, %for.body30.for.inc46_crit_edge
  %res.3 = phi i32 [ %add44, %if.then35 ], [ %res.2412, %for.body30.for.inc46_crit_edge ]
  %21 = ptrtoint ptr %.pn405413 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn405 = load ptr, ptr %.pn405413, align 4
  %cmp27.not = icmp eq ptr %.pn405, %wlvif_list
  br i1 %cmp27.not, label %for.inc46.for.end52_crit_edge, label %for.inc46.for.body30_crit_edge

for.inc46.for.body30_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30

for.inc46.for.end52_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end52

for.end52:                                        ; preds = %for.inc46.for.end52_crit_edge, %for.cond24.preheader.for.end52_crit_edge
  %res.2.lcssa = phi i32 [ %res.0.lcssa, %for.cond24.preheader.for.end52_crit_edge ], [ %res.3, %for.inc46.for.end52_crit_edge ]
  %add.ptr53 = getelementptr i8, ptr %call7.i, i32 %res.2.lcssa
  %sub54 = sub i32 1024, %res.2.lcssa
  %tx_blocks_available = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 44
  %22 = ptrtoint ptr %tx_blocks_available to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_blocks_available, align 8
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.35, i32 noundef %23) #10
  %add56 = add i32 %call55, %res.2.lcssa
  %add.ptr57 = getelementptr i8, ptr %call7.i, i32 %add56
  %sub58 = sub i32 1024, %add56
  %tx_allocated_blocks = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 45
  %24 = ptrtoint ptr %tx_allocated_blocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_allocated_blocks, align 4
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.36, i32 noundef %25) #10
  %add60 = add i32 %call59, %add56
  %add.ptr61 = getelementptr i8, ptr %call7.i, i32 %add60
  %sub62 = sub i32 1024, %add60
  %tx_allocated_pkts = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 48
  %26 = ptrtoint ptr %tx_allocated_pkts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_allocated_pkts, align 4
  %call63 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61, i32 noundef %sub62, ptr noundef nonnull @.str.37, i32 noundef %27) #10
  %add64 = add i32 %call63, %add60
  %add.ptr65 = getelementptr i8, ptr %call7.i, i32 %add64
  %sub66 = sub i32 1024, %add64
  %arrayidx68 = getelementptr %struct.wl1271, ptr %1, i32 0, i32 48, i32 1
  %28 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx68, align 4
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.38, i32 noundef %29) #10
  %add70 = add i32 %call69, %add64
  %add.ptr71 = getelementptr i8, ptr %call7.i, i32 %add70
  %sub72 = sub i32 1024, %add70
  %arrayidx74 = getelementptr %struct.wl1271, ptr %1, i32 0, i32 48, i32 2
  %30 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx74, align 4
  %call75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub72, ptr noundef nonnull @.str.39, i32 noundef %31) #10
  %add76 = add i32 %call75, %add70
  %add.ptr77 = getelementptr i8, ptr %call7.i, i32 %add76
  %sub78 = sub i32 1024, %add76
  %arrayidx80 = getelementptr %struct.wl1271, ptr %1, i32 0, i32 48, i32 3
  %32 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx80, align 4
  %call81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.40, i32 noundef %33) #10
  %add82 = add i32 %call81, %add76
  %add.ptr83 = getelementptr i8, ptr %call7.i, i32 %add82
  %sub84 = sub i32 1024, %add82
  %tx_frames_cnt = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 59
  %34 = ptrtoint ptr %tx_frames_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_frames_cnt, align 4
  %call85 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr83, i32 noundef %sub84, ptr noundef nonnull @.str.41, i32 noundef %35) #10
  %add86 = add i32 %call85, %add82
  %add.ptr87 = getelementptr i8, ptr %call7.i, i32 %add86
  %sub88 = sub i32 1024, %add86
  %tx_frames_map = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 57
  %36 = ptrtoint ptr %tx_frames_map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_frames_map, align 8
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr87, i32 noundef %sub88, ptr noundef nonnull @.str.42, i32 noundef %37) #10
  %add91 = add i32 %call90, %add86
  %add.ptr92 = getelementptr i8, ptr %call7.i, i32 %add91
  %sub93 = sub i32 1024, %add91
  %tx_queue_count = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 51
  %38 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_queue_count, align 8
  %call95 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr92, i32 noundef %sub93, ptr noundef nonnull @.str.43, i32 noundef %39) #10
  %add96 = add i32 %call95, %add91
  %add.ptr97 = getelementptr i8, ptr %call7.i, i32 %add96
  %sub98 = sub i32 1024, %add96
  %arrayidx100 = getelementptr %struct.wl1271, ptr %1, i32 0, i32 51, i32 1
  %40 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx100, align 4
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr97, i32 noundef %sub98, ptr noundef nonnull @.str.44, i32 noundef %41) #10
  %add102 = add i32 %call101, %add96
  %add.ptr103 = getelementptr i8, ptr %call7.i, i32 %add102
  %sub104 = sub i32 1024, %add102
  %arrayidx106 = getelementptr %struct.wl1271, ptr %1, i32 0, i32 51, i32 2
  %42 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx106, align 8
  %call107 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr103, i32 noundef %sub104, ptr noundef nonnull @.str.45, i32 noundef %43) #10
  %add108 = add i32 %call107, %add102
  %add.ptr109 = getelementptr i8, ptr %call7.i, i32 %add108
  %sub110 = sub i32 1024, %add108
  %arrayidx112 = getelementptr %struct.wl1271, ptr %1, i32 0, i32 51, i32 3
  %44 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx112, align 4
  %call113 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr109, i32 noundef %sub110, ptr noundef nonnull @.str.46, i32 noundef %45) #10
  %add114 = add i32 %call113, %add108
  %add.ptr115 = getelementptr i8, ptr %call7.i, i32 %add114
  %sub116 = sub i32 1024, %add114
  %tx_packets_count = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 49
  %46 = ptrtoint ptr %tx_packets_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_packets_count, align 4
  %call117 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr115, i32 noundef %sub116, ptr noundef nonnull @.str.47, i32 noundef %47) #10
  %add118 = add i32 %call117, %add114
  %add.ptr119 = getelementptr i8, ptr %call7.i, i32 %add118
  %sub120 = sub i32 1024, %add118
  %tx_results_count = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 46
  %48 = ptrtoint ptr %tx_results_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_results_count, align 8
  %call121 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr119, i32 noundef %sub120, ptr noundef nonnull @.str.48, i32 noundef %49) #10
  %add122 = add i32 %call121, %add118
  %add.ptr123 = getelementptr i8, ptr %call7.i, i32 %add122
  %sub124 = sub i32 1024, %add122
  %flags125 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 19
  %50 = ptrtoint ptr %flags125 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags125, align 8
  %call126 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr123, i32 noundef %sub124, ptr noundef nonnull @.str.49, i32 noundef %51) #10
  %add127 = add i32 %call126, %add122
  %add.ptr128 = getelementptr i8, ptr %call7.i, i32 %add127
  %sub129 = sub i32 1024, %add127
  %tx_blocks_freed = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 43
  %52 = ptrtoint ptr %tx_blocks_freed to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_blocks_freed, align 4
  %call130 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr128, i32 noundef %sub129, ptr noundef nonnull @.str.50, i32 noundef %53) #10
  %add131 = add i32 %call130, %add127
  %add.ptr132 = getelementptr i8, ptr %call7.i, i32 %add131
  %sub133 = sub i32 1024, %add131
  %rx_counter = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 60
  %54 = ptrtoint ptr %rx_counter to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_counter, align 8
  %call134 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr132, i32 noundef %sub133, ptr noundef nonnull @.str.51, i32 noundef %55) #10
  %add135 = add i32 %call134, %add131
  %add.ptr136 = getelementptr i8, ptr %call7.i, i32 %add135
  %sub137 = sub i32 1024, %add135
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state, align 8
  %call138 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136, i32 noundef %sub137, ptr noundef nonnull @.str.52, i32 noundef %57) #10
  %add139 = add i32 %call138, %add135
  %add.ptr140 = getelementptr i8, ptr %call7.i, i32 %add139
  %sub141 = sub i32 1024, %add139
  %band = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 84
  %58 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %band, align 4
  %call142 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr140, i32 noundef %sub141, ptr noundef nonnull @.str.53, i32 noundef %59) #10
  %add143 = add i32 %call142, %add139
  %add.ptr144 = getelementptr i8, ptr %call7.i, i32 %add143
  %sub145 = sub i32 1024, %add143
  %power_level = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 86
  %60 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %power_level, align 4
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr144, i32 noundef %sub145, ptr noundef nonnull @.str.54, i32 noundef %61) #10
  %add147 = add i32 %call146, %add143
  %add.ptr148 = getelementptr i8, ptr %call7.i, i32 %add147
  %sub149 = sub i32 1024, %add147
  %sg_enabled = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 95
  %62 = ptrtoint ptr %sg_enabled to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sg_enabled, align 8, !range !405
  %64 = zext i8 %63 to i32
  %call152 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr148, i32 noundef %sub149, ptr noundef nonnull @.str.55, i32 noundef %64) #10
  %add153 = add i32 %call152, %add147
  %add.ptr154 = getelementptr i8, ptr %call7.i, i32 %add153
  %sub155 = sub i32 1024, %add153
  %enable_11a = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 96
  %65 = ptrtoint ptr %enable_11a to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %enable_11a, align 1, !range !405
  %67 = zext i8 %66 to i32
  %call158 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr154, i32 noundef %sub155, ptr noundef nonnull @.str.56, i32 noundef %67) #10
  %add159 = add i32 %call158, %add153
  %add.ptr160 = getelementptr i8, ptr %call7.i, i32 %add159
  %sub161 = sub i32 1024, %add159
  %noise = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 98
  %68 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %noise, align 8
  %conv162 = sext i8 %69 to i32
  %call163 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr160, i32 noundef %sub161, ptr noundef nonnull @.str.57, i32 noundef %conv162) #10
  %add164 = add i32 %call163, %add159
  %add.ptr165 = getelementptr i8, ptr %call7.i, i32 %add164
  %sub166 = sub i32 1024, %add164
  %ap_fw_ps_map = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 105
  %70 = ptrtoint ptr %ap_fw_ps_map to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ap_fw_ps_map, align 8
  %call167 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr165, i32 noundef %sub166, ptr noundef nonnull @.str.58, i32 noundef %71) #10
  %add168 = add i32 %call167, %add164
  %add.ptr169 = getelementptr i8, ptr %call7.i, i32 %add168
  %sub170 = sub i32 1024, %add168
  %ap_ps_map = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 106
  %72 = ptrtoint ptr %ap_ps_map to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ap_ps_map, align 4
  %call171 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr169, i32 noundef %sub170, ptr noundef nonnull @.str.59, i32 noundef %73) #10
  %add172 = add i32 %call171, %add168
  %add.ptr173 = getelementptr i8, ptr %call7.i, i32 %add172
  %sub174 = sub i32 1024, %add172
  %quirks = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 107
  %74 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %quirks, align 8
  %call175 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr173, i32 noundef %sub174, ptr noundef nonnull @.str.60, i32 noundef %75) #10
  %add176 = add i32 %call175, %add172
  %add.ptr177 = getelementptr i8, ptr %call7.i, i32 %add176
  %sub178 = sub i32 1024, %add176
  %irq = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 7
  %76 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq, align 4
  %call179 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr177, i32 noundef %sub178, ptr noundef nonnull @.str.61, i32 noundef %77) #10
  %add180 = add i32 %call179, %add176
  %add.ptr181 = getelementptr i8, ptr %call7.i, i32 %add180
  %sub182 = sub i32 1024, %add180
  %hw_pg_ver = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 27
  %78 = ptrtoint ptr %hw_pg_ver to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %hw_pg_ver, align 8
  %conv183 = sext i8 %79 to i32
  %call184 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr181, i32 noundef %sub182, ptr noundef nonnull @.str.62, i32 noundef %conv183) #10
  %add185 = add i32 %call184, %add180
  %add.ptr186 = getelementptr i8, ptr %call7.i, i32 %add185
  %sub187 = sub i32 1024, %add185
  %irq_flags = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 9
  %80 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irq_flags, align 4
  %call188 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr186, i32 noundef %sub187, ptr noundef nonnull @.str.63, i32 noundef %81) #10
  %add189 = add i32 %call188, %add185
  %add.ptr190 = getelementptr i8, ptr %call7.i, i32 %add189
  %sub191 = sub i32 1024, %add189
  %chip = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 21
  %82 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %chip, align 4
  %call192 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr190, i32 noundef %sub191, ptr noundef nonnull @.str.64, i32 noundef %83) #10
  %add193 = add i32 %call192, %add189
  %add.ptr194 = getelementptr i8, ptr %call7.i, i32 %add193
  %sub195 = sub i32 1024, %add193
  %fw_ver_str = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 21, i32 1
  %call197 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr194, i32 noundef %sub195, ptr noundef nonnull @.str.65, ptr noundef %fw_ver_str) #10
  %add198 = add i32 %add193, %call197
  %add.ptr199 = getelementptr i8, ptr %call7.i, i32 %add198
  %sub200 = sub i32 1024, %add198
  %phy_fw_ver_str = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 21, i32 3
  %call203 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr199, i32 noundef %sub200, ptr noundef nonnull @.str.66, ptr noundef %phy_fw_ver_str) #10
  %add204 = add i32 %add198, %call203
  %add.ptr205 = getelementptr i8, ptr %call7.i, i32 %add204
  %sub206 = sub i32 1024, %add204
  %recovery_count = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 97
  %84 = ptrtoint ptr %recovery_count to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %recovery_count, align 4
  %call207 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr205, i32 noundef %sub206, ptr noundef nonnull @.str.67, i32 noundef %85) #10
  %add208 = add i32 %call207, %add204
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %call210 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %add208) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end52, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call210, %for.end52 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vifs_state_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp_buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp_buf) #10
  %2 = call ptr @memset(ptr %tmp_buf, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4096) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn482 = load ptr, ptr %wlvif_list, align 4
  %cmp.not483 = icmp eq ptr %.pn482, %wlvif_list
  br i1 %cmp.not483, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end114.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn485 = phi ptr [ %.pn, %if.end114.for.body_crit_edge ], [ %.pn482, %if.end.for.body_crit_edge ]
  %res.0484 = phi i32 [ %add237, %if.end114.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %call7.i.i, i32 %res.0484
  %sub = sub i32 4096, %res.0484
  %role_id = getelementptr i8, ptr %.pn485, i32 14
  %5 = ptrtoint ptr %role_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %role_id, align 2
  %conv = zext i8 %6 to i32
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub, ptr noundef nonnull @.str.68, i32 noundef %conv) #10
  %add = add i32 %call3, %res.0484
  %add.ptr4 = getelementptr i8, ptr %call7.i.i, i32 %add
  %sub5 = sub i32 4096, %add
  %bss_type = getelementptr i8, ptr %.pn485, i32 12
  %7 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bss_type, align 8
  %conv6 = zext i8 %8 to i32
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.69, i32 noundef %conv6) #10
  %add8 = add i32 %call7, %add
  %add.ptr9 = getelementptr i8, ptr %call7.i.i, i32 %add8
  %sub10 = sub i32 4096, %add8
  %flags = getelementptr i8, ptr %.pn485, i32 8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.49, i32 noundef %10) #10
  %add12 = add i32 %call11, %add8
  %add.ptr13 = getelementptr i8, ptr %call7.i.i, i32 %add12
  %sub14 = sub i32 4096, %add12
  %p2p = getelementptr i8, ptr %.pn485, i32 13
  %11 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %p2p, align 1
  %conv15 = zext i8 %12 to i32
  %call16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.70, i32 noundef %conv15) #10
  %add17 = add i32 %call16, %add12
  %add.ptr18 = getelementptr i8, ptr %call7.i.i, i32 %add17
  %sub19 = sub i32 4096, %add17
  %dev_role_id = getelementptr i8, ptr %.pn485, i32 15
  %13 = ptrtoint ptr %dev_role_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dev_role_id, align 1
  %conv20 = zext i8 %14 to i32
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.71, i32 noundef %conv20) #10
  %add22 = add i32 %call21, %add17
  %add.ptr23 = getelementptr i8, ptr %call7.i.i, i32 %add22
  %sub24 = sub i32 4096, %add22
  %dev_hlid = getelementptr i8, ptr %.pn485, i32 16
  %15 = ptrtoint ptr %dev_hlid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dev_hlid, align 4
  %conv25 = zext i8 %16 to i32
  %call26 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.72, i32 noundef %conv25) #10
  %add27 = add i32 %call26, %add22
  %17 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bss_type, align 8
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %if.else [
    i8 2, label %for.body.if.then36_crit_edge
    i8 0, label %for.body.if.then36_crit_edge488
  ]

for.body.if.then36_crit_edge488:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

for.body.if.then36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %for.body.if.then36_crit_edge, %for.body.if.then36_crit_edge488
  %add.ptr37 = getelementptr i8, ptr %call7.i.i, i32 %add27
  %sub38 = sub i32 4096, %add27
  %20 = getelementptr i8, ptr %.pn485, i32 20
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 8
  %conv39 = zext i8 %22 to i32
  %call40 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.73, i32 noundef %conv39) #10
  %add41 = add i32 %call40, %add27
  %add.ptr42 = getelementptr i8, ptr %call7.i.i, i32 %add41
  %sub43 = sub i32 4096, %add41
  %basic_rate_idx = getelementptr i8, ptr %.pn485, i32 21
  %23 = ptrtoint ptr %basic_rate_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %basic_rate_idx, align 1
  %conv44 = zext i8 %24 to i32
  %call45 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.74, i32 noundef %conv44) #10
  %add46 = add i32 %call45, %add41
  %add.ptr47 = getelementptr i8, ptr %call7.i.i, i32 %add46
  %sub48 = sub i32 4096, %add46
  %ap_rate_idx = getelementptr i8, ptr %.pn485, i32 22
  %25 = ptrtoint ptr %ap_rate_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ap_rate_idx, align 2
  %conv49 = zext i8 %26 to i32
  %call50 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.75, i32 noundef %conv49) #10
  %add51 = add i32 %call50, %add46
  %add.ptr52 = getelementptr i8, ptr %call7.i.i, i32 %add51
  %sub53 = sub i32 4096, %add51
  %p2p_rate_idx = getelementptr i8, ptr %.pn485, i32 23
  %27 = ptrtoint ptr %p2p_rate_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %p2p_rate_idx, align 1
  %conv54 = zext i8 %28 to i32
  %call55 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.76, i32 noundef %conv54) #10
  %add56 = add i32 %call55, %add51
  br label %if.end114

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr63 = getelementptr i8, ptr %call7.i.i, i32 %add27
  %sub64 = sub i32 4096, %add27
  %29 = getelementptr i8, ptr %.pn485, i32 20
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 8
  %conv65 = zext i8 %31 to i32
  %call66 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.78, i32 noundef %conv65) #10
  %add67 = add i32 %call66, %add27
  %add.ptr68 = getelementptr i8, ptr %call7.i.i, i32 %add67
  %sub69 = sub i32 4096, %add67
  %bcast_hlid = getelementptr i8, ptr %.pn485, i32 21
  %32 = ptrtoint ptr %bcast_hlid to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bcast_hlid, align 1
  %conv70 = zext i8 %33 to i32
  %call71 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68, i32 noundef %sub69, ptr noundef nonnull @.str.79, i32 noundef %conv70) #10
  %add72 = add i32 %call71, %add67
  %add.ptr73 = getelementptr i8, ptr %call7.i.i, i32 %add72
  %sub74 = sub i32 4096, %add72
  %sta_hlid_map = getelementptr i8, ptr %.pn485, i32 24
  %34 = ptrtoint ptr %sta_hlid_map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sta_hlid_map, align 4
  %call75 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr73, i32 noundef %sub74, ptr noundef nonnull @.str.80, i32 noundef %35) #10
  %add76 = add i32 %call75, %add72
  %add.ptr77 = getelementptr i8, ptr %call7.i.i, i32 %add76
  %sub78 = sub i32 4096, %add76
  %mgmt_rate_idx = getelementptr i8, ptr %.pn485, i32 84
  %36 = ptrtoint ptr %mgmt_rate_idx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mgmt_rate_idx, align 8
  %conv79 = zext i8 %37 to i32
  %call80 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.81, i32 noundef %conv79) #10
  %add81 = add i32 %call80, %add76
  %add.ptr82 = getelementptr i8, ptr %call7.i.i, i32 %add81
  %sub83 = sub i32 4096, %add81
  %bcast_rate_idx = getelementptr i8, ptr %.pn485, i32 85
  %38 = ptrtoint ptr %bcast_rate_idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bcast_rate_idx, align 1
  %conv84 = zext i8 %39 to i32
  %call85 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr82, i32 noundef %sub83, ptr noundef nonnull @.str.82, i32 noundef %conv84) #10
  %add86 = add i32 %call85, %add81
  %add.ptr87 = getelementptr i8, ptr %call7.i.i, i32 %add86
  %sub88 = sub i32 4096, %add86
  %ucast_rate_idx = getelementptr i8, ptr %.pn485, i32 86
  %40 = ptrtoint ptr %ucast_rate_idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ucast_rate_idx, align 2
  %conv90 = zext i8 %41 to i32
  %call91 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr87, i32 noundef %sub88, ptr noundef nonnull @.str.83, i32 noundef %conv90) #10
  %add92 = add i32 %call91, %add86
  %add.ptr93 = getelementptr i8, ptr %call7.i.i, i32 %add92
  %sub94 = sub i32 4096, %add92
  %arrayidx96 = getelementptr i8, ptr %.pn485, i32 87
  %42 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %43 to i32
  %call98 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr93, i32 noundef %sub94, ptr noundef nonnull @.str.84, i32 noundef %conv97) #10
  %add99 = add i32 %call98, %add92
  %add.ptr100 = getelementptr i8, ptr %call7.i.i, i32 %add99
  %sub101 = sub i32 4096, %add99
  %arrayidx103 = getelementptr i8, ptr %.pn485, i32 88
  %44 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx103, align 2
  %conv104 = zext i8 %45 to i32
  %call105 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr100, i32 noundef %sub101, ptr noundef nonnull @.str.85, i32 noundef %conv104) #10
  %add106 = add i32 %call105, %add99
  br label %if.end114

if.end114:                                        ; preds = %if.else, %if.then36
  %add106.sink487 = phi i32 [ %add106, %if.else ], [ %add56, %if.then36 ]
  %.sink = phi i32 [ 89, %if.else ], [ 25, %if.then36 ]
  %.str.86.sink = phi ptr [ @.str.86, %if.else ], [ @.str.77, %if.then36 ]
  %add.ptr107 = getelementptr i8, ptr %call7.i.i, i32 %add106.sink487
  %sub108 = sub i32 4096, %add106.sink487
  %arrayidx110 = getelementptr i8, ptr %.pn485, i32 %.sink
  %46 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %47 to i32
  %call112 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr107, i32 noundef %sub108, ptr noundef nonnull %.str.86.sink, i32 noundef %conv111) #10
  %add113 = add i32 %call112, %add106.sink487
  %add.ptr115 = getelementptr i8, ptr %call7.i.i, i32 %add113
  %sub116 = sub i32 4096, %add113
  %last_tx_hlid = getelementptr i8, ptr %.pn485, i32 92
  %48 = ptrtoint ptr %last_tx_hlid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %last_tx_hlid, align 8
  %call117 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr115, i32 noundef %sub116, ptr noundef nonnull @.str.87, i32 noundef %49) #10
  %add118 = add i32 %call117, %add113
  %add.ptr119 = getelementptr i8, ptr %call7.i.i, i32 %add118
  %sub120 = sub i32 4096, %add118
  %tx_queue_count = getelementptr i8, ptr %.pn485, i32 96
  %50 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_queue_count, align 4
  %call122 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr119, i32 noundef %sub120, ptr noundef nonnull @.str.43, i32 noundef %51) #10
  %add123 = add i32 %call122, %add118
  %add.ptr124 = getelementptr i8, ptr %call7.i.i, i32 %add123
  %sub125 = sub i32 4096, %add123
  %arrayidx127 = getelementptr i8, ptr %.pn485, i32 100
  %52 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx127, align 4
  %call128 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr124, i32 noundef %sub125, ptr noundef nonnull @.str.44, i32 noundef %53) #10
  %add129 = add i32 %call128, %add123
  %add.ptr130 = getelementptr i8, ptr %call7.i.i, i32 %add129
  %sub131 = sub i32 4096, %add129
  %arrayidx133 = getelementptr i8, ptr %.pn485, i32 104
  %54 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx133, align 4
  %call134 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr130, i32 noundef %sub131, ptr noundef nonnull @.str.45, i32 noundef %55) #10
  %add135 = add i32 %call134, %add129
  %add.ptr136 = getelementptr i8, ptr %call7.i.i, i32 %add135
  %sub137 = sub i32 4096, %add135
  %arrayidx139 = getelementptr i8, ptr %.pn485, i32 108
  %56 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx139, align 4
  %call140 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136, i32 noundef %sub137, ptr noundef nonnull @.str.46, i32 noundef %57) #10
  %add141 = add i32 %call140, %add135
  %add.ptr142 = getelementptr i8, ptr %call7.i.i, i32 %add141
  %sub143 = sub i32 4096, %add141
  %links_map = getelementptr i8, ptr %.pn485, i32 112
  %58 = ptrtoint ptr %links_map to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %links_map, align 4
  %call145 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142, i32 noundef %sub143, ptr noundef nonnull @.str.88, i32 noundef %59) #10
  %add146 = add i32 %call145, %add141
  %60 = call ptr @memset(ptr %tmp_buf, i32 0, i32 64)
  %ssid = getelementptr i8, ptr %.pn485, i32 116
  %ssid_len = getelementptr i8, ptr %.pn485, i32 149
  %61 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ssid_len, align 1
  %63 = call i8 @llvm.umin.i8(i8 %62, i8 63)
  %cond = zext i8 %63 to i32
  %64 = call ptr @memcpy(ptr %tmp_buf, ptr %ssid, i32 %cond)
  %add.ptr156 = getelementptr i8, ptr %call7.i.i, i32 %add146
  %sub157 = sub i32 4096, %add146
  %call159 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr156, i32 noundef %sub157, ptr noundef nonnull @.str.89, ptr noundef nonnull %tmp_buf) #10
  %add160 = add i32 %call159, %add146
  %add.ptr161 = getelementptr i8, ptr %call7.i.i, i32 %add160
  %sub162 = sub i32 4096, %add160
  %band = getelementptr i8, ptr %.pn485, i32 152
  %65 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %band, align 4
  %call163 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr161, i32 noundef %sub162, ptr noundef nonnull @.str.53, i32 noundef %66) #10
  %add164 = add i32 %call163, %add160
  %add.ptr165 = getelementptr i8, ptr %call7.i.i, i32 %add164
  %sub166 = sub i32 4096, %add164
  %channel = getelementptr i8, ptr %.pn485, i32 156
  %67 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %channel, align 8
  %call167 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr165, i32 noundef %sub166, ptr noundef nonnull @.str.90, i32 noundef %68) #10
  %add168 = add i32 %call167, %add164
  %add.ptr169 = getelementptr i8, ptr %call7.i.i, i32 %add168
  %sub170 = sub i32 4096, %add168
  %bitrate_masks = getelementptr i8, ptr %.pn485, i32 164
  %69 = ptrtoint ptr %bitrate_masks to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bitrate_masks, align 8
  %call172 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr169, i32 noundef %sub170, ptr noundef nonnull @.str.91, i32 noundef %70) #10
  %add173 = add i32 %call172, %add168
  %add.ptr174 = getelementptr i8, ptr %call7.i.i, i32 %add173
  %sub175 = sub i32 4096, %add173
  %arrayidx177 = getelementptr i8, ptr %.pn485, i32 168
  %71 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx177, align 4
  %call178 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr174, i32 noundef %sub175, ptr noundef nonnull @.str.92, i32 noundef %72) #10
  %add179 = add i32 %call178, %add173
  %add.ptr180 = getelementptr i8, ptr %call7.i.i, i32 %add179
  %sub181 = sub i32 4096, %add179
  %basic_rate_set = getelementptr i8, ptr %.pn485, i32 172
  %73 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %basic_rate_set, align 8
  %call182 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr180, i32 noundef %sub181, ptr noundef nonnull @.str.93, i32 noundef %74) #10
  %add183 = add i32 %call182, %add179
  %add.ptr184 = getelementptr i8, ptr %call7.i.i, i32 %add183
  %sub185 = sub i32 4096, %add183
  %basic_rate = getelementptr i8, ptr %.pn485, i32 176
  %75 = ptrtoint ptr %basic_rate to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %basic_rate, align 4
  %call186 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr184, i32 noundef %sub185, ptr noundef nonnull @.str.94, i32 noundef %76) #10
  %add187 = add i32 %call186, %add183
  %add.ptr188 = getelementptr i8, ptr %call7.i.i, i32 %add187
  %sub189 = sub i32 4096, %add187
  %rate_set = getelementptr i8, ptr %.pn485, i32 180
  %77 = ptrtoint ptr %rate_set to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rate_set, align 8
  %call190 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr188, i32 noundef %sub189, ptr noundef nonnull @.str.95, i32 noundef %78) #10
  %add191 = add i32 %call190, %add187
  %add.ptr192 = getelementptr i8, ptr %call7.i.i, i32 %add191
  %sub193 = sub i32 4096, %add191
  %beacon_int = getelementptr i8, ptr %.pn485, i32 188
  %79 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %beacon_int, align 8
  %call194 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr192, i32 noundef %sub193, ptr noundef nonnull @.str.96, i32 noundef %80) #10
  %add195 = add i32 %call194, %add191
  %add.ptr196 = getelementptr i8, ptr %call7.i.i, i32 %add195
  %sub197 = sub i32 4096, %add195
  %default_key = getelementptr i8, ptr %.pn485, i32 192
  %81 = ptrtoint ptr %default_key to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %default_key, align 4
  %call198 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr196, i32 noundef %sub197, ptr noundef nonnull @.str.97, i32 noundef %82) #10
  %add199 = add i32 %call198, %add195
  %add.ptr200 = getelementptr i8, ptr %call7.i.i, i32 %add199
  %sub201 = sub i32 4096, %add199
  %aid = getelementptr i8, ptr %.pn485, i32 196
  %83 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %aid, align 8
  %conv202 = zext i16 %84 to i32
  %call203 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr200, i32 noundef %sub201, ptr noundef nonnull @.str.98, i32 noundef %conv202) #10
  %add204 = add i32 %call203, %add199
  %add.ptr205 = getelementptr i8, ptr %call7.i.i, i32 %add204
  %sub206 = sub i32 4096, %add204
  %psm_entry_retry = getelementptr i8, ptr %.pn485, i32 198
  %85 = ptrtoint ptr %psm_entry_retry to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %psm_entry_retry, align 2
  %conv207 = zext i8 %86 to i32
  %call208 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr205, i32 noundef %sub206, ptr noundef nonnull @.str.99, i32 noundef %conv207) #10
  %add209 = add i32 %call208, %add204
  %add.ptr210 = getelementptr i8, ptr %call7.i.i, i32 %add209
  %sub211 = sub i32 4096, %add209
  %power_level = getelementptr i8, ptr %.pn485, i32 200
  %87 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %power_level, align 4
  %call212 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr210, i32 noundef %sub211, ptr noundef nonnull @.str.54, i32 noundef %88) #10
  %add213 = add i32 %call212, %add209
  %add.ptr214 = getelementptr i8, ptr %call7.i.i, i32 %add213
  %sub215 = sub i32 4096, %add213
  %rssi_thold = getelementptr i8, ptr %.pn485, i32 204
  %89 = ptrtoint ptr %rssi_thold to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rssi_thold, align 8
  %call216 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr214, i32 noundef %sub215, ptr noundef nonnull @.str.100, i32 noundef %90) #10
  %add217 = add i32 %call216, %add213
  %add.ptr218 = getelementptr i8, ptr %call7.i.i, i32 %add217
  %sub219 = sub i32 4096, %add217
  %last_rssi_event = getelementptr i8, ptr %.pn485, i32 208
  %91 = ptrtoint ptr %last_rssi_event to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %last_rssi_event, align 4
  %call220 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr218, i32 noundef %sub219, ptr noundef nonnull @.str.101, i32 noundef %92) #10
  %add221 = add i32 %call220, %add217
  %add.ptr222 = getelementptr i8, ptr %call7.i.i, i32 %add221
  %sub223 = sub i32 4096, %add221
  %ba_support = getelementptr i8, ptr %.pn485, i32 220
  %93 = ptrtoint ptr %ba_support to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ba_support, align 8, !range !405
  %95 = zext i8 %94 to i32
  %call226 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr222, i32 noundef %sub223, ptr noundef nonnull @.str.102, i32 noundef %95) #10
  %add227 = add i32 %call226, %add221
  %add.ptr228 = getelementptr i8, ptr %call7.i.i, i32 %add227
  %sub229 = sub i32 4096, %add227
  %ba_allowed = getelementptr i8, ptr %.pn485, i32 221
  %96 = ptrtoint ptr %ba_allowed to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ba_allowed, align 1, !range !405
  %98 = zext i8 %97 to i32
  %call232 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr228, i32 noundef %sub229, ptr noundef nonnull @.str.103, i32 noundef %98) #10
  %add233 = add i32 %call232, %add227
  %add.ptr234 = getelementptr i8, ptr %call7.i.i, i32 %add233
  %sub235 = sub i32 4096, %add233
  %total_freed_pkts = getelementptr i8, ptr %.pn485, i32 748
  %99 = ptrtoint ptr %total_freed_pkts to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %total_freed_pkts, align 8
  %call236 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr234, i32 noundef %sub235, ptr noundef nonnull @.str.104, i64 noundef %100) #10
  %add237 = add i32 %call236, %add233
  %101 = ptrtoint ptr %.pn485 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pn = load ptr, ptr %.pn485, align 4
  %cmp.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp.not, label %if.end114.for.end_crit_edge, label %if.end114.for.body_crit_edge

if.end114.for.body_crit_edge:                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end114.for.end_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end114.for.end_crit_edge, %if.end.for.end_crit_edge
  %res.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add237, %if.end114.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  %call244 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %res.0.lcssa) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call244, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp_buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtim_interval_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conn = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %conn, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.181)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 2, label %entry.if.then_crit_edge
    i8 4, label %entry.if.then_crit_edge13
  ]

entry.if.then_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge13
  %listen_interval = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 1
  %5 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %listen_interval, align 1
  %phi.cast = zext i8 %6 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %value.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtim_interval_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %5)
  %6 = icmp ult i32 %5, -10
  br i1 %6, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %conv = trunc i32 %8 to i8
  %conn = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3
  %listen_interval = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 1
  %9 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %listen_interval, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp11 = icmp eq i32 %8, 1
  %. = select i1 %cmp11, i8 2, i8 4
  %10 = ptrtoint ptr %conn to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %., ptr %conn, align 1
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @suspend_dtim_interval_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %suspend_wake_up_event = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 2
  %2 = ptrtoint ptr %suspend_wake_up_event to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspend_wake_up_event, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 2, label %entry.if.then_crit_edge
    i8 4, label %entry.if.then_crit_edge13
  ]

entry.if.then_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge13
  %suspend_listen_interval = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 3
  %5 = ptrtoint ptr %suspend_listen_interval to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %suspend_listen_interval, align 1
  %phi.cast = zext i8 %6 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %value.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @suspend_dtim_interval_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %5)
  %6 = icmp ult i32 %5, -10
  br i1 %6, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %conv = trunc i32 %8 to i8
  %suspend_listen_interval = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 3
  %9 = ptrtoint ptr %suspend_listen_interval to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %suspend_listen_interval, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp11 = icmp eq i32 %8, 1
  %spec.select = select i1 %cmp11, i8 2, i8 4
  %10 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %10, align 1
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beacon_interval_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conn = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %conn, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.183)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 8, label %entry.if.then_crit_edge13
  ]

entry.if.then_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge13
  %listen_interval = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 1
  %5 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %listen_interval, align 1
  %phi.cast = zext i8 %6 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %value.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beacon_interval_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %5)
  %6 = icmp ult i32 %5, -255
  br i1 %6, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %conv = trunc i32 %8 to i8
  %conn = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3
  %listen_interval = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 1
  %9 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %listen_interval, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp11 = icmp eq i32 %8, 1
  %. = select i1 %cmp11, i8 1, i8 8
  %10 = ptrtoint ptr %conn to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %., ptr %conn, align 1
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beacon_filtering_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !402
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %7 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !403
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then4.out_crit_edge, label %do.end11.i.i.i.i

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !404
  br label %out

if.end6:                                          ; preds = %if.end
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn39 = load ptr, ptr %wlvif_list, align 4
  %cmp9.not40 = icmp eq ptr %.pn39, %wlvif_list
  br i1 %cmp9.not40, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn39, %if.end6.for.body_crit_edge ]
  %wlvif.0 = getelementptr i8, ptr %.pn41, i32 -4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  %call12 = call i32 @wl1271_acx_beacon_filter_opt(ptr noundef %1, ptr noundef %wlvif.0, i1 noundef zeroext %tobool) #10
  %11 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp9.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp9.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i37 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i37, ptr %last_busy.i, align 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i38 = call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  br label %out

out:                                              ; preds = %for.end, %do.end11.i.i.i.i, %if.then4.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_beacon_filter_opt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dynamic_ps_timeout_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dynamic_ps_timeout = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 19
  %2 = ptrtoint ptr %dynamic_ps_timeout to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %dynamic_ps_timeout, align 1
  %conv = zext i16 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dynamic_ps_timeout_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %5)
  %6 = icmp ult i32 %5, -65535
  br i1 %6, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %conv = trunc i32 %8 to i16
  %dynamic_ps_timeout = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 19
  %9 = ptrtoint ptr %dynamic_ps_timeout to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv, ptr %dynamic_ps_timeout, align 1
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp11.not = icmp eq i32 %11, 2
  br i1 %cmp11.not, label %if.end15, label %if.end10.out_crit_edge, !prof !401

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.end10
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 0
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !402
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !403
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then19.out_crit_edge, label %do.end11.i.i.i.i

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !404
  br label %out

if.end21:                                         ; preds = %if.end15
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 39
  %17 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn68 = load ptr, ptr %wlvif_list, align 4
  %cmp24.not70 = icmp eq ptr %.pn68, %wlvif_list
  br i1 %cmp24.not70, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end21.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn68, %if.end21.for.body_crit_edge ]
  %wlvif.072 = getelementptr i8, ptr %.pn71, i32 -4
  %bss_type = getelementptr i8, ptr %.pn71, i32 12
  %18 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp29 = icmp eq i8 %19, 2
  br i1 %cmp29, label %if.then31, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then31:                                        ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn71, i32 8
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool33.not = icmp eq i32 %22, 0
  br i1 %tobool33.not, label %if.then31.for.inc_crit_edge, label %if.then34

if.then31.for.inc_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = call i32 @wl1271_ps_set_mode(ptr noundef %1, ptr noundef %wlvif.072, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %if.then31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp24.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i66 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i66, ptr %last_busy.i, align 8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call.i67 = call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #10
  br label %out

out:                                              ; preds = %for.end, %do.end11.i.i.i.i, %if.then19.out_crit_edge, %if.end10.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ %count, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_ps_set_mode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @forced_ps_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %forced_ps = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 20
  %2 = ptrtoint ptr %forced_ps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %forced_ps, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @forced_ps_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %forced_ps = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 20
  %5 = ptrtoint ptr %forced_ps to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %forced_ps, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp11 = icmp eq i32 %8, %conv
  br i1 %cmp11, label %if.end10.out_crit_edge, label %if.end14

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %if.end10
  %conv15 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %forced_ps to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv15, ptr %forced_ps, align 1
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp19.not = icmp eq i32 %11, 2
  br i1 %cmp19.not, label %if.end23, label %if.end14.out_crit_edge, !prof !401

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end23:                                         ; preds = %if.end14
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !402
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !403
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then27.out_crit_edge, label %do.end11.i.i.i.i

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !404
  br label %out

if.end29:                                         ; preds = %if.end23
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool30.not, i32 0, i32 2
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 39
  %19 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn80 = load ptr, ptr %wlvif_list, align 4
  %cmp33.not82 = icmp eq ptr %.pn80, %wlvif_list
  br i1 %cmp33.not82, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %.pn83 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn80, %if.end29.for.body_crit_edge ]
  %wlvif.084 = getelementptr i8, ptr %.pn83, i32 -4
  %bss_type = getelementptr i8, ptr %.pn83, i32 12
  %20 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp38 = icmp eq i8 %21, 2
  br i1 %cmp38, label %if.then40, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then40:                                        ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn83, i32 8
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool42.not = icmp eq i32 %24, 0
  br i1 %tobool42.not, label %if.then40.for.inc_crit_edge, label %if.then43

if.then40.for.inc_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = call i32 @wl1271_ps_set_mode(ptr noundef %1, ptr noundef %wlvif.084, i32 noundef %cond) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %if.then40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn83 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn83, align 4
  %cmp33.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp33.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.i78 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i78, ptr %last_busy.i, align 8
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %call.i79 = call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #10
  br label %out

out:                                              ; preds = %for.end, %do.end11.i.i.i.i, %if.then27.out_crit_edge, %if.end14.out_crit_edge, %if.end10.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ %count, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @split_scan_timeout_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %split_scan_timeout = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 7, i32 7
  %2 = ptrtoint ptr %split_scan_timeout to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %split_scan_timeout, align 2
  %div = udiv i32 %3, 1000
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %div)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @split_scan_timeout_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %do.end6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %mul = mul i32 %6, 1000
  %split_scan_timeout = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 7, i32 7
  %7 = ptrtoint ptr %split_scan_timeout to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %mul, ptr %split_scan_timeout, align 2
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_pkt_threshold_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq_pkt_threshold = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 1, i32 7
  %2 = ptrtoint ptr %irq_pkt_threshold to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %irq_pkt_threshold, align 1
  %conv = zext i16 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_pkt_threshold_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %lor.lhs.false

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp3 = icmp ugt i32 %4, 65535
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #14
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %conv = trunc i32 %6 to i16
  %irq_pkt_threshold = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 1, i32 7
  %7 = ptrtoint ptr %irq_pkt_threshold to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %conv, ptr %irq_pkt_threshold, align 1
  call fastcc void @chip_op_handler(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chip_op_handler(ptr noundef %wl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !402
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !403
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then2.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !404
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @wl1271_acx_init_rx_interrupt(ptr noundef %wl) #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call.i1 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i1, ptr %last_busy.i, align 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i2 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end11.i.i.i.i, %if.then2.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_init_rx_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_blk_threshold_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq_blk_threshold = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 1, i32 6
  %2 = ptrtoint ptr %irq_blk_threshold to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %irq_blk_threshold, align 1
  %conv = zext i16 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_blk_threshold_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %lor.lhs.false

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp3 = icmp ugt i32 %4, 65535
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #14
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %conv = trunc i32 %6 to i16
  %irq_blk_threshold = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 1, i32 6
  %7 = ptrtoint ptr %irq_blk_threshold to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %conv, ptr %irq_blk_threshold, align 1
  call fastcc void @chip_op_handler(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_timeout_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq_timeout = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 1, i32 8
  %2 = ptrtoint ptr %irq_timeout to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %irq_timeout, align 1
  %conv = zext i16 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_timeout_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %lor.lhs.false

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp3 = icmp ugt i32 %4, 100
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #14
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %conv = trunc i32 %6 to i16
  %irq_timeout = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 1, i32 8
  %7 = ptrtoint ptr %irq_timeout to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %conv, ptr %irq_timeout, align 1
  call fastcc void @chip_op_handler(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_stats_raw_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @wl1271_debugfs_update_stats(ptr noundef %1)
  %stats = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 8
  %fw_stats_len = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 87, i32 2
  %4 = ptrtoint ptr %fw_stats_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_stats_len, align 8
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef %3, i32 noundef %5) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sleep_auth_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sleep_auth = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %sleep_auth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sleep_auth, align 8
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sleep_auth_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2 = icmp ugt i32 %4, 2
  br i1 %cmp2, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, i32 noundef 2) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %conv = trunc i32 %6 to i8
  %sta_sleep_auth = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 3, i32 23
  %7 = ptrtoint ptr %sta_sleep_auth to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %sta_sleep_auth, align 1
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp10.not = icmp eq i32 %9, 2
  br i1 %cmp10.not, label %if.end14, label %if.then13, !prof !401

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %sleep_auth = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 142
  %10 = ptrtoint ptr %sleep_auth to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %sleep_auth, align 8
  br label %out

if.end14:                                         ; preds = %if.end9
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !402
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !403
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then18.out_crit_edge, label %do.end11.i.i.i.i

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !404
  br label %out

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %conv21 = trunc i32 %17 to i8
  %call22 = call i32 @wl1271_acx_sleep_auth(ptr noundef %1, i8 noundef zeroext %conv21) #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i44 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i44, ptr %last_busy.i, align 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i45 = call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #10
  br label %out

out:                                              ; preds = %if.end20, %do.end11.i.i.i.i, %if.then18.out_crit_edge, %if.then13
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end6 ], [ %count, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_sleep_auth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_logger_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %output = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 13, i32 4
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %output, align 2
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_logger_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %output = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 13, i32 4
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %output, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp11 = icmp eq i8 %8, 0
  br i1 %cmp11, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !402
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !403
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then23.out_crit_edge, label %do.end11.i.i.i.i

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !404
  br label %out

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 4
  %conv26 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv26, ptr %output, align 2
  %call30 = call i32 @wl12xx_cmd_config_fwlog(ptr noundef %1) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i48 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i48, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i49 = call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #10
  br label %out

out:                                              ; preds = %if.end25, %do.end11.i.i.i.i, %if.then23.out_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end25 ], [ %call.i, %if.then23.out_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ -22, %do.end16 ], [ %count.addr.0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_cmd_config_fwlog(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_streaming_interval_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %interval = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 12, i32 2
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interval, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_streaming_interval_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  %5 = add i32 %4, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -91, i32 %5)
  %6 = icmp ult i32 %5, -91
  %or.cond = and i1 %tobool.not, %6
  br i1 %or.cond, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %conv = trunc i32 %8 to i8
  %interval = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 12, i32 2
  %9 = ptrtoint ptr %interval to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %interval, align 1
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !402
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !403
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then14.out_crit_edge, label %do.end11.i.i.i.i

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !404
  br label %out

if.end16:                                         ; preds = %if.end10
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 39
  %15 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn56 = load ptr, ptr %wlvif_list, align 4
  %cmp19.not58 = icmp eq ptr %.pn56, %wlvif_list
  br i1 %cmp19.not58, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %.pn59 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn56, %if.end16.for.body_crit_edge ]
  %bss_type = getelementptr i8, ptr %.pn59, i32 12
  %16 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp22 = icmp eq i8 %17, 2
  br i1 %cmp22, label %if.then24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %wlvif.060 = getelementptr i8, ptr %.pn59, i32 -4
  %call25 = call i32 @wl1271_recalc_rx_streaming(ptr noundef %1, ptr noundef %wlvif.060) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn59, align 4
  %cmp19.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp19.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i53 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i53, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call.i54 = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #10
  br label %out

out:                                              ; preds = %for.end, %do.end11.i.i.i.i, %if.then14.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end7 ], [ %count, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_recalc_rx_streaming(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_streaming_always_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %always = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 12, i32 3
  %2 = ptrtoint ptr %always to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %always, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @wl1271_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_streaming_always_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !400
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %conv = trunc i32 %6 to i8
  %always = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 94, i32 12, i32 3
  %7 = ptrtoint ptr %always to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %always, align 1
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !402
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !403
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then14.out_crit_edge, label %do.end11.i.i.i.i

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !404
  br label %out

if.end16:                                         ; preds = %if.end10
  %wlvif_list = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 39
  %13 = ptrtoint ptr %wlvif_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn55 = load ptr, ptr %wlvif_list, align 4
  %cmp19.not57 = icmp eq ptr %.pn55, %wlvif_list
  br i1 %cmp19.not57, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn55, %if.end16.for.body_crit_edge ]
  %bss_type = getelementptr i8, ptr %.pn58, i32 12
  %14 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp22 = icmp eq i8 %15, 2
  br i1 %cmp22, label %if.then24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %wlvif.059 = getelementptr i8, ptr %.pn58, i32 -4
  %call25 = call i32 @wl1271_recalc_rx_streaming(ptr noundef %1, ptr noundef %wlvif.059) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn58, align 4
  %cmp19.not = icmp eq ptr %.pn, %wlvif_list
  br i1 %cmp19.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i53 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i53, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i54 = call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #10
  br label %out

out:                                              ; preds = %for.end, %do.end11.i.i.i.i, %if.then14.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %out ], [ -22, %do.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @dev_mem_seek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %offset, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i64 @no_seek_end_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i64 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_mem_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %part = alloca %struct.wlcore_partition_set, align 4
  %old_part = alloca %struct.wlcore_partition_set, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %part) #10
  %2 = getelementptr inbounds %struct.wlcore_partition, ptr %part, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_part) #10
  %rem = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %3 = call ptr @memset(ptr %old_part, i32 255, i32 32)
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %6 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool2.not = icmp eq i64 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = tail call i32 @llvm.umin.i32(i32 %count, i32 16384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %8 = getelementptr inbounds i8, ptr %part, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 24)
  %conv = trunc i64 %5 to i32
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %2, align 4
  %11 = ptrtoint ptr %part to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %part, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #13
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %skip_read.thread, label %if.end17, !prof !406

skip_read.thread:                                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end11
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #10
  %curr_part = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 20
  %16 = call ptr @memcpy(ptr %old_part, ptr %curr_part, i32 32)
  %call19 = call i32 @wlcore_set_partition(ptr noundef %1, ptr noundef nonnull %part) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.skip_read_crit_edge, label %if.end23

if.end17.skip_read_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_read

if.end23:                                         ; preds = %if.end17
  %flags.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end23.wlcore_raw_read.exit_crit_edge

if.end23.wlcore_raw_read.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_raw_read.exit

lor.lhs.false.i:                                  ; preds = %if.end23
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i = icmp eq i32 %22, 0
  br i1 %tobool3.not.i, label %if.end25.i, label %do.end.i, !prof !401

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.177, i32 noundef 70, i32 noundef 9, ptr noundef null) #10
  br label %wlcore_raw_read.exit

if.end25.i:                                       ; preds = %lor.lhs.false.i
  %if_ops.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %if_ops.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call27.i = call i32 %26(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %call9.i, i32 noundef %7, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.wlcore_raw_read.exit_crit_edge, label %land.lhs.true.i

if.end25.i.wlcore_raw_read.exit_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_raw_read.exit

land.lhs.true.i:                                  ; preds = %if.end25.i
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp29.not.i = icmp eq i32 %30, 0
  br i1 %cmp29.not.i, label %land.lhs.true.i.wlcore_raw_read.exit_crit_edge, label %if.then30.i

land.lhs.true.i.wlcore_raw_read.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_raw_read.exit

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i) #10
  br label %wlcore_raw_read.exit

wlcore_raw_read.exit:                             ; preds = %if.then30.i, %land.lhs.true.i.wlcore_raw_read.exit_crit_edge, %if.end25.i.wlcore_raw_read.exit_crit_edge, %do.end.i, %if.end23.wlcore_raw_read.exit_crit_edge
  %call29 = call i32 @wlcore_set_partition(ptr noundef %1, ptr noundef nonnull %old_part) #10
  br label %skip_read

skip_read:                                        ; preds = %wlcore_raw_read.exit, %if.end17.skip_read_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end17.skip_read_crit_edge ], [ %call29, %wlcore_raw_read.exit ]
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call.i95 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 12, i32 22
  %33 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store volatile i64 %call.i95, ptr %last_busy.i, align 8
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %call.i96 = call i32 @__pm_runtime_suspend(ptr noundef %35, i32 noundef 13) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp38 = icmp eq i32 %ret.0, 0
  br i1 %cmp38, label %if.then.i.i.i, label %skip_read.cleanup.sink.split_crit_edge

skip_read.cleanup.sink.split_crit_edge:           ; preds = %skip_read
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %skip_read
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %7, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.180, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.cleanup.sink.split_crit_edge, label %if.end.i.i93

if.then.i.i.i.cleanup.sink.split_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i.i93:                                     ; preds = %if.then.i.i.i
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %7, i32 -1226833920) #16, !srcloc !407
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i93.cleanup.sink.split_crit_edge

if.end.i.i93.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

copy_to_user.exit:                                ; preds = %if.end.i.i93
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %7) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %user_buf, ptr noundef nonnull %call9.i, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call.i12.i.i)
  %cmp42 = icmp ugt i32 %7, %call.i12.i.i
  br i1 %cmp42, label %37, label %copy_to_user.exit.cleanup.sink.split_crit_edge

copy_to_user.exit.cleanup.sink.split_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

37:                                               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %7, %call.i12.i.i
  %conv45 = zext i32 %sub to i64
  %38 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ppos, align 8
  %add = add i64 %39, %conv45
  store i64 %add, ptr %ppos, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %37, %copy_to_user.exit.cleanup.sink.split_crit_edge, %if.end.i.i93.cleanup.sink.split_crit_edge, %if.then.i.i.i.cleanup.sink.split_crit_edge, %skip_read.cleanup.sink.split_crit_edge, %skip_read.thread
  %retval.0.ph = phi i32 [ %sub, %37 ], [ -14, %skip_read.thread ], [ -14, %copy_to_user.exit.cleanup.sink.split_crit_edge ], [ %ret.0, %skip_read.cleanup.sink.split_crit_edge ], [ -14, %if.then.i.i.i.cleanup.sink.split_crit_edge ], [ -14, %if.end.i.i93.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_part) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %part) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_mem_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %part = alloca %struct.wlcore_partition_set, align 4
  %old_part = alloca %struct.wlcore_partition_set, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %part) #10
  %2 = getelementptr inbounds %struct.wlcore_partition, ptr %part, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_part) #10
  %rem = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %3 = call ptr @memset(ptr %old_part, i32 255, i32 32)
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %6 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool2.not = icmp eq i64 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = tail call i32 @llvm.umin.i32(i32 %count, i32 16384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %8 = getelementptr inbounds i8, ptr %part, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 24)
  %conv = trunc i64 %5 to i32
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %2, align 4
  %11 = ptrtoint ptr %part to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %part, align 4
  %call = tail call ptr @memdup_user(ptr noundef %user_buf, i32 noundef %7) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %mutex = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %skip_write.thread, label %if.end18, !prof !406

skip_write.thread:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %if.end43.thread

if.end18:                                         ; preds = %if.end12
  %dev = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #10
  %curr_part = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 20
  %17 = call ptr @memcpy(ptr %old_part, ptr %curr_part, i32 32)
  %call20 = call i32 @wlcore_set_partition(ptr noundef %1, ptr noundef nonnull %part) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.skip_write_crit_edge, label %if.end24

if.end18.skip_write_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_write

if.end24:                                         ; preds = %if.end18
  %flags.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end24.wlcore_raw_write.exit_crit_edge

if.end24.wlcore_raw_write.exit_crit_edge:         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_raw_write.exit

lor.lhs.false.i:                                  ; preds = %if.end24
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i, label %if.end25.i, label %do.end.i, !prof !401

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.177, i32 noundef 52, i32 noundef 9, ptr noundef null) #10
  br label %wlcore_raw_write.exit

if.end25.i:                                       ; preds = %lor.lhs.false.i
  %if_ops.i = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %if_ops.i, align 8
  %write.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i, align 4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call27.i = call i32 %27(ptr noundef %29, i32 noundef 0, ptr noundef %call, i32 noundef %7, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.wlcore_raw_write.exit_crit_edge, label %land.lhs.true.i

if.end25.i.wlcore_raw_write.exit_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_raw_write.exit

land.lhs.true.i:                                  ; preds = %if.end25.i
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp29.not.i = icmp eq i32 %31, 0
  br i1 %cmp29.not.i, label %land.lhs.true.i.wlcore_raw_write.exit_crit_edge, label %if.then30.i

land.lhs.true.i.wlcore_raw_write.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wlcore_raw_write.exit

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i) #10
  br label %wlcore_raw_write.exit

wlcore_raw_write.exit:                            ; preds = %if.then30.i, %land.lhs.true.i.wlcore_raw_write.exit_crit_edge, %if.end25.i.wlcore_raw_write.exit_crit_edge, %do.end.i, %if.end24.wlcore_raw_write.exit_crit_edge
  %call30 = call i32 @wlcore_set_partition(ptr noundef %1, ptr noundef nonnull %old_part) #10
  br label %skip_write

skip_write:                                       ; preds = %wlcore_raw_write.exit, %if.end18.skip_write_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end18.skip_write_crit_edge ], [ %call30, %wlcore_raw_write.exit ]
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %call.i81 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 22
  %34 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store volatile i64 %call.i81, ptr %last_busy.i, align 8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %call.i82 = call i32 @__pm_runtime_suspend(ptr noundef %36, i32 noundef 13) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp39 = icmp eq i32 %ret.0, 0
  br i1 %cmp39, label %37, label %skip_write.if.end43.thread_crit_edge

skip_write.if.end43.thread_crit_edge:             ; preds = %skip_write
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.thread

if.end43.thread:                                  ; preds = %skip_write.if.end43.thread_crit_edge, %skip_write.thread
  %ret.185.ph = phi i32 [ %ret.0, %skip_write.if.end43.thread_crit_edge ], [ -14, %skip_write.thread ]
  call void @kfree(ptr noundef %call) #10
  br label %cleanup

37:                                               ; preds = %skip_write
  call void @__sanitizer_cov_trace_pc() #12
  %conv42 = zext i32 %7 to i64
  %38 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ppos, align 8
  %add = add i64 %39, %conv42
  store i64 %add, ptr %ppos, align 8
  call void @kfree(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %37, %if.end43.thread, %if.then10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %7, %37 ], [ %ret.185.ph, %if.end43.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_part) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %part) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_set_partition(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 206)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 206)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !72, !74, !76, !78, !79, !80, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !230, !231, !232, !234, !235, !236, !238, !240, !241, !242, !243, !245, !246, !247, !249, !251, !252, !253, !254, !256, !257, !258, !260, !262, !263, !264, !265, !267, !269, !270, !271, !272, !274, !275, !276, !278, !280, !281, !282, !283, !285, !286, !287, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !303, !304, !305, !306, !307, !309, !310, !311, !312, !314, !315, !316, !317, !318, !319, !320, !321, !323, !324, !325, !326, !327, !328, !329, !330, !332, !334, !336, !337, !338, !339, !341, !342, !343, !345, !347, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !362, !363, !364, !365, !367, !368, !369, !371, !373, !374, !375, !376, !378, !379, !380, !382, !384, !386, !387, !389}
!llvm.module.flags = !{!391, !392, !393, !394, !395, !396, !397, !398}
!llvm.ident = !{!399}

!0 = !{ptr @__ksymtab_wl1271_format_buffer, !1, !"__ksymtab_wl1271_format_buffer", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 44, i32 1}
!2 = !{ptr @__ksymtab_wl1271_debugfs_update_stats, !3, !"__ksymtab_wl1271_debugfs_update_stats", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 74, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1333, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1288, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1289, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1290, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1292, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1293, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1294, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1295, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1296, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1297, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1298, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1299, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1300, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1301, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1302, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1303, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1304, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1305, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1306, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1307, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1308, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1310, i32 33}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1312, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1313, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1315, i32 2}
!54 = !{ptr @tx_queue_len_ops, !55, !"tx_queue_len_ops", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 94, i32 37}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 90, i32 36}
!58 = !{ptr @retry_count_ops, !59, !"retry_count_ops", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 76, i32 1}
!60 = !{ptr @excessive_retries_ops, !61, !"excessive_retries_ops", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 77, i32 1}
!62 = !{ptr @gpio_power_ops, !63, !"gpio_power_ops", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 219, i32 37}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 189, i32 36}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 204, i32 3}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gpio_power_write._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @gpio_power_write._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @start_recovery_ops, !73, !"start_recovery_ops", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 239, i32 37}
!74 = !{ptr @driver_state_ops, !75, !"driver_state_ops", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 519, i32 37}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 461, i32 3}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 466, i32 3}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 469, i32 2}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 470, i32 2}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 471, i32 2}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 472, i32 2}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 473, i32 2}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 474, i32 2}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 475, i32 2}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 476, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 477, i32 2}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 478, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 479, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 480, i32 2}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 481, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 482, i32 2}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 483, i32 2}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 484, i32 2}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 485, i32 2}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 486, i32 2}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 487, i32 2}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 488, i32 2}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 489, i32 2}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 490, i32 2}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 491, i32 2}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 492, i32 2}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 493, i32 2}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 494, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 495, i32 2}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 497, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 498, i32 2}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 499, i32 2}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 500, i32 2}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 501, i32 2}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 502, i32 2}
!149 = !{ptr @vifs_state_ops, !150, !"vifs_state_ops", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 629, i32 37}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 562, i32 3}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 563, i32 3}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 565, i32 3}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 566, i32 3}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 567, i32 3}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 571, i32 4}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 572, i32 4}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 573, i32 4}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 574, i32 4}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 575, i32 4}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 577, i32 4}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 578, i32 4}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 579, i32 4}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 580, i32 4}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 581, i32 4}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 582, i32 4}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 583, i32 4}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 584, i32 4}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 585, i32 4}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 587, i32 3}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 592, i32 3}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 593, i32 3}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 595, i32 3}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 596, i32 3}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 597, i32 3}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 598, i32 3}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 599, i32 3}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 600, i32 3}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 601, i32 3}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 602, i32 3}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 603, i32 3}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 604, i32 3}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 606, i32 3}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 607, i32 3}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 608, i32 3}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 609, i32 3}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 610, i32 3}
!225 = !{ptr @dtim_interval_ops, !226, !"dtim_interval_ops", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 686, i32 37}
!227 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 660, i32 3}
!229 = !{ptr @.str.106, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @dtim_interval_write._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @dtim_interval_write._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 665, i32 3}
!234 = !{ptr @dtim_interval_write._entry.107, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @dtim_interval_write._entry_ptr.109, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @suspend_dtim_interval_ops, !237, !"suspend_dtim_interval_ops", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 744, i32 37}
!238 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 721, i32 3}
!240 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @suspend_dtim_interval_write._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @suspend_dtim_interval_write._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 726, i32 3}
!245 = !{ptr @suspend_dtim_interval_write._entry.112, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @suspend_dtim_interval_write._entry_ptr.114, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @beacon_interval_ops, !248, !"beacon_interval_ops", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 802, i32 37}
!249 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 776, i32 3}
!251 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @beacon_interval_write._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @beacon_interval_write._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.118, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 781, i32 3}
!256 = !{ptr @beacon_interval_write._entry.117, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @beacon_interval_write._entry_ptr.119, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @beacon_filtering_ops, !259, !"beacon_filtering_ops", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 959, i32 37}
!260 = !{ptr @.str.120, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 936, i32 3}
!262 = !{ptr @.str.121, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @beacon_filtering_write._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @beacon_filtering_write._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @dynamic_ps_timeout_ops, !266, !"dynamic_ps_timeout_ops", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 305, i32 37}
!267 = !{ptr @.str.122, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 266, i32 3}
!269 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @dynamic_ps_timeout_write._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @dynamic_ps_timeout_write._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.125, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 271, i32 3}
!274 = !{ptr @dynamic_ps_timeout_write._entry.124, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @dynamic_ps_timeout_write._entry_ptr.126, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @forced_ps_ops, !277, !"forced_ps_ops", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 377, i32 37}
!278 = !{ptr @.str.127, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 333, i32 3}
!280 = !{ptr @.str.128, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @forced_ps_write._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @forced_ps_write._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.130, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 338, i32 3}
!285 = !{ptr @forced_ps_write._entry.129, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @forced_ps_write._entry_ptr.131, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @split_scan_timeout_ops, !288, !"split_scan_timeout_ops", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 419, i32 37}
!289 = !{ptr @.str.132, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 404, i32 3}
!291 = !{ptr @.str.133, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @split_scan_timeout_write._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @split_scan_timeout_write._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 409, i32 3}
!296 = !{ptr @split_scan_timeout_write._entry.134, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @split_scan_timeout_write._entry_ptr.136, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @irq_pkt_threshold_ops, !299, !"irq_pkt_threshold_ops", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 173, i32 1}
!300 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.138, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @irq_pkt_threshold_write._entry, !299, !"_entry", i1 false, i1 false}
!303 = !{ptr @irq_pkt_threshold_write._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.140, !299, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @irq_pkt_threshold_write._entry.139, !299, !"_entry", i1 false, i1 false}
!306 = !{ptr @irq_pkt_threshold_write._entry_ptr.141, !299, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.142, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 107, i32 3}
!309 = !{ptr @.str.143, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @chip_op_handler._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @chip_op_handler._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @irq_blk_threshold_ops, !313, !"irq_blk_threshold_ops", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 175, i32 1}
!314 = !{ptr @.str.144, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.145, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @irq_blk_threshold_write._entry, !313, !"_entry", i1 false, i1 false}
!317 = !{ptr @irq_blk_threshold_write._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.147, !313, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @irq_blk_threshold_write._entry.146, !313, !"_entry", i1 false, i1 false}
!320 = !{ptr @irq_blk_threshold_write._entry_ptr.148, !313, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @irq_timeout_ops, !322, !"irq_timeout_ops", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 177, i32 1}
!323 = !{ptr @.str.149, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.150, !322, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @irq_timeout_write._entry, !322, !"_entry", i1 false, i1 false}
!326 = !{ptr @irq_timeout_write._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.152, !322, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @irq_timeout_write._entry.151, !322, !"_entry", i1 false, i1 false}
!329 = !{ptr @irq_timeout_write._entry_ptr.153, !322, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @fw_stats_raw_ops, !331, !"fw_stats_raw_ops", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 978, i32 37}
!332 = !{ptr @sleep_auth_ops, !333, !"sleep_auth_ops", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1042, i32 37}
!334 = !{ptr @.str.154, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1004, i32 3}
!336 = !{ptr @.str.155, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @sleep_auth_write._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @sleep_auth_write._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.157, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1009, i32 3}
!341 = !{ptr @sleep_auth_write._entry.156, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @sleep_auth_write._entry_ptr.158, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @fw_logger_ops, !344, !"fw_logger_ops", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1276, i32 37}
!345 = !{ptr @.str.159, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1242, i32 3}
!347 = !{ptr @.str.160, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @fw_logger_write._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @fw_logger_write._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.162, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1247, i32 3}
!352 = !{ptr @fw_logger_write._entry.161, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @fw_logger_write._entry_ptr.163, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.165, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1252, i32 3}
!356 = !{ptr @fw_logger_write._entry.164, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @fw_logger_write._entry_ptr.166, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @rx_streaming_interval_ops, !359, !"rx_streaming_interval_ops", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 860, i32 37}
!360 = !{ptr @.str.167, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 820, i32 3}
!362 = !{ptr @.str.168, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @rx_streaming_interval_write._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @rx_streaming_interval_write._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.170, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 826, i32 3}
!367 = !{ptr @rx_streaming_interval_write._entry.169, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @rx_streaming_interval_write._entry_ptr.171, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @rx_streaming_always_ops, !370, !"rx_streaming_always_ops", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 918, i32 37}
!371 = !{ptr @.str.172, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 878, i32 3}
!373 = !{ptr @.str.173, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @rx_streaming_always_write._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @rx_streaming_always_write._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.175, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 884, i32 3}
!378 = !{ptr @rx_streaming_always_write._entry.174, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @rx_streaming_always_write._entry_ptr.176, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @dev_mem_ops, !381, !"dev_mem_ops", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/ti/wlcore/debugfs.c", i32 1215, i32 37}
!382 = !{ptr @.str.177, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/ti/wlcore/io.h", i32 69, i32 6}
!384 = distinct !{null, !385, !"__already_done", i1 false, i1 false}
!385 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!386 = !{ptr @.str.178, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.179, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!389 = !{ptr @.str.180, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!391 = !{i32 1, !"wchar_size", i32 2}
!392 = !{i32 1, !"min_enum_size", i32 4}
!393 = !{i32 8, !"branch-target-enforcement", i32 0}
!394 = !{i32 8, !"sign-return-address", i32 0}
!395 = !{i32 8, !"sign-return-address-all", i32 0}
!396 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!397 = !{i32 7, !"uwtable", i32 1}
!398 = !{i32 7, !"frame-pointer", i32 2}
!399 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!400 = !{!"auto-init"}
!401 = !{!"branch_weights", i32 2000, i32 1}
!402 = !{i64 2148528280}
!403 = !{i64 1014880, i64 1014905, i64 1014927, i64 1014943, i64 1014955, i64 1014975, i64 1014999, i64 1015015, i64 1015027}
!404 = !{i64 2148528468}
!405 = !{i8 0, i8 2}
!406 = !{!"branch_weights", i32 1, i32 2000}
!407 = !{i64 2153157860, i64 2153157885}
