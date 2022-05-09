; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlegacy/debug.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlegacy/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+il_update_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_il_update_stats\09\09\09\09"
module asm "\09.long\09__crc_il_update_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_il_update_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22il_update_stats\22\09\09\09\09\09"
module asm "__kstrtabns_il_update_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+il_dbgfs_register\22, \22a\22\09"
module asm "\09.weak\09__crc_il_dbgfs_register\09\09\09\09"
module asm "\09.long\09__crc_il_dbgfs_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_il_dbgfs_register:\09\09\09\09\09"
module asm "\09.asciz \09\22il_dbgfs_register\22\09\09\09\09\09"
module asm "__kstrtabns_il_dbgfs_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+il_dbgfs_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_il_dbgfs_unregister\09\09\09\09"
module asm "\09.long\09__crc_il_dbgfs_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_il_dbgfs_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22il_dbgfs_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_il_dbgfs_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.il_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, [255 x ptr], [6 x %struct.ieee80211_supported_band], %struct.il_spectrum_notification, i8, i32, i32, i32, %struct.il_force_reset, ptr, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, [6 x i8], i8, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, [1 x %struct.mac_address], i32, i32, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, i32, i8, [25 x i8], ptr, %struct.il_qos_info, %struct.anon.137, %struct.il_rxon_cmd, %struct.il_rxon_cmd, %struct.il_rxon_time_cmd, i16, %struct.il_init_alive_resp, %struct.il_alive_resp, i16, i8, %struct.il_sensitivity_data, %struct.il_chain_noise_data, [11 x i16], %struct.il_ht_config, i8, %struct.wait_queue_head, i32, %struct.il_rx_queue, ptr, i32, %struct.il_dma_ptr, %struct.il_dma_ptr, i32, i32, %struct.traffic_stats, %struct.traffic_stats, %struct.isr_stats, %struct.il_power_mgr, [6 x i8], %struct.spinlock, i32, [32 x %struct.il_station_entry], i32, [1 x i32], i32, [4 x %struct.atomic_t], i8, i8, ptr, ptr, i32, i64, %union.anon.139, %struct.il_hw_params, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.work_struct, %struct.tasklet_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i8, i8, i8, i32, i16, i16, ptr, ptr, ptr, i32, i32, i8, %struct.work_struct, i8, i8, i8, %struct.work_struct, %struct.timer_list, %struct.timer_list, i8, %struct.led_classdev, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.il_spectrum_notification = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i32, i8, [3 x i8], %struct.il_measurement_histogram, i32, i32 }
%struct.il_measurement_histogram = type { [8 x i32], [8 x i32] }
%struct.il_force_reset = type { i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mac_address = type { [6 x i8] }
%struct.fw_desc = type { ptr, i32, i32 }
%struct.il_qos_info = type { i32, %struct.il_qosparam_cmd }
%struct.il_qosparam_cmd = type { i32, [4 x %struct.il_ac_qos] }
%struct.il_ac_qos = type { i16, i16, i8, i8, i16 }
%struct.anon.137 = type { i8, i8, i8, i8, i8 }
%struct.il_rxon_cmd = type <{ [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, i8, i8, i16, i8, i8, i16, i32, i32, i16, i8, i8, i8, i8 }>
%struct.il_rxon_time_cmd = type <{ i64, i16, i16, i32, i16, i8, i8 }>
%struct.il_init_alive_resp = type { i8, i8, i16, [8 x i8], i8, i8, i16, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [5 x [2 x i32]] }
%struct.il_alive_resp = type { i8, i8, i16, [8 x i8], i8, i8, i16, i32, i32, i32, i32 }
%struct.il_sensitivity_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [20 x i8], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.il_chain_noise_data = type { i32, i32, i32, i32, i32, i32, i32, i16, [3 x i8], [3 x i8], i8, i8 }
%struct.il_ht_config = type { i8, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.il_rx_queue = type { ptr, i32, [320 x %struct.il_rx_buf], [256 x ptr], i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, %struct.spinlock }
%struct.il_rx_buf = type { i32, ptr, %struct.list_head }
%struct.il_dma_ptr = type { i32, ptr, i32 }
%struct.traffic_stats = type { [12 x i32], [8 x i32], i32, i64 }
%struct.isr_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [255 x i32], i32, i32 }
%struct.il_power_mgr = type { %struct.il_powertable_cmd, %struct.il_powertable_cmd, i32, i8, i8 }
%struct.il_powertable_cmd = type { i16, i8, i8, i32, i32, [5 x i32], i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.il_station_entry = type { %struct.il_addsta_cmd, [9 x %struct.il_tid_data], i8, %struct.il_hw_key, ptr }
%struct.il_addsta_cmd = type { i8, [3 x i8], %struct.sta_id_modify, %struct.il4965_keyinfo, i32, i32, i16, i16, i8, i8, i16, i16, i16 }
%struct.sta_id_modify = type { [6 x i8], i16, i8, i8, i16 }
%struct.il4965_keyinfo = type { i16, i8, i8, [5 x i16], i8, i8, [16 x i8] }
%struct.il_tid_data = type { i16, i16, %struct.il_ht_agg }
%struct.il_ht_agg = type { i16, i16, i16, i16, i64, i32, i8 }
%struct.il_hw_key = type { i32, i32, i8, [32 x i8] }
%union.anon.139 = type { %struct.anon.140, [856 x i8] }
%struct.anon.140 = type { ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.il3945_notif_stats, %struct.il3945_notif_stats, %struct.il3945_notif_stats, %struct.il3945_notif_stats, i32, i32, i32, i64, [5 x %struct.il3945_clip_group] }
%struct.il3945_notif_stats = type { i32, %struct.iwl39_stats_rx, %struct.iwl39_stats_tx, %struct.iwl39_stats_general }
%struct.iwl39_stats_rx = type { %struct.iwl39_stats_rx_phy, %struct.iwl39_stats_rx_phy, %struct.iwl39_stats_rx_non_phy }
%struct.iwl39_stats_rx_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl39_stats_rx_non_phy = type { i32, i32, i32, i32, i32 }
%struct.iwl39_stats_tx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl39_stats_general = type { i32, %struct.stats_dbg, i32, i32, i32, i32, %struct.iwl39_stats_div }
%struct.stats_dbg = type { i32, i32, i32, [3 x i32] }
%struct.iwl39_stats_div = type { i32, i32, i32, i32 }
%struct.il3945_clip_group = type { [12 x i8] }
%struct.il_hw_params = type { i8, i8, i8, i16, i32, i8, i8, i8, i8, i16, i16, i32, i32, i8, i8, i8, i32, i32, i32, i32, i16, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.142, i32 }
%union.anon.142 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.il_cfg = type { ptr, ptr, i32, i32, i8, i8, i32, i16, i16, ptr, ptr, [6 x i8], i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i8, i8, i8, i8, [7 x i32] }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.136, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.136 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.il_tx_queue = type { %struct.il_queue, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.il_queue = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.il_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.il_debugfs_ops = type { ptr, ptr, ptr }

@__kstrtab_il_update_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_il_update_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_il_update_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @il_update_stats to i32), ptr @__kstrtab_il_update_stats, ptr @__kstrtabns_il_update_stats }, section "___ksymtab+il_update_stats", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rf\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nvm\00", [28 x i8] zeroinitializer }, align 32
@il_dbgfs_nvm_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_nvm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@il_dbgfs_sram_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_sram_read, ptr @il_dbgfs_sram_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stations\00", [23 x i8] zeroinitializer }, align 32
@il_dbgfs_stations_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_stations_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channels\00", [23 x i8] zeroinitializer }, align 32
@il_dbgfs_channels_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_channels_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@il_dbgfs_status_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_status_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interrupt\00", [22 x i8] zeroinitializer }, align 32
@il_dbgfs_interrupt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_interrupt_read, ptr @il_dbgfs_interrupt_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qos\00", [28 x i8] zeroinitializer }, align 32
@il_dbgfs_qos_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_qos_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable_ht40\00", [19 x i8] zeroinitializer }, align 32
@il_dbgfs_disable_ht40_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_disable_ht40_read, ptr @il_dbgfs_disable_ht40_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_stats\00", [23 x i8] zeroinitializer }, align 32
@il_dbgfs_rx_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_rx_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_stats\00", [23 x i8] zeroinitializer }, align 32
@il_dbgfs_tx_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_tx_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_queue\00", [23 x i8] zeroinitializer }, align 32
@il_dbgfs_rx_queue_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_rx_queue_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_queue\00", [23 x i8] zeroinitializer }, align 32
@il_dbgfs_tx_queue_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_tx_queue_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power_save_status\00", [46 x i8] zeroinitializer }, align 32
@il_dbgfs_power_save_status_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_power_save_status_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clear_ucode_stats\00", [46 x i8] zeroinitializer }, align 32
@il_dbgfs_clear_ucode_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @il_dbgfs_clear_ucode_stats_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clear_traffic_stats\00", [44 x i8] zeroinitializer }, align 32
@il_dbgfs_clear_traffic_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @il_dbgfs_clear_traffic_stats_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fh_reg\00", [25 x i8] zeroinitializer }, align 32
@il_dbgfs_fh_reg_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_fh_reg_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"missed_beacon\00", [18 x i8] zeroinitializer }, align 32
@il_dbgfs_missed_beacon_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_missed_beacon_read, ptr @il_dbgfs_missed_beacon_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"force_reset\00", [20 x i8] zeroinitializer }, align 32
@il_dbgfs_force_reset_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_force_reset_read, ptr @il_dbgfs_force_reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ucode_rx_stats\00", [17 x i8] zeroinitializer }, align 32
@il_dbgfs_ucode_rx_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_ucode_rx_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ucode_tx_stats\00", [17 x i8] zeroinitializer }, align 32
@il_dbgfs_ucode_tx_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_ucode_tx_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ucode_general_stats\00", [44 x i8] zeroinitializer }, align 32
@il_dbgfs_ucode_general_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_ucode_general_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sensitivity\00", [20 x i8] zeroinitializer }, align 32
@il_dbgfs_sensitivity_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_sensitivity_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chain_noise\00", [20 x i8] zeroinitializer }, align 32
@il_dbgfs_chain_noise_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_chain_noise_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rxon_flags\00", [21 x i8] zeroinitializer }, align 32
@il_dbgfs_rxon_flags_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_rxon_flags_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxon_filter_flags\00", [46 x i8] zeroinitializer }, align 32
@il_dbgfs_rxon_filter_flags_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @il_dbgfs_rxon_filter_flags_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wd_timeout\00", [21 x i8] zeroinitializer }, align 32
@il_dbgfs_wd_timeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @il_dbgfs_wd_timeout_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable_sensitivity\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable_chain_noise\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disable_tx_power\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_il_dbgfs_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_il_dbgfs_register = external dso_local constant [0 x i8], align 1
@__ksymtab_il_dbgfs_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @il_dbgfs_register to i32), ptr @__kstrtab_il_dbgfs_register, ptr @__kstrtabns_il_dbgfs_register }, section "___ksymtab+il_dbgfs_register", align 4
@__kstrtab_il_dbgfs_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_il_dbgfs_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_il_dbgfs_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @il_dbgfs_unregister to i32), ptr @__kstrtab_il_dbgfs_unregister, ptr @__kstrtabns_il_dbgfs_unregister }, section "___ksymtab+il_dbgfs_unregister", align 4
@il_dbgfs_nvm_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.34, i32 466, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NVM size is not multiple of 16.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"il_dbgfs_nvm_read\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlegacy/debug.c\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@il_dbgfs_nvm_read._entry_ptr = internal global ptr @il_dbgfs_nvm_read._entry, section ".printk_index", align 4
@il_dbgfs_nvm_read._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.34, i32 472, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid EEPROM memory\0A\00", [41 x i8] zeroinitializer }, align 32
@il_dbgfs_nvm_read._entry_ptr.39 = internal global ptr @il_dbgfs_nvm_read._entry.37, section ".printk_index", align 4
@il_dbgfs_nvm_read._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.34, i32 479, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can not allocate Buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@il_dbgfs_nvm_read._entry_ptr.42 = internal global ptr @il_dbgfs_nvm_read._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EEPROM version: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0x%.4x %16ph\0A\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sram_len: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sram_offset: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x \00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x,%x\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"num of stations: %d\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"station %d - addr: %pM, flags: %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TID\09seq_num\09txq_id\09frames\09tfds\09\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"start_idx\09bitmap\09\09\09rate_n_flags\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d:\09%#x\09%#x\09%u\09%u\09%u\09\09%#.16llx\09%#x\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" - waitforba\00", [19 x i8] zeroinitializer }, align 32
@il_dbgfs_channels_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.59, ptr @.str.34, i32 512, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"il_dbgfs_channels_read\00", [41 x i8] zeroinitializer }, align 32
@il_dbgfs_channels_read._entry_ptr = internal global ptr @il_dbgfs_channels_read._entry, section ".printk_index", align 4
@.str.60 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Displaying %d channels in 2.4GHz band 802.11bg):\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d: %ddBm: BSS%s%s, %s.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" (IEEE 802.11h required)\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", IBSS\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"passive only\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"active/passive\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Displaying %d channels in 5.2GHz band (802.11a)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S_HCMD_ACTIVE:\09 %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S_INT_ENABLED:\09 %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S_RFKILL:\09 %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"S_CT_KILL:\09\09 %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"S_INIT:\09\09 %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S_ALIVE:\09\09 %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S_READY:\09\09 %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S_TEMPERATURE:\09 %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"S_GEO_CONFIGURED:\09 %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"S_EXIT_PENDING:\09 %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"S_STATS:\09 %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"S_SCANNING:\09 %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"S_SCAN_ABORTING:\09 %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"S_SCAN_HW:\09\09 %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"S_POWER_PMI:\09 %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"S_FW_ERROR:\09 %d\0A\00", [47 x i8] zeroinitializer }, align 32
@il_dbgfs_interrupt_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.84, ptr @.str.34, i32 650, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"il_dbgfs_interrupt_read\00", [40 x i8] zeroinitializer }, align 32
@il_dbgfs_interrupt_read._entry_ptr = internal global ptr @il_dbgfs_interrupt_read._entry, section ".printk_index", align 4
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Interrupt Statistics Report:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HW Error:\09\09\09 %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SW Error:\09\09\09 %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09Last Restarting Code:  0x%X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Frame transmitted:\09\09 %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Alive interrupt:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HW RF KILL switch toggled:\09 %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CT KILL:\09\09\09 %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Wakeup Interrupt:\09\09 %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Rx command responses:\09\09 %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09Rx handler[%36s]:\09\09 %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tx/FH interrupt:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unexpected INTA:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09cw_min\09cw_max\09aifsn\09txop\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AC[%d]\09%u\09%u\09%u\09%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"11n 40MHz Mode: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@il_dbgfs_disable_ht40_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.34, i32 780, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Sta associated with AP - Change to 40MHz channel support is not allowed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"il_dbgfs_disable_ht40_write\00", [36 x i8] zeroinitializer }, align 32
@il_dbgfs_disable_ht40_write._entry_ptr = internal global ptr @il_dbgfs_disable_ht40_write._entry, section ".printk_index", align 4
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Management:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09%25s\09\09: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Control:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Data:\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09cnt: %u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09bytes: %llu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MANAGEMENT_ASSOC_REQ\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MANAGEMENT_ASSOC_RESP\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MANAGEMENT_REASSOC_REQ\00", [41 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MANAGEMENT_REASSOC_RESP\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MANAGEMENT_PROBE_REQ\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MANAGEMENT_PROBE_RESP\00", [42 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MANAGEMENT_BEACON\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MANAGEMENT_ATIM\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MANAGEMENT_DISASSOC\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MANAGEMENT_AUTH\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MANAGEMENT_DEAUTH\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MANAGEMENT_ACTION\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CONTROL_BACK_REQ\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CONTROL_BACK\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CONTROL_PSPOLL\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CONTROL_RTS\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CONTROL_CTS\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CONTROL_ACK\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CONTROL_CFEND\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CONTROL_CFENDACK\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Control\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read: %u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write: %u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"free_count: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"closed_rb_num: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"closed_rb_num: Not Allocated\0A\00", [34 x i8] zeroinitializer }, align 32
@il_dbgfs_tx_queue_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.34, i32 827, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txq not ready\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"il_dbgfs_tx_queue_read\00", [41 x i8] zeroinitializer }, align 32
@il_dbgfs_tx_queue_read._entry_ptr = internal global ptr @il_dbgfs_tx_queue_read._entry, section ".printk_index", align 4
@.str.142 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"hwq %.2d: read=%u write=%u stop=%d swq_id=%#.2x (ac %d/hwq %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"        stop-count: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Power Save Status: \00", [44 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PHY\00", [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09number of reset request: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\09number of reset request success: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09number of reset request reject: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09reset duration: %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@il_dbgfs_sensitivity_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.155, ptr @.str.34, i32 930, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"il_dbgfs_sensitivity_read\00", [38 x i8] zeroinitializer }, align 32
@il_dbgfs_sensitivity_read._entry_ptr = internal global ptr @il_dbgfs_sensitivity_read._entry, section ".printk_index", align 4
@.str.156 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"auto_corr_ofdm:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"auto_corr_ofdm_mrc:\09\09 %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"auto_corr_ofdm_x1:\09\09 %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"auto_corr_ofdm_mrc_x1:\09\09 %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"auto_corr_cck:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"auto_corr_cck_mrc:\09\09 %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"last_bad_plcp_cnt_ofdm:\09\09 %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"last_fa_cnt_ofdm:\09\09 %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"last_bad_plcp_cnt_cck:\09\09 %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"last_fa_cnt_cck:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_curr_state:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_prev_state:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nrg_value:\09\09\09\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nrg_silence_rssi:\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_silence_ref:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_energy_idx:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_silence_idx:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nrg_th_cck:\09\09\09 %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nrg_auto_corr_silence_diff:\09 %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"num_in_cck_no_fa:\09\09 %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nrg_th_ofdm:\09\09\09 %u\0A\00", [44 x i8] zeroinitializer }, align 32
@il_dbgfs_chain_noise_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.178, ptr @.str.34, i32 1029, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"il_dbgfs_chain_noise_read\00", [38 x i8] zeroinitializer }, align 32
@il_dbgfs_chain_noise_read._entry_ptr = internal global ptr @il_dbgfs_chain_noise_read._entry, section ".printk_index", align 4
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active_chains:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chain_noise_a:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chain_noise_b:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chain_noise_c:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chain_signal_a:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chain_signal_b:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chain_signal_c:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"beacon_count:\09\09\09 %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disconn_array:\09\09\09\00", [46 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delta_gain_code:\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radio_write:\09\09\09 %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"state:\09\09\09\09 %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04X\0A\00", [24 x i8] zeroinitializer }, align 32
@switch.table.il_dbgfs_rx_stats_read = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], [48 x i8] zeroinitializer }, align 32
@switch.table.il_dbgfs_tx_stats_read = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.192 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.193 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.194 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16777216]
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1324, i32 32 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1325, i32 30 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1326, i32 33 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1328, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"il_dbgfs_nvm_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 803, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1329, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"il_dbgfs_sram_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 802, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1330, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [22 x i8] c"il_dbgfs_stations_ops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 804, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1331, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [22 x i8] c"il_dbgfs_channels_ops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 805, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1332, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c"il_dbgfs_status_ops\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 806, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1333, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [23 x i8] c"il_dbgfs_interrupt_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 807, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1334, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"il_dbgfs_qos_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 808, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1335, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [26 x i8] c"il_dbgfs_disable_ht40_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 809, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1336, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [22 x i8] c"il_dbgfs_rx_stats_ops\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1292, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1337, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [22 x i8] c"il_dbgfs_tx_stats_ops\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1293, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1338, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [22 x i8] c"il_dbgfs_rx_queue_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1294, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1339, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [22 x i8] c"il_dbgfs_tx_queue_ops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1295, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1340, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [31 x i8] c"il_dbgfs_power_save_status_ops\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1301, i32 1 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1341, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [31 x i8] c"il_dbgfs_clear_ucode_stats_ops\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1302, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1342, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [33 x i8] c"il_dbgfs_clear_traffic_stats_ops\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1303, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1343, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c"il_dbgfs_fh_reg_ops\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1304, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1344, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [27 x i8] c"il_dbgfs_missed_beacon_ops\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1305, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1345, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [25 x i8] c"il_dbgfs_force_reset_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1306, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1346, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [28 x i8] c"il_dbgfs_ucode_rx_stats_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1296, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1347, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [28 x i8] c"il_dbgfs_ucode_tx_stats_ops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1297, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1348, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [33 x i8] c"il_dbgfs_ucode_general_stats_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1298, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1351, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [25 x i8] c"il_dbgfs_sensitivity_ops\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1299, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1353, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [25 x i8] c"il_dbgfs_chain_noise_ops\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1300, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1354, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [24 x i8] c"il_dbgfs_rxon_flags_ops\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1307, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1355, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [31 x i8] c"il_dbgfs_rxon_filter_flags_ops\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1308, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1356, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [24 x i8] c"il_dbgfs_wd_timeout_ops\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1309, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1358, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1361, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1363, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 466, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 472, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 479, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 484, i32 43 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 487, i32 47 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 329, i32 40 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 332, i32 40 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 353, i32 45 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 354, i32 44 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 377, i32 18 }
@___asan_gen_.422 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 156, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 406, i32 40 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 415, i32 10 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 420, i32 10 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 423, i32 10 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 428, i32 11 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 440, i32 12 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 512, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 522, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 528, i32 11 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 533, i32 11 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 533, i32 40 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 538, i32 11 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 541, i32 11 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 541, i32 28 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 549, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 586, i32 40 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 589, i32 40 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 592, i32 40 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 595, i32 40 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 598, i32 40 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 601, i32 40 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 604, i32 40 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 607, i32 40 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 610, i32 40 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 613, i32 40 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 616, i32 40 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 619, i32 40 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 622, i32 40 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 625, i32 40 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 628, i32 40 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 631, i32 40 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 650, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 655, i32 40 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 658, i32 40 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 661, i32 40 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 666, i32 10 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 671, i32 40 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 674, i32 40 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 679, i32 9 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 683, i32 40 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 687, i32 40 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 691, i32 40 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 697, i32 11 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 703, i32 40 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 707, i32 40 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 728, i32 18 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 748, i32 10 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 751, i32 10 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 797, i32 40 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 798, i32 28 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 798, i32 41 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 774, i32 18 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 779, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 276, i32 43 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 279, i32 41 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 282, i32 43 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 288, i32 43 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 290, i32 40 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 293, i32 40 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 163, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 164, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 165, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 166, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 167, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 168, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 169, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 170, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 171, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 172, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 173, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 174, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 176, i32 10 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 185, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 186, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 187, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 188, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 189, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 190, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 191, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 192, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 221, i32 43 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 869, i32 43 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 870, i32 43 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 872, i32 40 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 876, i32 41 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 882, i32 10 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 827, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 839, i32 10 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 850, i32 10 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1097, i32 43 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1099, i32 40 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1100, i32 56 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1101, i32 57 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1102, i32 57 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1103, i32 9 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1193, i32 40 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1238, i32 40 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1242, i32 9 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1246, i32 9 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1249, i32 40 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 930, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 935, i32 40 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 938, i32 40 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 941, i32 40 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 944, i32 40 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 947, i32 40 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 950, i32 40 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 954, i32 9 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 957, i32 40 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 960, i32 40 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 963, i32 40 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 966, i32 40 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 969, i32 40 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 971, i32 43 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 974, i32 41 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 978, i32 43 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 986, i32 40 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 989, i32 40 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 992, i32 40 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 995, i32 40 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 999, i32 9 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1002, i32 40 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1005, i32 40 }
@___asan_gen_.814 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1029, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1034, i32 40 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1037, i32 40 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1040, i32 40 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1043, i32 40 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1046, i32 40 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1049, i32 40 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1052, i32 40 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1055, i32 40 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1058, i32 43 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1065, i32 43 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1073, i32 40 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1076, i32 40 }
@___asan_gen_.856 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.857 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlegacy/debug.c\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1142, i32 21 }
@___asan_gen_.859 = private unnamed_addr constant [36 x i8] c"switch.table.il_dbgfs_rx_stats_read\00", align 1
@___asan_gen_.860 = private unnamed_addr constant [36 x i8] c"switch.table.il_dbgfs_tx_stats_read\00", align 1
@llvm.compiler.used = appending global [235 x ptr] [ptr @__ksymtab_il_dbgfs_register, ptr @__ksymtab_il_dbgfs_unregister, ptr @__ksymtab_il_update_stats, ptr @il_dbgfs_chain_noise_read._entry, ptr @il_dbgfs_chain_noise_read._entry_ptr, ptr @il_dbgfs_channels_read._entry, ptr @il_dbgfs_channels_read._entry_ptr, ptr @il_dbgfs_disable_ht40_write._entry, ptr @il_dbgfs_disable_ht40_write._entry_ptr, ptr @il_dbgfs_interrupt_read._entry, ptr @il_dbgfs_interrupt_read._entry_ptr, ptr @il_dbgfs_nvm_read._entry, ptr @il_dbgfs_nvm_read._entry.37, ptr @il_dbgfs_nvm_read._entry.40, ptr @il_dbgfs_nvm_read._entry_ptr, ptr @il_dbgfs_nvm_read._entry_ptr.39, ptr @il_dbgfs_nvm_read._entry_ptr.42, ptr @il_dbgfs_sensitivity_read._entry, ptr @il_dbgfs_sensitivity_read._entry_ptr, ptr @il_dbgfs_tx_queue_read._entry, ptr @il_dbgfs_tx_queue_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @il_dbgfs_nvm_ops, ptr @.str.4, ptr @il_dbgfs_sram_ops, ptr @.str.5, ptr @il_dbgfs_stations_ops, ptr @.str.6, ptr @il_dbgfs_channels_ops, ptr @.str.7, ptr @il_dbgfs_status_ops, ptr @.str.8, ptr @il_dbgfs_interrupt_ops, ptr @.str.9, ptr @il_dbgfs_qos_ops, ptr @.str.10, ptr @il_dbgfs_disable_ht40_ops, ptr @.str.11, ptr @il_dbgfs_rx_stats_ops, ptr @.str.12, ptr @il_dbgfs_tx_stats_ops, ptr @.str.13, ptr @il_dbgfs_rx_queue_ops, ptr @.str.14, ptr @il_dbgfs_tx_queue_ops, ptr @.str.15, ptr @il_dbgfs_power_save_status_ops, ptr @.str.16, ptr @il_dbgfs_clear_ucode_stats_ops, ptr @.str.17, ptr @il_dbgfs_clear_traffic_stats_ops, ptr @.str.18, ptr @il_dbgfs_fh_reg_ops, ptr @.str.19, ptr @il_dbgfs_missed_beacon_ops, ptr @.str.20, ptr @il_dbgfs_force_reset_ops, ptr @.str.21, ptr @il_dbgfs_ucode_rx_stats_ops, ptr @.str.22, ptr @il_dbgfs_ucode_tx_stats_ops, ptr @.str.23, ptr @il_dbgfs_ucode_general_stats_ops, ptr @.str.24, ptr @il_dbgfs_sensitivity_ops, ptr @.str.25, ptr @il_dbgfs_chain_noise_ops, ptr @.str.26, ptr @il_dbgfs_rxon_flags_ops, ptr @.str.27, ptr @il_dbgfs_rxon_filter_flags_ops, ptr @.str.28, ptr @il_dbgfs_wd_timeout_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @switch.table.il_dbgfs_rx_stats_read, ptr @switch.table.il_dbgfs_tx_stats_read], section "llvm.metadata"
@0 = internal global [223 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_nvm_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_sram_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_stations_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_channels_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_status_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_interrupt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_qos_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_disable_ht40_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_rx_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_tx_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_rx_queue_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_tx_queue_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_power_save_status_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_clear_ucode_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_clear_traffic_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_fh_reg_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_missed_beacon_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_force_reset_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_ucode_rx_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_ucode_tx_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_ucode_general_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_sensitivity_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_chain_noise_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_rxon_flags_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_rxon_filter_flags_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_wd_timeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_nvm_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_nvm_read._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_nvm_read._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_channels_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_interrupt_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_disable_ht40_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_tx_queue_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_sensitivity_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_dbgfs_chain_noise_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.il_dbgfs_rx_stats_read to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.il_dbgfs_tx_stats_read to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @il_update_stats(ptr noundef %il, i1 noundef zeroext %is_tx, i16 noundef zeroext %fc, i16 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_stats = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 78
  %rx_stats = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 79
  %stats.0 = select i1 %is_tx, ptr %tx_stats, ptr %rx_stats
  %0 = trunc i16 %fc to i12
  %trunc = and i12 %0, -1024
  %1 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i12 %trunc, label %if.else83 [
    i12 0, label %if.then1
    i12 1024, label %if.then48
  ]

if.then1:                                         ; preds = %entry
  %2 = lshr i16 %fc, 12
  %3 = zext i16 %2 to i32
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %3, label %if.then1.if.end87_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb6
    i32 3, label %sw.bb10
    i32 4, label %sw.bb14
    i32 5, label %sw.bb18
    i32 8, label %sw.bb22
    i32 9, label %sw.bb26
    i32 10, label %sw.bb30
    i32 11, label %sw.bb34
    i32 12, label %sw.bb38
    i32 13, label %sw.bb42
  ]

if.then1.if.end87_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

sw.bb:                                            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %stats.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stats.0, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %stats.0, align 8
  br label %if.end87

sw.bb2:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %inc5 = add i32 %8, 1
  store i32 %inc5, ptr %arrayidx4, align 4
  br label %if.end87

sw.bb6:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx8, align 8
  %inc9 = add i32 %10, 1
  store i32 %inc9, ptr %arrayidx8, align 8
  br label %if.end87

sw.bb10:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx12 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx12, align 4
  %inc13 = add i32 %12, 1
  store i32 %inc13, ptr %arrayidx12, align 4
  br label %if.end87

sw.bb14:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx16, align 8
  %inc17 = add i32 %14, 1
  store i32 %inc17, ptr %arrayidx16, align 8
  br label %if.end87

sw.bb18:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx20 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx20, align 4
  %inc21 = add i32 %16, 1
  store i32 %inc21, ptr %arrayidx20, align 4
  br label %if.end87

sw.bb22:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx24, align 8
  %inc25 = add i32 %18, 1
  store i32 %inc25, ptr %arrayidx24, align 8
  br label %if.end87

sw.bb26:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx28 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 7
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx28, align 4
  %inc29 = add i32 %20, 1
  store i32 %inc29, ptr %arrayidx28, align 4
  br label %if.end87

sw.bb30:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx32 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 8
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx32, align 8
  %inc33 = add i32 %22, 1
  store i32 %inc33, ptr %arrayidx32, align 8
  br label %if.end87

sw.bb34:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx36 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 9
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx36, align 4
  %inc37 = add i32 %24, 1
  store i32 %inc37, ptr %arrayidx36, align 4
  br label %if.end87

sw.bb38:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx40 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 10
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx40, align 8
  %inc41 = add i32 %26, 1
  store i32 %inc41, ptr %arrayidx40, align 8
  br label %if.end87

sw.bb42:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx44 = getelementptr [12 x i32], ptr %stats.0, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx44, align 4
  %inc45 = add i32 %28, 1
  store i32 %inc45, ptr %arrayidx44, align 4
  br label %if.end87

if.then48:                                        ; preds = %entry
  %29 = and i16 %fc, -4096
  %and50 = zext i16 %29 to i32
  %30 = add nsw i32 %and50, -32768
  %31 = lshr exact i32 %30, 12
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %31, label %if.then48.if.end87_crit_edge [
    i32 0, label %sw.bb51
    i32 1, label %sw.bb54
    i32 2, label %sw.bb58
    i32 3, label %sw.bb62
    i32 4, label %sw.bb66
    i32 5, label %sw.bb70
    i32 6, label %sw.bb74
    i32 7, label %sw.bb78
  ]

if.then48.if.end87_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

sw.bb51:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl = getelementptr inbounds %struct.traffic_stats, ptr %stats.0, i32 0, i32 1
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl, align 8
  %inc53 = add i32 %34, 1
  store i32 %inc53, ptr %ctrl, align 8
  br label %if.end87

sw.bb54:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx56 = getelementptr %struct.traffic_stats, ptr %stats.0, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx56, align 4
  %inc57 = add i32 %36, 1
  store i32 %inc57, ptr %arrayidx56, align 4
  br label %if.end87

sw.bb58:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx60 = getelementptr %struct.traffic_stats, ptr %stats.0, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx60, align 8
  %inc61 = add i32 %38, 1
  store i32 %inc61, ptr %arrayidx60, align 8
  br label %if.end87

sw.bb62:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx64 = getelementptr %struct.traffic_stats, ptr %stats.0, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx64, align 4
  %inc65 = add i32 %40, 1
  store i32 %inc65, ptr %arrayidx64, align 4
  br label %if.end87

sw.bb66:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx68 = getelementptr %struct.traffic_stats, ptr %stats.0, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx68, align 8
  %inc69 = add i32 %42, 1
  store i32 %inc69, ptr %arrayidx68, align 8
  br label %if.end87

sw.bb70:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx72 = getelementptr %struct.traffic_stats, ptr %stats.0, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx72, align 4
  %inc73 = add i32 %44, 1
  store i32 %inc73, ptr %arrayidx72, align 4
  br label %if.end87

sw.bb74:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx76 = getelementptr %struct.traffic_stats, ptr %stats.0, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx76, align 8
  %inc77 = add i32 %46, 1
  store i32 %inc77, ptr %arrayidx76, align 8
  br label %if.end87

sw.bb78:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx80 = getelementptr %struct.traffic_stats, ptr %stats.0, i32 0, i32 1, i32 7
  %47 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx80, align 4
  %inc81 = add i32 %48, 1
  store i32 %inc81, ptr %arrayidx80, align 4
  br label %if.end87

if.else83:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data_cnt = getelementptr inbounds %struct.traffic_stats, ptr %stats.0, i32 0, i32 2
  %49 = ptrtoint ptr %data_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_cnt, align 8
  %inc84 = add i32 %50, 1
  store i32 %inc84, ptr %data_cnt, align 8
  %conv85 = zext i16 %len to i64
  %data_bytes = getelementptr inbounds %struct.traffic_stats, ptr %stats.0, i32 0, i32 3
  %51 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %data_bytes, align 8
  %add = add i64 %52, %conv85
  store i64 %add, ptr %data_bytes, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %sw.bb78, %sw.bb74, %sw.bb70, %sw.bb66, %sw.bb62, %sw.bb58, %sw.bb54, %sw.bb51, %if.then48.if.end87_crit_edge, %sw.bb42, %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb, %if.then1.if.end87_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il_dbgfs_register(ptr noundef %il, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %name, ptr noundef %5) #10
  %debugfs_dir = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 119
  %6 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %debugfs_dir, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %call) #10
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %call) #10
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef %call) #10
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %il, ptr noundef nonnull @il_dbgfs_nvm_ops) #10
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %il, ptr noundef nonnull @il_dbgfs_sram_ops) #10
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %il, ptr noundef nonnull @il_dbgfs_stations_ops) #10
  %call14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %il, ptr noundef nonnull @il_dbgfs_channels_ops) #10
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %il, ptr noundef nonnull @il_dbgfs_status_ops) #10
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %il, ptr noundef nonnull @il_dbgfs_interrupt_ops) #10
  %call26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %il, ptr noundef nonnull @il_dbgfs_qos_ops) #10
  %call30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %il, ptr noundef nonnull @il_dbgfs_disable_ht40_ops) #10
  %call34 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_rx_stats_ops) #10
  %call38 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_tx_stats_ops) #10
  %call42 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_rx_queue_ops) #10
  %call46 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_tx_queue_ops) #10
  %call50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_power_save_status_ops) #10
  %call54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 128, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_clear_ucode_stats_ops) #10
  %call58 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 128, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_clear_traffic_stats_ops) #10
  %call62 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_fh_reg_ops) #10
  %call66 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 128, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_missed_beacon_ops) #10
  %call70 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 384, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_force_reset_ops) #10
  %call74 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_ucode_rx_stats_ops) #10
  %call78 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_ucode_tx_stats_ops) #10
  %call82 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_ucode_general_stats_ops) #10
  %cfg = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 3
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 4
  %sensitivity_calib_by_driver = getelementptr inbounds %struct.il_cfg, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %sensitivity_calib_by_driver to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sensitivity_calib_by_driver, align 2, !range !457
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body85

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body85:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call86 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_sensitivity_ops) #10
  br label %if.end

if.end:                                           ; preds = %do.body85, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 4
  %chain_noise_calib_by_driver = getelementptr inbounds %struct.il_cfg, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %chain_noise_calib_by_driver to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chain_noise_calib_by_driver, align 1, !range !457
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool90.not = icmp eq i8 %14, 0
  br i1 %tobool90.not, label %if.end.do.body97_crit_edge, label %do.body92

if.end.do.body97_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

do.body92:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call93 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_chain_noise_ops) #10
  br label %do.body97

do.body97:                                        ; preds = %do.body92, %if.end.do.body97_crit_edge
  %call98 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 128, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_rxon_flags_ops) #10
  %call102 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 128, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_rxon_filter_flags_ops) #10
  %call106 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 128, ptr noundef %call3, ptr noundef %il, ptr noundef nonnull @il_dbgfs_wd_timeout_ops) #10
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg, align 4
  %sensitivity_calib_by_driver110 = getelementptr inbounds %struct.il_cfg, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %sensitivity_calib_by_driver110 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sensitivity_calib_by_driver110, align 2, !range !457
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool111.not = icmp eq i8 %18, 0
  br i1 %tobool111.not, label %do.body97.if.end116_crit_edge, label %do.body113

do.body97.if.end116_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

do.body113:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  %disable_sens_cal = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 124
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.29, i16 noundef zeroext 384, ptr noundef %call2, ptr noundef %disable_sens_cal) #10
  br label %if.end116

if.end116:                                        ; preds = %do.body113, %do.body97.if.end116_crit_edge
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg, align 4
  %chain_noise_calib_by_driver118 = getelementptr inbounds %struct.il_cfg, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %chain_noise_calib_by_driver118 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chain_noise_calib_by_driver118, align 1, !range !457
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool119.not = icmp eq i8 %22, 0
  br i1 %tobool119.not, label %if.end116.do.body125_crit_edge, label %do.body121

if.end116.do.body125_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body125

do.body121:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %disable_chain_noise_cal = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 125
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.30, i16 noundef zeroext 384, ptr noundef %call2, ptr noundef %disable_chain_noise_cal) #10
  br label %do.body125

do.body125:                                       ; preds = %do.body121, %if.end116.do.body125_crit_edge
  %disable_tx_power_cal = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 126
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.31, i16 noundef zeroext 384, ptr noundef %call2, ptr noundef %disable_tx_power_cal) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il_dbgfs_unregister(ptr nocapture noundef %il) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 119
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_remove(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_dir, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_nvm_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cfg = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %eeprom_size = getelementptr inbounds %struct.il_cfg, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eeprom_size, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 256
  %rem = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %eeprom = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 92
  %8 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eeprom, align 8
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %do.end5, label %if.end8.i.i

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev6 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %10 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev6, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #14
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev14 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %12 = ptrtoint ptr %pci_dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev14, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end8.i.i
  %call17 = tail call zeroext i16 @il_eeprom_query16(ptr noundef %1, i32 noundef 136) #10
  %conv = zext i16 %call17 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add, ptr noundef nonnull @.str.43, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp62.not = icmp eq i32 %5, 0
  br i1 %cmp62.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %ofs.064 = phi i32 [ %add26, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %pos.063 = phi i32 [ %add25, %for.body.for.body_crit_edge ], [ %call18, %if.end16.for.body_crit_edge ]
  %add.ptr21 = getelementptr i8, ptr %call9.i.i, i32 %pos.063
  %sub22 = sub i32 %add, %pos.063
  %add.ptr23 = getelementptr i8, ptr %9, i32 %ofs.064
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i32 noundef %sub22, ptr noundef nonnull @.str.44, i32 noundef %ofs.064, ptr noundef %add.ptr23) #10
  %add25 = add i32 %call24, %pos.063
  %add26 = add i32 %ofs.064, 16
  %cmp = icmp ult i32 %add26, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ %call18, %if.end16.for.end_crit_edge ], [ %add25, %for.body.for.end_crit_edge ]
  %call27 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i.i, i32 noundef %pos.0.lcssa) #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end13, %do.end5, %do.end
  %retval.0 = phi i32 [ -61, %do.end ], [ %call27, %for.end ], [ -12, %do.end13 ], [ -12, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @il_eeprom_query16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_sram_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dbgfs_sram_offset = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 120
  %2 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbgfs_sram_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %dbgfs_sram_len = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 121
  %4 = ptrtoint ptr %dbgfs_sram_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dbgfs_sram_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8388608, ptr %dbgfs_sram_offset, align 8
  %ucode_type = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 50
  %7 = ptrtoint ptr %ucode_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ucode_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %len = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 48, i32 2
  %len5 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 45, i32 2
  %.sink.in = select i1 %cmp, ptr %len, ptr %len5
  %9 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.sink = load i32, ptr %.sink.in, align 4
  %10 = ptrtoint ptr %dbgfs_sram_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %dbgfs_sram_len, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %dbgfs_sram_len8 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 121
  %11 = ptrtoint ptr %dbgfs_sram_len8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dbgfs_sram_len8, align 4
  %mul9 = mul i32 %12, 10
  %add = add i32 %mul9, 30
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %dbgfs_sram_len8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dbgfs_sram_len8, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef nonnull @.str.45, i32 noundef %14) #10
  %add.ptr16 = getelementptr i8, ptr %call9.i, i32 %call14
  %sub17 = sub i32 %add, %call14
  %15 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dbgfs_sram_offset, align 8
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.46, i32 noundef %16) #10
  %add20 = add i32 %call19, %call14
  %17 = ptrtoint ptr %dbgfs_sram_len8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dbgfs_sram_len8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp22113 = icmp sgt i32 %18, 0
  br i1 %cmp22113, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %if.end12.for.body_crit_edge
  %pos.0115 = phi i32 [ %add45, %if.end41.for.body_crit_edge ], [ %add20, %if.end12.for.body_crit_edge ]
  %i.0114 = phi i32 [ %sub46, %if.end41.for.body_crit_edge ], [ %18, %if.end12.for.body_crit_edge ]
  %19 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dbgfs_sram_offset, align 8
  %21 = ptrtoint ptr %dbgfs_sram_len8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dbgfs_sram_len8, align 4
  %add25 = sub i32 %20, %i.0114
  %sub26 = add i32 %add25, %22
  %call27 = tail call i32 @il_read_targ_mem(ptr noundef %1, i32 noundef %sub26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0114)
  %cmp28 = icmp ult i32 %i.0114, 4
  br i1 %cmp28, label %if.then29, label %for.body.if.end34_crit_edge

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then29:                                        ; preds = %for.body
  %23 = zext i32 %i.0114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %i.0114, label %if.then29.if.end34_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb30
    i32 3, label %sw.bb32
  ]

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

sw.bb:                                            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %call27, 255
  br label %if.end41

sw.bb30:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %and31 = and i32 %call27, 65535
  br label %if.end41

sw.bb32:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %and33 = and i32 %call27, 16777215
  br label %if.end41

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %for.body.if.end34_crit_edge
  %24 = and i32 %i.0114, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool35.not = icmp eq i32 %24, 0
  br i1 %tobool35.not, label %if.then36, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr37 = getelementptr i8, ptr %call9.i, i32 %pos.0115
  %sub38 = sub i32 %add, %pos.0115
  %call39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.47) #10
  %add40 = add i32 %call39, %pos.0115
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end34.if.end41_crit_edge, %sw.bb32, %sw.bb30, %sw.bb
  %val.0112 = phi i32 [ %call27, %if.end34.if.end41_crit_edge ], [ %call27, %if.then36 ], [ %and, %sw.bb ], [ %and31, %sw.bb30 ], [ %and33, %sw.bb32 ]
  %pos.1 = phi i32 [ %pos.0115, %if.end34.if.end41_crit_edge ], [ %add40, %if.then36 ], [ %pos.0115, %sw.bb ], [ %pos.0115, %sw.bb30 ], [ %pos.0115, %sw.bb32 ]
  %add.ptr42 = getelementptr i8, ptr %call9.i, i32 %pos.1
  %sub43 = sub i32 %add, %pos.1
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.48, i32 noundef %val.0112) #10
  %add45 = add i32 %call44, %pos.1
  %sub46 = add nsw i32 %i.0114, -4
  %cmp22 = icmp ugt i32 %i.0114, 4
  br i1 %cmp22, label %if.end41.for.body_crit_edge, label %if.end41.for.end_crit_edge

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end41.for.end_crit_edge, %if.end12.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ %add20, %if.end12.for.end_crit_edge ], [ %add45, %if.end41.for.end_crit_edge ]
  %add.ptr47 = getelementptr i8, ptr %call9.i, i32 %pos.0.lcssa
  %sub48 = sub i32 %add, %pos.0.lcssa
  %call49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.47) #10
  %add50 = add i32 %call49, %pos.0.lcssa
  %call51 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %add50) #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %for.end ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_sram_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %offset = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #10
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !458
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %len, align 4, !annotation !458
  %4 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #15, !srcloc !459
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !460

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #10
  %7 = call i32 @llvm.read_register.i32(metadata !447) #10
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !461
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !460

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.49, ptr noundef nonnull %offset, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 2
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %dbgfs_sram_offset = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 120
  %13 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dbgfs_sram_offset, align 8
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %dbgfs_sram_len = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 121
  %16 = ptrtoint ptr %dbgfs_sram_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dbgfs_sram_len, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dbgfs_sram_offset6 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 120
  %17 = ptrtoint ptr %dbgfs_sram_offset6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dbgfs_sram_offset6, align 8
  %dbgfs_sram_len7 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 121
  %18 = ptrtoint ptr %dbgfs_sram_len7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dbgfs_sram_len7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.else ], [ %count, %if.then5 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_read_targ_mem(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_stations_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %max_stations = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 97, i32 13
  %2 = ptrtoint ptr %max_stations to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_stations, align 4
  %conv = zext i8 %3 to i32
  %num_stations = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 84
  %4 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_stations, align 4
  %mul = mul i32 %5, 500
  %add = add i32 %mul, 30
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stations, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef nonnull @.str.53, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp152.not = icmp eq i8 %3, 0
  br i1 %cmp152.not, label %if.end.for.end72_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end72

for.body:                                         ; preds = %for.inc70.for.body_crit_edge, %if.end.for.body_crit_edge
  %pos.0155 = phi i32 [ %pos.3, %for.inc70.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  %i.0153 = phi i32 [ %inc71, %for.inc70.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %used = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153, i32 2
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %used, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %for.body.for.inc70_crit_edge, label %if.end7

for.body.for.inc70_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70

if.end7:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153
  %add.ptr8 = getelementptr i8, ptr %call9.i, i32 %pos.0155
  %sub9 = sub i32 %add, %pos.0155
  %sta10 = getelementptr inbounds %struct.il_addsta_cmd, ptr %arrayidx, i32 0, i32 2
  %station_flags_msk = getelementptr inbounds %struct.il_addsta_cmd, ptr %arrayidx, i32 0, i32 5
  %10 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %station_flags_msk, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.54, i32 noundef %i.0153, ptr noundef %sta10, i32 noundef %11) #10
  %add13 = add i32 %call12, %pos.0155
  %add.ptr14 = getelementptr i8, ptr %call9.i, i32 %add13
  %sub15 = sub i32 %add, %add13
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.55) #10
  %add17 = add i32 %add13, %call16
  %add.ptr18 = getelementptr i8, ptr %call9.i, i32 %add17
  %sub19 = sub i32 %add, %add17
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.56) #10
  %add21 = add i32 %add17, %call20
  br label %for.body25

for.body25:                                       ; preds = %if.end61.for.body25_crit_edge, %if.end7
  %pos.1151 = phi i32 [ %add21, %if.end7 ], [ %add65, %if.end61.for.body25_crit_edge ]
  %j.0150 = phi i32 [ 0, %if.end7 ], [ %inc, %if.end61.for.body25_crit_edge ]
  %add.ptr26 = getelementptr i8, ptr %call9.i, i32 %pos.1151
  %sub27 = sub i32 %add, %pos.1151
  %arrayidx28 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153, i32 1, i32 %j.0150
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx28, align 8
  %conv29 = zext i16 %13 to i32
  %agg = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153, i32 1, i32 %j.0150, i32 2
  %14 = ptrtoint ptr %agg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %agg, align 8
  %conv32 = zext i16 %15 to i32
  %frame_count = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153, i32 1, i32 %j.0150, i32 2, i32 1
  %16 = ptrtoint ptr %frame_count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frame_count, align 2
  %conv36 = zext i16 %17 to i32
  %tfds_in_queue = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153, i32 1, i32 %j.0150, i32 1
  %18 = ptrtoint ptr %tfds_in_queue to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tfds_in_queue, align 2
  %conv39 = zext i16 %19 to i32
  %start_idx = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153, i32 1, i32 %j.0150, i32 2, i32 3
  %20 = ptrtoint ptr %start_idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %start_idx, align 2
  %conv43 = zext i16 %21 to i32
  %bitmap = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153, i32 1, i32 %j.0150, i32 2, i32 4
  %22 = ptrtoint ptr %bitmap to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bitmap, align 8
  %rate_n_flags = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153, i32 1, i32 %j.0150, i32 2, i32 5
  %24 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rate_n_flags, align 8
  %call50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.57, i32 noundef %j.0150, i32 noundef %conv29, i32 noundef %conv32, i32 noundef %conv36, i32 noundef %conv39, i32 noundef %conv43, i64 noundef %23, i32 noundef %25) #10
  %add51 = add i32 %call50, %pos.1151
  %wait_for_ba = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %i.0153, i32 1, i32 %j.0150, i32 2, i32 2
  %26 = ptrtoint ptr %wait_for_ba to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %wait_for_ba, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool55.not = icmp eq i16 %27, 0
  br i1 %tobool55.not, label %for.body25.if.end61_crit_edge, label %if.then56

for.body25.if.end61_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then56:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr57 = getelementptr i8, ptr %call9.i, i32 %add51
  %sub58 = sub i32 %add, %add51
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.58) #10
  %add60 = add i32 %call59, %add51
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %for.body25.if.end61_crit_edge
  %pos.2 = phi i32 [ %add60, %if.then56 ], [ %add51, %for.body25.if.end61_crit_edge ]
  %add.ptr62 = getelementptr i8, ptr %call9.i, i32 %pos.2
  %sub63 = sub i32 %add, %pos.2
  %call64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.47) #10
  %add65 = add i32 %call64, %pos.2
  %inc = add nuw nsw i32 %j.0150, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %if.end61.for.body25_crit_edge

if.end61.for.body25_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25

for.end:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr66 = getelementptr i8, ptr %call9.i, i32 %add65
  %sub67 = sub i32 %add, %add65
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.47) #10
  %add69 = add i32 %call68, %add65
  br label %for.inc70

for.inc70:                                        ; preds = %for.end, %for.body.for.inc70_crit_edge
  %pos.3 = phi i32 [ %add69, %for.end ], [ %pos.0155, %for.body.for.inc70_crit_edge ]
  %inc71 = add nuw nsw i32 %i.0153, 1
  %exitcond156.not = icmp eq i32 %inc71, %conv
  br i1 %exitcond156.not, label %for.inc70.for.end72_crit_edge, label %for.inc70.for.body_crit_edge

for.inc70.for.body_crit_edge:                     ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc70.for.end72_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end72

for.end72:                                        ; preds = %for.inc70.for.end72_crit_edge, %if.end.for.end72_crit_edge
  %pos.0.lcssa = phi i32 [ %call2, %if.end.for.end72_crit_edge ], [ %pos.3, %for.inc70.for.end72_crit_edge ]
  %call73 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %pos.0.lcssa) #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call73, %for.end72 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_channels_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 4096) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end4.if.end32_crit_edge, label %if.then7

if.end4.if.end32_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then7:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_channels, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.60, i32 noundef %17) #10
  %18 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp150 = icmp sgt i32 %19, 0
  br i1 %cmp150, label %if.then7.for.body_crit_edge, label %if.then7.if.end32_crit_edge

if.then7.if.end32_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then7.for.body_crit_edge
  %i.0152 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then7.for.body_crit_edge ]
  %pos.0151 = phi i32 [ %add31, %for.body.for.body_crit_edge ], [ %call9, %if.then7.for.body_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %call7.i.i, i32 %pos.0151
  %sub12 = sub i32 4096, %pos.0151
  %hw_value = getelementptr %struct.ieee80211_channel, ptr %15, i32 %i.0152, i32 3
  %20 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %21 to i32
  %max_power = getelementptr %struct.ieee80211_channel, ptr %15, i32 %i.0152, i32 6
  %22 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_power, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %15, i32 %i.0152, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15 = icmp ne i32 %and, 0
  %cond = select i1 %tobool15, ptr @.str.62, ptr @.str.63
  %and18 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %not.tobool19.not = xor i1 %tobool19.not, true
  %spec.select = select i1 %not.tobool19.not, i1 true, i1 %tobool15
  %cond24 = select i1 %spec.select, ptr @.str.63, ptr @.str.64
  %cond29 = select i1 %tobool19.not, ptr @.str.66, ptr @.str.65
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.61, i32 noundef %conv, i32 noundef %23, ptr noundef nonnull %cond, ptr noundef nonnull %cond24, ptr noundef nonnull %cond29) #10
  %add31 = add i32 %call30, %pos.0151
  %inc = add nuw nsw i32 %i.0152, 1
  %26 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_channels, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end32:                                         ; preds = %for.body.if.end32_crit_edge, %if.then7.if.end32_crit_edge, %if.end4.if.end32_crit_edge
  %pos.1 = phi i32 [ 0, %if.end4.if.end32_crit_edge ], [ %call9, %if.then7.if.end32_crit_edge ], [ %add31, %for.body.if.end32_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %wiphy.i148 = getelementptr inbounds %struct.ieee80211_hw, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wiphy.i148 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wiphy.i148, align 8
  %arrayidx.i149 = getelementptr %struct.wiphy, ptr %31, i32 0, i32 53, i32 1
  %32 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i149, align 4
  %tobool34.not = icmp eq ptr %33, null
  br i1 %tobool34.not, label %if.end32.if.end80_crit_edge, label %if.then35

if.end32.if.end80_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then35:                                        ; preds = %if.end32
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr37 = getelementptr i8, ptr %call7.i.i, i32 %pos.1
  %sub38 = sub i32 4096, %pos.1
  %n_channels39 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %n_channels39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_channels39, align 4
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.67, i32 noundef %37) #10
  %add41 = add i32 %call40, %pos.1
  %38 = ptrtoint ptr %n_channels39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp44153 = icmp sgt i32 %39, 0
  br i1 %cmp44153, label %if.then35.for.body46_crit_edge, label %if.then35.if.end80_crit_edge

if.then35.if.end80_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then35.for.body46_crit_edge:                   ; preds = %if.then35
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %if.then35.for.body46_crit_edge
  %i.1155 = phi i32 [ %inc78, %for.body46.for.body46_crit_edge ], [ 0, %if.then35.for.body46_crit_edge ]
  %pos.2154 = phi i32 [ %add76, %for.body46.for.body46_crit_edge ], [ %add41, %if.then35.for.body46_crit_edge ]
  %add.ptr47 = getelementptr i8, ptr %call7.i.i, i32 %pos.2154
  %sub48 = sub i32 4096, %pos.2154
  %hw_value50 = getelementptr %struct.ieee80211_channel, ptr %35, i32 %i.1155, i32 3
  %40 = ptrtoint ptr %hw_value50 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hw_value50, align 2
  %conv51 = zext i16 %41 to i32
  %max_power53 = getelementptr %struct.ieee80211_channel, ptr %35, i32 %i.1155, i32 6
  %42 = ptrtoint ptr %max_power53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_power53, align 4
  %flags55 = getelementptr %struct.ieee80211_channel, ptr %35, i32 %i.1155, i32 4
  %44 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags55, align 4
  %and56 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, ptr @.str.62, ptr @.str.63
  %and61 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %not.tobool62.not = xor i1 %tobool62.not, true
  %spec.select147 = select i1 %not.tobool62.not, i1 true, i1 %tobool57
  %cond69 = select i1 %spec.select147, ptr @.str.63, ptr @.str.64
  %cond74 = select i1 %tobool62.not, ptr @.str.66, ptr @.str.65
  %call75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.61, i32 noundef %conv51, i32 noundef %43, ptr noundef nonnull %cond58, ptr noundef nonnull %cond69, ptr noundef nonnull %cond74) #10
  %add76 = add i32 %call75, %pos.2154
  %inc78 = add nuw nsw i32 %i.1155, 1
  %46 = ptrtoint ptr %n_channels39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_channels39, align 4
  %cmp44 = icmp slt i32 %inc78, %47
  br i1 %cmp44, label %for.body46.for.body46_crit_edge, label %for.body46.if.end80_crit_edge

for.body46.if.end80_crit_edge:                    ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46

if.end80:                                         ; preds = %for.body46.if.end80_crit_edge, %if.then35.if.end80_crit_edge, %if.end32.if.end80_crit_edge
  %pos.3 = phi i32 [ %pos.1, %if.end32.if.end80_crit_edge ], [ %add41, %if.then35.if.end80_crit_edge ], [ %add76, %for.body46.if.end80_crit_edge ]
  %call81 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %pos.3) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %if.end80 ], [ -12, %do.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_status_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 512)
  %status = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 77
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %4, 1
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 512, ptr noundef nonnull @.str.68, i32 noundef %and1.i) #10
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call1
  %sub4 = sub i32 512, %call1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %shr.i = lshr i32 %6, 2
  %and1.i172 = and i32 %shr.i, 1
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.69, i32 noundef %and1.i172) #10
  %add8 = add i32 %call7, %call1
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %add8
  %sub11 = sub i32 512, %add8
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status, align 4
  %shr.i173 = lshr i32 %8, 3
  %and1.i174 = and i32 %shr.i173, 1
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.70, i32 noundef %and1.i174) #10
  %add15 = add i32 %call14, %add8
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add15
  %sub18 = sub i32 512, %add15
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status, align 4
  %shr.i175 = lshr i32 %10, 4
  %and1.i176 = and i32 %shr.i175, 1
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.71, i32 noundef %and1.i176) #10
  %add22 = add i32 %call21, %add15
  %add.ptr24 = getelementptr i8, ptr %buf, i32 %add22
  %sub25 = sub i32 512, %add22
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status, align 4
  %shr.i177 = lshr i32 %12, 5
  %and1.i178 = and i32 %shr.i177, 1
  %call28 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.72, i32 noundef %and1.i178) #10
  %add29 = add i32 %call28, %add22
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %add29
  %sub32 = sub i32 512, %add29
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status, align 4
  %shr.i179 = lshr i32 %14, 6
  %and1.i180 = and i32 %shr.i179, 1
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.73, i32 noundef %and1.i180) #10
  %add36 = add i32 %call35, %add29
  %add.ptr38 = getelementptr i8, ptr %buf, i32 %add36
  %sub39 = sub i32 512, %add36
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %status, align 4
  %shr.i181 = lshr i32 %16, 7
  %and1.i182 = and i32 %shr.i181, 1
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.74, i32 noundef %and1.i182) #10
  %add43 = add i32 %call42, %add36
  %add.ptr45 = getelementptr i8, ptr %buf, i32 %add43
  %sub46 = sub i32 512, %add43
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %status, align 4
  %shr.i183 = lshr i32 %18, 8
  %and1.i184 = and i32 %shr.i183, 1
  %call49 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub46, ptr noundef nonnull @.str.75, i32 noundef %and1.i184) #10
  %add50 = add i32 %call49, %add43
  %add.ptr52 = getelementptr i8, ptr %buf, i32 %add50
  %sub53 = sub i32 512, %add50
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status, align 4
  %shr.i185 = lshr i32 %20, 9
  %and1.i186 = and i32 %shr.i185, 1
  %call56 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.76, i32 noundef %and1.i186) #10
  %add57 = add i32 %call56, %add50
  %add.ptr59 = getelementptr i8, ptr %buf, i32 %add57
  %sub60 = sub i32 512, %add57
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %status, align 4
  %shr.i187 = lshr i32 %22, 10
  %and1.i188 = and i32 %shr.i187, 1
  %call63 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i32 noundef %sub60, ptr noundef nonnull @.str.77, i32 noundef %and1.i188) #10
  %add64 = add i32 %call63, %add57
  %add.ptr66 = getelementptr i8, ptr %buf, i32 %add64
  %sub67 = sub i32 512, %add64
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %status, align 4
  %shr.i189 = lshr i32 %24, 12
  %and1.i190 = and i32 %shr.i189, 1
  %call70 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.78, i32 noundef %and1.i190) #10
  %add71 = add i32 %call70, %add64
  %add.ptr73 = getelementptr i8, ptr %buf, i32 %add71
  %sub74 = sub i32 512, %add71
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %status, align 4
  %shr.i191 = lshr i32 %26, 13
  %and1.i192 = and i32 %shr.i191, 1
  %call77 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr73, i32 noundef %sub74, ptr noundef nonnull @.str.79, i32 noundef %and1.i192) #10
  %add78 = add i32 %call77, %add71
  %add.ptr80 = getelementptr i8, ptr %buf, i32 %add78
  %sub81 = sub i32 512, %add78
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %status, align 4
  %shr.i193 = lshr i32 %28, 14
  %and1.i194 = and i32 %shr.i193, 1
  %call84 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr80, i32 noundef %sub81, ptr noundef nonnull @.str.80, i32 noundef %and1.i194) #10
  %add85 = add i32 %call84, %add78
  %add.ptr87 = getelementptr i8, ptr %buf, i32 %add85
  %sub88 = sub i32 512, %add85
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %status, align 4
  %shr.i195 = lshr i32 %30, 15
  %and1.i196 = and i32 %shr.i195, 1
  %call91 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr87, i32 noundef %sub88, ptr noundef nonnull @.str.81, i32 noundef %and1.i196) #10
  %add92 = add i32 %call91, %add85
  %add.ptr94 = getelementptr i8, ptr %buf, i32 %add92
  %sub95 = sub i32 512, %add92
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %status, align 4
  %shr.i197 = lshr i32 %32, 16
  %and1.i198 = and i32 %shr.i197, 1
  %call98 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr94, i32 noundef %sub95, ptr noundef nonnull @.str.82, i32 noundef %and1.i198) #10
  %add99 = add i32 %call98, %add92
  %add.ptr101 = getelementptr i8, ptr %buf, i32 %add99
  %sub102 = sub i32 512, %add99
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %status, align 4
  %shr.i199 = lshr i32 %34, 17
  %and1.i200 = and i32 %shr.i199, 1
  %call105 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr101, i32 noundef %sub102, ptr noundef nonnull @.str.83, i32 noundef %and1.i200) #10
  %add106 = add i32 %call105, %add99
  %call108 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add106) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #10
  ret i32 %call108
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_interrupt_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1536) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1536, ptr noundef nonnull @.str.85) #10
  %add.ptr2 = getelementptr i8, ptr %call7.i.i, i32 %call1
  %sub3 = sub i32 1536, %call1
  %isr_stats = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80
  %5 = ptrtoint ptr %isr_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %isr_stats, align 8
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.86, i32 noundef %6) #10
  %add5 = add i32 %call4, %call1
  %add.ptr6 = getelementptr i8, ptr %call7.i.i, i32 %add5
  %sub7 = sub i32 1536, %add5
  %sw = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 1
  %7 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sw, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.87, i32 noundef %8) #10
  %add10 = add i32 %call9, %add5
  %9 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end.if.then17_crit_edge

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %isr_stats to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %isr_stats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %add.ptr18 = getelementptr i8, ptr %call7.i.i, i32 %add10
  %sub19 = sub i32 1536, %add10
  %err_code = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 2
  %13 = ptrtoint ptr %err_code to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err_code, align 8
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.88, i32 noundef %14) #10
  %add22 = add i32 %call21, %add10
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %lor.lhs.false.if.end23_crit_edge
  %pos.0 = phi i32 [ %add22, %if.then17 ], [ %add10, %lor.lhs.false.if.end23_crit_edge ]
  %add.ptr24 = getelementptr i8, ptr %call7.i.i, i32 %pos.0
  %sub25 = sub i32 1536, %pos.0
  %sch = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 3
  %15 = ptrtoint ptr %sch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sch, align 4
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.89, i32 noundef %16) #10
  %add28 = add i32 %call27, %pos.0
  %add.ptr29 = getelementptr i8, ptr %call7.i.i, i32 %add28
  %sub30 = sub i32 1536, %add28
  %alive = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 4
  %17 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %alive, align 8
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.90, i32 noundef %18) #10
  %add33 = add i32 %call32, %add28
  %add.ptr34 = getelementptr i8, ptr %call7.i.i, i32 %add33
  %sub35 = sub i32 1536, %add33
  %rfkill = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 5
  %19 = ptrtoint ptr %rfkill to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rfkill, align 4
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.91, i32 noundef %20) #10
  %add38 = add i32 %call37, %add33
  %add.ptr39 = getelementptr i8, ptr %call7.i.i, i32 %add38
  %sub40 = sub i32 1536, %add38
  %ctkill = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 6
  %21 = ptrtoint ptr %ctkill to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctkill, align 8
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.92, i32 noundef %22) #10
  %add43 = add i32 %call42, %add38
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 %add43
  %sub45 = sub i32 1536, %add43
  %wakeup = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 7
  %23 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wakeup, align 4
  %call47 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.93, i32 noundef %24) #10
  %add48 = add i32 %call47, %add43
  %add.ptr49 = getelementptr i8, ptr %call7.i.i, i32 %add48
  %sub50 = sub i32 1536, %add48
  %rx = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 8
  %25 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx, align 8
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.94, i32 noundef %26) #10
  %add53 = add i32 %call52, %add48
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end23
  %cnt.0169 = phi i32 [ 0, %if.end23 ], [ %inc, %for.inc.for.body_crit_edge ]
  %pos.1168 = phi i32 [ %add53, %if.end23 ], [ %pos.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.il_priv, ptr %1, i32 0, i32 80, i32 9, i32 %cnt.0169
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp55.not = icmp eq i32 %28, 0
  br i1 %cmp55.not, label %for.body.for.inc_crit_edge, label %if.then56

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr57 = getelementptr i8, ptr %call7.i.i, i32 %pos.1168
  %sub58 = sub i32 1536, %pos.1168
  %conv = trunc i32 %cnt.0169 to i8
  %call59 = tail call ptr @il_get_cmd_string(i8 noundef zeroext %conv) #10
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %call63 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.95, ptr noundef %call59, i32 noundef %30) #10
  %add64 = add i32 %call63, %pos.1168
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %for.body.for.inc_crit_edge
  %pos.2 = phi i32 [ %add64, %if.then56 ], [ %pos.1168, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %cnt.0169, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr66 = getelementptr i8, ptr %call7.i.i, i32 %pos.2
  %sub67 = sub i32 1536, %pos.2
  %tx = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 10
  %31 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx, align 8
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.96, i32 noundef %32) #10
  %add70 = add i32 %call69, %pos.2
  %add.ptr71 = getelementptr i8, ptr %call7.i.i, i32 %add70
  %sub72 = sub i32 1536, %add70
  %unhandled = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 80, i32 11
  %33 = ptrtoint ptr %unhandled to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %unhandled, align 4
  %call74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub72, ptr noundef nonnull @.str.97, i32 noundef %34) #10
  %add75 = add i32 %call74, %add70
  %call76 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add75) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ %call76, %for.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_interrupt_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %reset_flag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_flag) #10
  %2 = ptrtoint ptr %reset_flag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reset_flag, align 4, !annotation !458
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #15, !srcloc !459
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !460

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #10
  %6 = call i32 @llvm.read_register.i32(metadata !447) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !461
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !460

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.98, ptr noundef nonnull %reset_flag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %reset_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @il_clear_isr_stats(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.end.cleanup_crit_edge ], [ %count, %if.then8 ], [ %count, %if.end6.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_flag) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @il_get_cmd_string(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_clear_isr_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_qos_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef nonnull @.str.99) #10
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 256, %call
  %arrayidx = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %4 to i32
  %cw_max = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cw_max, align 2
  %conv8 = zext i16 %6 to i32
  %aifsn = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %aifsn to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aifsn, align 4
  %conv13 = zext i8 %8 to i32
  %edca_txop = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %edca_txop to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %edca_txop, align 2
  %conv18 = zext i16 %10 to i32
  %call19 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.100, i32 noundef 0, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv13, i32 noundef %conv18) #10
  %add20 = add i32 %call19, %call
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %add20
  %sub.1 = sub i32 256, %add20
  %call.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.99) #10
  %add.1 = add i32 %call.1, %add20
  %add.ptr2.1 = getelementptr i8, ptr %buf, i32 %add.1
  %sub3.1 = sub i32 256, %add.1
  %arrayidx.1 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.1, align 4
  %conv.1 = zext i16 %12 to i32
  %cw_max.1 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %cw_max.1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cw_max.1, align 2
  %conv8.1 = zext i16 %14 to i32
  %aifsn.1 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 1, i32 2
  %15 = ptrtoint ptr %aifsn.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %aifsn.1, align 4
  %conv13.1 = zext i8 %16 to i32
  %edca_txop.1 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 1, i32 4
  %17 = ptrtoint ptr %edca_txop.1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %edca_txop.1, align 2
  %conv18.1 = zext i16 %18 to i32
  %call19.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.1, i32 noundef %sub3.1, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef %conv.1, i32 noundef %conv8.1, i32 noundef %conv13.1, i32 noundef %conv18.1) #10
  %add20.1 = add i32 %call19.1, %add.1
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add20.1
  %sub.2 = sub i32 256, %add20.1
  %call.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.99) #10
  %add.2 = add i32 %call.2, %add20.1
  %add.ptr2.2 = getelementptr i8, ptr %buf, i32 %add.2
  %sub3.2 = sub i32 256, %add.2
  %arrayidx.2 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.2, align 4
  %conv.2 = zext i16 %20 to i32
  %cw_max.2 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 2, i32 1
  %21 = ptrtoint ptr %cw_max.2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cw_max.2, align 2
  %conv8.2 = zext i16 %22 to i32
  %aifsn.2 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 2, i32 2
  %23 = ptrtoint ptr %aifsn.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %aifsn.2, align 4
  %conv13.2 = zext i8 %24 to i32
  %edca_txop.2 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 2, i32 4
  %25 = ptrtoint ptr %edca_txop.2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %edca_txop.2, align 2
  %conv18.2 = zext i16 %26 to i32
  %call19.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.2, i32 noundef %sub3.2, ptr noundef nonnull @.str.100, i32 noundef 2, i32 noundef %conv.2, i32 noundef %conv8.2, i32 noundef %conv13.2, i32 noundef %conv18.2) #10
  %add20.2 = add i32 %call19.2, %add.2
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add20.2
  %sub.3 = sub i32 256, %add20.2
  %call.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.99) #10
  %add.3 = add i32 %call.3, %add20.2
  %add.ptr2.3 = getelementptr i8, ptr %buf, i32 %add.3
  %sub3.3 = sub i32 256, %add.3
  %arrayidx.3 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.3, align 4
  %conv.3 = zext i16 %28 to i32
  %cw_max.3 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 3, i32 1
  %29 = ptrtoint ptr %cw_max.3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cw_max.3, align 2
  %conv8.3 = zext i16 %30 to i32
  %aifsn.3 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 3, i32 2
  %31 = ptrtoint ptr %aifsn.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %aifsn.3, align 4
  %conv13.3 = zext i8 %32 to i32
  %edca_txop.3 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 54, i32 1, i32 1, i32 3, i32 4
  %33 = ptrtoint ptr %edca_txop.3 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %edca_txop.3, align 2
  %conv18.3 = zext i16 %34 to i32
  %call19.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.3, i32 noundef %sub3.3, ptr noundef nonnull @.str.100, i32 noundef 3, i32 noundef %conv.3, i32 noundef %conv8.3, i32 noundef %conv13.3, i32 noundef %conv18.3) #10
  %add20.3 = add i32 %call19.3, %add.3
  %call22 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add20.3) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #10
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_disable_ht40_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 100)
  %disable_ht40 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 122
  %3 = ptrtoint ptr %disable_ht40 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %disable_ht40, align 8, !range !457
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.103, ptr @.str.102
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef nonnull @.str.101, ptr noundef nonnull %cond) #10
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #10
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_disable_ht40_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %ht40 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ht40) #10
  %2 = ptrtoint ptr %ht40 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ht40, align 4, !annotation !458
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #15, !srcloc !459
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !460

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #10
  %6 = call i32 @llvm.read_register.i32(metadata !447) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !461
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !460

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.104, ptr noundef nonnull %ht40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %filter_flags.i.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 56, i32 13
  %10 = ptrtoint ptr %filter_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %filter_flags.i.i, align 1
  %12 = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.then9, label %do.end

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %ht40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ht40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10 = icmp ne i32 %14, 0
  %disable_ht40 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 122
  %frombool = zext i1 %tobool10 to i8
  %15 = ptrtoint ptr %disable_ht40 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %disable_ht40, align 8
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.105) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then9, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.then9 ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ht40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_rx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1100) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1100, ptr noundef nonnull @.str.107) #10
  %rx_stats = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 79
  br label %for.body

for.body:                                         ; preds = %il_get_mgmt_string.exit.for.body_crit_edge, %if.end
  %cnt.094 = phi i32 [ 0, %if.end ], [ %inc, %il_get_mgmt_string.exit.for.body_crit_edge ]
  %pos.093 = phi i32 [ %call1, %if.end ], [ %add6, %il_get_mgmt_string.exit.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %call7.i.i, i32 %pos.093
  %sub3 = sub i32 1100, %pos.093
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %cnt.094)
  %3 = icmp ult i32 %cnt.094, 12
  br i1 %3, label %switch.lookup, label %for.body.il_get_mgmt_string.exit_crit_edge

for.body.il_get_mgmt_string.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_mgmt_string.exit

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [12 x ptr], ptr @switch.table.il_dbgfs_rx_stats_read, i32 0, i32 %cnt.094
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %il_get_mgmt_string.exit

il_get_mgmt_string.exit:                          ; preds = %switch.lookup, %for.body.il_get_mgmt_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.125, %for.body.il_get_mgmt_string.exit_crit_edge ]
  %arrayidx = getelementptr [12 x i32], ptr %rx_stats, i32 0, i32 %cnt.094
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.108, ptr noundef nonnull %retval.0.i, i32 noundef %6) #10
  %add6 = add i32 %call5, %pos.093
  %inc = add nuw nsw i32 %cnt.094, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %il_get_ctrl_string.exit.7, label %il_get_mgmt_string.exit.for.body_crit_edge

il_get_mgmt_string.exit.for.body_crit_edge:       ; preds = %il_get_mgmt_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

il_get_ctrl_string.exit.7:                        ; preds = %il_get_mgmt_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr7 = getelementptr i8, ptr %call7.i.i, i32 %add6
  %sub8 = sub i32 1100, %add6
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.109) #10
  %add10 = add i32 %call9, %add6
  %add.ptr14 = getelementptr i8, ptr %call7.i.i, i32 %add10
  %sub15 = sub i32 1100, %add10
  %arrayidx18 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 79, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx18, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.126, i32 noundef %8) #10
  %add20 = add i32 %call19, %add10
  %add.ptr14.1 = getelementptr i8, ptr %call7.i.i, i32 %add20
  %sub15.1 = sub i32 1100, %add20
  %arrayidx18.1 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 79, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx18.1, align 4
  %call19.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.1, i32 noundef %sub15.1, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.127, i32 noundef %10) #10
  %add20.1 = add i32 %call19.1, %add20
  %add.ptr14.2 = getelementptr i8, ptr %call7.i.i, i32 %add20.1
  %sub15.2 = sub i32 1100, %add20.1
  %arrayidx18.2 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 79, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx18.2, align 4
  %call19.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.2, i32 noundef %sub15.2, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.128, i32 noundef %12) #10
  %add20.2 = add i32 %call19.2, %add20.1
  %add.ptr14.3 = getelementptr i8, ptr %call7.i.i, i32 %add20.2
  %sub15.3 = sub i32 1100, %add20.2
  %arrayidx18.3 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 79, i32 1, i32 3
  %13 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx18.3, align 4
  %call19.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.3, i32 noundef %sub15.3, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.129, i32 noundef %14) #10
  %add20.3 = add i32 %call19.3, %add20.2
  %add.ptr14.4 = getelementptr i8, ptr %call7.i.i, i32 %add20.3
  %sub15.4 = sub i32 1100, %add20.3
  %arrayidx18.4 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 79, i32 1, i32 4
  %15 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx18.4, align 4
  %call19.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.4, i32 noundef %sub15.4, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.130, i32 noundef %16) #10
  %add20.4 = add i32 %call19.4, %add20.3
  %add.ptr14.5 = getelementptr i8, ptr %call7.i.i, i32 %add20.4
  %sub15.5 = sub i32 1100, %add20.4
  %arrayidx18.5 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 79, i32 1, i32 5
  %17 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18.5, align 4
  %call19.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.5, i32 noundef %sub15.5, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.131, i32 noundef %18) #10
  %add20.5 = add i32 %call19.5, %add20.4
  %add.ptr14.6 = getelementptr i8, ptr %call7.i.i, i32 %add20.5
  %sub15.6 = sub i32 1100, %add20.5
  %arrayidx18.6 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 79, i32 1, i32 6
  %19 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx18.6, align 4
  %call19.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.6, i32 noundef %sub15.6, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.132, i32 noundef %20) #10
  %add20.6 = add i32 %call19.6, %add20.5
  %add.ptr14.7 = getelementptr i8, ptr %call7.i.i, i32 %add20.6
  %sub15.7 = sub i32 1100, %add20.6
  %arrayidx18.7 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 79, i32 1, i32 7
  %21 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx18.7, align 4
  %call19.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.7, i32 noundef %sub15.7, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.133, i32 noundef %22) #10
  %add20.7 = add i32 %call19.7, %add20.6
  %add.ptr24 = getelementptr i8, ptr %call7.i.i, i32 %add20.7
  %sub25 = sub i32 1100, %add20.7
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.110) #10
  %add27 = add i32 %call26, %add20.7
  %add.ptr28 = getelementptr i8, ptr %call7.i.i, i32 %add27
  %sub29 = sub i32 1100, %add27
  %data_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 79, i32 2
  %23 = ptrtoint ptr %data_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_cnt, align 8
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.111, i32 noundef %24) #10
  %add32 = add i32 %call31, %add27
  %add.ptr33 = getelementptr i8, ptr %call7.i.i, i32 %add32
  %sub34 = sub i32 1100, %add32
  %data_bytes = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 79, i32 3
  %25 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %data_bytes, align 8
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.112, i64 noundef %26) #10
  %add37 = add i32 %call36, %add32
  %call38 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add37) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %il_get_ctrl_string.exit.7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %il_get_ctrl_string.exit.7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_tx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1100) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1100, ptr noundef nonnull @.str.107) #10
  %tx_stats = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 78
  br label %for.body

for.body:                                         ; preds = %il_get_mgmt_string.exit.for.body_crit_edge, %if.end
  %cnt.094 = phi i32 [ 0, %if.end ], [ %inc, %il_get_mgmt_string.exit.for.body_crit_edge ]
  %pos.093 = phi i32 [ %call1, %if.end ], [ %add6, %il_get_mgmt_string.exit.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %call7.i.i, i32 %pos.093
  %sub3 = sub i32 1100, %pos.093
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %cnt.094)
  %3 = icmp ult i32 %cnt.094, 12
  br i1 %3, label %switch.lookup, label %for.body.il_get_mgmt_string.exit_crit_edge

for.body.il_get_mgmt_string.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_mgmt_string.exit

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [12 x ptr], ptr @switch.table.il_dbgfs_tx_stats_read, i32 0, i32 %cnt.094
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %il_get_mgmt_string.exit

il_get_mgmt_string.exit:                          ; preds = %switch.lookup, %for.body.il_get_mgmt_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.125, %for.body.il_get_mgmt_string.exit_crit_edge ]
  %arrayidx = getelementptr [12 x i32], ptr %tx_stats, i32 0, i32 %cnt.094
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.108, ptr noundef nonnull %retval.0.i, i32 noundef %6) #10
  %add6 = add i32 %call5, %pos.093
  %inc = add nuw nsw i32 %cnt.094, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %il_get_ctrl_string.exit.7, label %il_get_mgmt_string.exit.for.body_crit_edge

il_get_mgmt_string.exit.for.body_crit_edge:       ; preds = %il_get_mgmt_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

il_get_ctrl_string.exit.7:                        ; preds = %il_get_mgmt_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr7 = getelementptr i8, ptr %call7.i.i, i32 %add6
  %sub8 = sub i32 1100, %add6
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.134) #10
  %add10 = add i32 %call9, %add6
  %add.ptr14 = getelementptr i8, ptr %call7.i.i, i32 %add10
  %sub15 = sub i32 1100, %add10
  %arrayidx18 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 78, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx18, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.126, i32 noundef %8) #10
  %add20 = add i32 %call19, %add10
  %add.ptr14.1 = getelementptr i8, ptr %call7.i.i, i32 %add20
  %sub15.1 = sub i32 1100, %add20
  %arrayidx18.1 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 78, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx18.1, align 4
  %call19.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.1, i32 noundef %sub15.1, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.127, i32 noundef %10) #10
  %add20.1 = add i32 %call19.1, %add20
  %add.ptr14.2 = getelementptr i8, ptr %call7.i.i, i32 %add20.1
  %sub15.2 = sub i32 1100, %add20.1
  %arrayidx18.2 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 78, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx18.2, align 4
  %call19.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.2, i32 noundef %sub15.2, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.128, i32 noundef %12) #10
  %add20.2 = add i32 %call19.2, %add20.1
  %add.ptr14.3 = getelementptr i8, ptr %call7.i.i, i32 %add20.2
  %sub15.3 = sub i32 1100, %add20.2
  %arrayidx18.3 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 78, i32 1, i32 3
  %13 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx18.3, align 4
  %call19.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.3, i32 noundef %sub15.3, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.129, i32 noundef %14) #10
  %add20.3 = add i32 %call19.3, %add20.2
  %add.ptr14.4 = getelementptr i8, ptr %call7.i.i, i32 %add20.3
  %sub15.4 = sub i32 1100, %add20.3
  %arrayidx18.4 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 78, i32 1, i32 4
  %15 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx18.4, align 4
  %call19.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.4, i32 noundef %sub15.4, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.130, i32 noundef %16) #10
  %add20.4 = add i32 %call19.4, %add20.3
  %add.ptr14.5 = getelementptr i8, ptr %call7.i.i, i32 %add20.4
  %sub15.5 = sub i32 1100, %add20.4
  %arrayidx18.5 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 78, i32 1, i32 5
  %17 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18.5, align 4
  %call19.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.5, i32 noundef %sub15.5, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.131, i32 noundef %18) #10
  %add20.5 = add i32 %call19.5, %add20.4
  %add.ptr14.6 = getelementptr i8, ptr %call7.i.i, i32 %add20.5
  %sub15.6 = sub i32 1100, %add20.5
  %arrayidx18.6 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 78, i32 1, i32 6
  %19 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx18.6, align 4
  %call19.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.6, i32 noundef %sub15.6, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.132, i32 noundef %20) #10
  %add20.6 = add i32 %call19.6, %add20.5
  %add.ptr14.7 = getelementptr i8, ptr %call7.i.i, i32 %add20.6
  %sub15.7 = sub i32 1100, %add20.6
  %arrayidx18.7 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 78, i32 1, i32 7
  %21 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx18.7, align 4
  %call19.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.7, i32 noundef %sub15.7, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.133, i32 noundef %22) #10
  %add20.7 = add i32 %call19.7, %add20.6
  %add.ptr24 = getelementptr i8, ptr %call7.i.i, i32 %add20.7
  %sub25 = sub i32 1100, %add20.7
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.110) #10
  %add27 = add i32 %call26, %add20.7
  %add.ptr28 = getelementptr i8, ptr %call7.i.i, i32 %add27
  %sub29 = sub i32 1100, %add27
  %data_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 78, i32 2
  %23 = ptrtoint ptr %data_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_cnt, align 8
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.111, i32 noundef %24) #10
  %add32 = add i32 %call31, %add27
  %add.ptr33 = getelementptr i8, ptr %call7.i.i, i32 %add32
  %sub34 = sub i32 1100, %add32
  %data_bytes = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 78, i32 3
  %25 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %data_bytes, align 8
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.112, i64 noundef %26) #10
  %add37 = add i32 %call36, %add32
  %call38 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add37) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %il_get_ctrl_string.exit.7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %il_get_ctrl_string.exit.7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_rx_queue_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %read = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 71, i32 4
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef nonnull @.str.135, i32 noundef %4) #10
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call
  %sub4 = sub i32 256, %call
  %write = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 71, i32 5
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write, align 4
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.136, i32 noundef %6) #10
  %add6 = add i32 %call5, %call
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %add6
  %sub9 = sub i32 256, %add6
  %free_count = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 71, i32 6
  %7 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free_count, align 4
  %call10 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.137, i32 noundef %8) #10
  %add11 = add i32 %call10, %add6
  %rb_stts = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 71, i32 11
  %9 = ptrtoint ptr %rb_stts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rb_stts, align 4
  %tobool.not = icmp eq ptr %10, null
  %add.ptr19 = getelementptr i8, ptr %buf, i32 %add11
  %sub20 = sub i32 256, %add11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %10, align 1
  %13 = and i16 %12, -241
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %and = zext i16 %14 to i32
  %call16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.138, i32 noundef %and) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.139) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call16.pn = phi i32 [ %call16, %if.then ], [ %call21, %if.else ]
  %pos.0 = add i32 %call16.pn, %add11
  %call24 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %pos.0) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #10
  ret i32 %call24
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_tx_queue_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cfg = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %num_of_queues = getelementptr inbounds %struct.il_cfg, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_of_queues, align 4
  %mul = shl i32 %5, 6
  %txq1 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 72
  %6 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txq1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.140) #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #14
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end8.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i
  %max_txq_num = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 97, i32 1
  %10 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_txq_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp65.not = icmp eq i8 %11, 0
  br i1 %cmp65.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_stopped = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 87
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cnt.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pos.066 = phi i32 [ 0, %for.body.lr.ph ], [ %pos.1, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %txq1, align 4
  %arrayidx = getelementptr %struct.il_tx_queue, ptr %13, i32 %cnt.067
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %pos.066
  %sub = sub i32 %mul, %pos.066
  %read_ptr = getelementptr inbounds %struct.il_queue, ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %read_ptr, align 4
  %write_ptr = getelementptr inbounds %struct.il_queue, ptr %arrayidx, i32 0, i32 1
  %16 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %write_ptr, align 4
  %div3.i = lshr i32 %cnt.067, 5
  %arrayidx.i = getelementptr i32, ptr %queue_stopped, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %cnt.067, 31
  %20 = lshr i32 %19, %and.i
  %21 = and i32 %20, 1
  %swq_id = getelementptr %struct.il_tx_queue, ptr %13, i32 %cnt.067, i32 9
  %22 = ptrtoint ptr %swq_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %swq_id, align 1
  %conv11 = zext i8 %23 to i32
  %and = and i32 %conv11, 3
  %24 = lshr i32 %conv11, 2
  %and16 = and i32 %24, 31
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.142, i32 noundef %cnt.067, i32 noundef %15, i32 noundef %17, i32 noundef %21, i32 noundef %conv11, i32 noundef %and, i32 noundef %and16) #10
  %add = add i32 %call17, %pos.066
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cnt.067)
  %cmp18 = icmp ugt i32 %cnt.067, 3
  br i1 %cmp18, label %for.body.for.inc_crit_edge, label %if.end21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr22 = getelementptr i8, ptr %call9.i.i, i32 %add
  %sub23 = sub i32 %mul, %add
  %arrayidx24 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 89, i32 %cnt.067
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx24, i32 noundef 4) #10
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx24, align 4
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.143, i32 noundef %26) #10
  %add27 = add i32 %call26, %add
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %for.body.for.inc_crit_edge
  %pos.1 = phi i32 [ %add, %for.body.for.inc_crit_edge ], [ %add27, %if.end21 ]
  %inc = add nuw nsw i32 %cnt.067, 1
  %27 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_txq_num, align 1
  %conv = zext i8 %28 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %pos.1, %for.inc.for.end_crit_edge ]
  %call28 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i.i, i32 noundef %pos.0.lcssa) #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call28, %for.end ], [ -11, %do.end ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_power_save_status_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf) #10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 60)
  %hw_base.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 35
  %3 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !464
  %6 = shl i32 %5, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !465
  %and = and i32 %6, 50331648
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 60, ptr noundef nonnull @.str.144) #10
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %and, label %cond.false7 [
    i32 0, label %entry.cond.end10_crit_edge
    i32 16777216, label %cond.end10.fold.split
  ]

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end10

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and)
  %cmp8 = icmp eq i32 %and, 33554432
  %cond = select i1 %cmp8, ptr @.str.148, ptr @.str.149
  br label %cond.end10

cond.end10.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end10

cond.end10:                                       ; preds = %cond.end10.fold.split, %cond.false7, %entry.cond.end10_crit_edge
  %cond11 = phi ptr [ @.str.146, %entry.cond.end10_crit_edge ], [ %cond, %cond.false7 ], [ @.str.147, %cond.end10.fold.split ]
  %sub4 = sub i32 60, %call1
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call1
  %call12 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.145, ptr noundef nonnull %cond11) #10
  %add13 = add i32 %call12, %call1
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add13) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf) #10
  ret i32 %call15
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_clear_ucode_stats_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %clear = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clear) #10
  %2 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clear, align 4, !annotation !458
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #15, !srcloc !459
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !460

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #10
  %6 = call i32 @llvm.read_register.i32(metadata !447) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !461
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !460

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.104, ptr noundef nonnull %clear)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 33
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call7 = call i32 @il_send_stats_request(ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext true) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end6 ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clear) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_stats_request(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_clear_traffic_stats_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %clear_flag = alloca i32, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clear_flag) #10
  %2 = ptrtoint ptr %clear_flag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clear_flag, align 4, !annotation !458
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #15, !srcloc !459
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !460

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #10
  %6 = call i32 @llvm.read_register.i32(metadata !447) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !461
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !460

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.98, ptr noundef nonnull %clear_flag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tx_stats.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 78
  %10 = call ptr @memset(ptr %tx_stats.i, i32 0, i32 192)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end6 ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clear_flag) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_fh_reg_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !458
  %ops = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 8
  %dump_fh = getelementptr inbounds %struct.il_ops, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %dump_fh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dump_fh, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = call i32 %6(ptr noundef %1, ptr noundef nonnull %buf, i1 noundef zeroext true) #10
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %if.then4

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %8, i32 noundef %call) #10
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %10) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then4 ], [ %call, %if.then.if.end6_crit_edge ], [ -14, %entry.if.end6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_missed_beacon_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #10
  %missed_beacon_threshold = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 15
  %2 = call ptr @memset(ptr %buf, i32 255, i32 12)
  %3 = ptrtoint ptr %missed_beacon_threshold to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %missed_beacon_threshold, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 12, ptr noundef nonnull @.str.150, i32 noundef %4) #10
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_missed_beacon_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %missed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %missed) #10
  %2 = ptrtoint ptr %missed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %missed, align 4, !annotation !458
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #15, !srcloc !459
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !460

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #10
  %6 = call i32 @llvm.read_register.i32(metadata !447) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !461
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !460

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.104, ptr noundef nonnull %missed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %missed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %missed, align 4
  %12 = add i32 %11, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %12)
  %13 = icmp ult i32 %12, -5
  %missed_beacon_threshold = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 15
  br i1 %13, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %missed_beacon_threshold to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %missed_beacon_threshold, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %missed_beacon_threshold to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %missed_beacon_threshold, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then9 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %missed) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_force_reset_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [300 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %buf) #10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 300)
  %force_reset1 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %force_reset1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %force_reset1, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 300, ptr noundef nonnull @.str.151, i32 noundef %4) #10
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call
  %sub4 = sub i32 300, %call
  %reset_success_count = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 17, i32 1
  %5 = ptrtoint ptr %reset_success_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reset_success_count, align 4
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.152, i32 noundef %6) #10
  %add6 = add i32 %call5, %call
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %add6
  %sub9 = sub i32 300, %add6
  %reset_reject_count = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 17, i32 2
  %7 = ptrtoint ptr %reset_reject_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset_reject_count, align 4
  %call10 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.153, i32 noundef %8) #10
  %add11 = add i32 %call10, %add6
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %add11
  %sub14 = sub i32 300, %add11
  %reset_duration = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 17, i32 3
  %9 = ptrtoint ptr %reset_duration to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_duration, align 4
  %call15 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.154, i32 noundef %10) #10
  %add16 = add i32 %call15, %add11
  %call18 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add16) #10
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %buf) #10
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_force_reset_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @il_force_reset(ptr noundef %1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_force_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_ucode_rx_stats_read(ptr noundef %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debugfs_ops = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %debugfs_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_ucode_tx_stats_read(ptr noundef %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debugfs_ops = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %debugfs_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_ops, align 4
  %tx_stats_read = getelementptr inbounds %struct.il_debugfs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tx_stats_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_stats_read, align 4
  %call = tail call i32 %5(ptr noundef %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_ucode_general_stats_read(ptr noundef %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debugfs_ops = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %debugfs_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_ops, align 4
  %general_stats_read = getelementptr inbounds %struct.il_debugfs_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %general_stats_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %general_stats_read, align 4
  %call = tail call i32 %5(ptr noundef %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_sensitivity_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 676) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensitivity_data = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64
  %5 = ptrtoint ptr %sensitivity_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sensitivity_data, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 676, ptr noundef nonnull @.str.156, i32 noundef %6) #10
  %add.ptr2 = getelementptr i8, ptr %call7.i.i, i32 %call1
  %sub3 = sub i32 676, %call1
  %auto_corr_ofdm_mrc = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 1
  %7 = ptrtoint ptr %auto_corr_ofdm_mrc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %auto_corr_ofdm_mrc, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.157, i32 noundef %8) #10
  %add5 = add i32 %call4, %call1
  %add.ptr6 = getelementptr i8, ptr %call7.i.i, i32 %add5
  %sub7 = sub i32 676, %add5
  %auto_corr_ofdm_x1 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 2
  %9 = ptrtoint ptr %auto_corr_ofdm_x1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %auto_corr_ofdm_x1, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.158, i32 noundef %10) #10
  %add9 = add i32 %call8, %add5
  %add.ptr10 = getelementptr i8, ptr %call7.i.i, i32 %add9
  %sub11 = sub i32 676, %add9
  %auto_corr_ofdm_mrc_x1 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 3
  %11 = ptrtoint ptr %auto_corr_ofdm_mrc_x1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %auto_corr_ofdm_mrc_x1, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.159, i32 noundef %12) #10
  %add13 = add i32 %call12, %add9
  %add.ptr14 = getelementptr i8, ptr %call7.i.i, i32 %add13
  %sub15 = sub i32 676, %add13
  %auto_corr_cck = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 4
  %13 = ptrtoint ptr %auto_corr_cck to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %auto_corr_cck, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.160, i32 noundef %14) #10
  %add17 = add i32 %call16, %add13
  %add.ptr18 = getelementptr i8, ptr %call7.i.i, i32 %add17
  %sub19 = sub i32 676, %add17
  %auto_corr_cck_mrc = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 5
  %15 = ptrtoint ptr %auto_corr_cck_mrc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %auto_corr_cck_mrc, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.161, i32 noundef %16) #10
  %add21 = add i32 %call20, %add17
  %add.ptr22 = getelementptr i8, ptr %call7.i.i, i32 %add21
  %sub23 = sub i32 676, %add21
  %last_bad_plcp_cnt_ofdm = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 6
  %17 = ptrtoint ptr %last_bad_plcp_cnt_ofdm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_bad_plcp_cnt_ofdm, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.162, i32 noundef %18) #10
  %add25 = add i32 %call24, %add21
  %add.ptr26 = getelementptr i8, ptr %call7.i.i, i32 %add25
  %sub27 = sub i32 676, %add25
  %last_fa_cnt_ofdm = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 7
  %19 = ptrtoint ptr %last_fa_cnt_ofdm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_fa_cnt_ofdm, align 4
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.163, i32 noundef %20) #10
  %add29 = add i32 %call28, %add25
  %add.ptr30 = getelementptr i8, ptr %call7.i.i, i32 %add29
  %sub31 = sub i32 676, %add29
  %last_bad_plcp_cnt_cck = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 8
  %21 = ptrtoint ptr %last_bad_plcp_cnt_cck to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_bad_plcp_cnt_cck, align 4
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.164, i32 noundef %22) #10
  %add33 = add i32 %call32, %add29
  %add.ptr34 = getelementptr i8, ptr %call7.i.i, i32 %add33
  %sub35 = sub i32 676, %add33
  %last_fa_cnt_cck = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 9
  %23 = ptrtoint ptr %last_fa_cnt_cck to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_fa_cnt_cck, align 4
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.165, i32 noundef %24) #10
  %add37 = add i32 %call36, %add33
  %add.ptr38 = getelementptr i8, ptr %call7.i.i, i32 %add37
  %sub39 = sub i32 676, %add37
  %nrg_curr_state = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 10
  %25 = ptrtoint ptr %nrg_curr_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nrg_curr_state, align 4
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.166, i32 noundef %26) #10
  %add41 = add i32 %call40, %add37
  %add.ptr42 = getelementptr i8, ptr %call7.i.i, i32 %add41
  %sub43 = sub i32 676, %add41
  %nrg_prev_state = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 11
  %27 = ptrtoint ptr %nrg_prev_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nrg_prev_state, align 4
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.167, i32 noundef %28) #10
  %add45 = add i32 %call44, %add41
  %add.ptr46 = getelementptr i8, ptr %call7.i.i, i32 %add45
  %sub47 = sub i32 676, %add45
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.168) #10
  %add49 = add i32 %add45, %call48
  %add.ptr50 = getelementptr i8, ptr %call7.i.i, i32 %add49
  %sub51 = sub i32 676, %add49
  %arrayidx = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 0
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.169, i32 noundef %30) #10
  %add53 = add i32 %call52, %add49
  %add.ptr50.1 = getelementptr i8, ptr %call7.i.i, i32 %add53
  %sub51.1 = sub i32 676, %add53
  %arrayidx.1 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 1
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1, align 4
  %call52.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.1, i32 noundef %sub51.1, ptr noundef nonnull @.str.169, i32 noundef %32) #10
  %add53.1 = add i32 %call52.1, %add53
  %add.ptr50.2 = getelementptr i8, ptr %call7.i.i, i32 %add53.1
  %sub51.2 = sub i32 676, %add53.1
  %arrayidx.2 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 2
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.2, align 4
  %call52.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.2, i32 noundef %sub51.2, ptr noundef nonnull @.str.169, i32 noundef %34) #10
  %add53.2 = add i32 %call52.2, %add53.1
  %add.ptr50.3 = getelementptr i8, ptr %call7.i.i, i32 %add53.2
  %sub51.3 = sub i32 676, %add53.2
  %arrayidx.3 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.3, align 4
  %call52.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.3, i32 noundef %sub51.3, ptr noundef nonnull @.str.169, i32 noundef %36) #10
  %add53.3 = add i32 %call52.3, %add53.2
  %add.ptr50.4 = getelementptr i8, ptr %call7.i.i, i32 %add53.3
  %sub51.4 = sub i32 676, %add53.3
  %arrayidx.4 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 4
  %37 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.4, align 4
  %call52.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.4, i32 noundef %sub51.4, ptr noundef nonnull @.str.169, i32 noundef %38) #10
  %add53.4 = add i32 %call52.4, %add53.3
  %add.ptr50.5 = getelementptr i8, ptr %call7.i.i, i32 %add53.4
  %sub51.5 = sub i32 676, %add53.4
  %arrayidx.5 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 5
  %39 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.5, align 4
  %call52.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.5, i32 noundef %sub51.5, ptr noundef nonnull @.str.169, i32 noundef %40) #10
  %add53.5 = add i32 %call52.5, %add53.4
  %add.ptr50.6 = getelementptr i8, ptr %call7.i.i, i32 %add53.5
  %sub51.6 = sub i32 676, %add53.5
  %arrayidx.6 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 6
  %41 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.6, align 4
  %call52.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.6, i32 noundef %sub51.6, ptr noundef nonnull @.str.169, i32 noundef %42) #10
  %add53.6 = add i32 %call52.6, %add53.5
  %add.ptr50.7 = getelementptr i8, ptr %call7.i.i, i32 %add53.6
  %sub51.7 = sub i32 676, %add53.6
  %arrayidx.7 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 7
  %43 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.7, align 4
  %call52.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.7, i32 noundef %sub51.7, ptr noundef nonnull @.str.169, i32 noundef %44) #10
  %add53.7 = add i32 %call52.7, %add53.6
  %add.ptr50.8 = getelementptr i8, ptr %call7.i.i, i32 %add53.7
  %sub51.8 = sub i32 676, %add53.7
  %arrayidx.8 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 8
  %45 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.8, align 4
  %call52.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.8, i32 noundef %sub51.8, ptr noundef nonnull @.str.169, i32 noundef %46) #10
  %add53.8 = add i32 %call52.8, %add53.7
  %add.ptr50.9 = getelementptr i8, ptr %call7.i.i, i32 %add53.8
  %sub51.9 = sub i32 676, %add53.8
  %arrayidx.9 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 12, i32 9
  %47 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.9, align 4
  %call52.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.9, i32 noundef %sub51.9, ptr noundef nonnull @.str.169, i32 noundef %48) #10
  %add53.9 = add i32 %call52.9, %add53.8
  %add.ptr54 = getelementptr i8, ptr %call7.i.i, i32 %add53.9
  %sub55 = sub i32 676, %add53.9
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54, i32 noundef %sub55, ptr noundef nonnull @.str.47) #10
  %add57 = add i32 %call56, %add53.9
  %add.ptr58 = getelementptr i8, ptr %call7.i.i, i32 %add57
  %sub59 = sub i32 676, %add57
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.170) #10
  %add61 = add i32 %add57, %call60
  br label %for.body64

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %if.end
  %cnt.1268 = phi i32 [ 0, %if.end ], [ %inc71, %for.body64.for.body64_crit_edge ]
  %pos.1267 = phi i32 [ %add61, %if.end ], [ %add69, %for.body64.for.body64_crit_edge ]
  %add.ptr65 = getelementptr i8, ptr %call7.i.i, i32 %pos.1267
  %sub66 = sub i32 676, %pos.1267
  %arrayidx67 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 64, i32 13, i32 %cnt.1268
  %49 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx67, align 1
  %conv = zext i8 %50 to i32
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.169, i32 noundef %conv) #10
  %add69 = add i32 %call68, %pos.1267
  %inc71 = add nuw nsw i32 %cnt.1268, 1
  %exitcond.not = icmp eq i32 %inc71, 20
  br i1 %exitcond.not, label %for.end72, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body64

for.end72:                                        ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr73 = getelementptr i8, ptr %call7.i.i, i32 %add69
  %sub74 = sub i32 676, %add69
  %call75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr73, i32 noundef %sub74, ptr noundef nonnull @.str.47) #10
  %add76 = add i32 %call75, %add69
  %add.ptr77 = getelementptr i8, ptr %call7.i.i, i32 %add76
  %sub78 = sub i32 676, %add76
  %nrg_silence_ref = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 14
  %51 = ptrtoint ptr %nrg_silence_ref to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nrg_silence_ref, align 4
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.171, i32 noundef %52) #10
  %add80 = add i32 %call79, %add76
  %add.ptr81 = getelementptr i8, ptr %call7.i.i, i32 %add80
  %sub82 = sub i32 676, %add80
  %nrg_energy_idx = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 15
  %53 = ptrtoint ptr %nrg_energy_idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nrg_energy_idx, align 4
  %call83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr81, i32 noundef %sub82, ptr noundef nonnull @.str.172, i32 noundef %54) #10
  %add84 = add i32 %call83, %add80
  %add.ptr85 = getelementptr i8, ptr %call7.i.i, i32 %add84
  %sub86 = sub i32 676, %add84
  %nrg_silence_idx = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 16
  %55 = ptrtoint ptr %nrg_silence_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nrg_silence_idx, align 4
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i32 noundef %sub86, ptr noundef nonnull @.str.173, i32 noundef %56) #10
  %add88 = add i32 %call87, %add84
  %add.ptr89 = getelementptr i8, ptr %call7.i.i, i32 %add88
  %sub90 = sub i32 676, %add88
  %nrg_th_cck = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 17
  %57 = ptrtoint ptr %nrg_th_cck to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nrg_th_cck, align 4
  %call91 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.174, i32 noundef %58) #10
  %add92 = add i32 %call91, %add88
  %add.ptr93 = getelementptr i8, ptr %call7.i.i, i32 %add92
  %sub94 = sub i32 676, %add92
  %nrg_auto_corr_silence_diff = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 18
  %59 = ptrtoint ptr %nrg_auto_corr_silence_diff to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nrg_auto_corr_silence_diff, align 4
  %call95 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr93, i32 noundef %sub94, ptr noundef nonnull @.str.175, i32 noundef %60) #10
  %add96 = add i32 %call95, %add92
  %add.ptr97 = getelementptr i8, ptr %call7.i.i, i32 %add96
  %sub98 = sub i32 676, %add96
  %num_in_cck_no_fa = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 19
  %61 = ptrtoint ptr %num_in_cck_no_fa to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_in_cck_no_fa, align 4
  %call99 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr97, i32 noundef %sub98, ptr noundef nonnull @.str.176, i32 noundef %62) #10
  %add100 = add i32 %call99, %add96
  %add.ptr101 = getelementptr i8, ptr %call7.i.i, i32 %add100
  %sub102 = sub i32 676, %add100
  %nrg_th_ofdm = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 64, i32 20
  %63 = ptrtoint ptr %nrg_th_ofdm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nrg_th_ofdm, align 4
  %call103 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr101, i32 noundef %sub102, ptr noundef nonnull @.str.177, i32 noundef %64) #10
  %add104 = add i32 %call103, %add100
  %call105 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add104) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %do.end
  %retval.0 = phi i32 [ %call105, %for.end72 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_chain_noise_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 260) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %chain_noise_data = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65
  %5 = ptrtoint ptr %chain_noise_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chain_noise_data, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 260, ptr noundef nonnull @.str.179, i32 noundef %6) #10
  %add.ptr2 = getelementptr i8, ptr %call7.i.i, i32 %call1
  %sub3 = sub i32 260, %call1
  %chain_noise_a = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65, i32 1
  %7 = ptrtoint ptr %chain_noise_a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chain_noise_a, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.180, i32 noundef %8) #10
  %add5 = add i32 %call4, %call1
  %add.ptr6 = getelementptr i8, ptr %call7.i.i, i32 %add5
  %sub7 = sub i32 260, %add5
  %chain_noise_b = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65, i32 2
  %9 = ptrtoint ptr %chain_noise_b to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chain_noise_b, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.181, i32 noundef %10) #10
  %add9 = add i32 %call8, %add5
  %add.ptr10 = getelementptr i8, ptr %call7.i.i, i32 %add9
  %sub11 = sub i32 260, %add9
  %chain_noise_c = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65, i32 3
  %11 = ptrtoint ptr %chain_noise_c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chain_noise_c, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.182, i32 noundef %12) #10
  %add13 = add i32 %call12, %add9
  %add.ptr14 = getelementptr i8, ptr %call7.i.i, i32 %add13
  %sub15 = sub i32 260, %add13
  %chain_signal_a = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65, i32 4
  %13 = ptrtoint ptr %chain_signal_a to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chain_signal_a, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.183, i32 noundef %14) #10
  %add17 = add i32 %call16, %add13
  %add.ptr18 = getelementptr i8, ptr %call7.i.i, i32 %add17
  %sub19 = sub i32 260, %add17
  %chain_signal_b = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65, i32 5
  %15 = ptrtoint ptr %chain_signal_b to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chain_signal_b, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.184, i32 noundef %16) #10
  %add21 = add i32 %call20, %add17
  %add.ptr22 = getelementptr i8, ptr %call7.i.i, i32 %add21
  %sub23 = sub i32 260, %add21
  %chain_signal_c = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65, i32 6
  %17 = ptrtoint ptr %chain_signal_c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chain_signal_c, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.185, i32 noundef %18) #10
  %add25 = add i32 %call24, %add21
  %add.ptr26 = getelementptr i8, ptr %call7.i.i, i32 %add25
  %sub27 = sub i32 260, %add25
  %beacon_count = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65, i32 7
  %19 = ptrtoint ptr %beacon_count to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %beacon_count, align 4
  %conv = zext i16 %20 to i32
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.186, i32 noundef %conv) #10
  %add29 = add i32 %call28, %add25
  %add.ptr30 = getelementptr i8, ptr %call7.i.i, i32 %add29
  %sub31 = sub i32 260, %add29
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.187) #10
  %add33 = add i32 %add29, %call32
  %add.ptr35 = getelementptr i8, ptr %call7.i.i, i32 %add33
  %sub36 = sub i32 260, %add33
  %arrayidx = getelementptr %struct.il_priv, ptr %1, i32 0, i32 65, i32 8, i32 0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv37 = zext i8 %22 to i32
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.169, i32 noundef %conv37) #10
  %add39 = add i32 %call38, %add33
  %add.ptr35.1 = getelementptr i8, ptr %call7.i.i, i32 %add39
  %sub36.1 = sub i32 260, %add39
  %arrayidx.1 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 65, i32 8, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.1, align 1
  %conv37.1 = zext i8 %24 to i32
  %call38.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35.1, i32 noundef %sub36.1, ptr noundef nonnull @.str.169, i32 noundef %conv37.1) #10
  %add39.1 = add i32 %call38.1, %add39
  %add.ptr35.2 = getelementptr i8, ptr %call7.i.i, i32 %add39.1
  %sub36.2 = sub i32 260, %add39.1
  %arrayidx.2 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 65, i32 8, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2, align 1
  %conv37.2 = zext i8 %26 to i32
  %call38.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35.2, i32 noundef %sub36.2, ptr noundef nonnull @.str.169, i32 noundef %conv37.2) #10
  %add39.2 = add i32 %call38.2, %add39.1
  %add.ptr40 = getelementptr i8, ptr %call7.i.i, i32 %add39.2
  %sub41 = sub i32 260, %add39.2
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.47) #10
  %add43 = add i32 %call42, %add39.2
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 %add43
  %sub45 = sub i32 260, %add43
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.188) #10
  %add47 = add i32 %add43, %call46
  %add.ptr52 = getelementptr i8, ptr %call7.i.i, i32 %add47
  %sub53 = sub i32 260, %add47
  %arrayidx54 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 65, i32 9, i32 0
  %27 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %28 to i32
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.169, i32 noundef %conv55) #10
  %add57 = add i32 %call56, %add47
  %add.ptr52.1 = getelementptr i8, ptr %call7.i.i, i32 %add57
  %sub53.1 = sub i32 260, %add57
  %arrayidx54.1 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 65, i32 9, i32 1
  %29 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx54.1, align 1
  %conv55.1 = zext i8 %30 to i32
  %call56.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52.1, i32 noundef %sub53.1, ptr noundef nonnull @.str.169, i32 noundef %conv55.1) #10
  %add57.1 = add i32 %call56.1, %add57
  %add.ptr52.2 = getelementptr i8, ptr %call7.i.i, i32 %add57.1
  %sub53.2 = sub i32 260, %add57.1
  %arrayidx54.2 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 65, i32 9, i32 2
  %31 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx54.2, align 1
  %conv55.2 = zext i8 %32 to i32
  %call56.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52.2, i32 noundef %sub53.2, ptr noundef nonnull @.str.169, i32 noundef %conv55.2) #10
  %add57.2 = add i32 %call56.2, %add57.1
  %add.ptr61 = getelementptr i8, ptr %call7.i.i, i32 %add57.2
  %sub62 = sub i32 260, %add57.2
  %call63 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61, i32 noundef %sub62, ptr noundef nonnull @.str.47) #10
  %add64 = add i32 %call63, %add57.2
  %add.ptr65 = getelementptr i8, ptr %call7.i.i, i32 %add64
  %sub66 = sub i32 260, %add64
  %radio_write = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65, i32 10
  %33 = ptrtoint ptr %radio_write to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %radio_write, align 4
  %conv67 = zext i8 %34 to i32
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.189, i32 noundef %conv67) #10
  %add69 = add i32 %call68, %add64
  %add.ptr70 = getelementptr i8, ptr %call7.i.i, i32 %add69
  %sub71 = sub i32 260, %add69
  %state = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 65, i32 11
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %state, align 1
  %conv72 = zext i8 %36 to i32
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr70, i32 noundef %sub71, ptr noundef nonnull @.str.190, i32 noundef %conv72) #10
  %add74 = add i32 %call73, %add69
  %call75 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add74) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call75, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_rxon_flags_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #10
  %flags = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 56, i32 12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %flags, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.191, i32 noundef %5)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #10
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_rxon_filter_flags_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #10
  %filter_flags = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 56, i32 13
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %filter_flags, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.191, i32 noundef %5)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il_dbgfs_wd_timeout_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout) #10
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %timeout, align 4, !annotation !458
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #15, !srcloc !459
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !460

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #10
  %6 = call i32 @llvm.read_register.i32(metadata !447) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !461
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !462
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !460

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.104, ptr noundef nonnull %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000, i32 %11)
  %12 = icmp ugt i32 %11, 120000
  br i1 %12, label %if.then9, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2000, ptr %timeout, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout, align 4
  %cfg = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg, align 4
  %wd_timeout = getelementptr inbounds %struct.il_cfg, ptr %17, i32 0, i32 21
  %18 = ptrtoint ptr %wd_timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %wd_timeout, align 4
  call void @il_setup_watchdog(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_setup_watchdog(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 223)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 223)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !234, !235, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !313, !314, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !364, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !414, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445}
!llvm.named.register.sp = !{!447}
!llvm.module.flags = !{!448, !449, !450, !451, !452, !453, !454, !455}
!llvm.ident = !{!456}

!0 = !{ptr @__ksymtab_il_update_stats, !1, !"__ksymtab_il_update_stats", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 109, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1324, i32 32}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1325, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1326, i32 33}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1328, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1329, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1330, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1331, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1332, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1333, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1334, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1335, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1336, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1337, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1338, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1339, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1340, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1341, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1342, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1343, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1344, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1345, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1346, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1347, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1348, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1351, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1353, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1354, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1355, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1356, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1358, i32 3}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1361, i32 3}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1363, i32 2}
!66 = !{ptr @__ksymtab_il_dbgfs_register, !67, !"__ksymtab_il_dbgfs_register", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1365, i32 1}
!68 = !{ptr @__ksymtab_il_dbgfs_unregister, !69, !"__ksymtab_il_dbgfs_unregister", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1379, i32 1}
!70 = !{ptr @il_dbgfs_nvm_ops, !71, !"il_dbgfs_nvm_ops", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 803, i32 1}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 466, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @il_dbgfs_nvm_read._entry, !73, !"_entry", i1 false, i1 false}
!79 = !{ptr @il_dbgfs_nvm_read._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 472, i32 3}
!82 = !{ptr @il_dbgfs_nvm_read._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @il_dbgfs_nvm_read._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 479, i32 3}
!86 = !{ptr @il_dbgfs_nvm_read._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @il_dbgfs_nvm_read._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 484, i32 43}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 487, i32 47}
!92 = !{ptr @il_dbgfs_sram_ops, !93, !"il_dbgfs_sram_ops", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 802, i32 1}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 329, i32 40}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 332, i32 40}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 353, i32 45}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 354, i32 44}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 377, i32 18}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!106 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!111 = !{ptr @il_dbgfs_stations_ops, !112, !"il_dbgfs_stations_ops", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 804, i32 1}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 406, i32 40}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 415, i32 10}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 420, i32 10}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 423, i32 10}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 428, i32 11}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 440, i32 12}
!125 = !{ptr @il_dbgfs_channels_ops, !126, !"il_dbgfs_channels_ops", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 805, i32 1}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 512, i32 3}
!129 = !{ptr @il_dbgfs_channels_read._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @il_dbgfs_channels_read._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 522, i32 10}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 528, i32 11}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 533, i32 11}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 533, i32 40}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 538, i32 11}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 541, i32 11}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 541, i32 28}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 549, i32 10}
!147 = !{ptr @il_dbgfs_status_ops, !148, !"il_dbgfs_status_ops", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 806, i32 1}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 586, i32 40}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 589, i32 40}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 592, i32 40}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 595, i32 40}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 598, i32 40}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 601, i32 40}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 604, i32 40}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 607, i32 40}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 610, i32 40}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 613, i32 40}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 616, i32 40}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 619, i32 40}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 622, i32 40}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 625, i32 40}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 628, i32 40}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 631, i32 40}
!181 = !{ptr @il_dbgfs_interrupt_ops, !182, !"il_dbgfs_interrupt_ops", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 807, i32 1}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 650, i32 3}
!185 = !{ptr @il_dbgfs_interrupt_read._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @il_dbgfs_interrupt_read._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 655, i32 40}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 658, i32 40}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 661, i32 40}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 666, i32 10}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 671, i32 40}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 674, i32 40}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 679, i32 9}
!201 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 683, i32 40}
!203 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 687, i32 40}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 691, i32 40}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 697, i32 11}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 703, i32 40}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 707, i32 40}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 728, i32 18}
!215 = !{ptr @il_dbgfs_qos_ops, !216, !"il_dbgfs_qos_ops", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 808, i32 1}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 748, i32 10}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 751, i32 10}
!221 = !{ptr @il_dbgfs_disable_ht40_ops, !222, !"il_dbgfs_disable_ht40_ops", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 809, i32 1}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 797, i32 40}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 798, i32 28}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 798, i32 41}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 774, i32 18}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 779, i32 3}
!233 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @il_dbgfs_disable_ht40_write._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @il_dbgfs_disable_ht40_write._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @il_dbgfs_rx_stats_ops, !237, !"il_dbgfs_rx_stats_ops", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1292, i32 1}
!238 = !{ptr @.str.107, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 276, i32 43}
!240 = !{ptr @.str.108, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 279, i32 41}
!242 = !{ptr @.str.109, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 282, i32 43}
!244 = !{ptr @.str.110, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 288, i32 43}
!246 = !{ptr @.str.111, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 290, i32 40}
!248 = !{ptr @.str.112, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 293, i32 40}
!250 = !{ptr @.str.113, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 163, i32 2}
!252 = !{ptr @.str.114, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 164, i32 2}
!254 = !{ptr @.str.115, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 165, i32 2}
!256 = !{ptr @.str.116, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 166, i32 2}
!258 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 167, i32 2}
!260 = !{ptr @.str.118, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 168, i32 2}
!262 = !{ptr @.str.119, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 169, i32 2}
!264 = !{ptr @.str.120, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 170, i32 2}
!266 = !{ptr @.str.121, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 171, i32 2}
!268 = !{ptr @.str.122, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 172, i32 2}
!270 = !{ptr @.str.123, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 173, i32 2}
!272 = !{ptr @.str.124, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 174, i32 2}
!274 = !{ptr @.str.125, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 176, i32 10}
!276 = !{ptr @.str.126, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 185, i32 2}
!278 = !{ptr @.str.127, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 186, i32 2}
!280 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 187, i32 2}
!282 = !{ptr @.str.129, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 188, i32 2}
!284 = !{ptr @.str.130, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 189, i32 2}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 190, i32 2}
!288 = !{ptr @.str.132, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 191, i32 2}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 192, i32 2}
!292 = !{ptr @il_dbgfs_tx_stats_ops, !293, !"il_dbgfs_tx_stats_ops", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1293, i32 1}
!294 = !{ptr @.str.134, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 221, i32 43}
!296 = !{ptr @il_dbgfs_rx_queue_ops, !297, !"il_dbgfs_rx_queue_ops", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1294, i32 1}
!298 = !{ptr @.str.135, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 869, i32 43}
!300 = !{ptr @.str.136, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 870, i32 43}
!302 = !{ptr @.str.137, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 872, i32 40}
!304 = !{ptr @.str.138, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 876, i32 41}
!306 = !{ptr @.str.139, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 882, i32 10}
!308 = !{ptr @il_dbgfs_tx_queue_ops, !309, !"il_dbgfs_tx_queue_ops", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1295, i32 1}
!310 = !{ptr @.str.140, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 827, i32 3}
!312 = !{ptr @.str.141, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @il_dbgfs_tx_queue_read._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @il_dbgfs_tx_queue_read._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.142, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 839, i32 10}
!317 = !{ptr @.str.143, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 850, i32 10}
!319 = !{ptr @il_dbgfs_power_save_status_ops, !320, !"il_dbgfs_power_save_status_ops", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1301, i32 1}
!321 = !{ptr @.str.144, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1097, i32 43}
!323 = !{ptr @.str.145, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1099, i32 40}
!325 = !{ptr @.str.146, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1100, i32 56}
!327 = !{ptr @.str.147, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1101, i32 57}
!329 = !{ptr @.str.148, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1102, i32 57}
!331 = !{ptr @.str.149, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1103, i32 9}
!333 = !{ptr @il_dbgfs_clear_ucode_stats_ops, !334, !"il_dbgfs_clear_ucode_stats_ops", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1302, i32 1}
!335 = !{ptr @il_dbgfs_clear_traffic_stats_ops, !336, !"il_dbgfs_clear_traffic_stats_ops", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1303, i32 1}
!337 = !{ptr @il_dbgfs_fh_reg_ops, !338, !"il_dbgfs_fh_reg_ops", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1304, i32 1}
!339 = !{ptr @il_dbgfs_missed_beacon_ops, !340, !"il_dbgfs_missed_beacon_ops", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1305, i32 1}
!341 = !{ptr @.str.150, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1193, i32 40}
!343 = !{ptr @il_dbgfs_force_reset_ops, !344, !"il_dbgfs_force_reset_ops", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1306, i32 1}
!345 = !{ptr @.str.151, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1238, i32 40}
!347 = !{ptr @.str.152, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1242, i32 9}
!349 = !{ptr @.str.153, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1246, i32 9}
!351 = !{ptr @.str.154, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1249, i32 40}
!353 = !{ptr @il_dbgfs_ucode_rx_stats_ops, !354, !"il_dbgfs_ucode_rx_stats_ops", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1296, i32 1}
!355 = !{ptr @il_dbgfs_ucode_tx_stats_ops, !356, !"il_dbgfs_ucode_tx_stats_ops", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1297, i32 1}
!357 = !{ptr @il_dbgfs_ucode_general_stats_ops, !358, !"il_dbgfs_ucode_general_stats_ops", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1298, i32 1}
!359 = !{ptr @il_dbgfs_sensitivity_ops, !360, !"il_dbgfs_sensitivity_ops", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1299, i32 1}
!361 = !{ptr @.str.155, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 930, i32 3}
!363 = !{ptr @il_dbgfs_sensitivity_read._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @il_dbgfs_sensitivity_read._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.156, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 935, i32 40}
!367 = !{ptr @.str.157, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 938, i32 40}
!369 = !{ptr @.str.158, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 941, i32 40}
!371 = !{ptr @.str.159, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 944, i32 40}
!373 = !{ptr @.str.160, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 947, i32 40}
!375 = !{ptr @.str.161, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 950, i32 40}
!377 = !{ptr @.str.162, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 954, i32 9}
!379 = !{ptr @.str.163, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 957, i32 40}
!381 = !{ptr @.str.164, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 960, i32 40}
!383 = !{ptr @.str.165, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 963, i32 40}
!385 = !{ptr @.str.166, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 966, i32 40}
!387 = !{ptr @.str.167, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 969, i32 40}
!389 = !{ptr @.str.168, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 971, i32 43}
!391 = !{ptr @.str.169, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 974, i32 41}
!393 = !{ptr @.str.170, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 978, i32 43}
!395 = !{ptr @.str.171, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 986, i32 40}
!397 = !{ptr @.str.172, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 989, i32 40}
!399 = !{ptr @.str.173, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 992, i32 40}
!401 = !{ptr @.str.174, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 995, i32 40}
!403 = !{ptr @.str.175, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 999, i32 9}
!405 = !{ptr @.str.176, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1002, i32 40}
!407 = !{ptr @.str.177, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1005, i32 40}
!409 = !{ptr @il_dbgfs_chain_noise_ops, !410, !"il_dbgfs_chain_noise_ops", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1300, i32 1}
!411 = !{ptr @.str.178, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1029, i32 3}
!413 = !{ptr @il_dbgfs_chain_noise_read._entry, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @il_dbgfs_chain_noise_read._entry_ptr, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.179, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1034, i32 40}
!417 = !{ptr @.str.180, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1037, i32 40}
!419 = !{ptr @.str.181, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1040, i32 40}
!421 = !{ptr @.str.182, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1043, i32 40}
!423 = !{ptr @.str.183, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1046, i32 40}
!425 = !{ptr @.str.184, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1049, i32 40}
!427 = !{ptr @.str.185, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1052, i32 40}
!429 = !{ptr @.str.186, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1055, i32 40}
!431 = !{ptr @.str.187, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1058, i32 43}
!433 = !{ptr @.str.188, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1065, i32 43}
!435 = !{ptr @.str.189, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1073, i32 40}
!437 = !{ptr @.str.190, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1076, i32 40}
!439 = !{ptr @il_dbgfs_rxon_flags_ops, !440, !"il_dbgfs_rxon_flags_ops", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1307, i32 1}
!441 = !{ptr @.str.191, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1142, i32 21}
!443 = !{ptr @il_dbgfs_rxon_filter_flags_ops, !444, !"il_dbgfs_rxon_filter_flags_ops", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1308, i32 1}
!445 = !{ptr @il_dbgfs_wd_timeout_ops, !446, !"il_dbgfs_wd_timeout_ops", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/intel/iwlegacy/debug.c", i32 1309, i32 1}
!447 = !{!"sp"}
!448 = !{i32 1, !"wchar_size", i32 2}
!449 = !{i32 1, !"min_enum_size", i32 4}
!450 = !{i32 8, !"branch-target-enforcement", i32 0}
!451 = !{i32 8, !"sign-return-address", i32 0}
!452 = !{i32 8, !"sign-return-address-all", i32 0}
!453 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!454 = !{i32 7, !"uwtable", i32 1}
!455 = !{i32 7, !"frame-pointer", i32 2}
!456 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!457 = !{i8 0, i8 2}
!458 = !{!"auto-init"}
!459 = !{i64 2152487640, i64 2152487665}
!460 = !{!"branch_weights", i32 2000, i32 1}
!461 = !{i64 4983195}
!462 = !{i64 4983392}
!463 = !{i64 2152468625}
!464 = !{i64 6190263}
!465 = !{i64 2157948640}
