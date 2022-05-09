; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/debug.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.138 = type { i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.reg = type { ptr, i32 }
%struct.ath5k_hw = type { %struct.ath_common, ptr, ptr, i32, i16, ptr, %struct.mutex, ptr, [6 x %struct.ieee80211_supported_band], [314 x %struct.ieee80211_channel], [6 x [32 x %struct.ieee80211_rate]], [6 x [32 x i8]], i32, %struct.ath5k_dbg_info, ptr, ptr, i32, i32, [1 x i32], i32, i32, ptr, i16, i32, %struct.spinlock, i8, i8, [6 x i8], i32, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.ath5k_led, %struct.list_head, %struct.spinlock, i32, [10 x %struct.ath5k_txq], %struct.tasklet_struct, %struct.ath5k_led, %struct.ath5k_rfkill, %struct.spinlock, %struct.tasklet_struct, %struct.list_head, [4 x ptr], i16, i16, i16, i32, i32, i32, i32, i32, ptr, i8, i8, %struct.ath5k_statistics, %struct.ath5k_ani_state, %struct.tasklet_struct, %struct.delayed_work, %struct.survey_info, i32, ptr, i8, i8, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x [3 x i32]], i8, i8, i8, %struct.ath5k_capabilities, [10 x %struct.ath5k_txq_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.ath5k_gain, [8 x i8], %struct.anon.137, %struct.ath5k_nfcal_hist, %struct.ewma_beacon_rssi, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ath5k_dbg_info = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_txq = type { i32, ptr, %struct.list_head, %struct.spinlock, i8, i32, i32, i8, i32 }
%struct.ath5k_led = type { [32 x i8], ptr, %struct.led_classdev }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_rfkill = type { i16, i8, %struct.tasklet_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ath5k_statistics = type { [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath5k_ani_state = type { i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.ath_cycle_counters, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath5k_capabilities = type { [1 x i32], %struct.anon.134, %struct.ath5k_eeprom_info, %struct.anon.136, i8, i8, i8 }
%struct.anon.134 = type { i16, i16, i16, i16 }
%struct.ath5k_eeprom_info = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x [11 x i16]], [3 x [4 x i16]], [3 x [4 x i16]], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i8], [3 x [4 x i8]], [3 x i8], [10 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [3 x i8], [10 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], i8, [32 x i8], [256 x %struct.ath5k_edge_power], [3 x i16], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, [5 x [2 x i16]], [3 x [3 x i32]] }
%struct.ath5k_chan_pcal_info = type { i16, i16, i16, %union.anon.135, ptr }
%union.anon.135 = type { %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_chan_pcal_info_rf2413 = type { [4 x i8], [4 x i8], [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ath5k_rate_pcal_info = type { i16, i16, i16, i16, i16 }
%struct.ath5k_edge_power = type { i16, i16, i8 }
%struct.anon.136 = type { i8 }
%struct.ath5k_txq_info = type { i32, i32, i16, i8, i16, i16, i32, i32, i32, i32 }
%struct.ath5k_gain = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.137 = type { [4 x [64 x i8]], [4 x [64 x i8]], [128 x i8], [32 x i16], i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i32 }
%struct.ath5k_nfcal_hist = type { i16, [8 x i16] }
%struct.ewma_beacon_rssi = type { i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ath5k_rx_status = type { i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath5k_buf = type { %struct.list_head, ptr, i32, ptr, i32, [4 x %struct.ieee80211_tx_rate] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ath5k_desc = type { i32, i32, %union.anon.129 }
%union.anon.129 = type { %struct.ath5k_hw_5212_tx_desc }
%struct.ath5k_hw_5212_tx_desc = type { %struct.ath5k_hw_4w_tx_ctl, %struct.ath5k_hw_tx_status }
%struct.ath5k_hw_4w_tx_ctl = type { i32, i32, i32, i32 }
%struct.ath5k_hw_tx_status = type { i32, i32 }
%struct.ath5k_tx_status = type { i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.102 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.eeprom_private = type { ptr, i32 }
%struct.ath_bus_ops = type { i32, ptr, ptr, ptr }

@__param_str_debug = internal constant [12 x i8] c"ath5k.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@ath5k_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @ath5k_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype362 = internal constant [26 x i8] c"ath5k.parmtype=debug:uint\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ath5k\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@fops_debug = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_debug, ptr @write_file_debug, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@registers_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @registers_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"beacon\00", [25 x i8] zeroinitializer }, align 32
@fops_beacon = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_beacon, ptr @write_file_beacon, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@fops_reset = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @write_file_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"antenna\00", [24 x i8] zeroinitializer }, align 32
@fops_antenna = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_antenna, ptr @write_file_antenna, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@fops_misc = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @read_file_misc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@fops_eeprom = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @read_file_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_file_eeprom, ptr null, ptr @release_file_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"frameerrors\00", [20 x i8] zeroinitializer }, align 32
@fops_frameerrors = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_frameerrors, ptr @write_file_frameerrors, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ani\00", [28 x i8] zeroinitializer }, align 32
@fops_ani = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_ani, ptr @write_file_ani, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"queue\00", [26 x i8] zeroinitializer }, align 32
@fops_queue = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_queue, ptr @write_file_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"32khz_clock\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2 GHz\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5 GHz\00", [26 x i8] zeroinitializer }, align 32
@ath5k_debug_dump_bands._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017Band not supported: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ath5k_debug_dump_bands\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath5k/debug.c\00", [57 x i8] zeroinitializer }, align 32
@ath5k_debug_dump_bands._entry_ptr = internal global ptr @ath5k_debug_dump_bands._entry, section ".printk_index", align 4
@ath5k_debug_dump_bands._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.16, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017Band %s: channels %d, rates %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ath5k_debug_dump_bands._entry_ptr.19 = internal global ptr @ath5k_debug_dump_bands._entry.17, section ".printk_index", align 4
@ath5k_debug_dump_bands._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.16, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017 channels:\0A\00", [18 x i8] zeroinitializer }, align 32
@ath5k_debug_dump_bands._entry_ptr.22 = internal global ptr @ath5k_debug_dump_bands._entry.20, section ".printk_index", align 4
@ath5k_debug_dump_bands._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.16, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017  %3d %d %.4x %.4x\0A\00", [42 x i8] zeroinitializer }, align 32
@ath5k_debug_dump_bands._entry_ptr.25 = internal global ptr @ath5k_debug_dump_bands._entry.23, section ".printk_index", align 4
@ath5k_debug_dump_bands._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.15, ptr @.str.16, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017 rates:\0A\00", [21 x i8] zeroinitializer }, align 32
@ath5k_debug_dump_bands._entry_ptr.28 = internal global ptr @ath5k_debug_dump_bands._entry.26, section ".printk_index", align 4
@ath5k_debug_dump_bands._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.15, ptr @.str.16, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017  %4d %.4x %.4x %.4x\0A\00", [40 x i8] zeroinitializer }, align 32
@ath5k_debug_dump_bands._entry_ptr.31 = internal global ptr @ath5k_debug_dump_bands._entry.29, section ".printk_index", align 4
@ath5k_debug_printrxbuffs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.16, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017rxdp %x, rxlink %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ath5k_debug_printrxbuffs\00", [39 x i8] zeroinitializer }, align 32
@ath5k_debug_printrxbuffs._entry_ptr = internal global ptr @ath5k_debug_printrxbuffs._entry, section ".printk_index", align 4
@ath5k_debug_printtxbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.16, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017T (%p %llx) %08x %08x %08x %08x %08x %08x %08x %08x %c\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ath5k_debug_printtxbuf\00", [41 x i8] zeroinitializer }, align 32
@ath5k_debug_printtxbuf._entry_ptr = internal global ptr @ath5k_debug_printtxbuf._entry, section ".printk_index", align 4
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DEBUG LEVEL: 0x%08x\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%10s %c 0x%08x - %s\0A\00", [43 x i8] zeroinitializer }, align 32
@dbg_info = internal constant { [13 x %struct.anon.138], [36 x i8] } { [13 x %struct.anon.138] [%struct.anon.138 { i32 1, ptr @.str.4, ptr @.str.38 }, %struct.anon.138 { i32 2, ptr @.str.39, ptr @.str.40 }, %struct.anon.138 { i32 4, ptr @.str.41, ptr @.str.42 }, %struct.anon.138 { i32 8, ptr @.str.43, ptr @.str.44 }, %struct.anon.138 { i32 16, ptr @.str.3, ptr @.str.45 }, %struct.anon.138 { i32 32, ptr @.str.46, ptr @.str.47 }, %struct.anon.138 { i32 64, ptr @.str.48, ptr @.str.49 }, %struct.anon.138 { i32 128, ptr @.str.50, ptr @.str.51 }, %struct.anon.138 { i32 1024, ptr @.str.52, ptr @.str.53 }, %struct.anon.138 { i32 2048, ptr @.str.54, ptr @.str.55 }, %struct.anon.138 { i32 8192, ptr @.str.9, ptr @.str.56 }, %struct.anon.138 { i32 16384, ptr @.str.57, ptr @.str.58 }, %struct.anon.138 { i32 -1, ptr @.str.59, ptr @.str.60 }], [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reset and initialization\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"interrupt handling\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mode init/setup\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xmit\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"basic xmit operation\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"beacon handling\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"calib\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"periodic calibration\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"txpower\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"transmit power setting\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"led\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LED management\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dumpbands\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dump bands\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dma start/stop\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adaptive noise immunity\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"desc\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"descriptor chains\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"show all debug levels\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@registers_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @reg_start, ptr @reg_stop, ptr @reg_next, ptr @reg_show }, [16 x i8] zeroinitializer }, align 32
@regs = internal constant { [48 x %struct.reg], [96 x i8] } { [48 x %struct.reg] [%struct.reg { ptr @.str.64, i32 8 }, %struct.reg { ptr @.str.65, i32 12 }, %struct.reg { ptr @.str.66, i32 20 }, %struct.reg { ptr @.str.67, i32 36 }, %struct.reg { ptr @.str.68, i32 40 }, %struct.reg { ptr @.str.69, i32 40 }, %struct.reg { ptr @.str.70, i32 44 }, %struct.reg { ptr @.str.71, i32 48 }, %struct.reg { ptr @.str.72, i32 52 }, %struct.reg { ptr @.str.73, i32 56 }, %struct.reg { ptr @.str.74, i32 64 }, %struct.reg { ptr @.str.75, i32 68 }, %struct.reg { ptr @.str.76, i32 72 }, %struct.reg { ptr @.str.77, i32 76 }, %struct.reg { ptr @.str.78, i32 80 }, %struct.reg { ptr @.str.79, i32 84 }, %struct.reg { ptr @.str.80, i32 88 }, %struct.reg { ptr @.str.81, i32 92 }, %struct.reg { ptr @.str.82, i32 28 }, %struct.reg { ptr @.str.83, i32 128 }, %struct.reg { ptr @.str.84, i32 132 }, %struct.reg { ptr @.str.85, i32 136 }, %struct.reg { ptr @.str.86, i32 140 }, %struct.reg { ptr @.str.87, i32 144 }, %struct.reg { ptr @.str.88, i32 148 }, %struct.reg { ptr @.str.89, i32 32 }, %struct.reg { ptr @.str.90, i32 160 }, %struct.reg { ptr @.str.91, i32 164 }, %struct.reg { ptr @.str.92, i32 168 }, %struct.reg { ptr @.str.93, i32 172 }, %struct.reg { ptr @.str.94, i32 176 }, %struct.reg { ptr @.str.95, i32 180 }, %struct.reg { ptr @.str.96, i32 1024 }, %struct.reg { ptr @.str.97, i32 1056 }, %struct.reg { ptr @.str.98, i32 1536 }, %struct.reg { ptr @.str.99, i32 1552 }, %struct.reg { ptr @.str.100, i32 1556 }, %struct.reg { ptr @.str.101, i32 1560 }, %struct.reg { ptr @.str.102, i32 1564 }, %struct.reg { ptr @.str.103, i32 1568 }, %struct.reg { ptr @.str.104, i32 16384 }, %struct.reg { ptr @.str.105, i32 16388 }, %struct.reg { ptr @.str.106, i32 16392 }, %struct.reg { ptr @.str.107, i32 16396 }, %struct.reg { ptr @.str.108, i32 16400 }, %struct.reg { ptr @.str.109, i32 16404 }, %struct.reg { ptr @.str.110, i32 16408 }, %struct.reg { ptr @.str.111, i32 16416 }], [96 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AR5K_CR\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_RXDP\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AR5K_CFG\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AR5K_IER\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AR5K_BCR\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_RTSD0\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_RTSD1\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_TXCFG\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_RXCFG\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_RXJLA\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_MIBC\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_TOPS\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AR5K_RXNOFRM\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AR5K_TXNOFRM\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_RPGTO\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_RFCNT\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_MISC\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AR5K_QCUDCU_CLKGT\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AR5K_ISR\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_PISR\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SISR0\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SISR1\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SISR2\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SISR3\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SISR4\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AR5K_IMR\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_PIMR\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SIMR0\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SIMR1\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SIMR2\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SIMR3\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_SIMR4\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AR5K_DCM_ADDR\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AR5K_DCCFG\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_CCFG\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_CPC0\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_CPC1\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_CPC2\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_CPC3\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AR5K_CPCOVF\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AR5K_RESET_CTL\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AR5K_SLEEP_CTL\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AR5K_INTPEND\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AR5K_SFR\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AR5K_PCICFG\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AR5K_GPIOCR\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AR5K_GPIODO\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AR5K_SREV\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%-25s0x%08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%-24s0x%08x\09intval: %d\09TIM: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AR5K_BEACON\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%-24s0x%08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AR5K_LAST_TSTP\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%-24s0x%08x\0A\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AR5K_BEACON_CNT\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%-24s0x%08x\09TU: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AR5K_TIMER0 (TBTT)\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AR5K_TIMER1 (DMA)\00", [46 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AR5K_TIMER2 (SWBA)\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AR5K_TIMER3 (ATIM)\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TSF\09\090x%016llx\09TU: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@write_file_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.16, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ath5k: debugfs disable beacons\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write_file_beacon\00", [46 x i8] zeroinitializer }, align 32
@write_file_beacon._entry_ptr = internal global ptr @write_file_beacon._entry, section ".printk_index", align 4
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@write_file_beacon._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.127, ptr @.str.16, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ath5k: debugfs enable beacons\0A\00", [63 x i8] zeroinitializer }, align 32
@write_file_beacon._entry_ptr.131 = internal global ptr @write_file_beacon._entry.129, section ".printk_index", align 4
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(%s:%d): debug file triggered reset\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.write_file_reset = private unnamed_addr constant [17 x i8] c"write_file_reset\00", align 1
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"antenna mode\09%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"default antenna\09%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx antenna\09%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0AANTENNA\09\09RX\09TX\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[antenna %d]\09%d\09%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[invalid]\09%d\09%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AAR5K_DEFAULT_ANTENNA\090x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AR5K_STA_ID1_DEFAULT_ANTENNA\09%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AR5K_STA_ID1_DESC_ANTENNA\09%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AR5K_STA_ID1_RTS_DEF_ANTENNA\09%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AR5K_STA_ID1_SELFGEN_DEF_ANT\09%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0AAR5K_PHY_AGCCTL_OFDM_DIV_DIS\09%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AR5K_PHY_RESTART_DIV_GC\09\09%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AR5K_PHY_FAST_ANT_DIV_EN\09%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\0AAR5K_PHY_ANT_SWITCH_TABLE_0\090x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AR5K_PHY_ANT_SWITCH_TABLE_1\090x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"diversity\00", [22 x i8] zeroinitializer }, align 32
@write_file_antenna._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.16, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ath5k: debug: enable diversity\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write_file_antenna\00", [45 x i8] zeroinitializer }, align 32
@write_file_antenna._entry_ptr = internal global ptr @write_file_antenna._entry, section ".printk_index", align 4
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fixed-a\00", [24 x i8] zeroinitializer }, align 32
@write_file_antenna._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.152, ptr @.str.16, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ath5k: debug: fixed antenna A\0A\00", [63 x i8] zeroinitializer }, align 32
@write_file_antenna._entry_ptr.156 = internal global ptr @write_file_antenna._entry.154, section ".printk_index", align 4
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fixed-b\00", [24 x i8] zeroinitializer }, align 32
@write_file_antenna._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.152, ptr @.str.16, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ath5k: debug: fixed antenna B\0A\00", [63 x i8] zeroinitializer }, align 32
@write_file_antenna._entry_ptr.160 = internal global ptr @write_file_antenna._entry.158, section ".printk_index", align 4
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@write_file_antenna._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.152, ptr @.str.16, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ath5k: debug: cleared antenna stats\0A\00", [57 x i8] zeroinitializer }, align 32
@write_file_antenna._entry_ptr.164 = internal global ptr @write_file_antenna._entry.162, section ".printk_index", align 4
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bssid-mask: %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"filter-flags: 0x%x \00", [44 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" UCAST\00", [25 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" MCAST\00", [25 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" BCAST\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" CONTROL\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" BEACON\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" PROM\00", [26 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" XRPOLL\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" PROBEREQ\00", [22 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" PHYERR-5212\00", [19 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" RADARERR-5212\00", [17 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" PHYERR-5211\00", [19 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" RADARERR-5211\00", [17 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0Aopmode: %s (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX\0A---------------------\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CRC\09%u\09(%u%%)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PHY\09%u\09(%u%%)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" phy_err[%u]\09%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FIFO\09%u\09(%u%%)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"decrypt\09%u\09(%u%%)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MIC\09%u\09(%u%%)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"process\09%u\09(%u%%)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jumbo\09%u\09(%u%%)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[RX all\09%u]\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX-all-bytes\09%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0ATX\0A---------------------\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"retry\09%u\09(%u%%)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"filter\09%u\09(%u%%)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[TX all\09%u]\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX-all-bytes\09%u\0A\00", [47 x i8] zeroinitializer }, align 32
@write_file_frameerrors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.16, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ath5k: debug: cleared frameerrors stats\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write_file_frameerrors\00", [41 x i8] zeroinitializer }, align 32
@write_file_frameerrors._entry_ptr = internal global ptr @write_file_frameerrors._entry, section ".printk_index", align 4
@.str.198 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HW has PHY error counters:\09%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HW max spur immunity level:\09%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\0AANI state\0A--------------------------------------------\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"operating mode:\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OFF\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MANUAL LOW\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MANUAL HIGH\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AUTO\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"??? (not good)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"noise immunity level:\09\09%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spur immunity level:\09\09%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firstep level:\09\09\09%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"OFDM weak signal detection:\09%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CCK weak signal detection:\09%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0AMIB INTERRUPTS:\09\09%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"beacon RSSI average:\09%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"profcnt tx\09\09%u\09(%d%%)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"profcnt rx\09\09%u\09(%d%%)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"profcnt busy\09\09%u\09(%d%%)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"profcnt cycles\09\09%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"listen time\09\09%d\09last: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"OFDM errors\09\09%u\09last: %u\09sum: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CCK errors\09\09%u\09last: %u\09sum: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AR5K_PHYERR_CNT1\09%x\09(=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AR5K_PHYERR_CNT2\09%x\09(=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sens-low\00", [23 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sens-high\00", [22 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ani-off\00", [24 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ani-on\00", [25 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"noise-low\00", [22 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"noise-high\00", [21 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spur-low\00", [23 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spur-high\00", [22 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fir-low\00", [24 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fir-high\00", [23 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ofdm-off\00", [23 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ofdm-on\00", [24 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cck-off\00", [24 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cck-on\00", [25 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"available txbuffers: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02d: %ssetup\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.244 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  len: %d bufs: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  stuck: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@ath5k_debug_printrxbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.250, ptr @.str.16, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017R (%p %llx) %08x %08x %08x %08x %08x %08x %c\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ath5k_debug_printrxbuf\00", [41 x i8] zeroinitializer }, align 32
@ath5k_debug_printrxbuf._entry_ptr = internal global ptr @ath5k_debug_printrxbuf._entry, section ".printk_index", align 4
@switch.table.read_file_ani = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"ath5k_debug\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 74, i32 21 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 984, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 988, i32 22 }
@___asan_gen_.260 = private unnamed_addr constant [11 x i8] c"fops_debug\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 347, i32 37 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 989, i32 22 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"registers_fops\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 171, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 990, i32 22 }
@___asan_gen_.272 = private unnamed_addr constant [12 x i8] c"fops_beacon\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 245, i32 37 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 991, i32 22 }
@___asan_gen_.278 = private unnamed_addr constant [11 x i8] c"fops_reset\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 266, i32 37 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 992, i32 22 }
@___asan_gen_.284 = private unnamed_addr constant [13 x i8] c"fops_antenna\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 461, i32 37 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 993, i32 22 }
@___asan_gen_.290 = private unnamed_addr constant [10 x i8] c"fops_misc\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 517, i32 37 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 994, i32 22 }
@___asan_gen_.296 = private unnamed_addr constant [12 x i8] c"fops_eeprom\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 969, i32 37 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 995, i32 22 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"fops_frameerrors\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 633, i32 37 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 996, i32 22 }
@___asan_gen_.308 = private unnamed_addr constant [9 x i8] c"fops_ani\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 798, i32 37 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 997, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant [11 x i8] c"fops_queue\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 871, i32 37 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 998, i32 22 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1017, i32 18 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1020, i32 18 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1023, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1027, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1029, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1031, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1037, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1039, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1073, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1099, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 305, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 309, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant [9 x i8] c"dbg_info\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 280, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 281, i32 32 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 282, i32 22 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 282, i32 31 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 283, i32 22 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 283, i32 31 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 284, i32 22 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 284, i32 31 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 285, i32 34 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 286, i32 27 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 286, i32 36 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 287, i32 25 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 287, i32 36 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 288, i32 21 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 288, i32 29 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 289, i32 27 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 289, i32 40 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 290, i32 21 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 290, i32 29 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 291, i32 29 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 292, i32 22 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 292, i32 31 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 293, i32 21 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 293, i32 29 }
@___asan_gen_.465 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 156, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [15 x i8] c"registers_sops\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 164, i32 36 }
@___asan_gen_.470 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 88, i32 25 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 89, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 90, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 91, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 92, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 93, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 94, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 95, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 96, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 97, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 98, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 99, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 100, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 101, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 102, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 103, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 104, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 105, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 106, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 107, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 108, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 109, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 110, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 111, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 112, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 113, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 114, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 115, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 116, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 117, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 118, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 119, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 120, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 121, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 122, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 123, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 124, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 125, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 126, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 127, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 128, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 129, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 130, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 131, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 132, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 133, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 134, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 135, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 136, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 159, i32 18 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 186, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 187, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 190, i32 49 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 191, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 193, i32 49 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 194, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 197, i32 49 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 198, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 202, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 206, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 210, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 214, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 235, i32 19 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 237, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 238, i32 26 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 240, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 261, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 367, i32 49 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 369, i32 49 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 371, i32 49 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 374, i32 49 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 377, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 380, i32 49 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 385, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 389, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 392, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 395, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 398, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 403, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 408, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 413, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 418, i32 4 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 421, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 442, i32 19 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 444, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 445, i32 26 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 447, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 448, i32 26 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 450, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 451, i32 26 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 456, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 479, i32 49 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 481, i32 49 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 484, i32 50 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 486, i32 50 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 488, i32 50 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 490, i32 50 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 492, i32 50 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 494, i32 50 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 496, i32 50 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 498, i32 50 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 500, i32 50 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 502, i32 50 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 504, i32 42 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 506, i32 50 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 508, i32 49 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 536, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 537, i32 49 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 541, i32 49 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 548, i32 5 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 552, i32 49 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 556, i32 49 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 560, i32 49 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 564, i32 49 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 568, i32 49 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 572, i32 49 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 574, i32 49 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 578, i32 4 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 579, i32 49 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 587, i32 49 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 591, i32 49 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 593, i32 49 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 628, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 655, i32 4 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 657, i32 4 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 657, i32 12 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 659, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 662, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 663, i32 49 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 666, i32 50 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 670, i32 4 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 674, i32 4 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 677, i32 50 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 681, i32 4 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 685, i32 4 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 688, i32 4 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 691, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 694, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 695, i32 24 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 695, i32 31 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 697, i32 4 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 701, i32 4 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 704, i32 4 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 713, i32 4 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 716, i32 4 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 719, i32 4 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 722, i32 49 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 725, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 728, i32 4 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 732, i32 4 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 736, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 741, i32 4 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 764, i32 19 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 766, i32 26 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 768, i32 26 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 770, i32 26 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 772, i32 26 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 774, i32 26 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 777, i32 26 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 779, i32 26 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 782, i32 26 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 784, i32 26 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 786, i32 26 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 788, i32 26 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 790, i32 26 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 792, i32 26 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 821, i32 4 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 827, i32 4 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 827, i32 39 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 827, i32 44 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 839, i32 5 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 841, i32 5 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 862, i32 19 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 864, i32 24 }
@___asan_gen_.1025 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1031 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1032 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath5k/debug.c\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1054, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant [27 x i8] c"switch.table.read_file_ani\00", align 1
@llvm.compiler.used = appending global [280 x ptr] [ptr @__UNIQUE_ID_debugtype362, ptr @__param_debug, ptr @ath5k_debug_dump_bands._entry, ptr @ath5k_debug_dump_bands._entry.17, ptr @ath5k_debug_dump_bands._entry.20, ptr @ath5k_debug_dump_bands._entry.23, ptr @ath5k_debug_dump_bands._entry.26, ptr @ath5k_debug_dump_bands._entry.29, ptr @ath5k_debug_dump_bands._entry_ptr, ptr @ath5k_debug_dump_bands._entry_ptr.19, ptr @ath5k_debug_dump_bands._entry_ptr.22, ptr @ath5k_debug_dump_bands._entry_ptr.25, ptr @ath5k_debug_dump_bands._entry_ptr.28, ptr @ath5k_debug_dump_bands._entry_ptr.31, ptr @ath5k_debug_printrxbuf._entry, ptr @ath5k_debug_printrxbuf._entry_ptr, ptr @ath5k_debug_printrxbuffs._entry, ptr @ath5k_debug_printrxbuffs._entry_ptr, ptr @ath5k_debug_printtxbuf._entry, ptr @ath5k_debug_printtxbuf._entry_ptr, ptr @write_file_antenna._entry, ptr @write_file_antenna._entry.154, ptr @write_file_antenna._entry.158, ptr @write_file_antenna._entry.162, ptr @write_file_antenna._entry_ptr, ptr @write_file_antenna._entry_ptr.156, ptr @write_file_antenna._entry_ptr.160, ptr @write_file_antenna._entry_ptr.164, ptr @write_file_beacon._entry, ptr @write_file_beacon._entry.129, ptr @write_file_beacon._entry_ptr, ptr @write_file_beacon._entry_ptr.131, ptr @write_file_frameerrors._entry, ptr @write_file_frameerrors._entry_ptr, ptr @ath5k_debug, ptr @.str, ptr @.str.1, ptr @fops_debug, ptr @.str.2, ptr @registers_fops, ptr @.str.3, ptr @fops_beacon, ptr @.str.4, ptr @fops_reset, ptr @.str.5, ptr @fops_antenna, ptr @.str.6, ptr @fops_misc, ptr @.str.7, ptr @fops_eeprom, ptr @.str.8, ptr @fops_frameerrors, ptr @.str.9, ptr @fops_ani, ptr @.str.10, ptr @fops_queue, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @dbg_info, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @registers_sops, ptr @regs, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @switch.table.read_file_ani], section "llvm.metadata"
@0 = internal global [262 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_debug to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registers_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_beacon to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_reset to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_antenna to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_misc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_eeprom to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_frameerrors to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ani to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_queue to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug_dump_bands._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug_dump_bands._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug_dump_bands._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug_dump_bands._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug_dump_bands._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug_dump_bands._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug_printrxbuffs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug_printtxbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_info to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registers_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regs to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_file_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_file_beacon._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_file_antenna._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_file_antenna._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_file_antenna._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_file_antenna._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_file_frameerrors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_debug_printrxbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.read_file_ani to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_debug_init_device(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ath5k_debug, align 4
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %1 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %debug, align 4
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 58
  %6 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %7) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @fops_debug) #14
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @registers_fops) #14
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @fops_beacon) #14
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 128, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @fops_reset) #14
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @fops_antenna) #14
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @fops_misc) #14
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @fops_eeprom) #14
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @fops_frameerrors) #14
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @fops_ani) #14
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %ah, ptr noundef nonnull @fops_queue) #14
  %ah_use_32khz_clock = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 77
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %ah_use_32khz_clock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_debug_dump_bands(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  %bname = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup73_crit_edge, label %entry.for.body_crit_edge, !prof !533

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup73

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %b.0108 = phi i32 [ %inc71, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 8, i32 %b.0108
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bname) #14
  %band4 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 8, i32 %b.0108, i32 2
  %2 = call ptr @memset(ptr %bname, i32 255, i32 6)
  %3 = ptrtoint ptr %band4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %band4, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = call ptr @memcpy(ptr %bname, ptr @.str.12, i32 6)
  br label %do.end12

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %7 = call ptr @memcpy(ptr %bname, ptr @.str.13, i32 6)
  br label %do.end12

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %4) #17
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bname) #14
  br label %cleanup73

do.end12:                                         ; preds = %sw.bb5, %sw.bb
  %n_channels = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 8, i32 %b.0108, i32 3
  %8 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels, align 4
  %n_bitrates = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 8, i32 %b.0108, i32 4
  %10 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_bitrates, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %bname, i32 noundef %9, i32 noundef %11) #17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #17
  %12 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23104.not = icmp eq i32 %13, 0
  br i1 %cmp23104.not, label %do.end12.do.end41_crit_edge, label %do.end12.do.end27_crit_edge

do.end12.do.end27_crit_edge:                      ; preds = %do.end12
  br label %do.end27

do.end12.do.end41_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

do.end27:                                         ; preds = %do.end27.do.end27_crit_edge, %do.end12.do.end27_crit_edge
  %i.0105 = phi i32 [ %inc, %do.end27.do.end27_crit_edge ], [ 0, %do.end12.do.end27_crit_edge ]
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %center_freq = getelementptr %struct.ieee80211_channel, ptr %15, i32 %i.0105, i32 1
  %16 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %17, 1000
  %call.i = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #14
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %center_freq33 = getelementptr %struct.ieee80211_channel, ptr %19, i32 %i.0105, i32 1
  %20 = ptrtoint ptr %center_freq33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq33, align 4
  %hw_value = getelementptr %struct.ieee80211_channel, ptr %19, i32 %i.0105, i32 3
  %22 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %23 to i32
  %flags = getelementptr %struct.ieee80211_channel, ptr %19, i32 %i.0105, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call.i, i32 noundef %21, i32 noundef %conv, i32 noundef %25) #17
  %inc = add nuw i32 %i.0105, 1
  %26 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_channels, align 4
  %cmp23 = icmp ult i32 %inc, %27
  br i1 %cmp23, label %do.end27.do.end27_crit_edge, label %do.end27.do.end41_crit_edge

do.end27.do.end41_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

do.end27.do.end27_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

do.end41:                                         ; preds = %do.end27.do.end41_crit_edge, %do.end12.do.end41_crit_edge
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #17
  %28 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp46106.not = icmp eq i32 %29, 0
  br i1 %cmp46106.not, label %do.end41.cleanup_crit_edge, label %do.end51.lr.ph

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end51.lr.ph:                                   ; preds = %do.end41
  %bitrates = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 8, i32 %b.0108, i32 1
  br label %do.end51

do.end51:                                         ; preds = %do.end51.do.end51_crit_edge, %do.end51.lr.ph
  %i.1107 = phi i32 [ 0, %do.end51.lr.ph ], [ %inc67, %do.end51.do.end51_crit_edge ]
  %30 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bitrates, align 4
  %arrayidx53 = getelementptr %struct.ieee80211_rate, ptr %31, i32 %i.1107
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %31, i32 %i.1107, i32 1
  %32 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bitrate, align 4
  %conv54 = zext i16 %33 to i32
  %hw_value57 = getelementptr %struct.ieee80211_rate, ptr %31, i32 %i.1107, i32 2
  %34 = ptrtoint ptr %hw_value57 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hw_value57, align 2
  %conv58 = zext i16 %35 to i32
  %36 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx53, align 4
  %hw_value_short = getelementptr %struct.ieee80211_rate, ptr %31, i32 %i.1107, i32 3
  %38 = ptrtoint ptr %hw_value_short to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_value_short, align 4
  %conv64 = zext i16 %39 to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv54, i32 noundef %conv58, i32 noundef %37, i32 noundef %conv64) #17
  %inc67 = add nuw i32 %i.1107, 1
  %40 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_bitrates, align 4
  %cmp46 = icmp ult i32 %inc67, %41
  br i1 %cmp46, label %do.end51.do.end51_crit_edge, label %do.end51.cleanup_crit_edge

do.end51.cleanup_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end51.do.end51_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end51

cleanup:                                          ; preds = %do.end51.cleanup_crit_edge, %do.end41.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bname) #14
  %inc71 = add nuw nsw i32 %b.0108, 1
  %exitcond.not = icmp eq i32 %inc71, 6
  br i1 %exitcond.not, label %cleanup.cleanup73_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.cleanup73_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup73

cleanup73:                                        ; preds = %cleanup.cleanup73_crit_edge, %do.end, %entry.cleanup73_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_debug_printrxbuffs(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  %rs = alloca %struct.ath5k_rx_status, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs) #14
  %0 = call ptr @memset(ptr %rs, i32 0, i32 12)
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %1 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end, !prof !533

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  %call = tail call i32 @ath5k_hw_get_rxdp(ptr noundef %ah) #14
  %rxlink = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 34
  %3 = ptrtoint ptr %rxlink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rxlink, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %call, ptr noundef %4) #17
  %rxbuflock = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 33
  tail call void @_raw_spin_lock_bh(ptr noundef %rxbuflock) #14
  %rxbuf = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 32
  %5 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.035 = load ptr, ptr %rxbuf, align 4
  %cmp.not36 = icmp eq ptr %bf.035, %rxbuf
  br i1 %cmp.not36, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %ah_proc_rx_desc = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 118
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bf.037 = phi ptr [ %bf.035, %for.body.lr.ph ], [ %bf.0, %for.inc.for.body_crit_edge ]
  %desc = getelementptr inbounds %struct.ath5k_buf, ptr %bf.037, i32 0, i32 1
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %8 = ptrtoint ptr %ah_proc_rx_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah_proc_rx_desc, align 4
  %call9 = call i32 %9(ptr noundef %ah, ptr noundef %7, ptr noundef nonnull %rs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @ath5k_debug_printrxbuf(ptr noundef %bf.037, ptr noundef nonnull %rs)
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %bf.037 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.0 = load ptr, ptr %bf.037, align 4
  %cmp.not = icmp eq ptr %bf.0, %rxbuf
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %rxbuflock) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_rxdp(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath5k_debug_printrxbuf(ptr nocapture noundef readonly %bf, ptr nocapture noundef readonly %rs) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %desc = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %ud = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2
  %daddr = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 2
  %2 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %daddr, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %ds_data = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ds_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ds_data, align 4
  %8 = ptrtoint ptr %ud to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ud, align 4
  %rx_control_1 = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %rx_control_1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_control_1, align 4
  %rx_stat = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %rx_stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_stat, align 4
  %rx_status_1 = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %rx_status_1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_status_1, align 4
  %rs_status = getelementptr inbounds %struct.ath5k_rx_status, ptr %rs, i32 0, i32 2
  %16 = ptrtoint ptr %rs_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rs_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp eq i8 %17, 0
  %cond = select i1 %cmp, i32 42, i32 33
  %conv = zext i32 %3 to i64
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef %1, i64 noundef %conv, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %cond) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_debug_printtxbuf(ptr noundef %ah, ptr nocapture noundef readonly %bf) local_unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.ath5k_tx_status, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ts) #14
  %2 = call ptr @memset(ptr %ts, i32 0, i32 12)
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 4
  %and = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !533

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ud = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2
  %ah_proc_tx_desc = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 117
  %5 = ptrtoint ptr %ah_proc_tx_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ah_proc_tx_desc, align 8
  %call = call i32 %6(ptr noundef %ah, ptr noundef %1, ptr noundef nonnull %ts) #14
  %daddr = getelementptr inbounds %struct.ath5k_buf, ptr %bf, i32 0, i32 2
  %7 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %daddr, align 4
  %conv = zext i32 %8 to i64
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %ds_data = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %ds_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ds_data, align 4
  %13 = ptrtoint ptr %ud to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ud, align 4
  %tx_control_1 = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %tx_control_1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_control_1, align 4
  %tx_control_2 = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %tx_control_2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_control_2, align 4
  %tx_control_3 = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %tx_control_3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_control_3, align 4
  %tx_stat = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %tx_stat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_stat, align 4
  %tx_status_1 = getelementptr inbounds %struct.ath5k_desc, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %tx_status_1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_status_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %ts_status = getelementptr inbounds %struct.ath5k_tx_status, ptr %ts, i32 0, i32 2
  %25 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ts_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  %cond = select i1 %cmp, i32 42, i32 33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond12 = phi i32 [ %cond, %cond.false ], [ 32, %if.end.cond.end_crit_edge ]
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %1, i64 noundef %conv, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %cond12) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ts) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_debug(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [700 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 700, ptr nonnull %buf) #14
  %2 = call ptr @memset(ptr %buf, i32 255, i32 700)
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 700, ptr noundef nonnull @.str.36, i32 noundef %4) #14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.055 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %len.054 = phi i32 [ %call, %entry ], [ %add12, %for.body.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %len.054
  %sub3 = sub i32 700, %len.054
  %arrayidx = getelementptr [13 x %struct.anon.138], ptr @dbg_info, i32 0, i32 %i.055
  %name = getelementptr [13 x %struct.anon.138], ptr @dbg_info, i32 0, i32 %i.055, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %and = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 32, i32 43
  %desc = getelementptr [13 x %struct.anon.138], ptr @dbg_info, i32 0, i32 %i.055, i32 2
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.37, ptr noundef %6, i32 noundef %cond, i32 noundef %10, ptr noundef %12) #14
  %add12 = add i32 %call11, %len.054
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %add12
  %sub15 = sub i32 700, %add12
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp22 = icmp eq i32 %14, -1
  %cond23 = select i1 %cmp22, i32 43, i32 32
  %call28 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.59, i32 noundef %cond23, i32 noundef -1, ptr noundef nonnull @.str.60) #14
  %add29 = add i32 %call28, %add12
  %15 = call i32 @llvm.umin.i32(i32 %add29, i32 700)
  %call32 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %15) #14
  call void @llvm.lifetime.end.p0(i64 700, ptr nonnull %buf) #14
  ret i32 %call32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_debug(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #14
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 19)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.63, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %2, i32 -1226833920) #18, !srcloc !534
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !533

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #14
  %5 = call i32 @llvm.read_register.i32(metadata !523) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !535
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %userbuf, i32 noundef %2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !533

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [20 x i8], ptr %buf, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.4, i32 5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp8 = icmp eq i32 %bcmp, 0
  br i1 %cmp8, label %if.end.if.then9_crit_edge, label %for.inc

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.then9:                                         ; preds = %for.inc.11.if.then9_crit_edge, %for.inc.10.if.then9_crit_edge, %for.inc.9.if.then9_crit_edge, %for.inc.8.if.then9_crit_edge, %for.inc.7.if.then9_crit_edge, %for.inc.6.if.then9_crit_edge, %for.inc.5.if.then9_crit_edge, %for.inc.4.if.then9_crit_edge, %for.inc.3.if.then9_crit_edge, %for.inc.2.if.then9_crit_edge, %for.inc.1.if.then9_crit_edge, %for.inc.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %i.027.lcssa = phi i32 [ 0, %if.end.if.then9_crit_edge ], [ 1, %for.inc.if.then9_crit_edge ], [ 2, %for.inc.1.if.then9_crit_edge ], [ 3, %for.inc.2.if.then9_crit_edge ], [ 4, %for.inc.3.if.then9_crit_edge ], [ 5, %for.inc.4.if.then9_crit_edge ], [ 6, %for.inc.5.if.then9_crit_edge ], [ 7, %for.inc.6.if.then9_crit_edge ], [ 8, %for.inc.7.if.then9_crit_edge ], [ 9, %for.inc.8.if.then9_crit_edge ], [ 10, %for.inc.9.if.then9_crit_edge ], [ 11, %for.inc.10.if.then9_crit_edge ], [ 12, %for.inc.11.if.then9_crit_edge ]
  %arrayidx3 = getelementptr [13 x %struct.anon.138], ptr @dbg_info, i32 0, i32 %i.027.lcssa
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  %xor = xor i32 %13, %11
  store i32 %xor, ptr %debug, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %bcmp29 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str.39, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp29)
  %cmp8.1 = icmp eq i32 %bcmp29, 0
  br i1 %cmp8.1, label %for.inc.if.then9_crit_edge, label %for.inc.1

for.inc.if.then9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.1:                                        ; preds = %for.inc
  %bcmp30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str.41, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp30)
  %cmp8.2 = icmp eq i32 %bcmp30, 0
  br i1 %cmp8.2, label %for.inc.1.if.then9_crit_edge, label %for.inc.2

for.inc.1.if.then9_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.2:                                        ; preds = %for.inc.1
  %bcmp31 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str.43, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp31)
  %cmp8.3 = icmp eq i32 %bcmp31, 0
  br i1 %cmp8.3, label %for.inc.2.if.then9_crit_edge, label %for.inc.3

for.inc.2.if.then9_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.3:                                        ; preds = %for.inc.2
  %bcmp32 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buf, ptr noundef nonnull dereferenceable(6) @.str.3, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp32)
  %cmp8.4 = icmp eq i32 %bcmp32, 0
  br i1 %cmp8.4, label %for.inc.3.if.then9_crit_edge, label %for.inc.4

for.inc.3.if.then9_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.4:                                        ; preds = %for.inc.3
  %bcmp33 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.46, i32 5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp33)
  %cmp8.5 = icmp eq i32 %bcmp33, 0
  br i1 %cmp8.5, label %for.inc.4.if.then9_crit_edge, label %for.inc.5

for.inc.4.if.then9_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.5:                                        ; preds = %for.inc.4
  %bcmp34 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.48, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp34)
  %cmp8.6 = icmp eq i32 %bcmp34, 0
  br i1 %cmp8.6, label %for.inc.5.if.then9_crit_edge, label %for.inc.6

for.inc.5.if.then9_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.6:                                        ; preds = %for.inc.5
  %bcmp35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.50, i32 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp35)
  %cmp8.7 = icmp eq i32 %bcmp35, 0
  br i1 %cmp8.7, label %for.inc.6.if.then9_crit_edge, label %for.inc.7

for.inc.6.if.then9_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.7:                                        ; preds = %for.inc.6
  %bcmp36 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf, ptr noundef nonnull dereferenceable(9) @.str.52, i32 9) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp36)
  %cmp8.8 = icmp eq i32 %bcmp36, 0
  br i1 %cmp8.8, label %for.inc.7.if.then9_crit_edge, label %for.inc.8

for.inc.7.if.then9_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.8:                                        ; preds = %for.inc.7
  %bcmp37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.54, i32 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp37)
  %cmp8.9 = icmp eq i32 %bcmp37, 0
  br i1 %cmp8.9, label %for.inc.8.if.then9_crit_edge, label %for.inc.9

for.inc.8.if.then9_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.9:                                        ; preds = %for.inc.8
  %bcmp38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.9, i32 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp38)
  %cmp8.10 = icmp eq i32 %bcmp38, 0
  br i1 %cmp8.10, label %for.inc.9.if.then9_crit_edge, label %for.inc.10

for.inc.9.if.then9_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.10:                                       ; preds = %for.inc.9
  %bcmp39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str.57, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp39)
  %cmp8.11 = icmp eq i32 %bcmp39, 0
  br i1 %cmp8.11, label %for.inc.10.if.then9_crit_edge, label %for.inc.11

for.inc.10.if.then9_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.11:                                       ; preds = %for.inc.10
  %bcmp40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.59, i32 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp40)
  %cmp8.12 = icmp eq i32 %bcmp40, 0
  br i1 %cmp8.12, label %for.inc.11.if.then9_crit_edge, label %for.inc.11.cleanup_crit_edge

for.inc.11.cleanup_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.11.if.then9_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

cleanup:                                          ; preds = %for.inc.11.cleanup_crit_edge, %if.then9, %if.then11.i.i
  %retval.0 = phi i32 [ %2, %if.then9 ], [ -14, %if.then11.i.i ], [ %2, %for.inc.11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @registers_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @registers_sops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @reg_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %1)
  %cmp = icmp slt i64 %1, 48
  %idxprom = trunc i64 %1 to i32
  %arrayidx = getelementptr [48 x %struct.reg], ptr @regs, i32 0, i32 %idxprom
  %cond = select i1 %cmp, ptr %arrayidx, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @reg_stop(ptr nocapture noundef %seq, ptr nocapture noundef %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @reg_next(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %p, ptr nocapture noundef %pos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %inc)
  %cmp = icmp slt i64 %inc, 48
  %idxprom = trunc i64 %inc to i32
  %arrayidx = getelementptr [48 x %struct.reg], ptr @regs, i32 0, i32 %idxprom
  %cond = select i1 %cmp, ptr %arrayidx, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reg_show(ptr noundef %seq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %addr = getelementptr inbounds %struct.reg, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %conv.i = and i32 %5, 65535
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !538
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.112, ptr noundef %3, i32 noundef %9) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_beacon(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [500 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %buf) #14
  %2 = call ptr @memset(ptr %buf, i32 255, i32 500)
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 68
  %3 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  %conv.i = select i1 %cmp, i32 32804, i32 32800
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !538
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %and = and i32 %8, 65535
  %and1 = lshr i32 %8, 16
  %shr = and i32 %and1, 127
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 500, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef %8, i32 noundef %and, i32 noundef %shr) #14
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %call2
  %sub5 = sub i32 500, %call2
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %10, i32 32896
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #14, !srcloc !538
  %12 = call i32 @llvm.bswap.i32(i32 %11) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef %12) #14
  %add8 = add i32 %call7, %call2
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %add8
  %sub11 = sub i32 500, %add8
  %13 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13 = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %conv.i130 = select i1 %cmp13, i32 32928, i32 32920
  %add.ptr.i131 = getelementptr i8, ptr %16, i32 %conv.i130
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #14, !srcloc !538
  %18 = call i32 @llvm.bswap.i32(i32 %17) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %call18 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, i32 noundef %18) #14
  %add19 = add i32 %call18, %add8
  %19 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp21 = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i, align 4
  %conv.i133 = select i1 %cmp21, i32 32812, i32 32808
  %add.ptr.i134 = getelementptr i8, ptr %22, i32 %conv.i133
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #14, !srcloc !538
  %24 = call i32 @llvm.bswap.i32(i32 %23) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr27 = getelementptr i8, ptr %buf, i32 %add19
  %sub28 = sub i32 500, %add19
  %call29 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef %24, i32 noundef %24) #14
  %add30 = add i32 %call29, %add19
  %25 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp32 = icmp eq i32 %26, 0
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %conv.i136 = select i1 %cmp32, i32 32816, i32 32812
  %add.ptr.i137 = getelementptr i8, ptr %28, i32 %conv.i136
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #14, !srcloc !538
  %30 = call i32 @llvm.bswap.i32(i32 %29) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr38 = getelementptr i8, ptr %buf, i32 %add30
  %sub39 = sub i32 500, %add30
  %shr40 = lshr i32 %30, 3
  %call41 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.121, i32 noundef %30, i32 noundef %shr40) #14
  %add42 = add i32 %call41, %add30
  %31 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp44 = icmp eq i32 %32, 0
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobase.i, align 4
  %conv.i139 = select i1 %cmp44, i32 32820, i32 32816
  %add.ptr.i140 = getelementptr i8, ptr %34, i32 %conv.i139
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #14, !srcloc !538
  %36 = call i32 @llvm.bswap.i32(i32 %35) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr50 = getelementptr i8, ptr %buf, i32 %add42
  %sub51 = sub i32 500, %add42
  %shr52 = lshr i32 %36, 3
  %call53 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.122, i32 noundef %36, i32 noundef %shr52) #14
  %add54 = add i32 %call53, %add42
  %37 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp56 = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i, align 4
  %conv.i142 = select i1 %cmp56, i32 32824, i32 32820
  %add.ptr.i143 = getelementptr i8, ptr %40, i32 %conv.i142
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #14, !srcloc !538
  %42 = call i32 @llvm.bswap.i32(i32 %41) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr62 = getelementptr i8, ptr %buf, i32 %add54
  %sub63 = sub i32 500, %add54
  %call64 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.123, i32 noundef %42, i32 noundef %42) #14
  %add65 = add i32 %call64, %add54
  %call66 = call i64 @ath5k_hw_get_tsf64(ptr noundef %1) #14
  %add.ptr68 = getelementptr i8, ptr %buf, i32 %add65
  %sub69 = sub i32 500, %add65
  %shr70 = lshr i64 %call66, 10
  %conv71 = trunc i64 %shr70 to i32
  %call72 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68, i32 noundef %sub69, ptr noundef nonnull @.str.124, i64 noundef %call66, i32 noundef %conv71) #14
  %add73 = add i32 %call72, %add65
  %43 = call i32 @llvm.umin.i32(i32 %add73, i32 500)
  %call77 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %43) #14
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %buf) #14
  ret i32 %call77
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_beacon(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #14
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 19)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.63, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %2, i32 -1226833920) #18, !srcloc !534
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !533

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #14
  %5 = call i32 @llvm.read_register.i32(metadata !523) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !535
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %userbuf, i32 noundef %2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !533

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [20 x i8], ptr %buf, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.125, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 68
  %10 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5 = icmp eq i32 %11, 0
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %conv.i = select i1 %cmp5, i32 32804, i32 32800
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv.i
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !538
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %15 = and i32 %14, -32769
  %16 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9 = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %conv.i53 = select i1 %cmp9, i32 32804, i32 32800
  %add.ptr.i54 = getelementptr i8, ptr %19, i32 %conv.i53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %15) #14, !srcloc !541
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #17
  br label %cleanup

if.else:                                          ; preds = %if.end
  %bcmp51 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buf, ptr noundef nonnull dereferenceable(6) @.str.128, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp51)
  %cmp17 = icmp eq i32 %bcmp51, 0
  br i1 %cmp17, label %if.then19, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %ah_version20 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 68
  %20 = ptrtoint ptr %ah_version20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ah_version20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp21 = icmp eq i32 %21, 0
  %iobase.i55 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %iobase.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase.i55, align 4
  %conv.i56 = select i1 %cmp21, i32 32804, i32 32800
  %add.ptr.i57 = getelementptr i8, ptr %23, i32 %conv.i56
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #14, !srcloc !538
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %25 = or i32 %24, 32768
  %26 = ptrtoint ptr %ah_version20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ah_version20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp27 = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %iobase.i55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i55, align 4
  %conv.i59 = select i1 %cmp27, i32 32804, i32 32800
  %add.ptr.i60 = getelementptr i8, ptr %29, i32 %conv.i59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %25) #14, !srcloc !541
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.else.cleanup_crit_edge, %if.then4, %if.then11.i.i
  %retval.0 = phi i32 [ %2, %if.else.cleanup_crit_edge ], [ %2, %if.then19 ], [ %2, %if.then4 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ath5k_hw_get_tsf64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_reset(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %userbuf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs.do.end_crit_edge, label %if.then, !prof !533

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.write_file_reset, i32 noundef 261) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %reset_work = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 30
  tail call void @ieee80211_queue_work(ptr noundef %5, ptr noundef %reset_work) #14
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_antenna(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [700 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 700, ptr nonnull %buf) #14
  %2 = call ptr @memset(ptr %buf, i32 255, i32 700)
  %ah_ant_mode = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 83
  %3 = ptrtoint ptr %ah_ant_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ah_ant_mode, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 700, ptr noundef nonnull @.str.134, i32 noundef %conv) #14
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 700, %call
  %ah_def_ant = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 85
  %5 = ptrtoint ptr %ah_def_ant to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ah_def_ant, align 2
  %conv4 = zext i8 %6 to i32
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.135, i32 noundef %conv4) #14
  %add6 = add i32 %call5, %call
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %add6
  %sub9 = sub i32 700, %add6
  %ah_tx_ant = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 84
  %7 = ptrtoint ptr %ah_tx_ant to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ah_tx_ant, align 1
  %conv10 = zext i8 %8 to i32
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.136, i32 noundef %conv10) #14
  %add12 = add i32 %call11, %add6
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %add12
  %sub15 = sub i32 700, %add12
  %call16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.137) #14
  %add17 = add i32 %add12, %call16
  %stats = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %add17
  %sub21 = sub i32 700, %add17
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx23 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx23, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.138, i32 noundef 1, i32 noundef %10, i32 noundef %12) #14
  %add25 = add i32 %call24, %add17
  %add.ptr20.1 = getelementptr i8, ptr %buf, i32 %add25
  %sub21.1 = sub i32 700, %add25
  %arrayidx.1 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %arrayidx23.1 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx23.1, align 4
  %call24.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20.1, i32 noundef %sub21.1, ptr noundef nonnull @.str.138, i32 noundef 2, i32 noundef %14, i32 noundef %16) #14
  %add25.1 = add i32 %call24.1, %add25
  %add.ptr20.2 = getelementptr i8, ptr %buf, i32 %add25.1
  %sub21.2 = sub i32 700, %add25.1
  %arrayidx.2 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2, align 4
  %arrayidx23.2 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23.2, align 4
  %call24.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20.2, i32 noundef %sub21.2, ptr noundef nonnull @.str.138, i32 noundef 3, i32 noundef %18, i32 noundef %20) #14
  %add25.2 = add i32 %call24.2, %add25.1
  %add.ptr20.3 = getelementptr i8, ptr %buf, i32 %add25.2
  %sub21.3 = sub i32 700, %add25.2
  %arrayidx.3 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3, align 4
  %arrayidx23.3 = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 1, i32 4
  %23 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx23.3, align 4
  %call24.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20.3, i32 noundef %sub21.3, ptr noundef nonnull @.str.138, i32 noundef 4, i32 noundef %22, i32 noundef %24) #14
  %add25.3 = add i32 %call24.3, %add25.2
  %add.ptr27 = getelementptr i8, ptr %buf, i32 %add25.3
  %sub28 = sub i32 700, %add25.3
  %25 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stats, align 8
  %antenna_tx33 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 1
  %27 = ptrtoint ptr %antenna_tx33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %antenna_tx33, align 4
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.139, i32 noundef %26, i32 noundef %28) #14
  %add36 = add i32 %call35, %add25.3
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 32856
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !538
  %32 = call i32 @llvm.bswap.i32(i32 %31) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr39 = getelementptr i8, ptr %buf, i32 %add36
  %sub40 = sub i32 700, %add36
  %call41 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.140, i32 noundef %32) #14
  %add42 = add i32 %call41, %add36
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i192 = getelementptr i8, ptr %34, i32 32772
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192) #14, !srcloc !538
  %36 = call i32 @llvm.bswap.i32(i32 %35) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr45 = getelementptr i8, ptr %buf, i32 %add42
  %sub46 = sub i32 700, %add42
  %and = lshr i32 %36, 21
  %and.lobit = and i32 %and, 1
  %call49 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub46, ptr noundef nonnull @.str.141, i32 noundef %and.lobit) #14
  %add50 = add i32 %call49, %add42
  %add.ptr52 = getelementptr i8, ptr %buf, i32 %add50
  %sub53 = sub i32 700, %add50
  %and54 = lshr i32 %36, 22
  %and54.lobit = and i32 %and54, 1
  %call57 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.142, i32 noundef %and54.lobit) #14
  %add58 = add i32 %add50, %call57
  %add.ptr60 = getelementptr i8, ptr %buf, i32 %add58
  %sub61 = sub i32 700, %add58
  %and62 = lshr i32 %36, 23
  %and62.lobit = and i32 %and62, 1
  %call65 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.143, i32 noundef %and62.lobit) #14
  %add66 = add i32 %add58, %call65
  %add.ptr68 = getelementptr i8, ptr %buf, i32 %add66
  %sub69 = sub i32 700, %add66
  %and70 = lshr i32 %36, 26
  %and70.lobit = and i32 %and70, 1
  %call73 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68, i32 noundef %sub69, ptr noundef nonnull @.str.144, i32 noundef %and70.lobit) #14
  %add74 = add i32 %add66, %call73
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %38, i32 39008
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i194) #14, !srcloc !538
  %40 = lshr i32 %39, 27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr77 = getelementptr i8, ptr %buf, i32 %add74
  %sub78 = sub i32 700, %add74
  %and79.lobit = and i32 %40, 1
  %call82 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.145, i32 noundef %and79.lobit) #14
  %add83 = add i32 %call82, %add74
  %41 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %42, i32 39280
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #14, !srcloc !538
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr86 = getelementptr i8, ptr %buf, i32 %add83
  %sub87 = sub i32 700, %add83
  %44 = lshr i32 %43, 10
  %shr = and i32 %44, 7
  %call89 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr86, i32 noundef %sub87, ptr noundef nonnull @.str.146, i32 noundef %shr) #14
  %add90 = add i32 %call89, %add83
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %46, i32 41480
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #14, !srcloc !538
  %48 = lshr i32 %47, 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr93 = getelementptr i8, ptr %buf, i32 %add90
  %sub94 = sub i32 700, %add90
  %and95.lobit = and i32 %48, 1
  %call98 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr93, i32 noundef %sub94, ptr noundef nonnull @.str.147, i32 noundef %and95.lobit) #14
  %add99 = add i32 %call98, %add90
  %49 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %50, i32 39264
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #14, !srcloc !538
  %52 = call i32 @llvm.bswap.i32(i32 %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr102 = getelementptr i8, ptr %buf, i32 %add99
  %sub103 = sub i32 700, %add99
  %call104 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr102, i32 noundef %sub103, ptr noundef nonnull @.str.148, i32 noundef %52) #14
  %add105 = add i32 %call104, %add99
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %54, i32 39268
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #14, !srcloc !538
  %56 = call i32 @llvm.bswap.i32(i32 %55) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %add.ptr108 = getelementptr i8, ptr %buf, i32 %add105
  %sub109 = sub i32 700, %add105
  %call110 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr108, i32 noundef %sub109, ptr noundef nonnull @.str.149, i32 noundef %56) #14
  %add111 = add i32 %call110, %add105
  %57 = call i32 @llvm.umin.i32(i32 %add111, i32 700)
  %call115 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %57) #14
  call void @llvm.lifetime.end.p0(i64 700, ptr nonnull %buf) #14
  ret i32 %call115
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_antenna(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #14
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 19)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.63, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %2, i32 -1226833920) #18, !srcloc !534
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !533

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #14
  %5 = call i32 @llvm.read_register.i32(metadata !523) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !535
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %userbuf, i32 noundef %2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !533

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [20 x i8], ptr %buf, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf, ptr noundef nonnull dereferenceable(9) @.str.150, i32 9) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_hw_set_antenna_mode(ptr noundef %1, i8 noundef zeroext 0) #14
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #17
  br label %cleanup

if.else:                                          ; preds = %if.end
  %bcmp58 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.153, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp58)
  %cmp9 = icmp eq i32 %bcmp58, 0
  br i1 %cmp9, label %if.then10, label %if.else16

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_hw_set_antenna_mode(ptr noundef %1, i8 noundef zeroext 1) #14
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155) #17
  br label %cleanup

if.else16:                                        ; preds = %if.else
  %bcmp59 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.157, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp59)
  %cmp19 = icmp eq i32 %bcmp59, 0
  br i1 %cmp19, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_hw_set_antenna_mode(ptr noundef %1, i8 noundef zeroext 2) #14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #17
  br label %cleanup

if.else26:                                        ; preds = %if.else16
  %bcmp60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.161, i32 5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp60)
  %cmp29 = icmp eq i32 %bcmp60, 0
  br i1 %cmp29, label %for.cond.preheader, label %if.else26.cleanup_crit_edge

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #16
  %stats = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59
  %10 = call ptr @memset(ptr %stats, i32 0, i32 40)
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #17
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %if.else26.cleanup_crit_edge, %if.then20, %if.then10, %if.then4, %if.then11.i.i
  %retval.0 = phi i32 [ %2, %if.then10 ], [ %2, %if.else26.cleanup_crit_edge ], [ %2, %for.cond.preheader ], [ %2, %if.then20 ], [ %2, %if.then4 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_antenna_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_misc(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [700 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 700, ptr nonnull %buf) #14
  %2 = call ptr @memset(ptr %buf, i32 255, i32 700)
  %call = tail call i32 @ath5k_hw_get_rx_filter(ptr noundef %1) #14
  %bssidmask = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 27
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 700, ptr noundef nonnull @.str.165, ptr noundef %bssidmask) #14
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %call2
  %sub5 = sub i32 700, %call2
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.166, i32 noundef %call) #14
  %add7 = add i32 %call6, %call2
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add7
  %sub10 = sub i32 700, %add7
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.167) #14
  %add12 = add i32 %call11, %add7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %add12, %if.then ], [ %add7, %entry.if.end_crit_edge ]
  %and13 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.if.end21_crit_edge, label %if.then15

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %len.0
  %sub18 = sub i32 700, %len.0
  %call19 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.168) #14
  %add20 = add i32 %call19, %len.0
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end.if.end21_crit_edge
  %len.1 = phi i32 [ %add20, %if.then15 ], [ %len.0, %if.end.if.end21_crit_edge ]
  %and22 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end30_crit_edge, label %if.then24

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %len.1
  %sub27 = sub i32 700, %len.1
  %call28 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.169) #14
  %add29 = add i32 %call28, %len.1
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end21.if.end30_crit_edge
  %len.2 = phi i32 [ %add29, %if.then24 ], [ %len.1, %if.end21.if.end30_crit_edge ]
  %and31 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end39_crit_edge, label %if.then33

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr35 = getelementptr i8, ptr %buf, i32 %len.2
  %sub36 = sub i32 700, %len.2
  %call37 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.170) #14
  %add38 = add i32 %call37, %len.2
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end30.if.end39_crit_edge
  %len.3 = phi i32 [ %add38, %if.then33 ], [ %len.2, %if.end30.if.end39_crit_edge ]
  %and40 = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.then42

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr44 = getelementptr i8, ptr %buf, i32 %len.3
  %sub45 = sub i32 700, %len.3
  %call46 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.171) #14
  %add47 = add i32 %call46, %len.3
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.end39.if.end48_crit_edge
  %len.4 = phi i32 [ %add47, %if.then42 ], [ %len.3, %if.end39.if.end48_crit_edge ]
  %and49 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end57_crit_edge, label %if.then51

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr53 = getelementptr i8, ptr %buf, i32 %len.4
  %sub54 = sub i32 700, %len.4
  %call55 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.172) #14
  %add56 = add i32 %call55, %len.4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end48.if.end57_crit_edge
  %len.5 = phi i32 [ %add56, %if.then51 ], [ %len.4, %if.end48.if.end57_crit_edge ]
  %and58 = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end66_crit_edge, label %if.then60

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr62 = getelementptr i8, ptr %buf, i32 %len.5
  %sub63 = sub i32 700, %len.5
  %call64 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.173) #14
  %add65 = add i32 %call64, %len.5
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.end57.if.end66_crit_edge
  %len.6 = phi i32 [ %add65, %if.then60 ], [ %len.5, %if.end57.if.end66_crit_edge ]
  %and67 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end75_crit_edge, label %if.then69

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr71 = getelementptr i8, ptr %buf, i32 %len.6
  %sub72 = sub i32 700, %len.6
  %call73 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub72, ptr noundef nonnull @.str.174) #14
  %add74 = add i32 %call73, %len.6
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.end66.if.end75_crit_edge
  %len.7 = phi i32 [ %add74, %if.then69 ], [ %len.6, %if.end66.if.end75_crit_edge ]
  %and76 = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end84_crit_edge, label %if.then78

if.end75.if.end84_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr80 = getelementptr i8, ptr %buf, i32 %len.7
  %sub81 = sub i32 700, %len.7
  %call82 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr80, i32 noundef %sub81, ptr noundef nonnull @.str.175) #14
  %add83 = add i32 %call82, %len.7
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %if.end75.if.end84_crit_edge
  %len.8 = phi i32 [ %add83, %if.then78 ], [ %len.7, %if.end75.if.end84_crit_edge ]
  %and85 = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end93_crit_edge, label %if.then87

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr89 = getelementptr i8, ptr %buf, i32 %len.8
  %sub90 = sub i32 700, %len.8
  %call91 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.176) #14
  %add92 = add i32 %call91, %len.8
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %if.end84.if.end93_crit_edge
  %len.9 = phi i32 [ %add92, %if.then87 ], [ %len.8, %if.end84.if.end93_crit_edge ]
  br i1 %tobool59.not, label %if.end93.if.end101_crit_edge, label %if.then96

if.end93.if.end101_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr98 = getelementptr i8, ptr %buf, i32 %len.9
  %sub99 = sub i32 700, %len.9
  %call100 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr98, i32 noundef %sub99, ptr noundef nonnull @.str.177)
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %if.end93.if.end101_crit_edge
  br i1 %tobool68.not, label %if.end101.if.end110_crit_edge, label %if.then104

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr106 = getelementptr i8, ptr %buf, i32 %len.9
  %sub107 = sub i32 700, %len.9
  %call108 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr106, i32 noundef %sub107, ptr noundef nonnull @.str.178) #14
  %add109 = add i32 %call108, %len.9
  br label %if.end110

if.end110:                                        ; preds = %if.then104, %if.end101.if.end110_crit_edge
  %len.10 = phi i32 [ %add109, %if.then104 ], [ %len.9, %if.end101.if.end110_crit_edge ]
  %add.ptr112 = getelementptr i8, ptr %buf, i32 %len.10
  %sub113 = sub i32 700, %len.10
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opmode, align 8
  %call114 = call ptr @ath_opmode_to_string(i32 noundef %4) #14
  %5 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opmode, align 8
  %call116 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112, i32 noundef %sub113, ptr noundef nonnull @.str.179, ptr noundef %call114, i32 noundef %6) #14
  %add117 = add i32 %call116, %len.10
  %7 = call i32 @llvm.umin.i32(i32 %add117, i32 700)
  %call121 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %7) #14
  call void @llvm.lifetime.end.p0(i64 700, ptr nonnull %buf) #14
  ret i32 %call121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_get_rx_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath_opmode_to_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_eeprom(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %len = getelementptr inbounds %struct.eeprom_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %3, i32 noundef %5) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_file_eeprom(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #14
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !542
  %bus_ops.i = getelementptr inbounds %struct.ath_common, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i = getelementptr inbounds %struct.ath_bus_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %eeprom_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eeprom_read.i, align 4
  %call1.i = call zeroext i1 %6(ptr noundef %1, i32 noundef 28, ptr noundef nonnull %val) #14
  br i1 %call1.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp = icmp eq i16 %8, 0
  br i1 %cmp, label %if.end.if.end10_crit_edge, label %if.end6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end6:                                          ; preds = %if.end
  %9 = and i16 %8, -16
  %and = zext i16 %9 to i32
  %shl = shl nuw nsw i32 %and, 12
  %10 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i49 = getelementptr inbounds %struct.ath_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %eeprom_read.i49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eeprom_read.i49, align 4
  %call1.i50 = call zeroext i1 %13(ptr noundef %1, i32 noundef 27, ptr noundef nonnull %val) #14
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %val, align 2
  %conv5 = zext i16 %15 to i32
  %or = or i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %or)
  %cmp7 = icmp ugt i32 %or, 4096
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %eesize.056 = phi i32 [ %or, %if.end6.if.end10_crit_edge ], [ 1024, %if.end.if.end10_crit_edge ]
  %16 = shl nuw nsw i32 %eesize.056, 1
  %call12 = call noalias ptr @vmalloc(i32 noundef %16) #20
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %for.cond.preheader

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eesize.056)
  %cmp1657.not = icmp eq i32 %eesize.056, 0
  br i1 %cmp1657.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %17 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_ops.i, align 4
  %eeprom_read.i52 = getelementptr inbounds %struct.ath_bus_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %eeprom_read.i52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eeprom_read.i52, align 4
  %call1.i53 = call zeroext i1 %20(ptr noundef %1, i32 noundef %i.058, ptr noundef nonnull %val) #14
  br i1 %call1.i53, label %if.end20, label %for.body.freebuf_crit_edge

for.body.freebuf_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %freebuf

if.end20:                                         ; preds = %for.body
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %val, align 2
  %arrayidx = getelementptr i16, ptr %call12, i32 %i.058
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %eesize.056
  br i1 %exitcond.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 8) #21
  %tobool22.not = icmp eq ptr %call7.i, null
  br i1 %tobool22.not, label %for.end.freebuf_crit_edge, label %if.end24

for.end.freebuf_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %freebuf

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call12, ptr %call7.i, align 8
  %len = getelementptr inbounds %struct.eeprom_private, ptr %call7.i, i32 0, i32 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %16, ptr %len, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %private_data, align 4
  br label %cleanup

freebuf:                                          ; preds = %for.end.freebuf_crit_edge, %for.body.freebuf_crit_edge
  %ret.0 = phi i32 [ -12, %for.end.freebuf_crit_edge ], [ -5, %for.body.freebuf_crit_edge ]
  call void @vfree(ptr noundef nonnull %call12) #14
  br label %cleanup

cleanup:                                          ; preds = %freebuf, %if.end24, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %ret.0, %freebuf ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @release_file_eeprom(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @vfree(ptr noundef %3) #14
  tail call void @kfree(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_frameerrors(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [700 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 700, ptr nonnull %buf) #14
  %2 = call ptr @memset(ptr %buf, i32 255, i32 700)
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 700, ptr noundef nonnull @.str.180) #14
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 700, %call
  %rxerr_crc = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 6
  %3 = ptrtoint ptr %rxerr_crc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rxerr_crc, align 4
  %rx_all_count = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 2
  %5 = ptrtoint ptr %rx_all_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mul = mul i32 %4, 100
  %div = udiv i32 %mul, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.181, i32 noundef %4, i32 noundef %cond) #14
  %add7 = add i32 %call6, %call
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add7
  %sub10 = sub i32 700, %add7
  %rxerr_phy = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 7
  %7 = ptrtoint ptr %rxerr_phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxerr_phy, align 4
  %9 = ptrtoint ptr %rx_all_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12.not = icmp eq i32 %10, 0
  br i1 %cmp12.not, label %cond.end.cond.end19_crit_edge, label %cond.true13

cond.end.cond.end19_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end19

cond.true13:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %mul15 = mul i32 %8, 100
  %div17 = udiv i32 %mul15, %10
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true13, %cond.end.cond.end19_crit_edge
  %cond20 = phi i32 [ %div17, %cond.true13 ], [ 0, %cond.end.cond.end19_crit_edge ]
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.182, i32 noundef %8, i32 noundef %cond20) #14
  %add22 = add i32 %call21, %add7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end19
  %i.0294 = phi i32 [ 0, %cond.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.0293 = phi i32 [ %add22, %cond.end19 ], [ %len.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 8, i32 %i.0294
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %len.0293
  %sub26 = sub i32 700, %len.0293
  %call29 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.183, i32 noundef %i.0294, i32 noundef %12) #14
  %add30 = add i32 %call29, %len.0293
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %add30, %if.then ], [ %len.0293, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0294, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %add.ptr32 = getelementptr i8, ptr %buf, i32 %len.1
  %sub33 = sub i32 700, %len.1
  %rxerr_fifo = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 9
  %13 = ptrtoint ptr %rxerr_fifo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rxerr_fifo, align 4
  %15 = ptrtoint ptr %rx_all_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp35.not = icmp eq i32 %16, 0
  br i1 %cmp35.not, label %for.end.cond.end42_crit_edge, label %cond.true36

for.end.cond.end42_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end42

cond.true36:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %mul38 = mul i32 %14, 100
  %div40 = udiv i32 %mul38, %16
  br label %cond.end42

cond.end42:                                       ; preds = %cond.true36, %for.end.cond.end42_crit_edge
  %cond43 = phi i32 [ %div40, %cond.true36 ], [ 0, %for.end.cond.end42_crit_edge ]
  %call44 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.184, i32 noundef %14, i32 noundef %cond43) #14
  %add45 = add i32 %call44, %len.1
  %add.ptr47 = getelementptr i8, ptr %buf, i32 %add45
  %sub48 = sub i32 700, %add45
  %rxerr_decrypt = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 10
  %17 = ptrtoint ptr %rxerr_decrypt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxerr_decrypt, align 4
  %19 = ptrtoint ptr %rx_all_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp50.not = icmp eq i32 %20, 0
  br i1 %cmp50.not, label %cond.end42.cond.end57_crit_edge, label %cond.true51

cond.end42.cond.end57_crit_edge:                  ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end57

cond.true51:                                      ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #16
  %mul53 = mul i32 %18, 100
  %div55 = udiv i32 %mul53, %20
  br label %cond.end57

cond.end57:                                       ; preds = %cond.true51, %cond.end42.cond.end57_crit_edge
  %cond58 = phi i32 [ %div55, %cond.true51 ], [ 0, %cond.end42.cond.end57_crit_edge ]
  %call59 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.185, i32 noundef %18, i32 noundef %cond58) #14
  %add60 = add i32 %call59, %add45
  %add.ptr62 = getelementptr i8, ptr %buf, i32 %add60
  %sub63 = sub i32 700, %add60
  %rxerr_mic = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 11
  %21 = ptrtoint ptr %rxerr_mic to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rxerr_mic, align 4
  %23 = ptrtoint ptr %rx_all_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp65.not = icmp eq i32 %24, 0
  br i1 %cmp65.not, label %cond.end57.cond.end72_crit_edge, label %cond.true66

cond.end57.cond.end72_crit_edge:                  ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end72

cond.true66:                                      ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #16
  %mul68 = mul i32 %22, 100
  %div70 = udiv i32 %mul68, %24
  br label %cond.end72

cond.end72:                                       ; preds = %cond.true66, %cond.end57.cond.end72_crit_edge
  %cond73 = phi i32 [ %div70, %cond.true66 ], [ 0, %cond.end57.cond.end72_crit_edge ]
  %call74 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.186, i32 noundef %22, i32 noundef %cond73) #14
  %add75 = add i32 %call74, %add60
  %add.ptr77 = getelementptr i8, ptr %buf, i32 %add75
  %sub78 = sub i32 700, %add75
  %rxerr_proc = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 12
  %25 = ptrtoint ptr %rxerr_proc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rxerr_proc, align 4
  %27 = ptrtoint ptr %rx_all_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp80.not = icmp eq i32 %28, 0
  br i1 %cmp80.not, label %cond.end72.cond.end87_crit_edge, label %cond.true81

cond.end72.cond.end87_crit_edge:                  ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end87

cond.true81:                                      ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #16
  %mul83 = mul i32 %26, 100
  %div85 = udiv i32 %mul83, %28
  br label %cond.end87

cond.end87:                                       ; preds = %cond.true81, %cond.end72.cond.end87_crit_edge
  %cond88 = phi i32 [ %div85, %cond.true81 ], [ 0, %cond.end72.cond.end87_crit_edge ]
  %call89 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.187, i32 noundef %26, i32 noundef %cond88) #14
  %add90 = add i32 %call89, %add75
  %add.ptr92 = getelementptr i8, ptr %buf, i32 %add90
  %sub93 = sub i32 700, %add90
  %rxerr_jumbo = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 13
  %29 = ptrtoint ptr %rxerr_jumbo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxerr_jumbo, align 4
  %31 = ptrtoint ptr %rx_all_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp95.not = icmp eq i32 %32, 0
  br i1 %cmp95.not, label %cond.end87.cond.end102_crit_edge, label %cond.true96

cond.end87.cond.end102_crit_edge:                 ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end102

cond.true96:                                      ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #16
  %mul98 = mul i32 %30, 100
  %div100 = udiv i32 %mul98, %32
  br label %cond.end102

cond.end102:                                      ; preds = %cond.true96, %cond.end87.cond.end102_crit_edge
  %cond103 = phi i32 [ %div100, %cond.true96 ], [ 0, %cond.end87.cond.end102_crit_edge ]
  %call104 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr92, i32 noundef %sub93, ptr noundef nonnull @.str.188, i32 noundef %30, i32 noundef %cond103) #14
  %add105 = add i32 %call104, %add90
  %add.ptr107 = getelementptr i8, ptr %buf, i32 %add105
  %sub108 = sub i32 700, %add105
  %33 = ptrtoint ptr %rx_all_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_all_count, align 4
  %call110 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr107, i32 noundef %sub108, ptr noundef nonnull @.str.189, i32 noundef %34) #14
  %add111 = add i32 %call110, %add105
  %add.ptr113 = getelementptr i8, ptr %buf, i32 %add111
  %sub114 = sub i32 700, %add111
  %rx_bytes_count = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 4
  %35 = ptrtoint ptr %rx_bytes_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_bytes_count, align 4
  %call115 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113, i32 noundef %sub114, ptr noundef nonnull @.str.190, i32 noundef %36) #14
  %add116 = add i32 %call115, %add111
  %add.ptr118 = getelementptr i8, ptr %buf, i32 %add116
  %sub119 = sub i32 700, %add116
  %call120 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr118, i32 noundef %sub119, ptr noundef nonnull @.str.191) #14
  %add121 = add i32 %add116, %call120
  %add.ptr123 = getelementptr i8, ptr %buf, i32 %add121
  %sub124 = sub i32 700, %add121
  %txerr_retry = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 14
  %37 = ptrtoint ptr %txerr_retry to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %txerr_retry, align 4
  %tx_all_count = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 3
  %39 = ptrtoint ptr %tx_all_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp125.not = icmp eq i32 %40, 0
  br i1 %cmp125.not, label %cond.end102.cond.end132_crit_edge, label %cond.true126

cond.end102.cond.end132_crit_edge:                ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end132

cond.true126:                                     ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #16
  %mul128 = mul i32 %38, 100
  %div130 = udiv i32 %mul128, %40
  br label %cond.end132

cond.end132:                                      ; preds = %cond.true126, %cond.end102.cond.end132_crit_edge
  %cond133 = phi i32 [ %div130, %cond.true126 ], [ 0, %cond.end102.cond.end132_crit_edge ]
  %call134 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr123, i32 noundef %sub124, ptr noundef nonnull @.str.192, i32 noundef %38, i32 noundef %cond133) #14
  %add135 = add i32 %call134, %add121
  %add.ptr137 = getelementptr i8, ptr %buf, i32 %add135
  %sub138 = sub i32 700, %add135
  %txerr_fifo = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 15
  %41 = ptrtoint ptr %txerr_fifo to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %txerr_fifo, align 4
  %43 = ptrtoint ptr %tx_all_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp140.not = icmp eq i32 %44, 0
  br i1 %cmp140.not, label %cond.end132.cond.end147_crit_edge, label %cond.true141

cond.end132.cond.end147_crit_edge:                ; preds = %cond.end132
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end147

cond.true141:                                     ; preds = %cond.end132
  call void @__sanitizer_cov_trace_pc() #16
  %mul143 = mul i32 %42, 100
  %div145 = udiv i32 %mul143, %44
  br label %cond.end147

cond.end147:                                      ; preds = %cond.true141, %cond.end132.cond.end147_crit_edge
  %cond148 = phi i32 [ %div145, %cond.true141 ], [ 0, %cond.end132.cond.end147_crit_edge ]
  %call149 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr137, i32 noundef %sub138, ptr noundef nonnull @.str.184, i32 noundef %42, i32 noundef %cond148) #14
  %txerr_filt = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 16
  %45 = ptrtoint ptr %txerr_filt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %txerr_filt, align 4
  %47 = ptrtoint ptr %tx_all_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_all_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp155.not = icmp eq i32 %48, 0
  br i1 %cmp155.not, label %cond.end147.cond.end162_crit_edge, label %cond.true156

cond.end147.cond.end162_crit_edge:                ; preds = %cond.end147
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end162

cond.true156:                                     ; preds = %cond.end147
  call void @__sanitizer_cov_trace_pc() #16
  %mul158 = mul i32 %46, 100
  %div160 = udiv i32 %mul158, %48
  br label %cond.end162

cond.end162:                                      ; preds = %cond.true156, %cond.end147.cond.end162_crit_edge
  %cond163 = phi i32 [ %div160, %cond.true156 ], [ 0, %cond.end147.cond.end162_crit_edge ]
  %add150 = add i32 %call149, %add135
  %sub153 = sub i32 700, %add150
  %add.ptr152 = getelementptr i8, ptr %buf, i32 %add150
  %call164 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr152, i32 noundef %sub153, ptr noundef nonnull @.str.193, i32 noundef %46, i32 noundef %cond163) #14
  %add165 = add i32 %call164, %add150
  %add.ptr167 = getelementptr i8, ptr %buf, i32 %add165
  %sub168 = sub i32 700, %add165
  %49 = ptrtoint ptr %tx_all_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_all_count, align 4
  %call170 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr167, i32 noundef %sub168, ptr noundef nonnull @.str.194, i32 noundef %50) #14
  %add171 = add i32 %call170, %add165
  %add.ptr173 = getelementptr i8, ptr %buf, i32 %add171
  %sub174 = sub i32 700, %add171
  %tx_bytes_count = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 5
  %51 = ptrtoint ptr %tx_bytes_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_bytes_count, align 4
  %call175 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr173, i32 noundef %sub174, ptr noundef nonnull @.str.195, i32 noundef %52) #14
  %add176 = add i32 %call175, %add171
  %53 = call i32 @llvm.umin.i32(i32 %add176, i32 700)
  %call181 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %53) #14
  call void @llvm.lifetime.end.p0(i64 700, ptr nonnull %buf) #14
  ret i32 %call181
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_frameerrors(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #14
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 19)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.63, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %2, i32 -1226833920) #18, !srcloc !534
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !533

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #14
  %5 = call i32 @llvm.read_register.i32(metadata !523) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !535
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %userbuf, i32 noundef %2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !533

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [20 x i8], ptr %buf, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.161, i32 5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rxerr_crc = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 6
  %10 = ptrtoint ptr %rxerr_crc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rxerr_crc, align 4
  %rxerr_phy = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 7
  %11 = ptrtoint ptr %rxerr_phy to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rxerr_phy, align 4
  %rxerr_fifo = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 9
  %rx_all_count = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 2
  %12 = ptrtoint ptr %rx_all_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rx_all_count, align 4
  %tx_all_count = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 3
  %13 = ptrtoint ptr %tx_all_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_all_count, align 4
  %14 = call ptr @memset(ptr %rxerr_fifo, i32 0, i32 32)
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %2, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_ani(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [700 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ani_state = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60
  call void @llvm.lifetime.start.p0(i64 700, ptr nonnull %buf) #14
  %2 = call ptr @memset(ptr %buf, i32 255, i32 700)
  %cap_has_phyerr_counters = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 86, i32 4
  %3 = ptrtoint ptr %cap_has_phyerr_counters to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cap_has_phyerr_counters, align 1, !range !543
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.200, ptr @.str.199
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 700, ptr noundef nonnull @.str.198, ptr noundef nonnull %cond) #14
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 700, %call
  %max_spur_level = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 6
  %5 = ptrtoint ptr %max_spur_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_spur_level, align 4
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.201, i32 noundef %6) #14
  %add5 = add i32 %call4, %call
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %add5
  %sub8 = sub i32 700, %add5
  %call9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.202) #14
  %add10 = add i32 %add5, %call9
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %add10
  %sub13 = sub i32 700, %add10
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.203) #14
  %add15 = add i32 %add10, %call14
  %7 = ptrtoint ptr %ani_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ani_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.read_file_ani, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.str.208.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.208, %entry.sw.epilog_crit_edge ]
  %add.ptr40 = getelementptr i8, ptr %buf, i32 %add15
  %sub41 = sub i32 700, %add15
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull %.str.208.sink) #14
  %len.0 = add i32 %call42, %add15
  %add.ptr45 = getelementptr i8, ptr %buf, i32 %len.0
  %sub46 = sub i32 700, %len.0
  %noise_imm_level = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 1
  %11 = ptrtoint ptr %noise_imm_level to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %noise_imm_level, align 4
  %call47 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub46, ptr noundef nonnull @.str.209, i32 noundef %12) #14
  %add48 = add i32 %call47, %len.0
  %add.ptr50 = getelementptr i8, ptr %buf, i32 %add48
  %sub51 = sub i32 700, %add48
  %spur_level = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 2
  %13 = ptrtoint ptr %spur_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spur_level, align 4
  %call52 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.210, i32 noundef %14) #14
  %add53 = add i32 %call52, %add48
  %add.ptr55 = getelementptr i8, ptr %buf, i32 %add53
  %sub56 = sub i32 700, %add53
  %firstep_level = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 3
  %15 = ptrtoint ptr %firstep_level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %firstep_level, align 4
  %call57 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55, i32 noundef %sub56, ptr noundef nonnull @.str.211, i32 noundef %16) #14
  %add58 = add i32 %call57, %add53
  %add.ptr60 = getelementptr i8, ptr %buf, i32 %add58
  %sub61 = sub i32 700, %add58
  %ofdm_weak_sig = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 4
  %17 = ptrtoint ptr %ofdm_weak_sig to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ofdm_weak_sig, align 4, !range !543
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool62.not = icmp eq i8 %18, 0
  %cond63 = select i1 %tobool62.not, ptr @.str.214, ptr @.str.213
  %call64 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.212, ptr noundef nonnull %cond63) #14
  %add65 = add i32 %call64, %add58
  %add.ptr67 = getelementptr i8, ptr %buf, i32 %add65
  %sub68 = sub i32 700, %add65
  %cck_weak_sig = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 5
  %19 = ptrtoint ptr %cck_weak_sig to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cck_weak_sig, align 1, !range !543
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool69.not = icmp eq i8 %20, 0
  %cond70 = select i1 %tobool69.not, ptr @.str.214, ptr @.str.213
  %call71 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr67, i32 noundef %sub68, ptr noundef nonnull @.str.215, ptr noundef nonnull %cond70) #14
  %add72 = add i32 %call71, %add65
  %add.ptr74 = getelementptr i8, ptr %buf, i32 %add72
  %sub75 = sub i32 700, %add72
  %mib_intr = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 59, i32 22
  %21 = ptrtoint ptr %mib_intr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mib_intr, align 4
  %call76 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr74, i32 noundef %sub75, ptr noundef nonnull @.str.216, i32 noundef %22) #14
  %add77 = add i32 %call76, %add72
  %add.ptr79 = getelementptr i8, ptr %buf, i32 %add77
  %sub80 = sub i32 700, %add77
  %ah_beacon_rssi_avg = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 110
  %23 = ptrtoint ptr %ah_beacon_rssi_avg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ah_beacon_rssi_avg, align 4
  %shr.i = lshr i32 %24, 10
  %call82 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr79, i32 noundef %sub80, ptr noundef nonnull @.str.217, i32 noundef %shr.i) #14
  %add83 = add i32 %call82, %add77
  %add.ptr85 = getelementptr i8, ptr %buf, i32 %add83
  %sub86 = sub i32 700, %add83
  %last_cc = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 10
  %tx_frame = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 10, i32 3
  %25 = ptrtoint ptr %tx_frame to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_frame, align 4
  %27 = ptrtoint ptr %last_cc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_cc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not = icmp eq i32 %28, 0
  br i1 %cmp.not, label %sw.epilog.cond.end_crit_edge, label %cond.true

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %mul = mul i32 %26, 100
  %div = udiv i32 %mul, %28
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.epilog.cond.end_crit_edge
  %cond92 = phi i32 [ %div, %cond.true ], [ 0, %sw.epilog.cond.end_crit_edge ]
  %call93 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i32 noundef %sub86, ptr noundef nonnull @.str.218, i32 noundef %26, i32 noundef %cond92) #14
  %add94 = add i32 %call93, %add83
  %add.ptr96 = getelementptr i8, ptr %buf, i32 %add94
  %sub97 = sub i32 700, %add94
  %rx_frame = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 10, i32 2
  %29 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_frame, align 4
  %31 = ptrtoint ptr %last_cc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_cc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp101.not = icmp eq i32 %32, 0
  br i1 %cmp101.not, label %cond.end.cond.end110_crit_edge, label %cond.true102

cond.end.cond.end110_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end110

cond.true102:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %mul105 = mul i32 %30, 100
  %div108 = udiv i32 %mul105, %32
  br label %cond.end110

cond.end110:                                      ; preds = %cond.true102, %cond.end.cond.end110_crit_edge
  %cond111 = phi i32 [ %div108, %cond.true102 ], [ 0, %cond.end.cond.end110_crit_edge ]
  %call112 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.219, i32 noundef %30, i32 noundef %cond111) #14
  %rx_busy = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 10, i32 1
  %33 = ptrtoint ptr %rx_busy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_busy, align 4
  %35 = ptrtoint ptr %last_cc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_cc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp120.not = icmp eq i32 %36, 0
  br i1 %cmp120.not, label %cond.end110.cond.end129_crit_edge, label %cond.true121

cond.end110.cond.end129_crit_edge:                ; preds = %cond.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end129

cond.true121:                                     ; preds = %cond.end110
  call void @__sanitizer_cov_trace_pc() #16
  %mul124 = mul i32 %34, 100
  %div127 = udiv i32 %mul124, %36
  br label %cond.end129

cond.end129:                                      ; preds = %cond.true121, %cond.end110.cond.end129_crit_edge
  %cond130 = phi i32 [ %div127, %cond.true121 ], [ 0, %cond.end110.cond.end129_crit_edge ]
  %add113 = add i32 %call112, %add94
  %sub116 = sub i32 700, %add113
  %add.ptr115 = getelementptr i8, ptr %buf, i32 %add113
  %call131 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr115, i32 noundef %sub116, ptr noundef nonnull @.str.220, i32 noundef %34, i32 noundef %cond130) #14
  %add132 = add i32 %call131, %add113
  %add.ptr134 = getelementptr i8, ptr %buf, i32 %add132
  %sub135 = sub i32 700, %add132
  %37 = ptrtoint ptr %last_cc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_cc, align 4
  %call138 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr134, i32 noundef %sub135, ptr noundef nonnull @.str.221, i32 noundef %38) #14
  %add139 = add i32 %call138, %add132
  %add.ptr141 = getelementptr i8, ptr %buf, i32 %add139
  %sub142 = sub i32 700, %add139
  %listen_time = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 7
  %39 = ptrtoint ptr %listen_time to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %listen_time, align 4
  %last_listen = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 11
  %41 = ptrtoint ptr %last_listen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_listen, align 4
  %call143 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr141, i32 noundef %sub142, ptr noundef nonnull @.str.222, i32 noundef %40, i32 noundef %42) #14
  %add144 = add i32 %call143, %add139
  %add.ptr146 = getelementptr i8, ptr %buf, i32 %add144
  %sub147 = sub i32 700, %add144
  %ofdm_errors = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 8
  %43 = ptrtoint ptr %ofdm_errors to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ofdm_errors, align 4
  %last_ofdm_errors = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 12
  %45 = ptrtoint ptr %last_ofdm_errors to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_ofdm_errors, align 4
  %sum_ofdm_errors = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 14
  %47 = ptrtoint ptr %sum_ofdm_errors to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sum_ofdm_errors, align 4
  %call148 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr146, i32 noundef %sub147, ptr noundef nonnull @.str.223, i32 noundef %44, i32 noundef %46, i32 noundef %48) #14
  %add149 = add i32 %call148, %add144
  %add.ptr151 = getelementptr i8, ptr %buf, i32 %add149
  %sub152 = sub i32 700, %add149
  %cck_errors = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 9
  %49 = ptrtoint ptr %cck_errors to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cck_errors, align 4
  %last_cck_errors = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 13
  %51 = ptrtoint ptr %last_cck_errors to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_cck_errors, align 4
  %sum_cck_errors = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 15
  %53 = ptrtoint ptr %sum_cck_errors to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sum_cck_errors, align 4
  %call153 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr151, i32 noundef %sub152, ptr noundef nonnull @.str.224, i32 noundef %50, i32 noundef %52, i32 noundef %54) #14
  %add154 = add i32 %call153, %add149
  %add.ptr156 = getelementptr i8, ptr %buf, i32 %add154
  %sub157 = sub i32 700, %add154
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 33068
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !538
  %58 = call i32 @llvm.bswap.i32(i32 %57) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %59 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i289 = getelementptr i8, ptr %60, i32 33068
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i289) #14, !srcloc !538
  %62 = call i32 @llvm.bswap.i32(i32 %61) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %sub161 = add i32 %62, -12582412
  %call162 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr156, i32 noundef %sub157, ptr noundef nonnull @.str.225, i32 noundef %58, i32 noundef %sub161) #14
  %add163 = add i32 %call162, %add154
  %add.ptr165 = getelementptr i8, ptr %buf, i32 %add163
  %sub166 = sub i32 700, %add163
  %63 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i291 = getelementptr i8, ptr %64, i32 33076
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i291) #14, !srcloc !538
  %66 = call i32 @llvm.bswap.i32(i32 %65) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %67 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %68, i32 33076
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #14, !srcloc !538
  %70 = call i32 @llvm.bswap.i32(i32 %69) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %sub170 = add i32 %70, -12582712
  %call171 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr165, i32 noundef %sub166, ptr noundef nonnull @.str.226, i32 noundef %66, i32 noundef %sub170) #14
  %add172 = add i32 %call171, %add163
  %71 = call i32 @llvm.umin.i32(i32 %add172, i32 700)
  %call175 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %71) #14
  call void @llvm.lifetime.end.p0(i64 700, ptr nonnull %buf) #14
  ret i32 %call175
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_ani(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #14
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 19)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.63, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %2, i32 -1226833920) #18, !srcloc !534
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !533

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #14
  %5 = call i32 @llvm.read_register.i32(metadata !523) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !535
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %userbuf, i32 noundef %2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !533

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [20 x i8], ptr %buf, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf, ptr noundef nonnull dereferenceable(8) @.str.227, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_init(ptr noundef %1, i32 noundef 2) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %bcmp103 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf, ptr noundef nonnull dereferenceable(9) @.str.228, i32 9) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp103)
  %cmp7 = icmp eq i32 %bcmp103, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_init(ptr noundef %1, i32 noundef 1) #14
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %bcmp104 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.229, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp104)
  %cmp12 = icmp eq i32 %bcmp104, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_init(ptr noundef %1, i32 noundef 0) #14
  br label %cleanup

if.else14:                                        ; preds = %if.else9
  %bcmp105 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buf, ptr noundef nonnull dereferenceable(6) @.str.230, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp105)
  %cmp17 = icmp eq i32 %bcmp105, 0
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_init(ptr noundef %1, i32 noundef 3) #14
  br label %cleanup

if.else19:                                        ; preds = %if.else14
  %bcmp106 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf, ptr noundef nonnull dereferenceable(9) @.str.231, i32 9) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp106)
  %cmp22 = icmp eq i32 %bcmp106, 0
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_set_noise_immunity_level(ptr noundef %1, i32 noundef 0) #14
  br label %cleanup

if.else24:                                        ; preds = %if.else19
  %bcmp107 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %buf, ptr noundef nonnull dereferenceable(10) @.str.232, i32 10) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp107)
  %cmp27 = icmp eq i32 %bcmp107, 0
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_set_noise_immunity_level(ptr noundef %1, i32 noundef 1) #14
  br label %cleanup

if.else29:                                        ; preds = %if.else24
  %bcmp108 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf, ptr noundef nonnull dereferenceable(8) @.str.233, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp108)
  %cmp32 = icmp eq i32 %bcmp108, 0
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_set_spur_immunity_level(ptr noundef %1, i32 noundef 0) #14
  br label %cleanup

if.else34:                                        ; preds = %if.else29
  %bcmp109 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf, ptr noundef nonnull dereferenceable(9) @.str.234, i32 9) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp109)
  %cmp37 = icmp eq i32 %bcmp109, 0
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  %max_spur_level = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 60, i32 6
  %10 = ptrtoint ptr %max_spur_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_spur_level, align 4
  call void @ath5k_ani_set_spur_immunity_level(ptr noundef %1, i32 noundef %11) #14
  br label %cleanup

if.else39:                                        ; preds = %if.else34
  %bcmp110 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.235, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp110)
  %cmp42 = icmp eq i32 %bcmp110, 0
  br i1 %cmp42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_set_firstep_level(ptr noundef %1, i32 noundef 0) #14
  br label %cleanup

if.else44:                                        ; preds = %if.else39
  %bcmp111 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf, ptr noundef nonnull dereferenceable(8) @.str.236, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp111)
  %cmp47 = icmp eq i32 %bcmp111, 0
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_set_firstep_level(ptr noundef %1, i32 noundef 2) #14
  br label %cleanup

if.else49:                                        ; preds = %if.else44
  %bcmp112 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf, ptr noundef nonnull dereferenceable(8) @.str.237, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp112)
  %cmp52 = icmp eq i32 %bcmp112, 0
  br i1 %cmp52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %1, i1 noundef zeroext false) #14
  br label %cleanup

if.else54:                                        ; preds = %if.else49
  %bcmp113 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.238, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp113)
  %cmp57 = icmp eq i32 %bcmp113, 0
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef %1, i1 noundef zeroext true) #14
  br label %cleanup

if.else59:                                        ; preds = %if.else54
  %bcmp114 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.239, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp114)
  %cmp62 = icmp eq i32 %bcmp114, 0
  br i1 %cmp62, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_set_cck_weak_signal_detection(ptr noundef %1, i1 noundef zeroext false) #14
  br label %cleanup

if.else64:                                        ; preds = %if.else59
  %bcmp115 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buf, ptr noundef nonnull dereferenceable(6) @.str.240, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp115)
  %cmp67 = icmp eq i32 %bcmp115, 0
  br i1 %cmp67, label %if.then68, label %if.else64.cleanup_crit_edge

if.else64.cleanup_crit_edge:                      ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then68:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #16
  call void @ath5k_ani_set_cck_weak_signal_detection(ptr noundef %1, i1 noundef zeroext true) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.else64.cleanup_crit_edge, %if.then63, %if.then58, %if.then53, %if.then48, %if.then43, %if.then38, %if.then33, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %if.then4, %if.then11.i.i
  %retval.0 = phi i32 [ %2, %if.then8 ], [ %2, %if.then18 ], [ %2, %if.then28 ], [ %2, %if.then38 ], [ %2, %if.then48 ], [ %2, %if.then58 ], [ %2, %if.else64.cleanup_crit_edge ], [ %2, %if.then68 ], [ %2, %if.then63 ], [ %2, %if.then53 ], [ %2, %if.then43 ], [ %2, %if.then33 ], [ %2, %if.then23 ], [ %2, %if.then13 ], [ %2, %if.then4 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_set_noise_immunity_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_set_spur_immunity_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_set_firstep_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_set_ofdm_weak_signal_detection(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_ani_set_cck_weak_signal_detection(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_queue(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [700 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 700, ptr nonnull %buf) #14
  %2 = call ptr @memset(ptr %buf, i32 255, i32 700)
  %txbuf_len = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 39
  %3 = ptrtoint ptr %txbuf_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %txbuf_len, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 700, ptr noundef nonnull @.str.241, i32 noundef %4) #14
  br label %for.body

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %entry
  %len.071 = phi i32 [ %call, %entry ], [ %len.1, %for.inc34.for.body_crit_edge ]
  %i.069 = phi i32 [ 0, %entry ], [ %inc35, %for.inc34.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %len.071
  %sub3 = sub i32 700, %len.071
  %setup = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %i.069, i32 4
  %5 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %setup, align 4, !range !543
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool.not, ptr @.str.244, ptr @.str.243
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.242, i32 noundef %i.069, ptr noundef nonnull %cond) #14
  %add5 = add i32 %call4, %len.071
  %7 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %setup, align 4, !range !543
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %for.body.for.inc34_crit_edge, label %if.end

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc34

if.end:                                           ; preds = %for.body
  %lock = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %i.069, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %q = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %i.069, i32 2
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.for.cond13_crit_edge, %if.end
  %n.0 = phi i32 [ 0, %if.end ], [ %inc, %for.cond13.for.cond13_crit_edge ]
  %bf.0.in = phi ptr [ %q, %if.end ], [ %bf.0, %for.cond13.for.cond13_crit_edge ]
  %9 = ptrtoint ptr %bf.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.0 = load ptr, ptr %bf.0.in, align 4
  %cmp16.not = icmp eq ptr %bf.0, %q
  %inc = add i32 %n.0, 1
  br i1 %cmp16.not, label %for.end, label %for.cond13.for.cond13_crit_edge

for.cond13.for.cond13_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %add5
  %sub26 = sub i32 700, %add5
  %txq_len = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %i.069, i32 5
  %10 = ptrtoint ptr %txq_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txq_len, align 4
  %call27 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.245, i32 noundef %11, i32 noundef %n.0) #14
  %add28 = add i32 %call27, %add5
  %add.ptr30 = getelementptr i8, ptr %buf, i32 %add28
  %sub31 = sub i32 700, %add28
  %txq_stuck = getelementptr %struct.ath5k_hw, ptr %1, i32 0, i32 40, i32 %i.069, i32 8
  %12 = ptrtoint ptr %txq_stuck to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txq_stuck, align 4
  %call32 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.246, i32 noundef %13) #14
  %add33 = add i32 %call32, %add28
  br label %for.inc34

for.inc34:                                        ; preds = %for.end, %for.body.for.inc34_crit_edge
  %len.1 = phi i32 [ %add33, %for.end ], [ %add5, %for.body.for.inc34_crit_edge ]
  %inc35 = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc35, 10
  br i1 %exitcond.not, label %for.end36, label %for.inc34.for.body_crit_edge

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end36:                                        ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #16
  %14 = call i32 @llvm.umin.i32(i32 %len.1, i32 700)
  %call41 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %14) #14
  call void @llvm.lifetime.end.p0(i64 700, ptr nonnull %buf) #14
  ret i32 %call41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_queue(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #14
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 19)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.63, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %2, i32 -1226833920) #18, !srcloc !534
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !533

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #14
  %5 = call i32 @llvm.read_register.i32(metadata !523) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !535
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %userbuf, i32 noundef %2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !533

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [20 x i8], ptr %buf, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.247, i32 5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  call void @ieee80211_wake_queues(ptr noundef %11) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %bcmp19 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str.248, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp19)
  %cmp7 = icmp eq i32 %bcmp19, 0
  br i1 %cmp7, label %if.then8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %hw9 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw9, align 4
  call void @ieee80211_stop_queues(ptr noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.else.cleanup_crit_edge, %if.then4, %if.then11.i.i
  %retval.0 = phi i32 [ %2, %if.else.cleanup_crit_edge ], [ %2, %if.then8 ], [ %2, %if.then4 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 262)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 262)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !266, !267, !268, !270, !272, !273, !274, !276, !278, !279, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !319, !320, !321, !323, !325, !326, !327, !329, !331, !332, !333, !335, !337, !338, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !410, !411, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !521, !522}
!llvm.named.register.sp = !{!523}
!llvm.module.flags = !{!524, !525, !526, !527, !528, !529, !530, !531}
!llvm.ident = !{!532}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 75, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype362, !1, !"__UNIQUE_ID_debugtype362", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 984, i32 30}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 988, i32 22}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 989, i32 22}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 990, i32 22}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 991, i32 22}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 992, i32 22}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 993, i32 22}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 994, i32 22}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 995, i32 22}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 996, i32 22}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 997, i32 22}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 998, i32 22}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1017, i32 18}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1020, i32 18}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1023, i32 4}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ath5k_debug_dump_bands._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @ath5k_debug_dump_bands._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1027, i32 3}
!39 = !{ptr @ath5k_debug_dump_bands._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ath5k_debug_dump_bands._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1029, i32 3}
!43 = !{ptr @ath5k_debug_dump_bands._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ath5k_debug_dump_bands._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1031, i32 4}
!47 = !{ptr @ath5k_debug_dump_bands._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ath5k_debug_dump_bands._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1037, i32 3}
!51 = !{ptr @ath5k_debug_dump_bands._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ath5k_debug_dump_bands._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1039, i32 4}
!55 = !{ptr @ath5k_debug_dump_bands._entry.29, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ath5k_debug_dump_bands._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1073, i32 2}
!59 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ath5k_debug_printrxbuffs._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ath5k_debug_printrxbuffs._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1099, i32 2}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ath5k_debug_printtxbuf._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ath5k_debug_printtxbuf._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @ath5k_debug, !68, !"ath5k_debug", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 74, i32 21}
!69 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!70 = !{ptr @fops_debug, !71, !"fops_debug", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 347, i32 37}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 305, i32 3}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 309, i32 4}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 281, i32 32}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 282, i32 22}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 282, i32 31}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 283, i32 22}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 283, i32 31}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 284, i32 22}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 284, i32 31}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 285, i32 34}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 286, i32 27}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 286, i32 36}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 287, i32 25}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 287, i32 36}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 288, i32 21}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 288, i32 29}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 289, i32 27}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 289, i32 40}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 290, i32 21}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 290, i32 29}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 291, i32 29}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 292, i32 22}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 292, i32 31}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 293, i32 21}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 293, i32 29}
!122 = !{ptr @dbg_info, !123, !"dbg_info", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 280, i32 3}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!126 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!127 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!131 = !{ptr @registers_fops, !132, !"registers_fops", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 171, i32 1}
!133 = !{ptr @registers_sops, !134, !"registers_sops", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 164, i32 36}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 89, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 90, i32 2}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 91, i32 2}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 92, i32 2}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 93, i32 2}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 94, i32 2}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 95, i32 2}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 96, i32 2}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 97, i32 2}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 98, i32 2}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 99, i32 2}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 100, i32 2}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 101, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 102, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 103, i32 2}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 104, i32 2}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 105, i32 2}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 106, i32 2}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 107, i32 2}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 108, i32 2}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 109, i32 2}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 110, i32 2}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 111, i32 2}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 112, i32 2}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 113, i32 2}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 114, i32 2}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 115, i32 2}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 116, i32 2}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 117, i32 2}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 118, i32 2}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 119, i32 2}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 120, i32 2}
!199 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 121, i32 2}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 122, i32 2}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 123, i32 2}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 124, i32 2}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 125, i32 2}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 126, i32 2}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 127, i32 2}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 128, i32 2}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 129, i32 2}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 130, i32 2}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 131, i32 2}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 132, i32 2}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 133, i32 2}
!225 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 134, i32 2}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 135, i32 2}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 136, i32 2}
!231 = !{ptr @regs, !232, !"regs", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 88, i32 25}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 159, i32 18}
!235 = !{ptr @fops_beacon, !236, !"fops_beacon", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 245, i32 37}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 186, i32 3}
!239 = !{ptr @.str.114, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 187, i32 3}
!241 = !{ptr @.str.115, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 190, i32 49}
!243 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 191, i32 3}
!245 = !{ptr @.str.117, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 193, i32 49}
!247 = !{ptr @.str.118, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 194, i32 3}
!249 = !{ptr @.str.119, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 197, i32 49}
!251 = !{ptr @.str.120, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 198, i32 3}
!253 = !{ptr @.str.121, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 202, i32 3}
!255 = !{ptr @.str.122, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 206, i32 3}
!257 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 210, i32 3}
!259 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 214, i32 3}
!261 = !{ptr @.str.125, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 235, i32 19}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 237, i32 3}
!265 = !{ptr @.str.127, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @write_file_beacon._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @write_file_beacon._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 238, i32 26}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 240, i32 3}
!272 = !{ptr @write_file_beacon._entry.129, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @write_file_beacon._entry_ptr.131, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @fops_reset, !275, !"fops_reset", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 266, i32 37}
!276 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 261, i32 2}
!278 = !{ptr @.str.133, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @__func__.write_file_reset, !277, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @fops_antenna, !281, !"fops_antenna", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 461, i32 37}
!282 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 367, i32 49}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 369, i32 49}
!286 = !{ptr @.str.136, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 371, i32 49}
!288 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 374, i32 49}
!290 = !{ptr @.str.138, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 377, i32 4}
!292 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 380, i32 49}
!294 = !{ptr @.str.140, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 385, i32 4}
!296 = !{ptr @.str.141, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 389, i32 3}
!298 = !{ptr @.str.142, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 392, i32 3}
!300 = !{ptr @.str.143, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 395, i32 3}
!302 = !{ptr @.str.144, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 398, i32 3}
!304 = !{ptr @.str.145, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 403, i32 3}
!306 = !{ptr @.str.146, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 408, i32 3}
!308 = !{ptr @.str.147, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 413, i32 3}
!310 = !{ptr @.str.148, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 418, i32 4}
!312 = !{ptr @.str.149, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 421, i32 4}
!314 = !{ptr @.str.150, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 442, i32 19}
!316 = !{ptr @.str.151, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 444, i32 3}
!318 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @write_file_antenna._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @write_file_antenna._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.153, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 445, i32 26}
!323 = !{ptr @.str.155, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 447, i32 3}
!325 = !{ptr @write_file_antenna._entry.154, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @write_file_antenna._entry_ptr.156, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.157, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 448, i32 26}
!329 = !{ptr @.str.159, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 450, i32 3}
!331 = !{ptr @write_file_antenna._entry.158, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @write_file_antenna._entry_ptr.160, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.161, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 451, i32 26}
!335 = !{ptr @.str.163, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 456, i32 3}
!337 = !{ptr @write_file_antenna._entry.162, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @write_file_antenna._entry_ptr.164, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @fops_misc, !340, !"fops_misc", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 517, i32 37}
!341 = !{ptr @.str.165, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 479, i32 49}
!343 = !{ptr @.str.166, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 481, i32 49}
!345 = !{ptr @.str.167, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 484, i32 50}
!347 = !{ptr @.str.168, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 486, i32 50}
!349 = !{ptr @.str.169, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 488, i32 50}
!351 = !{ptr @.str.170, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 490, i32 50}
!353 = !{ptr @.str.171, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 492, i32 50}
!355 = !{ptr @.str.172, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 494, i32 50}
!357 = !{ptr @.str.173, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 496, i32 50}
!359 = !{ptr @.str.174, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 498, i32 50}
!361 = !{ptr @.str.175, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 500, i32 50}
!363 = !{ptr @.str.176, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 502, i32 50}
!365 = !{ptr @.str.177, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 504, i32 42}
!367 = !{ptr @.str.178, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 506, i32 50}
!369 = !{ptr @.str.179, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 508, i32 49}
!371 = !{ptr @fops_eeprom, !372, !"fops_eeprom", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 969, i32 37}
!373 = !{ptr @fops_frameerrors, !374, !"fops_frameerrors", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 633, i32 37}
!375 = !{ptr @.str.180, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 536, i32 4}
!377 = !{ptr @.str.181, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 537, i32 49}
!379 = !{ptr @.str.182, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 541, i32 49}
!381 = !{ptr @.str.183, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 548, i32 5}
!383 = !{ptr @.str.184, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 552, i32 49}
!385 = !{ptr @.str.185, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 556, i32 49}
!387 = !{ptr @.str.186, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 560, i32 49}
!389 = !{ptr @.str.187, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 564, i32 49}
!391 = !{ptr @.str.188, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 568, i32 49}
!393 = !{ptr @.str.189, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 572, i32 49}
!395 = !{ptr @.str.190, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 574, i32 49}
!397 = !{ptr @.str.191, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 578, i32 4}
!399 = !{ptr @.str.192, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 579, i32 49}
!401 = !{ptr @.str.193, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 587, i32 49}
!403 = !{ptr @.str.194, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 591, i32 49}
!405 = !{ptr @.str.195, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 593, i32 49}
!407 = !{ptr @.str.196, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 628, i32 3}
!409 = !{ptr @.str.197, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @write_file_frameerrors._entry, !408, !"_entry", i1 false, i1 false}
!411 = !{ptr @write_file_frameerrors._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @fops_ani, !413, !"fops_ani", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 798, i32 37}
!414 = !{ptr @.str.198, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 655, i32 4}
!416 = !{ptr @.str.199, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 657, i32 4}
!418 = !{ptr @.str.200, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 657, i32 12}
!420 = !{ptr @.str.201, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 659, i32 4}
!422 = !{ptr @.str.202, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 662, i32 3}
!424 = !{ptr @.str.203, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 663, i32 49}
!426 = !{ptr @.str.204, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 666, i32 50}
!428 = !{ptr @.str.205, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 670, i32 4}
!430 = !{ptr @.str.206, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 674, i32 4}
!432 = !{ptr @.str.207, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 677, i32 50}
!434 = !{ptr @.str.208, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 681, i32 4}
!436 = !{ptr @.str.209, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 685, i32 4}
!438 = !{ptr @.str.210, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 688, i32 4}
!440 = !{ptr @.str.211, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 691, i32 4}
!442 = !{ptr @.str.212, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 694, i32 4}
!444 = !{ptr @.str.213, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 695, i32 24}
!446 = !{ptr @.str.214, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 695, i32 31}
!448 = !{ptr @.str.215, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 697, i32 4}
!450 = !{ptr @.str.216, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 701, i32 4}
!452 = !{ptr @.str.217, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 704, i32 4}
!454 = !{ptr @.str.218, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 713, i32 4}
!456 = !{ptr @.str.219, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 716, i32 4}
!458 = !{ptr @.str.220, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 719, i32 4}
!460 = !{ptr @.str.221, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 722, i32 49}
!462 = !{ptr @.str.222, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 725, i32 4}
!464 = !{ptr @.str.223, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 728, i32 4}
!466 = !{ptr @.str.224, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 732, i32 4}
!468 = !{ptr @.str.225, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 736, i32 4}
!470 = !{ptr @.str.226, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 741, i32 4}
!472 = !{ptr @.str.227, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 764, i32 19}
!474 = !{ptr @.str.228, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 766, i32 26}
!476 = !{ptr @.str.229, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 768, i32 26}
!478 = !{ptr @.str.230, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 770, i32 26}
!480 = !{ptr @.str.231, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 772, i32 26}
!482 = !{ptr @.str.232, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 774, i32 26}
!484 = !{ptr @.str.233, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 777, i32 26}
!486 = !{ptr @.str.234, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 779, i32 26}
!488 = !{ptr @.str.235, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 782, i32 26}
!490 = !{ptr @.str.236, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 784, i32 26}
!492 = !{ptr @.str.237, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 786, i32 26}
!494 = !{ptr @.str.238, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 788, i32 26}
!496 = !{ptr @.str.239, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 790, i32 26}
!498 = !{ptr @.str.240, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 792, i32 26}
!500 = !{ptr @fops_queue, !501, !"fops_queue", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 871, i32 37}
!502 = !{ptr @.str.241, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 821, i32 4}
!504 = !{ptr @.str.242, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 827, i32 4}
!506 = !{ptr @.str.243, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 827, i32 39}
!508 = !{ptr @.str.244, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 827, i32 44}
!510 = !{ptr @.str.245, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 839, i32 5}
!512 = !{ptr @.str.246, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 841, i32 5}
!514 = !{ptr @.str.247, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 862, i32 19}
!516 = !{ptr @.str.248, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 864, i32 24}
!518 = !{ptr @.str.249, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/ath/ath5k/debug.c", i32 1054, i32 2}
!520 = !{ptr @.str.250, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @ath5k_debug_printrxbuf._entry, !519, !"_entry", i1 false, i1 false}
!522 = !{ptr @ath5k_debug_printrxbuf._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!523 = !{!"sp"}
!524 = !{i32 1, !"wchar_size", i32 2}
!525 = !{i32 1, !"min_enum_size", i32 4}
!526 = !{i32 8, !"branch-target-enforcement", i32 0}
!527 = !{i32 8, !"sign-return-address", i32 0}
!528 = !{i32 8, !"sign-return-address-all", i32 0}
!529 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!530 = !{i32 7, !"uwtable", i32 1}
!531 = !{i32 7, !"frame-pointer", i32 2}
!532 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!533 = !{!"branch_weights", i32 2000, i32 1}
!534 = !{i64 2152258176, i64 2152258201}
!535 = !{i64 4753731}
!536 = !{i64 4753928}
!537 = !{i64 2152239161}
!538 = !{i64 5222606}
!539 = !{i64 2152762955}
!540 = !{i64 2152764310}
!541 = !{i64 5222188}
!542 = !{!"auto-init"}
!543 = !{i8 0, i8 2}
