; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/debug.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.carl9170_debugfs_fops = type { i32, i16, ptr, ptr, %struct.file_operations, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hw_stat_reg_entry = type { i32, [32 x i8] }
%struct.ar9170 = type { %struct.ath_common, ptr, %struct.mutex, i32, %struct.spinlock, i32, i8, ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.tasklet_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i8, %struct.completion, %struct.completion, %struct.anon.130, [1 x %struct.ieee80211_iface_limit], [1 x %struct.ieee80211_iface_combination], %struct.work_struct, %struct.work_struct, i32, [4 x i32], [4 x i32], i8, i8, %struct.atomic_t, %struct.list_head, i32, i32, [7 x %struct.carl9170_vif], %struct.spinlock, i32, i32, ptr, i32, i64, i8, i8, i64, i32, i32, i32, i8, i32, ptr, i32, [4 x i32], i32, i32, i8, i8, %struct.anon.134, %struct.delayed_work, ptr, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], %struct.delayed_work, [2 x %struct.carl9170_led], %struct.spinlock, [4 x %struct.carl9170_tx_queue_stats], [5 x %struct.ieee80211_tx_queue_params], %struct.completion, i32, i32, ptr, %struct.spinlock, %struct.completion, %union.anon.135, i32, i32, i32, i32, %struct.ar9170_eeprom, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], %struct.delayed_work, i32, i8, %struct.work_struct, %struct.spinlock, ptr, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, %struct.spinlock, ptr, %struct.atomic_t, %struct.atomic_t, %struct.ar9170_rx_head, i8, ptr, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.anon.142, %struct.carl9170_debug, ptr, %struct.work_struct, %struct.anon.144, %struct.anon.145 }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.anon.130 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.carl9170_vif = type { i32, ptr }
%struct.anon.134 = type { i64, i64, i64, i64, i64 }
%struct.carl9170_led = type { ptr, %struct.led_classdev, [32 x i8], i32, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.carl9170_tx_queue_stats = type { i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.135 = type { [16 x i32] }
%struct.ar9170_eeprom = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, [33 x i8], [64 x i8], [2 x %struct.ar9170_eeprom_modal], [8 x i8], [4 x i8], [2 x [8 x %struct.ar9170_calibration_data_per_freq]], [2 x [4 x %struct.ar9170_calibration_data_per_freq]], [8 x %struct.ar9170_calibration_target_power_legacy], [8 x %struct.ar9170_calibration_target_power_ht], [8 x %struct.ar9170_calibration_target_power_ht], [3 x %struct.ar9170_calibration_target_power_legacy], [4 x %struct.ar9170_calibration_target_power_legacy], [4 x %struct.ar9170_calibration_target_power_ht], [4 x %struct.ar9170_calibration_target_power_ht], [24 x i8], [24 x %struct.ar9170_calctl_data], i8, i16 }>
%struct.ar9170_eeprom_modal = type <{ [2 x i32], i32, [2 x i8], i8, [2 x i8], [2 x i8], i8, i8, [2 x i8], i8, i8, i8, i8, [2 x i8], i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, [22 x i8], [5 x %struct.spur_channel] }>
%struct.spur_channel = type { i16, i8, i8 }
%struct.ar9170_calibration_data_per_freq = type { [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ar9170_calibration_target_power_legacy = type { i8, [4 x i8] }
%struct.ar9170_calibration_target_power_ht = type { i8, [8 x i8] }
%struct.ar9170_calctl_data = type { [2 x [8 x %struct.ar9170_calctl_edges]] }
%struct.ar9170_calctl_edges = type { i8, i8 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.ar9170_rx_head = type { [12 x i8] }
%struct.anon.142 = type { i8, ptr, [32 x i8], [32 x i8] }
%struct.carl9170_debug = type { %struct.ath_stats, [64 x %struct.carl9170_debug_mem_rbe], %struct.mutex, i32, i32, %struct.delayed_work }
%struct.ath_stats = type { [3 x i32], [3 x i32], [8 x i32], [8 x i32], [6 x i32], [6 x i32], [12 x i32], [6 x i32], [2 x i32] }
%struct.carl9170_debug_mem_rbe = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.144 = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.anon.145 = type { %struct.hwrng, i8, [31 x i8], [30 x i16], i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.carl9170_sta_tid = type { %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, i8, i16, i16, i16, i16, [4 x i32], %struct.sk_buff_head, ptr, ptr }
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
%struct._carl9170_tx_superframe = type { %struct._carl9170_tx_superdesc, %struct._ar9170_tx_hwdesc, [0 x i8] }
%struct._carl9170_tx_superdesc = type { i16, i8, i8, i8, i8, i8, i8, [4 x i8], [3 x i32] }
%struct._ar9170_tx_hwdesc = type { i16, i16, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.carl9170_vif_info = type { %struct.list_head, i8, i32, ptr, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"carl9170\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_tx_anch_urbs\00", [47 x i8] zeroinitializer }, align 32
@carl_debugfs_usb_tx_anch_urbs_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_usb_tx_anch_urbs_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_rx_pool_urbs\00", [47 x i8] zeroinitializer }, align 32
@carl_debugfs_usb_rx_pool_urbs_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_usb_rx_pool_urbs_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_rx_anch_urbs\00", [47 x i8] zeroinitializer }, align 32
@carl_debugfs_usb_rx_anch_urbs_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_usb_rx_anch_urbs_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_rx_work_urbs\00", [47 x i8] zeroinitializer }, align 32
@carl_debugfs_usb_rx_work_urbs_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_usb_rx_work_urbs_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_total_queued\00", [16 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_total_queued_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_tx_total_queued_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_total_pending\00", [47 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_total_pending_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_tx_total_pending_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_dropped\00", [21 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_dropped_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_tx_dropped_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_stuck\00", [23 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_stuck_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 180, i16 256, ptr @carl9170_debugfs_tx_stuck_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_ampdu_upload\00", [16 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_ampdu_upload_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_tx_ampdu_upload_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_ampdu_scheduler\00", [45 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_ampdu_scheduler_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_tx_ampdu_scheduler_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_ampdu_list_len\00", [46 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_ampdu_list_len_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_tx_ampdu_list_len_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_dropped\00", [21 x i8] zeroinitializer }, align 32
@carl_debugfs_rx_dropped_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_rx_dropped_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sniffer_enabled\00", [16 x i8] zeroinitializer }, align 32
@carl_debugfs_sniffer_enabled_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_sniffer_enabled_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_software_decryption\00", [41 x i8] zeroinitializer }, align 32
@carl_debugfs_rx_software_decryption_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_rx_software_decryption_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mem_usage\00", [22 x i8] zeroinitializer }, align 32
@carl_debugfs_mem_usage_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 512, i16 256, ptr @carl9170_debugfs_mem_usage_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qos_stat\00", [23 x i8] zeroinitializer }, align 32
@carl_debugfs_qos_stat_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 512, i16 256, ptr @carl9170_debugfs_qos_stat_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sta_psm\00", [24 x i8] zeroinitializer }, align 32
@carl_debugfs_sta_psm_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 160, i16 256, ptr @carl9170_debugfs_sta_psm_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ampdu_state\00", [20 x i8] zeroinitializer }, align 32
@carl_debugfs_ampdu_state_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_ampdu_state_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_tx_tally\00", [20 x i8] zeroinitializer }, align 32
@carl_debugfs_hw_tx_tally_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 0, i16 256, ptr @carl9170_debugfs_hw_tx_tally_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_rx_tally\00", [20 x i8] zeroinitializer }, align 32
@carl_debugfs_hw_rx_tally_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 0, i16 256, ptr @carl9170_debugfs_hw_rx_tally_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw_phy_errors\00", [18 x i8] zeroinitializer }, align 32
@carl_debugfs_hw_phy_errors_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 0, i16 256, ptr @carl9170_debugfs_hw_phy_errors_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy_noise\00", [22 x i8] zeroinitializer }, align 32
@carl_debugfs_phy_noise_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 180, i16 256, ptr @carl9170_debugfs_phy_noise_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw_wlan_queue\00", [18 x i8] zeroinitializer }, align 32
@carl_debugfs_hw_wlan_queue_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 0, i16 256, ptr @carl9170_debugfs_hw_wlan_queue_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_pta_queue\00", [19 x i8] zeroinitializer }, align 32
@carl_debugfs_hw_pta_queue_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 0, i16 256, ptr @carl9170_debugfs_hw_pta_queue_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw_ampdu_info\00", [18 x i8] zeroinitializer }, align 32
@carl_debugfs_hw_ampdu_info_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 0, i16 256, ptr @carl9170_debugfs_hw_ampdu_info_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ampdu_density\00", [18 x i8] zeroinitializer }, align 32
@carl_debugfs_ampdu_density_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_ampdu_density_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ampdu_factor\00", [19 x i8] zeroinitializer }, align 32
@carl_debugfs_ampdu_factor_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_ampdu_factor_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_janitor_last_run\00", [44 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_janitor_last_run_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 64, i16 256, ptr @carl9170_debugfs_tx_janitor_last_run_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_status_0\00", [20 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_status_0_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_tx_status_0_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_status_1\00", [20 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_status_1_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_tx_status_1_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_status_2\00", [20 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_status_2_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_tx_status_2_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_status_3\00", [20 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_status_3_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_tx_status_3_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_pending_0\00", [19 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_pending_0_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_tx_pending_0_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_pending_1\00", [19 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_pending_1_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_tx_pending_1_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_pending_2\00", [19 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_pending_2_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_tx_pending_2_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_pending_3\00", [19 x i8] zeroinitializer }, align 32
@carl_debugfs_tx_pending_3_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_tx_pending_3_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_ioread32\00", [20 x i8] zeroinitializer }, align 32
@carl_debugfs_hw_ioread32_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 2560, i16 384, ptr @carl9170_debugfs_hw_ioread32_read, ptr @carl9170_debugfs_hw_ioread32_write, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_iowrite32\00", [19 x i8] zeroinitializer }, align 32
@carl_debugfs_hw_iowrite32_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 0, i16 128, ptr null, ptr @carl9170_debugfs_hw_iowrite32_write, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bug\00", [28 x i8] zeroinitializer }, align 32
@carl_debugfs_bug_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 400, i16 384, ptr @carl9170_debugfs_bug_read, ptr @carl9170_debugfs_bug_write, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 1 }, [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"erp\00", [28 x i8] zeroinitializer }, align 32
@carl_debugfs_erp_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 80, i16 384, ptr @carl9170_debugfs_erp_read, ptr @carl9170_debugfs_erp_write, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vif_dump\00", [23 x i8] zeroinitializer }, align 32
@carl_debugfs_vif_dump_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 8000, i16 256, ptr @carl9170_debugfs_vif_dump_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"beacon_int\00", [21 x i8] zeroinitializer }, align 32
@carl_debugfs_beacon_int_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_beacon_int_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pretbtt\00", [24 x i8] zeroinitializer }, align 32
@carl_debugfs_pretbtt_ops = internal constant { %struct.carl9170_debugfs_fops, [44 x i8] } { %struct.carl9170_debugfs_fops { i32 20, i16 256, ptr @carl9170_debugfs_pretbtt_read, ptr null, %struct.file_operations { ptr null, ptr null, ptr @carl9170_debugfs_read, ptr @carl9170_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 3 }, [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@carl9170_debugfs_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ath/carl9170/debug.c\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TX queue [%d]: %10d max:%10d ms.\0A\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jar: [%*pb]\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cookies: used:%3d / total:%3d, allocs:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"memory: free:%3d (%3d KiB) / total:%3d KiB)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s QoS AC\0A\00", [21 x i8] zeroinitializer }, align 32
@modparam_noht = external dso_local local_unnamed_addr global i32, align 4
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Hardware\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Software\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[     VO            VI            BE            BK      ]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"[length/limit  length/limit  length/limit  length/limit ]\0A[   %3d/%3d       %3d/%3d       %3d/%3d       %3d/%3d   ]\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"[    total         total         total         total    ]\0A[%10d    %10d    %10d    %10d   ]\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"[  pend/waittx   pend/waittx   pend/waittx   pend/waittx]\0A[   %3d/%3d       %3d/%3d       %3d/%3d       %3d/%3d   ]\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"psm state: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FORCE CAM\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PSM\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CAM\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sleep duration: %d ms.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"last power-state transition: %d ms ago.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"last CAM->PSM transition: %d ms ago.\0A\00", [58 x i8] zeroinitializer }, align 32
@carl9170_debugfs_ampdu_state_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Entry: #%2d TID:%1d, BSN:%4d, SNX:%4d, HSN:%4d, BAW:%2d, state:%1d, toggles:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09Window:  [%*pb,W]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09Base Seq: %*s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09Next Seq: %*s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"W\00", [30 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09Last Seq: %*s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\09Pre-Aggregation reorder buffer:  currently queued:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09\09%3d :\00", [24 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s %p, c:%2x, DA:%pM, sq:%4d, mc:%.4x, pc:%.8x, to:%d ms\0A\00", [38 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@hw_tx_tally_regs = internal constant { [3 x %struct.hw_stat_reg_entry], [52 x i8] } { [3 x %struct.hw_stat_reg_entry] [%struct.hw_stat_reg_entry { i32 1849076, [32 x i8] c"TX_TOTAL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1848968, [32 x i8] c"TX_UNDERRUN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1849036, [32 x i8] c"TX_RETRY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [52 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%22s = %u[+%u]\0A\00", [16 x i8] zeroinitializer }, align 32
@hw_rx_tally_regs = internal constant { [8 x %struct.hw_stat_reg_entry], [64 x i8] } { [8 x %struct.hw_stat_reg_entry] [%struct.hw_stat_reg_entry { i32 1848996, [32 x i8] c"RX_CRC32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1849000, [32 x i8] c"RX_CRC16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1848988, [32 x i8] c"RX_TIMEOUT_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1849004, [32 x i8] c"RX_ERR_DECRYPTION_UNI\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1849020, [32 x i8] c"RX_ERR_DECRYPTION_MUL\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850528, [32 x i8] c"RX_MPDU\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850532, [32 x i8] c"RX_DROPPED_MPDU\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850536, [32 x i8] c"RX_DEL_MPDU\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [64 x i8] zeroinitializer }, align 32
@hw_phy_errors_regs = internal constant { [6 x %struct.hw_stat_reg_entry], [40 x i8] } { [6 x %struct.hw_stat_reg_entry] [%struct.hw_stat_reg_entry { i32 1850540, [32 x i8] c"RX_PHY_MISC_ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850544, [32 x i8] c"RX_PHY_XR_ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850548, [32 x i8] c"RX_PHY_OFDM_ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850552, [32 x i8] c"RX_PHY_CCK_ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850556, [32 x i8] c"RX_PHY_HT_ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850560, [32 x i8] c"RX_PHY_TOTAL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Chain 0: %10d dBm, ext. chan.:%10d dBm\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Chain 2: %10d dBm, ext. chan.:%10d dBm\0A\00", [56 x i8] zeroinitializer }, align 32
@hw_wlan_queue_regs = internal constant { [12 x %struct.hw_stat_reg_entry], [112 x i8] } { [12 x %struct.hw_stat_reg_entry] [%struct.hw_stat_reg_entry { i32 1850684, [32 x i8] c"DMA_STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850672, [32 x i8] c"DMA_TRIGGER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850624, [32 x i8] c"DMA_TXQ0_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850628, [32 x i8] c"DMA_TXQ0_CURR_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850632, [32 x i8] c"DMA_TXQ1_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850636, [32 x i8] c"DMA_TXQ1_CURR_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850640, [32 x i8] c"DMA_TXQ2_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850644, [32 x i8] c"DMA_TXQ2_CURR_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850648, [32 x i8] c"DMA_TXQ3_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850652, [32 x i8] c"DMA_TXQ3_CURR_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850664, [32 x i8] c"DMA_RXQ_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850668, [32 x i8] c"DMA_RXQ_CURR_ADDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [112 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%22s = %.8x\0A\00", [19 x i8] zeroinitializer }, align 32
@hw_pta_queue_regs = internal constant { [6 x %struct.hw_stat_reg_entry], [40 x i8] } { [6 x %struct.hw_stat_reg_entry] [%struct.hw_stat_reg_entry { i32 1974588, [32 x i8] c"DN_CURR_ADDRH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1974584, [32 x i8] c"DN_CURR_ADDRL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1974596, [32 x i8] c"UP_CURR_ADDRH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1974592, [32 x i8] c"UP_CURR_ADDRL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1974580, [32 x i8] c"DMA_STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1974600, [32 x i8] c"DMA_MODE_CTRL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [40 x i8] zeroinitializer }, align 32
@hw_ampdu_info_regs = internal constant { [2 x %struct.hw_stat_reg_entry], [56 x i8] } { [2 x %struct.hw_stat_reg_entry] [%struct.hw_stat_reg_entry { i32 1850272, [32 x i8] c"AMPDU_DENSITY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.hw_stat_reg_entry { i32 1850268, [32 x i8] c"AMPDU_FACTOR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"last run:%d ms ago\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%3d :\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%.8x = %.8x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%X %d\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%X 0x%X\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[P]hy reinit, [R]estart, [F]ull usb reset, [M]ac reset\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"firmware restarts:%d, last reason:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phy reinit errors:%d (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reported firmware errors:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reported firmware BUGs:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pending restart requests:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ERP Setting: (%d) -> %s\0A\00", [39 x i8] zeroinitializer }, align 32
@erp_modes = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Automatic\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Set by MAC80211\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Force Off\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Force CTS\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Force RTS\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"registered VIFs:%d \\ %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VIF bitmap: [%*pb]\0A\00", [44 x i8] zeroinitializer }, align 32
@carl9170_debugfs_vif_dump_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.108 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\09%d = [%s VIF, id:%d, type:%x  mac:%pM %s]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Master\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" Slave\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"beaconing \00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@carl9170_get_main_vif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.113 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/ath/carl9170/carl9170.h\00", [51 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d TU\0A\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 70, i64 77, i64 80, i64 82]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 815, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 823, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [34 x i8] c"carl_debugfs_usb_tx_anch_urbs_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 824, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [34 x i8] c"carl_debugfs_usb_rx_pool_urbs_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 778, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 825, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [34 x i8] c"carl_debugfs_usb_rx_anch_urbs_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 774, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 826, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [34 x i8] c"carl_debugfs_usb_rx_work_urbs_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 776, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 828, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [33 x i8] c"carl_debugfs_tx_total_queued_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 781, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 829, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [34 x i8] c"carl_debugfs_tx_total_pending_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 786, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 830, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [28 x i8] c"carl_debugfs_tx_dropped_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 798, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 831, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [26 x i8] c"carl_debugfs_tx_stuck_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 414, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 832, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [33 x i8] c"carl_debugfs_tx_ampdu_upload_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 792, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 833, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [36 x i8] c"carl_debugfs_tx_ampdu_scheduler_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 783, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 834, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [35 x i8] c"carl_debugfs_tx_ampdu_list_len_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 789, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 836, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [28 x i8] c"carl_debugfs_rx_dropped_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 800, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 837, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [33 x i8] c"carl_debugfs_sniffer_enabled_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 802, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 838, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [40 x i8] c"carl_debugfs_rx_software_decryption_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 803, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 840, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"carl_debugfs_mem_usage_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 237, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 841, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [26 x i8] c"carl_debugfs_qos_stat_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 281, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 842, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [25 x i8] c"carl_debugfs_sta_psm_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 396, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 843, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [29 x i8] c"carl_debugfs_ampdu_state_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 354, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 845, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [29 x i8] c"carl_debugfs_hw_tx_tally_ops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 846, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [29 x i8] c"carl_debugfs_hw_rx_tally_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 759, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 847, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [31 x i8] c"carl_debugfs_hw_phy_errors_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 760, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 848, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [27 x i8] c"carl_debugfs_phy_noise_ops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 434, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 850, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [31 x i8] c"carl_debugfs_hw_wlan_queue_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 851, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [30 x i8] c"carl_debugfs_hw_pta_queue_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 762, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 852, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [31 x i8] c"carl_debugfs_hw_ampdu_info_ops\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 763, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 854, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [31 x i8] c"carl_debugfs_ampdu_density_ops\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 807, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 855, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [30 x i8] c"carl_debugfs_ampdu_factor_ops\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 805, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 857, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [37 x i8] c"carl_debugfs_tx_janitor_last_run_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 859, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [29 x i8] c"carl_debugfs_tx_status_0_ops\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 764, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 860, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [29 x i8] c"carl_debugfs_tx_status_1_ops\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 765, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 861, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [29 x i8] c"carl_debugfs_tx_status_2_ops\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 766, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 862, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [29 x i8] c"carl_debugfs_tx_status_3_ops\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 767, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 864, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [30 x i8] c"carl_debugfs_tx_pending_0_ops\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 768, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 865, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [30 x i8] c"carl_debugfs_tx_pending_1_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 769, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 866, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [30 x i8] c"carl_debugfs_tx_pending_2_ops\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 770, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 867, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [30 x i8] c"carl_debugfs_tx_pending_3_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 771, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 869, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [29 x i8] c"carl_debugfs_hw_ioread32_ops\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 614, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 870, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [30 x i8] c"carl_debugfs_hw_iowrite32_ops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 756, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 871, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [21 x i8] c"carl_debugfs_bug_ops\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 680, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 873, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [21 x i8] c"carl_debugfs_erp_ops\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 719, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 875, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [26 x i8] c"carl_debugfs_vif_dump_ops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 461, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 877, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [28 x i8] c"carl_debugfs_beacon_int_ops\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 878, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [25 x i8] c"carl_debugfs_pretbtt_ops\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 811, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 772, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 105, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 230, i32 6 }
@___asan_gen_.387 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 214, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 156, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 404, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 221, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 224, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 228, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 242, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 245, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 249, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 258, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 266, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 385, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 388, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 389, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 391, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 309, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 312, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 317, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 325, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 328, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 332, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 334, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 341, i32 37 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 695, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 292, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 723, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [17 x i8] c"hw_tx_tally_regs\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 75, i32 39 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 758, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant [17 x i8] c"hw_rx_tally_regs\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 62, i32 39 }
@___asan_gen_.500 = private unnamed_addr constant [19 x i8] c"hw_phy_errors_regs\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 69, i32 39 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 427, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 429, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant [19 x i8] c"hw_wlan_queue_regs\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 80, i32 39 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 761, i32 1 }
@___asan_gen_.515 = private unnamed_addr constant [18 x i8] c"hw_pta_queue_regs\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 93, i32 39 }
@___asan_gen_.518 = private unnamed_addr constant [19 x i8] c"hw_ampdu_info_regs\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/carl9170/debug.h\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 89, i32 39 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 795, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 365, i32 36 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 601, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 556, i32 20 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 733, i32 20 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 666, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 668, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 670, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 672, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 674, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 676, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 778, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 694, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant [10 x i8] c"erp_modes\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 682, i32 26 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 683, i32 27 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 684, i32 24 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 685, i32 28 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 686, i32 23 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 688, i32 23 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 687, i32 23 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 707, i32 20 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 442, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 445, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 451, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/ath/carl9170/carl9170.h\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 650, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.609 = private constant [45 x i8] c"../drivers/net/wireless/ath/carl9170/debug.c\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 810, i32 1 }
@llvm.compiler.used = appending global [165 x ptr] [ptr @.str, ptr @.str.1, ptr @carl_debugfs_usb_tx_anch_urbs_ops, ptr @.str.2, ptr @carl_debugfs_usb_rx_pool_urbs_ops, ptr @.str.3, ptr @carl_debugfs_usb_rx_anch_urbs_ops, ptr @.str.4, ptr @carl_debugfs_usb_rx_work_urbs_ops, ptr @.str.5, ptr @carl_debugfs_tx_total_queued_ops, ptr @.str.6, ptr @carl_debugfs_tx_total_pending_ops, ptr @.str.7, ptr @carl_debugfs_tx_dropped_ops, ptr @.str.8, ptr @carl_debugfs_tx_stuck_ops, ptr @.str.9, ptr @carl_debugfs_tx_ampdu_upload_ops, ptr @.str.10, ptr @carl_debugfs_tx_ampdu_scheduler_ops, ptr @.str.11, ptr @carl_debugfs_tx_ampdu_list_len_ops, ptr @.str.12, ptr @carl_debugfs_rx_dropped_ops, ptr @.str.13, ptr @carl_debugfs_sniffer_enabled_ops, ptr @.str.14, ptr @carl_debugfs_rx_software_decryption_ops, ptr @.str.15, ptr @carl_debugfs_mem_usage_ops, ptr @.str.16, ptr @carl_debugfs_qos_stat_ops, ptr @.str.17, ptr @carl_debugfs_sta_psm_ops, ptr @.str.18, ptr @carl_debugfs_ampdu_state_ops, ptr @.str.19, ptr @carl_debugfs_hw_tx_tally_ops, ptr @.str.20, ptr @carl_debugfs_hw_rx_tally_ops, ptr @.str.21, ptr @carl_debugfs_hw_phy_errors_ops, ptr @.str.22, ptr @carl_debugfs_phy_noise_ops, ptr @.str.23, ptr @carl_debugfs_hw_wlan_queue_ops, ptr @.str.24, ptr @carl_debugfs_hw_pta_queue_ops, ptr @.str.25, ptr @carl_debugfs_hw_ampdu_info_ops, ptr @.str.26, ptr @carl_debugfs_ampdu_density_ops, ptr @.str.27, ptr @carl_debugfs_ampdu_factor_ops, ptr @.str.28, ptr @carl_debugfs_tx_janitor_last_run_ops, ptr @.str.29, ptr @carl_debugfs_tx_status_0_ops, ptr @.str.30, ptr @carl_debugfs_tx_status_1_ops, ptr @.str.31, ptr @carl_debugfs_tx_status_2_ops, ptr @.str.32, ptr @carl_debugfs_tx_status_3_ops, ptr @.str.33, ptr @carl_debugfs_tx_pending_0_ops, ptr @.str.34, ptr @carl_debugfs_tx_pending_1_ops, ptr @.str.35, ptr @carl_debugfs_tx_pending_2_ops, ptr @.str.36, ptr @carl_debugfs_tx_pending_3_ops, ptr @.str.37, ptr @carl_debugfs_hw_ioread32_ops, ptr @.str.38, ptr @carl_debugfs_hw_iowrite32_ops, ptr @.str.39, ptr @carl_debugfs_bug_ops, ptr @.str.40, ptr @carl_debugfs_erp_ops, ptr @.str.41, ptr @carl_debugfs_vif_dump_ops, ptr @.str.42, ptr @carl_debugfs_beacon_int_ops, ptr @.str.43, ptr @carl_debugfs_pretbtt_ops, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @hw_tx_tally_regs, ptr @.str.82, ptr @hw_rx_tally_regs, ptr @hw_phy_errors_regs, ptr @.str.83, ptr @.str.84, ptr @hw_wlan_queue_regs, ptr @.str.85, ptr @hw_pta_queue_regs, ptr @hw_ampdu_info_regs, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @erp_modes, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_usb_tx_anch_urbs_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_usb_rx_pool_urbs_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_usb_rx_anch_urbs_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_usb_rx_work_urbs_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_total_queued_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_total_pending_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_dropped_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_stuck_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_ampdu_upload_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_ampdu_scheduler_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_ampdu_list_len_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_rx_dropped_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_sniffer_enabled_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_rx_software_decryption_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_mem_usage_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_qos_stat_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_sta_psm_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_ampdu_state_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_hw_tx_tally_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_hw_rx_tally_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_hw_phy_errors_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_phy_noise_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_hw_wlan_queue_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_hw_pta_queue_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_hw_ampdu_info_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_ampdu_density_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_ampdu_factor_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_janitor_last_run_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_status_0_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_status_1_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_status_2_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_status_3_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_pending_0_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_pending_1_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_pending_2_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_tx_pending_3_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_hw_ioread32_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_hw_iowrite32_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_bug_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_erp_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_vif_dump_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_beacon_int_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl_debugfs_pretbtt_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_tx_tally_regs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_rx_tally_regs to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_phy_errors_regs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_wlan_queue_regs to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_pta_queue_regs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_ampdu_info_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erp_modes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_debugfs_register(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
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
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %5) #9
  %debug_dir = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 119
  %6 = ptrtoint ptr %debug_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %debug_dir, align 8
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_usb_tx_anch_urbs_ops, i32 0, i32 4)) #9
  %7 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debug_dir, align 8
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %8, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_usb_rx_pool_urbs_ops, i32 0, i32 4)) #9
  %9 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debug_dir, align 8
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %10, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_usb_rx_anch_urbs_ops, i32 0, i32 4)) #9
  %11 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debug_dir, align 8
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %12, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_usb_rx_work_urbs_ops, i32 0, i32 4)) #9
  %13 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug_dir, align 8
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %14, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_total_queued_ops, i32 0, i32 4)) #9
  %15 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %debug_dir, align 8
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %16, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_total_pending_ops, i32 0, i32 4)) #9
  %17 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debug_dir, align 8
  %call14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_dropped_ops, i32 0, i32 4)) #9
  %19 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %debug_dir, align 8
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %20, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_stuck_ops, i32 0, i32 4)) #9
  %21 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %debug_dir, align 8
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %22, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_ampdu_upload_ops, i32 0, i32 4)) #9
  %23 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debug_dir, align 8
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %24, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_ampdu_scheduler_ops, i32 0, i32 4)) #9
  %25 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %debug_dir, align 8
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %26, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_ampdu_list_len_ops, i32 0, i32 4)) #9
  %27 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %debug_dir, align 8
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %28, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_rx_dropped_ops, i32 0, i32 4)) #9
  %29 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %debug_dir, align 8
  %call26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %30, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_sniffer_enabled_ops, i32 0, i32 4)) #9
  %31 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debug_dir, align 8
  %call28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %32, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_rx_software_decryption_ops, i32 0, i32 4)) #9
  %33 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %debug_dir, align 8
  %call30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %34, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_mem_usage_ops, i32 0, i32 4)) #9
  %35 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debug_dir, align 8
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %36, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_qos_stat_ops, i32 0, i32 4)) #9
  %37 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debug_dir, align 8
  %call34 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %38, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_sta_psm_ops, i32 0, i32 4)) #9
  %39 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %debug_dir, align 8
  %call36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %40, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_ampdu_state_ops, i32 0, i32 4)) #9
  %41 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %debug_dir, align 8
  %call38 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 256, ptr noundef %42, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_hw_tx_tally_ops, i32 0, i32 4)) #9
  %43 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %debug_dir, align 8
  %call40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %44, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_hw_rx_tally_ops, i32 0, i32 4)) #9
  %45 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %debug_dir, align 8
  %call42 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef %46, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_hw_phy_errors_ops, i32 0, i32 4)) #9
  %47 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %debug_dir, align 8
  %call44 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %48, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_phy_noise_ops, i32 0, i32 4)) #9
  %49 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %debug_dir, align 8
  %call46 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef %50, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_hw_wlan_queue_ops, i32 0, i32 4)) #9
  %51 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %debug_dir, align 8
  %call48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %52, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_hw_pta_queue_ops, i32 0, i32 4)) #9
  %53 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %debug_dir, align 8
  %call50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 256, ptr noundef %54, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_hw_ampdu_info_ops, i32 0, i32 4)) #9
  %55 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %debug_dir, align 8
  %call52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 256, ptr noundef %56, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_ampdu_density_ops, i32 0, i32 4)) #9
  %57 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %debug_dir, align 8
  %call54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 256, ptr noundef %58, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_ampdu_factor_ops, i32 0, i32 4)) #9
  %59 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %debug_dir, align 8
  %call56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 256, ptr noundef %60, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_janitor_last_run_ops, i32 0, i32 4)) #9
  %61 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %debug_dir, align 8
  %call58 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 256, ptr noundef %62, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_status_0_ops, i32 0, i32 4)) #9
  %63 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %debug_dir, align 8
  %call60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef %64, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_status_1_ops, i32 0, i32 4)) #9
  %65 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %debug_dir, align 8
  %call62 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 256, ptr noundef %66, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_status_2_ops, i32 0, i32 4)) #9
  %67 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %debug_dir, align 8
  %call64 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 256, ptr noundef %68, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_status_3_ops, i32 0, i32 4)) #9
  %69 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %debug_dir, align 8
  %call66 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 256, ptr noundef %70, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_pending_0_ops, i32 0, i32 4)) #9
  %71 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %debug_dir, align 8
  %call68 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 256, ptr noundef %72, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_pending_1_ops, i32 0, i32 4)) #9
  %73 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %debug_dir, align 8
  %call70 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 256, ptr noundef %74, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_pending_2_ops, i32 0, i32 4)) #9
  %75 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %debug_dir, align 8
  %call72 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 256, ptr noundef %76, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_tx_pending_3_ops, i32 0, i32 4)) #9
  %77 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %debug_dir, align 8
  %call74 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 384, ptr noundef %78, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_hw_ioread32_ops, i32 0, i32 4)) #9
  %79 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %debug_dir, align 8
  %call76 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 128, ptr noundef %80, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_hw_iowrite32_ops, i32 0, i32 4)) #9
  %81 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %debug_dir, align 8
  %call78 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 384, ptr noundef %82, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_bug_ops, i32 0, i32 4)) #9
  %83 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %debug_dir, align 8
  %call80 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 384, ptr noundef %84, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_erp_ops, i32 0, i32 4)) #9
  %85 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %debug_dir, align 8
  %call82 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 256, ptr noundef %86, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_vif_dump_ops, i32 0, i32 4)) #9
  %87 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %debug_dir, align 8
  %call84 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 256, ptr noundef %88, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_beacon_int_ops, i32 0, i32 4)) #9
  %89 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %debug_dir, align 8
  %call86 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 256, ptr noundef %90, ptr noundef %ar, ptr noundef getelementptr inbounds (%struct.carl9170_debugfs_fops, ptr @carl_debugfs_pretbtt_ops, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_debugfs_unregister(ptr nocapture noundef readonly %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_dir = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 119
  %0 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug_dir, align 8
  tail call void @debugfs_remove(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_usb_tx_anch_urbs_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %tx_anch_urbs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_anch_urbs, i32 noundef 4) #9
  %2 = ptrtoint ptr %tx_anch_urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_anch_urbs, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call1
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_debugfs_read(ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #9
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @debugfs_real_fops(ptr noundef %file) #9
  %add.ptr = getelementptr i8, ptr %call, i32 -16
  %read = getelementptr i8, ptr %call, i32 -8
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %call10 = tail call noalias ptr @vmalloc(i32 noundef %6) #12
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then8.cleanup_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %buf.0 = phi ptr [ %call10, %if.then8.if.end14_crit_edge ], [ null, %if.end6.if.end14_crit_edge ]
  %mutex = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.ar9170, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %req_dev_state = getelementptr i8, ptr %call, i32 128
  %9 = ptrtoint ptr %req_dev_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %req_dev_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp ult i32 %8, %10
  br i1 %cmp.not, label %if.end14.out_free_crit_edge, label %if.end16

if.end14.out_free_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end16:                                         ; preds = %if.end14
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %call19 = call ptr %12(ptr noundef nonnull %2, ptr noundef %buf.0, i32 noundef %14, ptr noundef nonnull %ret) #9
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp20 = icmp sgt i32 %16, 0
  br i1 %cmp20, label %if.then21, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef %call19, i32 noundef %16) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %err.0 = phi i32 [ %call22, %if.then21 ], [ %16, %if.end16.if.end23_crit_edge ]
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not = icmp ne i32 %18, 0
  %cmp26 = icmp ne ptr %call19, %buf.0
  %spec.select = select i1 %tobool25.not, i1 %cmp26, i1 false
  br i1 %spec.select, label %land.rhs29, label %if.end23.out_free_crit_edge

if.end23.out_free_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

land.rhs29:                                       ; preds = %if.end23
  %.b94 = load i1, ptr @carl9170_debugfs_read.__already_done, align 1
  br i1 %.b94, label %land.rhs29.out_free_crit_edge, label %if.then36, !prof !330

land.rhs29.out_free_crit_edge:                    ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then36:                                        ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @carl9170_debugfs_read.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 105, i32 noundef 9, ptr noundef null) #9
  br label %out_free

out_free:                                         ; preds = %if.then36, %land.rhs29.out_free_crit_edge, %if.end23.out_free_crit_edge, %if.end14.out_free_crit_edge
  %res_buf.0 = phi ptr [ %buf.0, %if.end14.out_free_crit_edge ], [ %call19, %if.end23.out_free_crit_edge ], [ %call19, %if.then36 ], [ %call19, %land.rhs29.out_free_crit_edge ]
  %err.1 = phi i32 [ -19, %if.end14.out_free_crit_edge ], [ %err.0, %if.end23.out_free_crit_edge ], [ %err.0, %if.then36 ], [ %err.0, %land.rhs29.out_free_crit_edge ]
  call void @vfree(ptr noundef %res_buf.0) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_free ], [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -38, %if.end3.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_debugfs_write(ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp = icmp ugt i32 %count, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %call = tail call ptr @debugfs_real_fops(ptr noundef %file) #9
  %write = getelementptr i8, ptr %call, i32 -4
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call noalias ptr @vmalloc(i32 noundef %count) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then.i.i.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8
  tail call void @__check_object_size(ptr noundef nonnull %call9, i32 noundef %count, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.48, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %count, i32 -1226833920) #13, !srcloc !331
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !330

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9, i32 noundef %count) #9
  %5 = tail call i32 @llvm.read_register.i32(metadata !320) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !332
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9, ptr noundef %userbuf, i32 noundef %count) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end16, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !330

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i49 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i49
  %add.ptr.i.i = getelementptr i8, ptr %call9, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i49)
  br label %out_free

if.end16:                                         ; preds = %if.end.i.i
  %mutex = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 2
  %call17 = tail call i32 @mutex_trylock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end16.out_free_crit_edge, label %if.end20

if.end16.out_free_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end20:                                         ; preds = %if.end16
  %state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %req_dev_state = getelementptr i8, ptr %call, i32 128
  %11 = ptrtoint ptr %req_dev_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %req_dev_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp21.not = icmp ult i32 %10, %12
  br i1 %cmp21.not, label %if.end20.out_unlock_crit_edge, label %if.end23

if.end20.out_unlock_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  %call25 = tail call i32 %14(ptr noundef nonnull %1, ptr noundef nonnull %call9, i32 noundef %count) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.end23, %if.end20.out_unlock_crit_edge
  %err.0 = phi i32 [ %call25, %if.end23 ], [ -19, %if.end20.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %out_free

out_free:                                         ; preds = %out_unlock, %if.end16.out_free_crit_edge, %if.then11.i.i
  %err.1 = phi i32 [ %err.0, %out_unlock ], [ -11, %if.end16.out_free_crit_edge ], [ -14, %if.then11.i.i ]
  tail call void @vfree(ptr noundef nonnull %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_free ], [ 0, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ -38, %if.end5.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_real_fops(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_usb_rx_pool_urbs_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %rx_pool_urbs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_pool_urbs, i32 noundef 4) #9
  %2 = ptrtoint ptr %rx_pool_urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rx_pool_urbs, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call1
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_usb_rx_anch_urbs_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %rx_anch_urbs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_anch_urbs, i32 noundef 4) #9
  %2 = ptrtoint ptr %rx_anch_urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rx_anch_urbs, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call1
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_usb_rx_work_urbs_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %rx_work_urbs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_work_urbs, i32 noundef 4) #9
  %2 = ptrtoint ptr %rx_work_urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rx_work_urbs, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call1
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_total_queued_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %tx_total_queued = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 101
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_total_queued, i32 noundef 4) #9
  %2 = ptrtoint ptr %tx_total_queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_total_queued, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call1
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_total_pending_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %tx_total_pending = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 100
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_total_pending, i32 noundef 4) #9
  %2 = ptrtoint ptr %tx_total_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_total_pending, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call1
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_dropped_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %tx_dropped = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 84
  %2 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_dropped, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_stuck_read(ptr nocapture noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %queues24 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %queues24 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queues24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp26.not = icmp eq i16 %3, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %16, %cond.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.027 = phi i32 [ %inc, %cond.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %6
  %sub = sub i32 %bufsize, %6
  %call = tail call i32 @ieee80211_queue_stopped(ptr noundef %4, i32 noundef %i.027) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %arrayidx3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 32, i32 %i.027
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %sub4 = sub i32 %7, %9
  %call5 = tail call i32 @jiffies_to_msecs(i32 noundef %sub4) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %call5, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  %arrayidx6 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 33, i32 %i.027
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 @jiffies_to_msecs(i32 noundef %11) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.49, i32 noundef %i.027, i32 noundef %cond, i32 noundef %call7) #9
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add = add i32 %13, %call8
  store i32 %add, ptr %len, align 4
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx6, align 4
  %inc = add nuw nsw i32 %i.027, 1
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %queues, align 4
  %conv = zext i16 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cond.end.for.body_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_queue_stopped(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_ampdu_upload_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %tx_ampdu_upload = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 98
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_ampdu_upload, i32 noundef 4) #9
  %2 = ptrtoint ptr %tx_ampdu_upload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_ampdu_upload, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call1
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_ampdu_scheduler_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %tx_ampdu_scheduler = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 99
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_ampdu_scheduler, i32 noundef 4) #9
  %2 = ptrtoint ptr %tx_ampdu_scheduler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_ampdu_scheduler, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call1
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_ampdu_list_len_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %tx_ampdu_list_len = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 102
  %2 = ptrtoint ptr %tx_ampdu_list_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ampdu_list_len, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_rx_dropped_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %rx_dropped = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 87
  %2 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_dropped, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_sniffer_enabled_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %sniffer_enabled = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 53
  %2 = ptrtoint ptr %sniffer_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sniffer_enabled, align 4, !range !335
  %4 = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %4) #9
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add = add i32 %6, %call
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_rx_software_decryption_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %rx_software_decryption = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 47
  %2 = ptrtoint ptr %rx_software_decryption to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_software_decryption, align 8, !range !335
  %4 = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %4) #9
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add = add i32 %6, %call
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_mem_usage_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 106
  tail call void @_raw_spin_lock_bh(ptr noundef %mem_lock) #9
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %bufsize, %1
  %mem_blocks = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 15
  %2 = ptrtoint ptr %mem_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_blocks, align 8
  %mem_bitmap = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 107
  %4 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_bitmap, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.50, i32 noundef %3, ptr noundef %5) #9
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add i32 %7, %call
  store i32 %add, ptr %len, align 4
  %8 = ptrtoint ptr %mem_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_blocks, align 8
  %10 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem_bitmap, align 8
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %11, i32 noundef %9) #9
  %sub2 = sub i32 %bufsize, %add
  %arrayidx1 = getelementptr i8, ptr %buf, i32 %add
  %12 = ptrtoint ptr %mem_blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_blocks, align 8
  %mem_allocs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 109
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mem_allocs, i32 noundef 4) #9
  %14 = ptrtoint ptr %mem_allocs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %mem_allocs, align 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx1, i32 noundef %sub2, ptr noundef nonnull @.str.51, i32 noundef %call4.i, i32 noundef %13, i32 noundef %15) #9
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add11 = add i32 %17, %call10
  store i32 %add11, ptr %len, align 4
  %arrayidx12 = getelementptr i8, ptr %buf, i32 %add11
  %sub13 = sub i32 %bufsize, %add11
  %mem_free_blocks = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 108
  %call.i.i54 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mem_free_blocks, i32 noundef 4) #9
  %18 = ptrtoint ptr %mem_free_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %mem_free_blocks, align 4
  %call.i.i55 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mem_free_blocks, i32 noundef 4) #9
  %20 = ptrtoint ptr %mem_free_blocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %mem_free_blocks, align 4
  %mem_block_size = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 16
  %22 = ptrtoint ptr %mem_block_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mem_block_size, align 4
  %mul = mul i32 %23, %21
  %div52 = lshr i32 %mul, 10
  %24 = ptrtoint ptr %mem_blocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mem_blocks, align 8
  %mul22 = mul i32 %25, %23
  %div2353 = lshr i32 %mul22, 10
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx12, i32 noundef %sub13, ptr noundef nonnull @.str.52, i32 noundef %19, i32 noundef %div52, i32 noundef %div2353) #9
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %add25 = add i32 %27, %call24
  store i32 %add25, ptr %len, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mem_lock) #9
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_qos_stat_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %bufsize, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @modparam_noht to i32))
  %2 = load i32, ptr @modparam_noht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not, ptr @.str.55, ptr @.str.54
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond) #9
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %add = add i32 %4, %call
  store i32 %add, ptr %len, align 4
  %arrayidx1 = getelementptr i8, ptr %buf, i32 %add
  %sub2 = sub i32 %bufsize, %add
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx1, i32 noundef %sub2, ptr noundef nonnull @.str.56) #9
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add4 = add i32 %6, %call3
  store i32 %add4, ptr %len, align 4
  %tx_stats_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 74
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_stats_lock) #9
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %8
  %sub6 = sub i32 %bufsize, %8
  %tx_stats = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 75
  %len8 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 75, i32 0, i32 2
  %9 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len8, align 4
  %limit = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 75, i32 0, i32 1
  %11 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %limit, align 4
  %arrayidx12 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 1
  %len13 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 1, i32 2
  %13 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len13, align 4
  %limit16 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 1, i32 1
  %15 = ptrtoint ptr %limit16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %limit16, align 4
  %arrayidx18 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 2
  %len19 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 2, i32 2
  %17 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len19, align 4
  %limit22 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 2, i32 1
  %19 = ptrtoint ptr %limit22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %limit22, align 4
  %arrayidx24 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 3
  %len25 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 3, i32 2
  %21 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len25, align 4
  %limit28 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 75, i32 3, i32 1
  %23 = ptrtoint ptr %limit28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %limit28, align 4
  %call29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx5, i32 noundef %sub6, ptr noundef nonnull @.str.57, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #9
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %add30 = add i32 %26, %call29
  store i32 %add30, ptr %len, align 4
  %arrayidx31 = getelementptr i8, ptr %buf, i32 %add30
  %sub32 = sub i32 %bufsize, %add30
  %27 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_stats, align 4
  %29 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx12, align 4
  %31 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx18, align 4
  %33 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx24, align 4
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31, i32 noundef %sub32, ptr noundef nonnull @.str.58, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #9
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %add45 = add i32 %36, %call44
  store i32 %add45, ptr %len, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_stats_lock) #9
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %arrayidx47 = getelementptr i8, ptr %buf, i32 %38
  %sub48 = sub i32 %bufsize, %38
  %qlen.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 89, i32 0, i32 1
  %39 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i, align 4
  %qlen.i117 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 90, i32 0, i32 1
  %41 = ptrtoint ptr %qlen.i117 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen.i117, align 4
  %qlen.i118 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 1, i32 1
  %43 = ptrtoint ptr %qlen.i118 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i118, align 4
  %qlen.i119 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 1, i32 1
  %45 = ptrtoint ptr %qlen.i119 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qlen.i119, align 4
  %qlen.i120 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 2, i32 1
  %47 = ptrtoint ptr %qlen.i120 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qlen.i120, align 4
  %qlen.i121 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 2, i32 1
  %49 = ptrtoint ptr %qlen.i121 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qlen.i121, align 4
  %qlen.i122 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 3, i32 1
  %51 = ptrtoint ptr %qlen.i122 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qlen.i122, align 4
  %qlen.i123 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 3, i32 1
  %53 = ptrtoint ptr %qlen.i123 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen.i123, align 4
  %call71 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx47, i32 noundef %sub48, ptr noundef nonnull @.str.59, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54) #9
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len, align 4
  %add72 = add i32 %56, %call71
  store i32 %add72, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_sta_psm_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %off_override = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 5
  %2 = ptrtoint ptr %off_override to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %off_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 8, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool2.not, ptr @.str.63, ptr @.str.62
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond3 = phi ptr [ %cond, %cond.false ], [ @.str.61, %entry.cond.end_crit_edge ]
  %sub = sub i32 %bufsize, %1
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.60, ptr noundef nonnull %cond3) #9
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add i32 %7, %call
  store i32 %add, ptr %len, align 4
  %arrayidx4 = getelementptr i8, ptr %buf, i32 %add
  %sub5 = sub i32 %bufsize, %add
  %sleep_ms = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 4
  %8 = ptrtoint ptr %sleep_ms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sleep_ms, align 8
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx4, i32 noundef %sub5, ptr noundef nonnull @.str.64, i32 noundef %9) #9
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add8 = add i32 %11, %call7
  store i32 %add8, ptr %len, align 4
  %arrayidx9 = getelementptr i8, ptr %buf, i32 %add8
  %sub10 = sub i32 %bufsize, %add8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_action = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 2
  %13 = ptrtoint ptr %last_action to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_action, align 8
  %sub12 = sub i32 %12, %14
  %call13 = tail call i32 @jiffies_to_msecs(i32 noundef %sub12) #9
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx9, i32 noundef %sub10, ptr noundef nonnull @.str.65, i32 noundef %call13) #9
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %add15 = add i32 %16, %call14
  store i32 %add15, ptr %len, align 4
  %arrayidx16 = getelementptr i8, ptr %buf, i32 %add15
  %sub17 = sub i32 %bufsize, %add15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %last_slept = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 3
  %18 = ptrtoint ptr %last_slept to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_slept, align 4
  %sub19 = sub i32 %17, %19
  %call20 = tail call i32 @jiffies_to_msecs(i32 noundef %sub19) #9
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx16, i32 noundef %sub17, ptr noundef nonnull @.str.66, i32 noundef %call20) #9
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add22 = add i32 %21, %call21
  store i32 %add22, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_ampdu_state_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  %prefix = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !336
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 696, ptr noundef nonnull @.str.79) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b158 = load i1, ptr @carl9170_debugfs_ampdu_state_read.__warned, align 1
  br i1 %.b158, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @carl9170_debugfs_ampdu_state_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 309, ptr noundef nonnull @.str.67) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %tx_ampdu_list = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 97
  %4 = ptrtoint ptr %tx_ampdu_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %iter.0181 = load volatile ptr, ptr %tx_ampdu_list, align 4
  %cmp.not182 = icmp eq ptr %iter.0181, %tx_ampdu_list
  br i1 %cmp.not182, label %do.end.for.end96_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end96_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96

for.body:                                         ; preds = %for.end.for.body_crit_edge, %do.end.for.body_crit_edge
  %iter.0184 = phi ptr [ %iter.0, %for.end.for.body_crit_edge ], [ %iter.0181, %do.end.for.body_crit_edge ]
  %cnt.0183 = phi i32 [ %inc85, %for.end.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %lock = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %6
  %sub = sub i32 %bufsize, %6
  %tid = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 5
  %7 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tid, align 4
  %conv = zext i8 %8 to i32
  %bsn = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 9
  %9 = ptrtoint ptr %bsn to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bsn, align 4
  %conv10 = zext i16 %10 to i32
  %snx = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 7
  %11 = ptrtoint ptr %snx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %snx, align 4
  %conv11 = zext i16 %12 to i32
  %hsn = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 8
  %13 = ptrtoint ptr %hsn to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hsn, align 2
  %conv12 = zext i16 %14 to i32
  %max = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 6
  %15 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max, align 2
  %conv13 = zext i16 %16 to i32
  %state = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %counter = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 3
  %19 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %counter, align 4
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.68, i32 noundef %cnt.0183, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %18, i32 noundef %20) #9
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %add = add i32 %22, %call14
  store i32 %add, ptr %len, align 4
  %arrayidx15 = getelementptr i8, ptr %buf, i32 %add
  %sub16 = sub i32 %bufsize, %add
  %bitmap = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 10
  %call17 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx15, i32 noundef %sub16, ptr noundef nonnull @.str.69, i32 noundef 128, ptr noundef %bitmap) #9
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %add18 = add i32 %24, %call17
  store i32 %add18, ptr %len, align 4
  %arrayidx19 = getelementptr i8, ptr %buf, i32 %add18
  %sub20 = sub i32 %bufsize, %add18
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx19, i32 noundef %sub20, ptr noundef nonnull @.str.70, i32 noundef 35, ptr noundef nonnull @.str.71) #9
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %add22 = add i32 %26, %call21
  store i32 %add22, ptr %len, align 4
  %27 = ptrtoint ptr %snx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %snx, align 4
  %29 = ptrtoint ptr %bsn to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bsn, align 4
  %sub27 = sub i16 %28, %30
  %and = and i16 %sub27, 4095
  %sub29 = sub nsw i16 127, %and
  %div168 = sdiv i16 %sub29, 4
  %div38169 = sdiv i16 %sub29, 32
  %narrow = add nsw i16 %div38169, 1
  %narrow174 = add nsw i16 %narrow, %div168
  %add40 = sext i16 %narrow174 to i32
  %arrayidx41 = getelementptr i8, ptr %buf, i32 %add22
  %sub42 = sub i32 %bufsize, %add22
  %call43 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx41, i32 noundef %sub42, ptr noundef nonnull @.str.72, i32 noundef %add40, ptr noundef nonnull @.str.73) #9
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %add44 = add i32 %32, %call43
  store i32 %add44, ptr %len, align 4
  %33 = ptrtoint ptr %hsn to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hsn, align 2
  %conv46 = zext i16 %34 to i32
  %35 = ptrtoint ptr %bsn to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bsn, align 4
  %conv48 = zext i16 %36 to i32
  %sub49 = sub nsw i32 %conv46, %conv48
  %rem = srem i32 %sub49, 128
  %sub51 = sub nsw i32 127, %rem
  %div52170171175 = lshr i32 %sub51, 2
  %div61172173176 = lshr i32 %sub51, 5
  %add62 = add nuw nsw i32 %div61172173176, 1
  %add63 = add nuw nsw i32 %add62, %div52170171175
  %arrayidx64 = getelementptr i8, ptr %buf, i32 %add44
  %sub65 = sub i32 %bufsize, %add44
  %call66 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx64, i32 noundef %sub65, ptr noundef nonnull @.str.74, i32 noundef %add63, ptr noundef nonnull @.str.75) #9
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %add67 = add i32 %38, %call66
  store i32 %add67, ptr %len, align 4
  %arrayidx68 = getelementptr i8, ptr %buf, i32 %add67
  %sub69 = sub i32 %bufsize, %add67
  %queue = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 11
  %qlen.i = getelementptr inbounds %struct.carl9170_sta_tid, ptr %iter.0184, i32 0, i32 11, i32 1
  %39 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i, align 4
  %call71 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx68, i32 noundef %sub69, ptr noundef nonnull @.str.76, i32 noundef %40) #9
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %add72 = add i32 %42, %call71
  store i32 %add72, ptr %len, align 4
  %43 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %skb.0177 = load ptr, ptr %queue, align 4
  %cmp77.not178 = icmp eq ptr %skb.0177, %queue
  br i1 %cmp77.not178, label %for.body.for.end_crit_edge, label %for.body.for.body79_crit_edge

for.body.for.body79_crit_edge:                    ; preds = %for.body
  br label %for.body79

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body79:                                       ; preds = %for.body79.for.body79_crit_edge, %for.body.for.body79_crit_edge
  %skb.0180 = phi ptr [ %skb.0, %for.body79.for.body79_crit_edge ], [ %skb.0177, %for.body.for.body79_crit_edge ]
  %fc.0179 = phi i32 [ %inc, %for.body79.for.body79_crit_edge ], [ 0, %for.body.for.body79_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prefix) #9
  %44 = call ptr @memset(ptr %prefix, i32 255, i32 32)
  %call81 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prefix, i32 noundef 32, ptr noundef nonnull @.str.77, i32 noundef %fc.0179)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0180, i32 0, i32 19
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0180, i32 0, i32 3, i32 24
  %frame_data.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %48
  %sub.i = sub i32 %bufsize, %48
  %cookie.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %46, i32 0, i32 3
  %49 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cookie.i, align 4
  %conv.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %frame_data.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %frame_data.i, align 2
  %53 = and i16 %52, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp.i.not.i.i = icmp eq i16 %53, 0
  %addr3.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %46, i32 1, i32 0, i32 8, i32 1
  %addr1.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %46, i32 1, i32 0, i32 3
  %retval.0.i.i = select i1 %cmp.i.not.i.i, ptr %addr1.i.i, ptr %addr3.i.i
  %seq_ctrl.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %frame_data.i, i32 0, i32 5
  %54 = ptrtoint ptr %seq_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %seq_ctrl.i.i, align 2
  %56 = call i16 @llvm.bswap.i16(i16 %55) #9
  %57 = lshr i16 %56, 4
  %conv4.i = zext i16 %57 to i32
  %mac_control.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %46, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %mac_control.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mac_control.i, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59) #9
  %conv5.i = zext i16 %60 to i32
  %phy_control.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %46, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %phy_control.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %phy_control.i, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %65 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rate_driver_data.i, align 4
  %sub7.i = sub i32 %64, %66
  %call8.i = call i32 @jiffies_to_msecs(i32 noundef %sub7.i) #9
  %call9.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull @.str.80, ptr noundef nonnull %prefix, ptr noundef %skb.0180, i32 noundef %conv.i, ptr noundef %retval.0.i.i, i32 noundef %conv4.i, i32 noundef %conv5.i, i32 noundef %63, i32 noundef %call8.i) #9
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len, align 4
  %add.i = add i32 %68, %call9.i
  store i32 %add.i, ptr %len, align 4
  %inc = add i32 %fc.0179, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prefix) #9
  %69 = ptrtoint ptr %skb.0180 to i32
  call void @__asan_load4_noabort(i32 %69)
  %skb.0 = load ptr, ptr %skb.0180, align 4
  %cmp77.not = icmp eq ptr %skb.0, %queue
  br i1 %cmp77.not, label %for.body79.for.end_crit_edge, label %for.body79.for.body79_crit_edge

for.body79.for.body79_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body79

for.body79.for.end_crit_edge:                     ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body79.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %inc85 = add i32 %cnt.0183, 1
  %70 = ptrtoint ptr %iter.0184 to i32
  call void @__asan_load4_noabort(i32 %70)
  %iter.0 = load volatile ptr, ptr %iter.0184, align 4
  %cmp.not = icmp eq ptr %iter.0, %tx_ampdu_list
  br i1 %cmp.not, label %for.end.for.end96_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.for.end96_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96

for.end96:                                        ; preds = %for.end.for.end96_crit_edge, %do.end.for.end96_crit_edge
  %call.i159 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i159, label %for.end96.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i162

for.end96.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i162:                               ; preds = %for.end96
  %call1.i160 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool.not.i161 = icmp eq i32 %call1.i160, 0
  br i1 %tobool.not.i161, label %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i164

land.lhs.true.i162.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i164:                              ; preds = %land.lhs.true.i162
  %.b4.i163 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i163, label %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, label %if.then.i165

land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i165:                                     ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 724, ptr noundef nonnull @.str.81) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i165, %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, %for.end96.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !337
  %71 = call i32 @llvm.read_register.i32(metadata !320) #9
  %and.i.i.i.i.i166 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i166 to ptr
  %preempt_count.i.i.i.i167 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i167, align 4
  %sub.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i167, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_hw_tx_tally_read(ptr noundef %ar, ptr nocapture noundef readnone %dum, i32 noundef %bufsize, ptr nocapture noundef %ret) #0 align 64 {
entry:
  %__tmp = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef 240) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %__tmp) #9
  %0 = getelementptr inbounds [3 x i32], ptr %__tmp, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %__tmp, i32 0, i32 2
  %2 = ptrtoint ptr %__tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1849076, ptr %__tmp, align 4
  %arrayidx2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx2, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1848968, ptr %0, align 4
  %arrayidx2.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2.1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1849036, ptr %1, align 4
  %arrayidx2.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx2.2, align 4
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp3 = icmp ugt i32 %9, 2
  br i1 %cmp3, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %__tmp) #9
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %call9 = call i32 @carl9170_read_mreg(ptr noundef %ar, i32 noundef 3, ptr noundef nonnull %__tmp, ptr noundef %arrayidx2) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %__tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %for.cond15.preheader, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.cond15.preheader:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %debug18 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 118
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %12 = ptrtoint ptr %debug18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug18, align 4
  %add = add i32 %13, %11
  store i32 %add, ptr %debug18, align 4
  %14 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.1, align 4
  %arrayidx24.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24.1, align 4
  %add.1 = add i32 %17, %15
  store i32 %add.1, ptr %arrayidx24.1, align 4
  %18 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.2, align 4
  %arrayidx24.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24.2, align 4
  %add.2 = add i32 %21, %19
  store i32 %add.2, ptr %arrayidx24.2, align 4
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ret, align 4
  %arrayidx31 = getelementptr i8, ptr %call, i32 %23
  %sub = sub i32 240, %23
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31, i32 noundef %sub, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([3 x %struct.hw_stat_reg_entry], ptr @hw_tx_tally_regs, i32 0, i32 0, i32 1), i32 noundef %add, i32 noundef %11) #9
  %24 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ret, align 4
  %add43 = add i32 %25, %call42
  store i32 %add43, ptr %ret, align 4
  %arrayidx31.1 = getelementptr i8, ptr %call, i32 %add43
  %sub.1 = sub i32 240, %add43
  %26 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24.1, align 4
  %28 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.1, align 4
  %call42.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.1, i32 noundef %sub.1, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([3 x %struct.hw_stat_reg_entry], ptr @hw_tx_tally_regs, i32 0, i32 1, i32 1), i32 noundef %27, i32 noundef %29) #9
  %30 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ret, align 4
  %add43.1 = add i32 %31, %call42.1
  store i32 %add43.1, ptr %ret, align 4
  %arrayidx31.2 = getelementptr i8, ptr %call, i32 %add43.1
  %sub.2 = sub i32 240, %add43.1
  %32 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx24.2, align 4
  %34 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.2, align 4
  %call42.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.2, i32 noundef %sub.2, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([3 x %struct.hw_stat_reg_entry], ptr @hw_tx_tally_regs, i32 0, i32 2, i32 1), i32 noundef %33, i32 noundef %35) #9
  %36 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ret, align 4
  %add43.2 = add i32 %37, %call42.2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.cond15.preheader, %if.end10.cleanup.sink.split_crit_edge, %if.end10.thread
  %add43.2.sink = phi i32 [ %add43.2, %for.cond15.preheader ], [ -19, %if.end10.thread ], [ %call9, %if.end10.cleanup.sink.split_crit_edge ]
  %38 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add43.2.sink, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_read_mreg(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_hw_rx_tally_read(ptr noundef %ar, ptr nocapture noundef readnone %dum, i32 noundef %bufsize, ptr nocapture noundef %ret) #0 align 64 {
entry:
  %__tmp = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef 640) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__tmp) #9
  %0 = getelementptr inbounds [8 x i32], ptr %__tmp, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %__tmp, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %__tmp, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %__tmp, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %__tmp, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %__tmp, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %__tmp, i32 0, i32 7
  %7 = ptrtoint ptr %__tmp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1848996, ptr %__tmp, align 4
  %arrayidx2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 3, i32 0
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx2, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1849000, ptr %0, align 4
  %arrayidx2.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx2.1, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1848988, ptr %1, align 4
  %arrayidx2.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx2.2, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1849004, ptr %2, align 4
  %arrayidx2.3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx2.3, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1849020, ptr %3, align 4
  %arrayidx2.4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx2.4, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1850528, ptr %4, align 4
  %arrayidx2.5 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 3, i32 5
  %18 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx2.5, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1850532, ptr %5, align 4
  %arrayidx2.6 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 3, i32 6
  %20 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx2.6, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1850536, ptr %6, align 4
  %arrayidx2.7 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx2.7, align 4
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp3 = icmp ugt i32 %24, 2
  br i1 %cmp3, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__tmp) #9
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %call9 = call i32 @carl9170_read_mreg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull %__tmp, ptr noundef %arrayidx2) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %for.body17.preheader, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body17.preheader:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2, align 4
  %arrayidx24 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 2, i32 0
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx24, align 4
  %add = add i32 %28, %26
  store i32 %add, ptr %arrayidx24, align 4
  %29 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.1, align 4
  %arrayidx24.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx24.1, align 4
  %add.1 = add i32 %32, %30
  store i32 %add.1, ptr %arrayidx24.1, align 4
  %33 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.2, align 4
  %arrayidx24.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx24.2, align 4
  %add.2 = add i32 %36, %34
  store i32 %add.2, ptr %arrayidx24.2, align 4
  %37 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.3, align 4
  %arrayidx24.3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx24.3, align 4
  %add.3 = add i32 %40, %38
  store i32 %add.3, ptr %arrayidx24.3, align 4
  %41 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx2.4, align 4
  %arrayidx24.4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx24.4, align 4
  %add.4 = add i32 %44, %42
  store i32 %add.4, ptr %arrayidx24.4, align 4
  %45 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.5, align 4
  %arrayidx24.5 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 2, i32 5
  %47 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx24.5, align 4
  %add.5 = add i32 %48, %46
  store i32 %add.5, ptr %arrayidx24.5, align 4
  %49 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.6, align 4
  %arrayidx24.6 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 2, i32 6
  %51 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx24.6, align 4
  %add.6 = add i32 %52, %50
  store i32 %add.6, ptr %arrayidx24.6, align 4
  %53 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx2.7, align 4
  %arrayidx24.7 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 2, i32 7
  %55 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx24.7, align 4
  %add.7 = add i32 %56, %54
  store i32 %add.7, ptr %arrayidx24.7, align 4
  %57 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ret, align 4
  %arrayidx31 = getelementptr i8, ptr %call, i32 %58
  %sub = sub i32 640, %58
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31, i32 noundef %sub, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([8 x %struct.hw_stat_reg_entry], ptr @hw_rx_tally_regs, i32 0, i32 0, i32 1), i32 noundef %add, i32 noundef %26) #9
  %59 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ret, align 4
  %add43 = add i32 %60, %call42
  store i32 %add43, ptr %ret, align 4
  %arrayidx31.1 = getelementptr i8, ptr %call, i32 %add43
  %sub.1 = sub i32 640, %add43
  %61 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx24.1, align 4
  %63 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx2.1, align 4
  %call42.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.1, i32 noundef %sub.1, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([8 x %struct.hw_stat_reg_entry], ptr @hw_rx_tally_regs, i32 0, i32 1, i32 1), i32 noundef %62, i32 noundef %64) #9
  %65 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ret, align 4
  %add43.1 = add i32 %66, %call42.1
  store i32 %add43.1, ptr %ret, align 4
  %arrayidx31.2 = getelementptr i8, ptr %call, i32 %add43.1
  %sub.2 = sub i32 640, %add43.1
  %67 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx24.2, align 4
  %69 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx2.2, align 4
  %call42.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.2, i32 noundef %sub.2, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([8 x %struct.hw_stat_reg_entry], ptr @hw_rx_tally_regs, i32 0, i32 2, i32 1), i32 noundef %68, i32 noundef %70) #9
  %71 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ret, align 4
  %add43.2 = add i32 %72, %call42.2
  store i32 %add43.2, ptr %ret, align 4
  %arrayidx31.3 = getelementptr i8, ptr %call, i32 %add43.2
  %sub.3 = sub i32 640, %add43.2
  %73 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx24.3, align 4
  %75 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx2.3, align 4
  %call42.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.3, i32 noundef %sub.3, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([8 x %struct.hw_stat_reg_entry], ptr @hw_rx_tally_regs, i32 0, i32 3, i32 1), i32 noundef %74, i32 noundef %76) #9
  %77 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ret, align 4
  %add43.3 = add i32 %78, %call42.3
  store i32 %add43.3, ptr %ret, align 4
  %arrayidx31.4 = getelementptr i8, ptr %call, i32 %add43.3
  %sub.4 = sub i32 640, %add43.3
  %79 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx24.4, align 4
  %81 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx2.4, align 4
  %call42.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.4, i32 noundef %sub.4, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([8 x %struct.hw_stat_reg_entry], ptr @hw_rx_tally_regs, i32 0, i32 4, i32 1), i32 noundef %80, i32 noundef %82) #9
  %83 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ret, align 4
  %add43.4 = add i32 %84, %call42.4
  store i32 %add43.4, ptr %ret, align 4
  %arrayidx31.5 = getelementptr i8, ptr %call, i32 %add43.4
  %sub.5 = sub i32 640, %add43.4
  %85 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx24.5, align 4
  %87 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx2.5, align 4
  %call42.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.5, i32 noundef %sub.5, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([8 x %struct.hw_stat_reg_entry], ptr @hw_rx_tally_regs, i32 0, i32 5, i32 1), i32 noundef %86, i32 noundef %88) #9
  %89 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ret, align 4
  %add43.5 = add i32 %90, %call42.5
  store i32 %add43.5, ptr %ret, align 4
  %arrayidx31.6 = getelementptr i8, ptr %call, i32 %add43.5
  %sub.6 = sub i32 640, %add43.5
  %91 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx24.6, align 4
  %93 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx2.6, align 4
  %call42.6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.6, i32 noundef %sub.6, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([8 x %struct.hw_stat_reg_entry], ptr @hw_rx_tally_regs, i32 0, i32 6, i32 1), i32 noundef %92, i32 noundef %94) #9
  %95 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ret, align 4
  %add43.6 = add i32 %96, %call42.6
  store i32 %add43.6, ptr %ret, align 4
  %arrayidx31.7 = getelementptr i8, ptr %call, i32 %add43.6
  %sub.7 = sub i32 640, %add43.6
  %97 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx24.7, align 4
  %99 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx2.7, align 4
  %call42.7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.7, i32 noundef %sub.7, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([8 x %struct.hw_stat_reg_entry], ptr @hw_rx_tally_regs, i32 0, i32 7, i32 1), i32 noundef %98, i32 noundef %100) #9
  %101 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ret, align 4
  %add43.7 = add i32 %102, %call42.7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body17.preheader, %if.end10.cleanup.sink.split_crit_edge, %if.end10.thread
  %add43.7.sink = phi i32 [ %add43.7, %for.body17.preheader ], [ -19, %if.end10.thread ], [ %call9, %if.end10.cleanup.sink.split_crit_edge ]
  %103 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add43.7.sink, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_hw_phy_errors_read(ptr noundef %ar, ptr nocapture noundef readnone %dum, i32 noundef %bufsize, ptr nocapture noundef %ret) #0 align 64 {
entry:
  %__tmp = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef 480) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %__tmp) #9
  %0 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 5
  %5 = ptrtoint ptr %__tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1850540, ptr %__tmp, align 4
  %arrayidx2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx2, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1850544, ptr %0, align 4
  %arrayidx2.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx2.1, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1850548, ptr %1, align 4
  %arrayidx2.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx2.2, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1850552, ptr %2, align 4
  %arrayidx2.3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx2.3, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1850556, ptr %3, align 4
  %arrayidx2.4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx2.4, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1850560, ptr %4, align 4
  %arrayidx2.5 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 5, i32 5
  %16 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx2.5, align 4
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp3 = icmp ugt i32 %18, 2
  br i1 %cmp3, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %__tmp) #9
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %call9 = call i32 @carl9170_read_mreg(ptr noundef %ar, i32 noundef 6, ptr noundef nonnull %__tmp, ptr noundef %arrayidx2) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %__tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %for.body17.preheader, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body17.preheader:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2, align 4
  %arrayidx24 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 4, i32 0
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx24, align 4
  %add = add i32 %22, %20
  store i32 %add, ptr %arrayidx24, align 4
  %23 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2.1, align 4
  %arrayidx24.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx24.1, align 4
  %add.1 = add i32 %26, %24
  store i32 %add.1, ptr %arrayidx24.1, align 4
  %27 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx2.2, align 4
  %arrayidx24.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx24.2, align 4
  %add.2 = add i32 %30, %28
  store i32 %add.2, ptr %arrayidx24.2, align 4
  %31 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.3, align 4
  %arrayidx24.3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx24.3, align 4
  %add.3 = add i32 %34, %32
  store i32 %add.3, ptr %arrayidx24.3, align 4
  %35 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx2.4, align 4
  %arrayidx24.4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx24.4, align 4
  %add.4 = add i32 %38, %36
  store i32 %add.4, ptr %arrayidx24.4, align 4
  %39 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx2.5, align 4
  %arrayidx24.5 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 4, i32 5
  %41 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx24.5, align 4
  %add.5 = add i32 %42, %40
  store i32 %add.5, ptr %arrayidx24.5, align 4
  %43 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ret, align 4
  %arrayidx31 = getelementptr i8, ptr %call, i32 %44
  %sub = sub i32 480, %44
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31, i32 noundef %sub, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_phy_errors_regs, i32 0, i32 0, i32 1), i32 noundef %add, i32 noundef %20) #9
  %45 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ret, align 4
  %add43 = add i32 %46, %call42
  store i32 %add43, ptr %ret, align 4
  %arrayidx31.1 = getelementptr i8, ptr %call, i32 %add43
  %sub.1 = sub i32 480, %add43
  %47 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx24.1, align 4
  %49 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.1, align 4
  %call42.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.1, i32 noundef %sub.1, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_phy_errors_regs, i32 0, i32 1, i32 1), i32 noundef %48, i32 noundef %50) #9
  %51 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ret, align 4
  %add43.1 = add i32 %52, %call42.1
  store i32 %add43.1, ptr %ret, align 4
  %arrayidx31.2 = getelementptr i8, ptr %call, i32 %add43.1
  %sub.2 = sub i32 480, %add43.1
  %53 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx24.2, align 4
  %55 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx2.2, align 4
  %call42.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.2, i32 noundef %sub.2, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_phy_errors_regs, i32 0, i32 2, i32 1), i32 noundef %54, i32 noundef %56) #9
  %57 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ret, align 4
  %add43.2 = add i32 %58, %call42.2
  store i32 %add43.2, ptr %ret, align 4
  %arrayidx31.3 = getelementptr i8, ptr %call, i32 %add43.2
  %sub.3 = sub i32 480, %add43.2
  %59 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx24.3, align 4
  %61 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx2.3, align 4
  %call42.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.3, i32 noundef %sub.3, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_phy_errors_regs, i32 0, i32 3, i32 1), i32 noundef %60, i32 noundef %62) #9
  %63 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ret, align 4
  %add43.3 = add i32 %64, %call42.3
  store i32 %add43.3, ptr %ret, align 4
  %arrayidx31.4 = getelementptr i8, ptr %call, i32 %add43.3
  %sub.4 = sub i32 480, %add43.3
  %65 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx24.4, align 4
  %67 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx2.4, align 4
  %call42.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.4, i32 noundef %sub.4, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_phy_errors_regs, i32 0, i32 4, i32 1), i32 noundef %66, i32 noundef %68) #9
  %69 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ret, align 4
  %add43.4 = add i32 %70, %call42.4
  store i32 %add43.4, ptr %ret, align 4
  %arrayidx31.5 = getelementptr i8, ptr %call, i32 %add43.4
  %sub.5 = sub i32 480, %add43.4
  %71 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx24.5, align 4
  %73 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx2.5, align 4
  %call42.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx31.5, i32 noundef %sub.5, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_phy_errors_regs, i32 0, i32 5, i32 1), i32 noundef %72, i32 noundef %74) #9
  %75 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ret, align 4
  %add43.5 = add i32 %76, %call42.5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body17.preheader, %if.end10.cleanup.sink.split_crit_edge, %if.end10.thread
  %add43.5.sink = phi i32 [ %add43.5, %for.body17.preheader ], [ -19, %if.end10.thread ], [ %call9, %if.end10.cleanup.sink.split_crit_edge ]
  %77 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add43.5.sink, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_phy_noise_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @carl9170_get_noisefloor(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %bufsize, %1
  %noise = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 57
  %2 = ptrtoint ptr %noise to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %noise, align 4
  %arrayidx3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 57, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.83, i32 noundef %3, i32 noundef %5) #9
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add i32 %7, %call4
  store i32 %add, ptr %len, align 4
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %add
  %sub6 = sub i32 %bufsize, %add
  %arrayidx8 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 57, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 57, i32 3
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx5, i32 noundef %sub6, ptr noundef nonnull @.str.84, i32 noundef %9, i32 noundef %11) #9
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add12 = add i32 %13, %call11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %storemerge = phi i32 [ %add12, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_get_noisefloor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_hw_wlan_queue_read(ptr noundef %ar, ptr nocapture noundef readnone %dum, i32 noundef %bufsize, ptr nocapture noundef %ret) #0 align 64 {
entry:
  %__tmp = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef 960) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp) #9
  %0 = ptrtoint ptr %__tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1850684, ptr %__tmp, align 4
  %arrayidx2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 0
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %arrayidx2, align 4
  %arrayidx1.1 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1850672, ptr %arrayidx1.1, align 4
  %arrayidx2.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx2.1, align 4
  %arrayidx1.2 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1850624, ptr %arrayidx1.2, align 4
  %arrayidx2.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2.2, align 4
  %arrayidx1.3 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1850628, ptr %arrayidx1.3, align 4
  %arrayidx2.3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx2.3, align 4
  %arrayidx1.4 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1850632, ptr %arrayidx1.4, align 4
  %arrayidx2.4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 4
  %9 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx2.4, align 4
  %arrayidx1.5 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1850636, ptr %arrayidx1.5, align 4
  %arrayidx2.5 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 5
  %11 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx2.5, align 4
  %arrayidx1.6 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1850640, ptr %arrayidx1.6, align 4
  %arrayidx2.6 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 6
  %13 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx2.6, align 4
  %arrayidx1.7 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1850644, ptr %arrayidx1.7, align 4
  %arrayidx2.7 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 7
  %15 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx2.7, align 4
  %arrayidx1.8 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1850648, ptr %arrayidx1.8, align 4
  %arrayidx2.8 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 8
  %17 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx2.8, align 4
  %arrayidx1.9 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1850652, ptr %arrayidx1.9, align 4
  %arrayidx2.9 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 9
  %19 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx2.9, align 4
  %arrayidx1.10 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 10
  %20 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1850664, ptr %arrayidx1.10, align 4
  %arrayidx2.10 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 10
  %21 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx2.10, align 4
  %arrayidx1.11 = getelementptr inbounds [12 x i32], ptr %__tmp, i32 0, i32 11
  %22 = ptrtoint ptr %arrayidx1.11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1850668, ptr %arrayidx1.11, align 4
  %arrayidx2.11 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 11
  %23 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx2.11, align 4
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp3 = icmp ugt i32 %25, 2
  br i1 %cmp3, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp) #9
  br label %if.then12

if.end10:                                         ; preds = %if.end
  %call9 = call i32 @carl9170_read_mreg(ptr noundef %ar, i32 noundef 12, ptr noundef nonnull %__tmp, ptr noundef %arrayidx2) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end10.for.body16_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.end10.for.body16_crit_edge:                    ; preds = %if.end10
  br label %for.body16

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end10.thread
  %__err.052 = phi i32 [ -19, %if.end10.thread ], [ %call9, %if.end10.if.then12_crit_edge ]
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %__err.052, ptr %ret, align 4
  br label %cleanup

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %if.end10.for.body16_crit_edge
  %i.054 = phi i32 [ %inc26, %for.body16.for.body16_crit_edge ], [ 0, %if.end10.for.body16_crit_edge ]
  %27 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ret, align 4
  %arrayidx17 = getelementptr i8, ptr %call, i32 %28
  %sub = sub i32 960, %28
  %nreg = getelementptr [12 x %struct.hw_stat_reg_entry], ptr @hw_wlan_queue_regs, i32 0, i32 %i.054, i32 1
  %arrayidx23 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 6, i32 %i.054
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx23, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx17, i32 noundef %sub, ptr noundef nonnull @.str.85, ptr noundef %nreg, i32 noundef %30) #9
  %31 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ret, align 4
  %add = add i32 %32, %call24
  store i32 %add, ptr %ret, align 4
  %inc26 = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc26, 12
  br i1 %exitcond.not, label %for.body16.cleanup_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body16.cleanup_crit_edge, %if.then12, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_hw_pta_queue_read(ptr noundef %ar, ptr nocapture noundef readnone %dum, i32 noundef %bufsize, ptr nocapture noundef %ret) #0 align 64 {
entry:
  %__tmp = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef 480) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %__tmp) #9
  %0 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i32], ptr %__tmp, i32 0, i32 5
  %5 = ptrtoint ptr %__tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1974588, ptr %__tmp, align 4
  %arrayidx2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 7, i32 0
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx2, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1974584, ptr %0, align 4
  %arrayidx2.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx2.1, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1974596, ptr %1, align 4
  %arrayidx2.2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx2.2, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1974592, ptr %2, align 4
  %arrayidx2.3 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx2.3, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1974580, ptr %3, align 4
  %arrayidx2.4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 7, i32 4
  %14 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx2.4, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1974600, ptr %4, align 4
  %arrayidx2.5 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx2.5, align 4
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp3 = icmp ugt i32 %18, 2
  br i1 %cmp3, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %__tmp) #9
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %call9 = call i32 @carl9170_read_mreg(ptr noundef %ar, i32 noundef 6, ptr noundef nonnull %__tmp, ptr noundef %arrayidx2) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %__tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %for.body16.preheader, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body16.preheader:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret, align 4
  %arrayidx17 = getelementptr i8, ptr %call, i32 %20
  %sub = sub i32 480, %20
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx17, i32 noundef %sub, ptr noundef nonnull @.str.85, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_pta_queue_regs, i32 0, i32 0, i32 1), i32 noundef %22) #9
  %23 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ret, align 4
  %add = add i32 %24, %call24
  store i32 %add, ptr %ret, align 4
  %arrayidx17.1 = getelementptr i8, ptr %call, i32 %add
  %sub.1 = sub i32 480, %add
  %25 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.1, align 4
  %call24.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx17.1, i32 noundef %sub.1, ptr noundef nonnull @.str.85, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_pta_queue_regs, i32 0, i32 1, i32 1), i32 noundef %26) #9
  %27 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ret, align 4
  %add.1 = add i32 %28, %call24.1
  store i32 %add.1, ptr %ret, align 4
  %arrayidx17.2 = getelementptr i8, ptr %call, i32 %add.1
  %sub.2 = sub i32 480, %add.1
  %29 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.2, align 4
  %call24.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx17.2, i32 noundef %sub.2, ptr noundef nonnull @.str.85, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_pta_queue_regs, i32 0, i32 2, i32 1), i32 noundef %30) #9
  %31 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ret, align 4
  %add.2 = add i32 %32, %call24.2
  store i32 %add.2, ptr %ret, align 4
  %arrayidx17.3 = getelementptr i8, ptr %call, i32 %add.2
  %sub.3 = sub i32 480, %add.2
  %33 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.3, align 4
  %call24.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx17.3, i32 noundef %sub.3, ptr noundef nonnull @.str.85, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_pta_queue_regs, i32 0, i32 3, i32 1), i32 noundef %34) #9
  %35 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ret, align 4
  %add.3 = add i32 %36, %call24.3
  store i32 %add.3, ptr %ret, align 4
  %arrayidx17.4 = getelementptr i8, ptr %call, i32 %add.3
  %sub.4 = sub i32 480, %add.3
  %37 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.4, align 4
  %call24.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx17.4, i32 noundef %sub.4, ptr noundef nonnull @.str.85, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_pta_queue_regs, i32 0, i32 4, i32 1), i32 noundef %38) #9
  %39 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ret, align 4
  %add.4 = add i32 %40, %call24.4
  store i32 %add.4, ptr %ret, align 4
  %arrayidx17.5 = getelementptr i8, ptr %call, i32 %add.4
  %sub.5 = sub i32 480, %add.4
  %41 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx2.5, align 4
  %call24.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx17.5, i32 noundef %sub.5, ptr noundef nonnull @.str.85, ptr noundef getelementptr inbounds ([6 x %struct.hw_stat_reg_entry], ptr @hw_pta_queue_regs, i32 0, i32 5, i32 1), i32 noundef %42) #9
  %43 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ret, align 4
  %add.5 = add i32 %44, %call24.5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body16.preheader, %if.end10.cleanup.sink.split_crit_edge, %if.end10.thread
  %add.5.sink = phi i32 [ %add.5, %for.body16.preheader ], [ -19, %if.end10.thread ], [ %call9, %if.end10.cleanup.sink.split_crit_edge ]
  %45 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.5.sink, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_hw_ampdu_info_read(ptr noundef %ar, ptr nocapture noundef readnone %dum, i32 noundef %bufsize, ptr nocapture noundef %ret) #0 align 64 {
entry:
  %__tmp = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef 160) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__tmp) #9
  %0 = getelementptr inbounds [2 x i32], ptr %__tmp, i32 0, i32 1
  %1 = ptrtoint ptr %__tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1850272, ptr %__tmp, align 4
  %arrayidx2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 8, i32 0
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx2, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1850268, ptr %0, align 4
  %arrayidx2.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx2.1, align 4
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp3 = icmp ugt i32 %6, 2
  br i1 %cmp3, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__tmp) #9
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %call9 = call i32 @carl9170_read_mreg(ptr noundef %ar, i32 noundef 2, ptr noundef nonnull %__tmp, ptr noundef %arrayidx2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %for.body16.preheader, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body16.preheader:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret, align 4
  %arrayidx17 = getelementptr i8, ptr %call, i32 %8
  %sub = sub i32 160, %8
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx17, i32 noundef %sub, ptr noundef nonnull @.str.85, ptr noundef getelementptr inbounds ([2 x %struct.hw_stat_reg_entry], ptr @hw_ampdu_info_regs, i32 0, i32 0, i32 1), i32 noundef %10) #9
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret, align 4
  %add = add i32 %12, %call24
  store i32 %add, ptr %ret, align 4
  %arrayidx17.1 = getelementptr i8, ptr %call, i32 %add
  %sub.1 = sub i32 160, %add
  %13 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.1, align 4
  %call24.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx17.1, i32 noundef %sub.1, ptr noundef nonnull @.str.85, ptr noundef getelementptr inbounds ([2 x %struct.hw_stat_reg_entry], ptr @hw_ampdu_info_regs, i32 0, i32 1, i32 1), i32 noundef %14) #9
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ret, align 4
  %add.1 = add i32 %16, %call24.1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body16.preheader, %if.end10.cleanup.sink.split_crit_edge, %if.end10.thread
  %add.1.sink = phi i32 [ %add.1, %for.body16.preheader ], [ -19, %if.end10.thread ], [ %call9, %if.end10.cleanup.sink.split_crit_edge ]
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.1.sink, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_ampdu_density_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %current_density = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 103
  %2 = ptrtoint ptr %current_density to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_density, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_ampdu_factor_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %current_factor = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 104
  %2 = ptrtoint ptr %current_factor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_factor, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_janitor_last_run_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %tx_janitor_last_run = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 92
  %3 = ptrtoint ptr %tx_janitor_last_run to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_janitor_last_run, align 8
  %sub1 = sub i32 %2, %4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %sub1) #9
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.86, i32 noundef %call) #9
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add = add i32 %6, %call2
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_status_0_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_status = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 90
  tail call fastcc void @carl9170_debugfs_queue_dump(ptr noundef %buf, ptr noundef %len, i32 noundef %bufsize, ptr noundef %tx_status)
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_debugfs_queue_dump(ptr noundef %buf, ptr nocapture noundef %len, i32 noundef %bufsize, ptr noundef %queue) unnamed_addr #0 align 64 {
entry:
  %prefix = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prefix) #9
  %lock = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 2
  %0 = call ptr @memset(ptr %prefix, i32 255, i32 16)
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %1 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %skb.01 = load ptr, ptr %queue, align 4
  %cmp.not2 = icmp eq ptr %skb.01, %queue
  br i1 %cmp.not2, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %skb.04 = phi ptr [ %skb.0, %for.body.for.body_crit_edge ], [ %skb.01, %entry.for.body_crit_edge ]
  %fc.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prefix, i32 noundef 16, ptr noundef nonnull @.str.87, i32 noundef %fc.03)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.04, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.04, i32 0, i32 3, i32 24
  %frame_data.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %5
  %sub.i = sub i32 %bufsize, %5
  %cookie.i = getelementptr inbounds %struct._carl9170_tx_superdesc, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cookie.i, align 4
  %conv.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %frame_data.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %frame_data.i, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.not.i.i = icmp eq i16 %10, 0
  %addr3.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %3, i32 1, i32 0, i32 8, i32 1
  %addr1.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %3, i32 1, i32 0, i32 3
  %retval.0.i.i = select i1 %cmp.i.not.i.i, ptr %addr1.i.i, ptr %addr3.i.i
  %seq_ctrl.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %frame_data.i, i32 0, i32 5
  %11 = ptrtoint ptr %seq_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %seq_ctrl.i.i, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12) #9
  %14 = lshr i16 %13, 4
  %conv4.i = zext i16 %14 to i32
  %mac_control.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %3, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %mac_control.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mac_control.i, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16) #9
  %conv5.i = zext i16 %17 to i32
  %phy_control.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %3, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %phy_control.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_control.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate_driver_data.i, align 4
  %sub7.i = sub i32 %21, %23
  %call8.i = call i32 @jiffies_to_msecs(i32 noundef %sub7.i) #9
  %call9.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull @.str.80, ptr noundef nonnull %prefix, ptr noundef %skb.04, i32 noundef %conv.i, ptr noundef %retval.0.i.i, i32 noundef %conv4.i, i32 noundef %conv5.i, i32 noundef %20, i32 noundef %call8.i) #9
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add.i = add i32 %25, %call9.i
  store i32 %add.i, ptr %len, align 4
  %inc = add i32 %fc.03, 1
  %26 = ptrtoint ptr %skb.04 to i32
  call void @__asan_load4_noabort(i32 %26)
  %skb.0 = load ptr, ptr %skb.04, align 4
  %cmp.not = icmp eq ptr %skb.0, %queue
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prefix) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_status_1_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 1
  tail call fastcc void @carl9170_debugfs_queue_dump(ptr noundef %buf, ptr noundef %len, i32 noundef %bufsize, ptr noundef %arrayidx)
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_status_2_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 2
  tail call fastcc void @carl9170_debugfs_queue_dump(ptr noundef %buf, ptr noundef %len, i32 noundef %bufsize, ptr noundef %arrayidx)
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_status_3_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 90, i32 3
  tail call fastcc void @carl9170_debugfs_queue_dump(ptr noundef %buf, ptr noundef %len, i32 noundef %bufsize, ptr noundef %arrayidx)
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_pending_0_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pending = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 89
  tail call fastcc void @carl9170_debugfs_queue_dump(ptr noundef %buf, ptr noundef %len, i32 noundef %bufsize, ptr noundef %tx_pending)
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_pending_1_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 1
  tail call fastcc void @carl9170_debugfs_queue_dump(ptr noundef %buf, ptr noundef %len, i32 noundef %bufsize, ptr noundef %arrayidx)
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_pending_2_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 2
  tail call fastcc void @carl9170_debugfs_queue_dump(ptr noundef %buf, ptr noundef %len, i32 noundef %bufsize, ptr noundef %arrayidx)
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_tx_pending_3_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 89, i32 3
  tail call fastcc void @carl9170_debugfs_queue_dump(ptr noundef %buf, ptr noundef %len, i32 noundef %bufsize, ptr noundef %arrayidx)
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_hw_ioread32_read(ptr nocapture noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_head = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 118, i32 3
  %ring_tail = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 118, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc15, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %ring_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_head, align 4
  %2 = ptrtoint ptr %ring_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %5
  %sub = sub i32 %bufsize, %5
  %arrayidx5 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 1, i32 %1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 8
  %value = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 1, i32 %1, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.88, i32 noundef %7, i32 noundef %9) #9
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ret, align 4
  %add = add i32 %11, %call
  store i32 %add, ptr %ret, align 4
  %12 = ptrtoint ptr %ring_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_head, align 4
  %inc = add i32 %13, 1
  %rem = and i32 %inc, 63
  store i32 %rem, ptr %ring_head, align 4
  %inc15 = add nuw nsw i32 %i.0, 1
  %cmp16 = icmp eq i32 %i.0, 64
  br i1 %cmp16, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %14 = ptrtoint ptr %ring_tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_tail, align 8
  %16 = ptrtoint ptr %ring_head to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ring_head, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_debugfs_hw_ioread32_write(ptr noundef %ar, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %n = alloca i32, align 4
  %reg = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %n, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg, align 4, !annotation !338
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count)
  %cmp = icmp ugt i32 %count, 32
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.89, ptr noundef nonnull %reg, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp3 = icmp slt i32 %call, 1
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp6 = icmp eq i32 %call, 1
  br i1 %cmp6, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %n, align 4
  br label %if.end11

if.end8:                                          ; preds = %if.end5
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.pr)
  %cmp9 = icmp sgt i32 %.pr, 15
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8.if.end11_crit_edge, %if.end8.thread
  %5 = phi i32 [ 1, %if.end8.thread ], [ %.pr, %if.end8.if.end11_crit_edge ]
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2621439, i32 %7)
  %cmp12 = icmp ugt i32 %7, 2621439
  %shl = shl i32 %5, 2
  %add = add i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 2621439, i32 %add)
  %cmp13 = icmp ugt i32 %add, 2621439
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %for.cond.preheader, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end15
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1965 = icmp sgt i32 %9, 0
  br i1 %cmp1965, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ring_tail = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 118, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %if.end25.for.body_crit_edge ]
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %shl20 = shl i32 %i.066, 2
  %add21 = add i32 %11, %shl20
  %call22 = call i32 @carl9170_read_reg(ptr noundef %ar, i32 noundef %add21, ptr noundef nonnull %tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %for.body
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %add27 = add i32 %13, %shl20
  %14 = ptrtoint ptr %ring_tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_tail, align 8
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 1, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add27, ptr %arrayidx, align 8
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmp, align 4
  %19 = load i32, ptr %ring_tail, align 8
  %value = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 118, i32 1, i32 %19, i32 1
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %value, align 4
  %inc = add i32 %19, 1
  %rem = and i32 %inc, 63
  store i32 %rem, ptr %ring_tail, align 8
  %inc39 = add nuw nsw i32 %i.066, 1
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  %cmp19 = icmp slt i32 %inc39, %22
  br i1 %cmp19, label %if.end25.for.body_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end25.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -99, %if.end11.cleanup_crit_edge ], [ -90, %if.end8.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %count, %for.cond.preheader.cleanup_crit_edge ], [ %count, %if.end25.cleanup_crit_edge ], [ %call22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_read_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_debugfs_hw_iowrite32_write(ptr noundef %ar, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !338
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %count)
  %cmp = icmp ugt i32 %count, 22
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.90, ptr noundef nonnull %reg, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp3.not = icmp eq i32 %call, 2
  br i1 %cmp3.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %4 = add i32 %3, -2621440
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1572863, i32 %4)
  %5 = icmp ult i32 %4, -1572863
  br i1 %5, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %out, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out:                                              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %call13 = call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef %3, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool17.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool17.not, i32 %count, i32 %call13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -99, %if.end5.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_bug_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ret, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %bufsize, %1
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.91) #9
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret, align 4
  %add = add i32 %3, %call
  store i32 %add, ptr %ret, align 4
  %arrayidx1 = getelementptr i8, ptr %buf, i32 %add
  %sub2 = sub i32 %bufsize, %add
  %restart_counter = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 31
  %4 = ptrtoint ptr %restart_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %restart_counter, align 4
  %last_reason = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 5
  %6 = ptrtoint ptr %last_reason to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_reason, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx1, i32 noundef %sub2, ptr noundef nonnull @.str.92, i32 noundef %5, i32 noundef %7) #9
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ret, align 4
  %add4 = add i32 %9, %call3
  store i32 %add4, ptr %ret, align 4
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %add4
  %sub6 = sub i32 %bufsize, %add4
  %total_chan_fail = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 59
  %10 = ptrtoint ptr %total_chan_fail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_chan_fail, align 8
  %chan_fail = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 58
  %12 = ptrtoint ptr %chan_fail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_fail, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx5, i32 noundef %sub6, ptr noundef nonnull @.str.93, i32 noundef %11, i32 noundef %13) #9
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret, align 4
  %add8 = add i32 %15, %call7
  store i32 %add8, ptr %ret, align 4
  %arrayidx9 = getelementptr i8, ptr %buf, i32 %add8
  %sub10 = sub i32 %bufsize, %add8
  %err_counter = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 7
  %16 = ptrtoint ptr %err_counter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err_counter, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx9, i32 noundef %sub10, ptr noundef nonnull @.str.94, i32 noundef %17) #9
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret, align 4
  %add12 = add i32 %19, %call11
  store i32 %add12, ptr %ret, align 4
  %arrayidx13 = getelementptr i8, ptr %buf, i32 %add12
  %sub14 = sub i32 %bufsize, %add12
  %bug_counter = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 8
  %20 = ptrtoint ptr %bug_counter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bug_counter, align 8
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx13, i32 noundef %sub14, ptr noundef nonnull @.str.95, i32 noundef %21) #9
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ret, align 4
  %add17 = add i32 %23, %call16
  store i32 %add17, ptr %ret, align 4
  %arrayidx18 = getelementptr i8, ptr %buf, i32 %add17
  %sub19 = sub i32 %bufsize, %add17
  %pending_restarts = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_restarts, i32 noundef 4) #9
  %24 = ptrtoint ptr %pending_restarts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %pending_restarts, align 4
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx18, i32 noundef %sub19, ptr noundef nonnull @.str.96, i32 noundef %25) #9
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret, align 4
  %add22 = add i32 %27, %call21
  store i32 %add22, ptr %ret, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_debugfs_bug_write(ptr noundef %ar, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 70, label %if.end.sw.epilog_crit_edge
    i8 82, label %sw.bb1
    i8 77, label %sw.bb7
    i8 80, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2 = icmp ugt i32 %4, 2
  br i1 %cmp2, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @carl9170_mac_reset(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp8, i32 %call, i32 %count
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chandef, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %6, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %10, label %do.end.i [
    i32 0, label %sw.bb12.cfg80211_get_chandef_type.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb12.cfg80211_get_chandef_type.exit_crit_edge: ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cfg80211_get_chandef_type.exit

sw.bb1.i:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cfg80211_get_chandef_type.exit

sw.bb2.i:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %6, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq1.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i = icmp ugt i32 %13, %15
  %..i = select i1 %cmp.i, i32 3, i32 2
  br label %cfg80211_get_chandef_type.exit

do.end.i:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 778, i32 noundef 9, ptr noundef null) #9
  br label %cfg80211_get_chandef_type.exit

cfg80211_get_chandef_type.exit:                   ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %sw.bb12.cfg80211_get_chandef_type.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 1, %sw.bb1.i ], [ %10, %sw.bb12.cfg80211_get_chandef_type.exit_crit_edge ], [ %..i, %sw.bb2.i ]
  %call17 = tail call i32 @carl9170_set_channel(ptr noundef %ar, ptr noundef %8, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  %spec.select33 = select i1 %cmp18, i32 %call17, i32 %count
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %.sink = phi i8 [ 1, %if.end.sw.epilog_crit_edge ], [ 0, %sw.bb1.sw.epilog_crit_edge ]
  %needs_full_reset6 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 34
  %16 = ptrtoint ptr %needs_full_reset6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %needs_full_reset6, align 8
  tail call void @carl9170_restart(ptr noundef %ar, i32 noundef 10) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %cfg80211_get_chandef_type.exit, %sw.bb7, %sw.bb1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %sw.epilog ], [ %count, %sw.bb1.cleanup_crit_edge ], [ %spec.select, %sw.bb7 ], [ %spec.select33, %cfg80211_get_chandef_type.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_mac_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_restart(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_erp_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ret, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %bufsize, %1
  %erp_mode = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 54
  %2 = ptrtoint ptr %erp_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erp_mode, align 8
  %arrayidx2 = getelementptr [6 x ptr], ptr @erp_modes, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.98, i32 noundef %3, ptr noundef %5) #9
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ret, align 4
  %add = add i32 %7, %call
  store i32 %add, ptr %ret, align 4
  ret ptr %buf
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_debugfs_erp_write(ptr nocapture noundef writeonly %ar, ptr nocapture noundef readonly %buf, i32 noundef %count) #8 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.105, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %erp_mode = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 54
  %5 = ptrtoint ptr %erp_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %erp_mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_vif_dump_read(ptr noundef %ar, ptr noundef returned %buf, i32 noundef %bufsize, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %bufsize, %1
  %vifs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 39
  %2 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vifs, align 4
  %vif_num = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 6
  %4 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif_num, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.106, i32 noundef %3, i32 noundef %5) #9
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add i32 %7, %call
  store i32 %add, ptr %len, align 4
  %arrayidx1 = getelementptr i8, ptr %buf, i32 %add
  %sub2 = sub i32 %bufsize, %add
  %8 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif_num, align 8
  %vif_bitmap = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 38
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx1, i32 noundef %sub2, ptr noundef nonnull @.str.107, i32 noundef %9, ptr noundef %vif_bitmap) #9
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add6 = add i32 %11, %call5
  store i32 %add6, ptr %len, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !320) #9
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !336
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 696, ptr noundef nonnull @.str.79) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call7 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b61 = load i1, ptr @carl9170_debugfs_vif_dump_read.__warned, align 1
  br i1 %.b61, label %land.lhs.true10.do.end_crit_edge, label %if.then

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @carl9170_debugfs_vif_dump_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 449, ptr noundef nonnull @.str.67) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %vif_list = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 37
  %16 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %iter.078 = load volatile ptr, ptr %vif_list, align 4
  %cmp.not79 = icmp eq ptr %iter.078, %vif_list
  br i1 %cmp.not79, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %carl9170_get_main_vif.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %iter.081 = phi ptr [ %iter.0, %carl9170_get_main_vif.exit.for.body_crit_edge ], [ %iter.078, %do.end.for.body_crit_edge ]
  %i.080 = phi i32 [ %inc, %carl9170_get_main_vif.exit.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %iter.081, i32 -848
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %arrayidx18 = getelementptr i8, ptr %buf, i32 %18
  %sub19 = sub i32 %bufsize, %18
  %call.i62 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i65, label %for.body.for.cond.i.preheader_crit_edge

for.body.for.cond.i.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true.i65:                                ; preds = %for.body
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool2.not.i = icmp eq i32 %call1.i64, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i65.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i65.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i65
  %.b27.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then.i66

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

if.then.i66:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.113, i32 noundef 650, ptr noundef nonnull @.str.67) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i66, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i65.for.cond.i.preheader_crit_edge, %for.body.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %cvif.0.in.i = phi ptr [ %cvif.0.i, %for.body.i.for.cond.i_crit_edge ], [ %vif_list, %for.cond.i.preheader ]
  %19 = ptrtoint ptr %cvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %cvif.0.i = load volatile ptr, ptr %cvif.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cvif.0.i, %vif_list
  br i1 %cmp.not.i, label %for.cond.i.carl9170_get_main_vif.exit_crit_edge, label %for.body.i

for.cond.i.carl9170_get_main_vif.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_get_main_vif.exit

for.body.i:                                       ; preds = %for.cond.i
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %active.i, align 4, !range !335
  %tobool10.not.i = icmp eq i8 %21, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then11.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %cvif.0.i, i32 -848
  br label %carl9170_get_main_vif.exit

carl9170_get_main_vif.exit:                       ; preds = %if.then11.i, %for.cond.i.carl9170_get_main_vif.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %if.then11.i ], [ null, %for.cond.i.carl9170_get_main_vif.exit_crit_edge ]
  %cmp21 = icmp eq ptr %retval.0.i, %add.ptr.i
  %cond = select i1 %cmp21, ptr @.str.109, ptr @.str.110
  %id = getelementptr inbounds %struct.carl9170_vif_info, ptr %iter.081, i32 0, i32 2
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 8
  %addr = getelementptr i8, ptr %iter.081, i32 -48
  %enable_beacon = getelementptr inbounds %struct.carl9170_vif_info, ptr %iter.081, i32 0, i32 4
  %26 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable_beacon, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool22.not = icmp eq i8 %27, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.112, ptr @.str.111
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx18, i32 noundef %sub19, ptr noundef nonnull @.str.108, i32 noundef %i.080, ptr noundef nonnull %cond, i32 noundef %23, i32 noundef %25, ptr noundef %addr, ptr noundef nonnull %cond23) #9
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %add25 = add i32 %29, %call24
  store i32 %add25, ptr %len, align 4
  %inc = add i32 %i.080, 1
  %30 = ptrtoint ptr %iter.081 to i32
  call void @__asan_load4_noabort(i32 %30)
  %iter.0 = load volatile ptr, ptr %iter.081, align 4
  %cmp.not = icmp eq ptr %iter.0, %vif_list
  br i1 %cmp.not, label %carl9170_get_main_vif.exit.for.end_crit_edge, label %carl9170_get_main_vif.exit.for.body_crit_edge

carl9170_get_main_vif.exit.for.body_crit_edge:    ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

carl9170_get_main_vif.exit.for.end_crit_edge:     ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %carl9170_get_main_vif.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i67, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i70

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i70:                                ; preds = %for.end
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 724, ptr noundef nonnull @.str.81) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !337
  %31 = tail call i32 @llvm.read_register.i32(metadata !320) #9
  %and.i.i.i.i.i74 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_beacon_int_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %global_beacon_int = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 43
  %2 = ptrtoint ptr %global_beacon_int to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global_beacon_int, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.114, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @carl9170_debugfs_pretbtt_read(ptr nocapture noundef readonly %ar, ptr noundef returned %buf, i32 noundef %buf_size, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %buf_size, %1
  %global_pretbtt = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 42
  %2 = ptrtoint ptr %global_pretbtt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global_pretbtt, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.114, i32 noundef %3) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %call
  store i32 %add, ptr %len, align 4
  ret ptr %buf
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !162, !164, !166, !168, !169, !171, !173, !175, !176, !178, !179, !181, !182, !184, !186, !188, !189, !190, !192, !194, !195, !197, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !309, !310, !311, !312, !314, !315, !317, !318}
!llvm.named.register.sp = !{!320}
!llvm.module.flags = !{!321, !322, !323, !324, !325, !326, !327, !328}
!llvm.ident = !{!329}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 815, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 823, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 824, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 825, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 826, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 828, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 829, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 830, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 831, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 832, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 833, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 834, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 836, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 837, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 838, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 840, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 841, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 842, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 843, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 845, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 846, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 847, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 848, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 850, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 851, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 852, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 854, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 855, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 857, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 859, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 860, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 861, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 862, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 864, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 865, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 866, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 867, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 869, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 870, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 871, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 873, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 875, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 877, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 878, i32 2}
!88 = !{ptr @carl_debugfs_usb_tx_anch_urbs_ops, !89, !"carl_debugfs_usb_tx_anch_urbs_ops", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 772, i32 1}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 105, i32 2}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!101 = !{ptr @carl_debugfs_usb_rx_pool_urbs_ops, !102, !"carl_debugfs_usb_rx_pool_urbs_ops", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 778, i32 1}
!103 = !{ptr @carl_debugfs_usb_rx_anch_urbs_ops, !104, !"carl_debugfs_usb_rx_anch_urbs_ops", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 774, i32 1}
!105 = !{ptr @carl_debugfs_usb_rx_work_urbs_ops, !106, !"carl_debugfs_usb_rx_work_urbs_ops", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 776, i32 1}
!107 = !{ptr @carl_debugfs_tx_total_queued_ops, !108, !"carl_debugfs_tx_total_queued_ops", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 781, i32 1}
!109 = !{ptr @carl_debugfs_tx_total_pending_ops, !110, !"carl_debugfs_tx_total_pending_ops", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 786, i32 1}
!111 = !{ptr @carl_debugfs_tx_dropped_ops, !112, !"carl_debugfs_tx_dropped_ops", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 798, i32 1}
!113 = !{ptr @carl_debugfs_tx_stuck_ops, !114, !"carl_debugfs_tx_stuck_ops", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 414, i32 1}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 404, i32 3}
!117 = !{ptr @carl_debugfs_tx_ampdu_upload_ops, !118, !"carl_debugfs_tx_ampdu_upload_ops", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 792, i32 1}
!119 = !{ptr @carl_debugfs_tx_ampdu_scheduler_ops, !120, !"carl_debugfs_tx_ampdu_scheduler_ops", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 783, i32 1}
!121 = !{ptr @carl_debugfs_tx_ampdu_list_len_ops, !122, !"carl_debugfs_tx_ampdu_list_len_ops", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 789, i32 1}
!123 = !{ptr @carl_debugfs_rx_dropped_ops, !124, !"carl_debugfs_rx_dropped_ops", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 800, i32 1}
!125 = !{ptr @carl_debugfs_sniffer_enabled_ops, !126, !"carl_debugfs_sniffer_enabled_ops", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 802, i32 1}
!127 = !{ptr @carl_debugfs_rx_software_decryption_ops, !128, !"carl_debugfs_rx_software_decryption_ops", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 803, i32 1}
!129 = !{ptr @carl_debugfs_mem_usage_ops, !130, !"carl_debugfs_mem_usage_ops", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 237, i32 1}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 221, i32 2}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 224, i32 2}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 228, i32 2}
!137 = !{ptr @carl_debugfs_qos_stat_ops, !138, !"carl_debugfs_qos_stat_ops", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 281, i32 1}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 242, i32 2}
!141 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 245, i32 2}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 249, i32 2}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 258, i32 2}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 266, i32 2}
!151 = !{ptr @carl_debugfs_sta_psm_ops, !152, !"carl_debugfs_sta_psm_ops", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 396, i32 1}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 385, i32 2}
!155 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 388, i32 2}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 389, i32 2}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 391, i32 2}
!164 = !{ptr @carl_debugfs_ampdu_state_ops, !165, !"carl_debugfs_ampdu_state_ops", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 354, i32 1}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 309, i32 2}
!168 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 312, i32 3}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 317, i32 3}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 325, i32 3}
!175 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 328, i32 3}
!178 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 332, i32 3}
!181 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 334, i32 3}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 341, i32 37}
!186 = distinct !{null, !187, !"__warned", i1 false, i1 false}
!187 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!188 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 292, i32 2}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!194 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @carl_debugfs_hw_tx_tally_ops, !196, !"carl_debugfs_hw_tx_tally_ops", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 758, i32 1}
!197 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @hw_tx_tally_regs, !199, !"hw_tx_tally_regs", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/carl9170/debug.h", i32 75, i32 39}
!200 = !{ptr @carl_debugfs_hw_rx_tally_ops, !201, !"carl_debugfs_hw_rx_tally_ops", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 759, i32 1}
!202 = !{ptr @hw_rx_tally_regs, !203, !"hw_rx_tally_regs", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/carl9170/debug.h", i32 62, i32 39}
!204 = !{ptr @carl_debugfs_hw_phy_errors_ops, !205, !"carl_debugfs_hw_phy_errors_ops", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 760, i32 1}
!206 = !{ptr @hw_phy_errors_regs, !207, !"hw_phy_errors_regs", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/carl9170/debug.h", i32 69, i32 39}
!208 = !{ptr @carl_debugfs_phy_noise_ops, !209, !"carl_debugfs_phy_noise_ops", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 434, i32 1}
!210 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 427, i32 2}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 429, i32 2}
!214 = !{ptr @carl_debugfs_hw_wlan_queue_ops, !215, !"carl_debugfs_hw_wlan_queue_ops", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 761, i32 1}
!216 = !{ptr @.str.85, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @hw_wlan_queue_regs, !218, !"hw_wlan_queue_regs", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/carl9170/debug.h", i32 80, i32 39}
!219 = !{ptr @carl_debugfs_hw_pta_queue_ops, !220, !"carl_debugfs_hw_pta_queue_ops", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 762, i32 1}
!221 = !{ptr @hw_pta_queue_regs, !222, !"hw_pta_queue_regs", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/carl9170/debug.h", i32 93, i32 39}
!223 = !{ptr @carl_debugfs_hw_ampdu_info_ops, !224, !"carl_debugfs_hw_ampdu_info_ops", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 763, i32 1}
!225 = !{ptr @hw_ampdu_info_regs, !226, !"hw_ampdu_info_regs", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/carl9170/debug.h", i32 89, i32 39}
!227 = !{ptr @carl_debugfs_ampdu_density_ops, !228, !"carl_debugfs_ampdu_density_ops", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 807, i32 1}
!229 = !{ptr @carl_debugfs_ampdu_factor_ops, !230, !"carl_debugfs_ampdu_factor_ops", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 805, i32 1}
!231 = !{ptr @carl_debugfs_tx_janitor_last_run_ops, !232, !"carl_debugfs_tx_janitor_last_run_ops", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 795, i32 1}
!233 = !{ptr @.str.86, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @carl_debugfs_tx_status_0_ops, !235, !"carl_debugfs_tx_status_0_ops", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 764, i32 1}
!236 = !{ptr @.str.87, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 365, i32 36}
!238 = !{ptr @carl_debugfs_tx_status_1_ops, !239, !"carl_debugfs_tx_status_1_ops", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 765, i32 1}
!240 = !{ptr @carl_debugfs_tx_status_2_ops, !241, !"carl_debugfs_tx_status_2_ops", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 766, i32 1}
!242 = !{ptr @carl_debugfs_tx_status_3_ops, !243, !"carl_debugfs_tx_status_3_ops", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 767, i32 1}
!244 = !{ptr @carl_debugfs_tx_pending_0_ops, !245, !"carl_debugfs_tx_pending_0_ops", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 768, i32 1}
!246 = !{ptr @carl_debugfs_tx_pending_1_ops, !247, !"carl_debugfs_tx_pending_1_ops", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 769, i32 1}
!248 = !{ptr @carl_debugfs_tx_pending_2_ops, !249, !"carl_debugfs_tx_pending_2_ops", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 770, i32 1}
!250 = !{ptr @carl_debugfs_tx_pending_3_ops, !251, !"carl_debugfs_tx_pending_3_ops", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 771, i32 1}
!252 = !{ptr @carl_debugfs_hw_ioread32_ops, !253, !"carl_debugfs_hw_ioread32_ops", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 614, i32 1}
!254 = !{ptr @.str.88, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 601, i32 3}
!256 = !{ptr @.str.89, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 556, i32 20}
!258 = !{ptr @carl_debugfs_hw_iowrite32_ops, !259, !"carl_debugfs_hw_iowrite32_ops", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 756, i32 1}
!260 = !{ptr @.str.90, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 733, i32 20}
!262 = !{ptr @carl_debugfs_bug_ops, !263, !"carl_debugfs_bug_ops", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 680, i32 1}
!264 = !{ptr @.str.91, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 666, i32 2}
!266 = !{ptr @.str.92, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 668, i32 2}
!268 = !{ptr @.str.93, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 670, i32 2}
!270 = !{ptr @.str.94, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 672, i32 2}
!272 = !{ptr @.str.95, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 674, i32 2}
!274 = !{ptr @.str.96, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 676, i32 2}
!276 = !{ptr @.str.97, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!278 = !{ptr @carl_debugfs_erp_ops, !279, !"carl_debugfs_erp_ops", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 719, i32 1}
!280 = !{ptr @.str.98, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 694, i32 2}
!282 = !{ptr @.str.99, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 683, i32 27}
!284 = !{ptr @.str.100, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 684, i32 24}
!286 = !{ptr @.str.101, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 685, i32 28}
!288 = !{ptr @.str.102, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 686, i32 23}
!290 = !{ptr @.str.103, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 688, i32 23}
!292 = !{ptr @.str.104, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 687, i32 23}
!294 = !{ptr @erp_modes, !295, !"erp_modes", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 682, i32 26}
!296 = !{ptr @.str.105, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 707, i32 20}
!298 = !{ptr @carl_debugfs_vif_dump_ops, !299, !"carl_debugfs_vif_dump_ops", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 461, i32 1}
!300 = !{ptr @.str.106, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 442, i32 2}
!302 = !{ptr @.str.107, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 445, i32 2}
!304 = distinct !{null, !305, !"__warned", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 449, i32 2}
!306 = !{ptr @.str.108, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 451, i32 3}
!308 = !{ptr @.str.109, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.110, !307, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.111, !307, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.112, !307, !"<string literal>", i1 false, i1 false}
!312 = distinct !{null, !313, !"__warned", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/ath/carl9170/carl9170.h", i32 650, i32 2}
!314 = !{ptr @.str.113, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @carl_debugfs_beacon_int_ops, !316, !"carl_debugfs_beacon_int_ops", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 810, i32 1}
!317 = !{ptr @.str.114, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @carl_debugfs_pretbtt_ops, !319, !"carl_debugfs_pretbtt_ops", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/ath/carl9170/debug.c", i32 811, i32 1}
!320 = !{!"sp"}
!321 = !{i32 1, !"wchar_size", i32 2}
!322 = !{i32 1, !"min_enum_size", i32 4}
!323 = !{i32 8, !"branch-target-enforcement", i32 0}
!324 = !{i32 8, !"sign-return-address", i32 0}
!325 = !{i32 8, !"sign-return-address-all", i32 0}
!326 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!327 = !{i32 7, !"uwtable", i32 1}
!328 = !{i32 7, !"frame-pointer", i32 2}
!329 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!330 = !{!"branch_weights", i32 2000, i32 1}
!331 = !{i64 2152849579, i64 2152849604}
!332 = !{i64 5345134}
!333 = !{i64 5345331}
!334 = !{i64 2152830564}
!335 = !{i8 0, i8 2}
!336 = !{i64 2149939359}
!337 = !{i64 2149939625}
!338 = !{!"auto-init"}
