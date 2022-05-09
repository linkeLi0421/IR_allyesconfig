; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ar9170 = type { %struct.ath_common, ptr, %struct.mutex, i32, %struct.spinlock, i32, i8, ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.tasklet_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i8, %struct.completion, %struct.completion, %struct.anon.130, [1 x %struct.ieee80211_iface_limit], [1 x %struct.ieee80211_iface_combination], %struct.work_struct, %struct.work_struct, i32, [4 x i32], [4 x i32], i8, i8, %struct.atomic_t, %struct.list_head, i32, i32, [7 x %struct.carl9170_vif], %struct.spinlock, i32, i32, ptr, i32, i64, i8, i8, i64, i32, i32, i32, i8, i32, ptr, i32, [4 x i32], i32, i32, i8, i8, %struct.anon.134, %struct.delayed_work, ptr, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], %struct.delayed_work, [2 x %struct.carl9170_led], %struct.spinlock, [4 x %struct.carl9170_tx_queue_stats], [5 x %struct.ieee80211_tx_queue_params], %struct.completion, i32, i32, ptr, %struct.spinlock, %struct.completion, %union.anon.135, i32, i32, i32, i32, %struct.ar9170_eeprom, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], %struct.delayed_work, i32, i8, %struct.work_struct, %struct.spinlock, ptr, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, %struct.spinlock, ptr, %struct.atomic_t, %struct.atomic_t, %struct.ar9170_rx_head, i8, ptr, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.anon.142, %struct.carl9170_debug, ptr, %struct.work_struct, %struct.anon.144, %struct.anon.145 }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.anon.137 = type { i8, i8, i8, i8 }
%struct.carl9170_cmd = type { %struct.carl9170_cmd_head, %union.anon.138 }
%struct.carl9170_cmd_head = type { %union.anon.136 }
%union.anon.136 = type { i32 }
%union.anon.138 = type { %struct.carl9170_wol_cmd }
%struct.carl9170_wol_cmd = type { i32, [6 x i8], [6 x i8], i32, i32, i32, [32 x i8] }
%struct.carl9170_tally_rsp = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }

@carl9170_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 56, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"writing reg %#x (val %#x) failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"carl9170_write_reg\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/carl9170/cmd.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@carl9170_write_reg._entry_ptr = internal global ptr @carl9170_write_reg._entry, section ".printk_index", align 4
@carl9170_read_mreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reading regs failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"carl9170_read_mreg\00", [45 x i8] zeroinitializer }, align 32
@carl9170_read_mreg._entry_ptr = internal global ptr @carl9170_read_mreg._entry, section ".printk_index", align 4
@carl9170_echo_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 111, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wrong echo %x != %x\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"carl9170_echo_test\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@carl9170_echo_test._entry_ptr = internal global ptr @carl9170_echo_test._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 55, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 81, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [43 x i8] c"../drivers/net/wireless/ath/carl9170/cmd.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 111, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @carl9170_echo_test._entry, ptr @carl9170_echo_test._entry_ptr, ptr @carl9170_read_mreg._entry, ptr @carl9170_read_mreg._entry_ptr, ptr @carl9170_write_reg._entry, ptr @carl9170_write_reg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_read_mreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_echo_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [2 x i32], ptr %buf, i32 0, i32 1
  %1 = tail call i32 @llvm.bswap.i32(i32 %reg)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %buf, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %val)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  %call = call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %reg, i32 noundef %val, i32 noundef %call) #10
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_exec_cmd(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_read_mreg(ptr noundef %ar, i32 noundef %nregs, ptr nocapture noundef readonly %regs, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nregs)
  %cmp35 = icmp sgt i32 %nregs, 0
  br i1 %cmp35, label %entry.for.body_crit_edge, label %for.end.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %regs, i32 %i.036
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx1 = getelementptr i32, ptr %out, i32 %i.036
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %nregs
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %mul = shl i32 %nregs, 2
  %call = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 0, i32 noundef %mul, ptr noundef %out, i32 noundef %mul, ptr noundef %out) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond7.preheader, label %for.end.if.then_crit_edge

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.end.thread:                                   ; preds = %entry
  %mul40 = shl i32 %nregs, 2
  %call41 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 0, i32 noundef %mul40, ptr noundef %out, i32 noundef %mul40, ptr noundef %out) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool.not42 = icmp eq i32 %call41, 0
  br i1 %tobool.not42, label %for.end.thread.cleanup_crit_edge, label %for.end.thread.if.then_crit_edge

for.end.thread.if.then_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.end.thread.cleanup_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond7.preheader:                              ; preds = %for.end
  br i1 %cmp35, label %for.cond7.preheader.for.body9_crit_edge, label %for.cond7.preheader.cleanup_crit_edge

for.cond7.preheader.cleanup_crit_edge:            ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond7.preheader.for.body9_crit_edge:          ; preds = %for.cond7.preheader
  br label %for.body9

if.then:                                          ; preds = %for.end.thread.if.then_crit_edge, %for.end.if.then_crit_edge
  %call43 = phi i32 [ %call41, %for.end.thread.if.then_crit_edge ], [ %call, %for.end.if.then_crit_edge ]
  %call3 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call43) #10
  br label %cleanup

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond7.preheader.for.body9_crit_edge
  %i.138 = phi i32 [ %inc13, %for.body9.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %arrayidx10 = getelementptr i32, ptr %out, i32 %i.138
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx10, align 4
  %inc13 = add nuw nsw i32 %i.138, 1
  %exitcond39.not = icmp eq i32 %inc13, %nregs
  br i1 %exitcond39.not, label %for.body9.cleanup_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %for.cond7.preheader.cleanup_crit_edge, %for.end.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %do.end ], [ %call43, %if.then.cleanup_crit_edge ], [ 0, %for.cond7.preheader.cleanup_crit_edge ], [ 0, %for.end.thread.cleanup_crit_edge ], [ 0, %for.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_read_reg(ptr noundef %ar, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %reg) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %val, align 4
  %call.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 0, i32 noundef 4, ptr noundef %val, i32 noundef 4, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body9.i.preheader, label %if.then.i

for.body9.i.preheader:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %carl9170_read_mreg.exit

if.then.i:                                        ; preds = %entry
  %call3.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i.carl9170_read_mreg.exit_crit_edge, label %do.end.i

if.then.i.carl9170_read_mreg.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %carl9170_read_mreg.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5, i32 noundef %call.i) #10
  br label %carl9170_read_mreg.exit

carl9170_read_mreg.exit:                          ; preds = %do.end.i, %if.then.i.carl9170_read_mreg.exit_crit_edge, %for.body9.i.preheader
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_echo_test(ptr noundef %ar, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  %v.addr = alloca i32, align 4
  %echores = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %v, ptr %v.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %echores) #7
  %1 = ptrtoint ptr %echores to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %echores, align 4, !annotation !28
  %call = call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %v.addr, i32 noundef 4, ptr noundef nonnull %echores) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %v.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v.addr, align 4
  %4 = ptrtoint ptr %echores to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %echores, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %echores) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @carl9170_cmd_buf(ptr nocapture readnone %ar, i32 noundef %cmd, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2848) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %cmd to i8
  %cmd1 = getelementptr inbounds %struct.anon.137, ptr %call9.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %cmd1, align 1
  %conv2 = trunc i32 %len to i8
  %1 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv2, ptr %call9.i.i, align 128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval.1.i.i12 = phi ptr [ %call9.i.i, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %retval.1.i.i12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_reboot(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 4) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd1.i = getelementptr inbounds %struct.anon.137, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 68, ptr %cmd1.i, align 1
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call7.i.i.i, align 8
  %call1 = tail call i32 @__carl9170_exec_cmd(ptr noundef %ar, ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__carl9170_exec_cmd(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_mac_reset(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 3, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_bcn_ctrl(ptr noundef %ar, i32 noundef %vif_id, i32 noundef %mode, i32 noundef %addr, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 20) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd1.i = getelementptr inbounds %struct.anon.137, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 69, ptr %cmd1.i, align 1
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %call7.i.i.i, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %vif_id)
  %4 = getelementptr inbounds %struct.carl9170_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %4, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %mode2 = getelementptr inbounds %struct.carl9170_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %mode2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mode2, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %bcn_addr = getelementptr inbounds %struct.carl9170_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %bcn_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bcn_addr, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %len)
  %bcn_len = getelementptr inbounds %struct.carl9170_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %bcn_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bcn_len, align 8
  %call3 = tail call i32 @__carl9170_exec_cmd(ptr noundef %ar, ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_collect_tally(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %tally = alloca %struct.carl9170_tally_rsp, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tally) #7
  %0 = getelementptr inbounds %struct.carl9170_tally_rsp, ptr %tally, i32 0, i32 1
  %1 = getelementptr inbounds %struct.carl9170_tally_rsp, ptr %tally, i32 0, i32 2
  %2 = getelementptr inbounds %struct.carl9170_tally_rsp, ptr %tally, i32 0, i32 3
  %3 = getelementptr inbounds %struct.carl9170_tally_rsp, ptr %tally, i32 0, i32 4
  %4 = call ptr @memset(ptr %tally, i32 255, i32 24)
  %call = call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 9, i32 noundef 0, ptr noundef null, i32 noundef 24, ptr noundef nonnull %tally) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.carl9170_tally_rsp, ptr %tally, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %tally to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tally, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %div = udiv i32 %11, %8
  %conv = zext i32 %div to i64
  %tally4 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 62
  %12 = ptrtoint ptr %tally4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tally4, align 8
  %add = add i64 %13, %conv
  store i64 %add, ptr %tally4, align 8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %div6 = udiv i32 %16, %8
  %conv7 = zext i32 %div6 to i64
  %cca9 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 62, i32 1
  %17 = ptrtoint ptr %cca9 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cca9, align 8
  %add10 = add i64 %18, %conv7
  store i64 %add10, ptr %cca9, align 8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %div11 = udiv i32 %21, %8
  %conv12 = zext i32 %div11 to i64
  %tx_time14 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 62, i32 2
  %22 = ptrtoint ptr %tx_time14 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_time14, align 8
  %add15 = add i64 %23, %conv12
  store i64 %add15, ptr %tx_time14, align 8
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %conv16 = zext i32 %26 to i64
  %rx_total18 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 62, i32 3
  %27 = ptrtoint ptr %rx_total18 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_total18, align 8
  %add19 = add i64 %28, %conv16
  store i64 %add19, ptr %rx_total18, align 8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %conv20 = zext i32 %31 to i64
  %rx_overrun22 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 62, i32 4
  %32 = ptrtoint ptr %rx_overrun22 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rx_overrun22, align 8
  %add23 = add i64 %33, %conv20
  store i64 %add23, ptr %rx_overrun22, align 8
  %channel = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 55
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %channel, align 4
  %tobool24.not = icmp eq ptr %35, null
  br i1 %tobool24.not, label %if.then3.cleanup_crit_edge, label %if.then25

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %survey = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 64
  %36 = ptrtoint ptr %survey to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %survey, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_value, align 2
  %idxprom = zext i16 %39 to i32
  %time = getelementptr %struct.survey_info, ptr %37, i32 %idxprom, i32 1
  %40 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add, ptr %time, align 8
  %41 = ptrtoint ptr %cca9 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cca9, align 8
  %time_busy = getelementptr %struct.survey_info, ptr %37, i32 %idxprom, i32 2
  %43 = ptrtoint ptr %time_busy to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %time_busy, align 8
  %44 = ptrtoint ptr %tx_time14 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tx_time14, align 8
  %time_tx = getelementptr %struct.survey_info, ptr %37, i32 %idxprom, i32 5
  %46 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %add, i32 0) #13, !srcloc !29
  %asmresult.i = extractvalue { i64, i32 } %46, 0
  %asmresult4.i = extractvalue { i64, i32 } %46, 1
  %47 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %add, i64 %asmresult.i, i32 %asmresult4.i) #13, !srcloc !30
  %asmresult10.i = extractvalue { i64, i32 } %47, 0
  %div202988 = lshr i64 %asmresult10.i, 9
  %48 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %div202988, ptr %time, align 8
  %49 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %42, i32 0) #13, !srcloc !29
  %asmresult.i991 = extractvalue { i64, i32 } %49, 0
  %asmresult4.i992 = extractvalue { i64, i32 } %49, 1
  %50 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %42, i64 %asmresult.i991, i32 %asmresult4.i992) #13, !srcloc !30
  %asmresult10.i993 = extractvalue { i64, i32 } %50, 0
  %div430989 = lshr i64 %asmresult10.i993, 9
  %51 = ptrtoint ptr %time_busy to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %div430989, ptr %time_busy, align 8
  %52 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %45, i32 0) #13, !srcloc !29
  %asmresult.i994 = extractvalue { i64, i32 } %52, 0
  %asmresult4.i995 = extractvalue { i64, i32 } %52, 1
  %53 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %45, i64 %asmresult.i994, i32 %asmresult4.i995) #13, !srcloc !30
  %asmresult10.i996 = extractvalue { i64, i32 } %53, 0
  %div662990 = lshr i64 %asmresult10.i996, 9
  %54 = ptrtoint ptr %time_tx to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %div662990, ptr %time_tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tally) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_powersave(ptr noundef %ar, i1 noundef zeroext %ps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd1.i = getelementptr inbounds %struct.anon.137, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 100, ptr %cmd1.i, align 1
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %call7.i.i.i, align 8
  %. = select i1 %ps, i32 4097, i32 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %.)
  %4 = getelementptr inbounds %struct.carl9170_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %4, align 4
  %call5 = tail call i32 @__carl9170_exec_cmd(ptr noundef %ar, ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/cmd.c", i32 55, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @carl9170_write_reg._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @carl9170_write_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/carl9170/cmd.c", i32 81, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @carl9170_read_mreg._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @carl9170_read_mreg._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/carl9170/cmd.c", i32 111, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @carl9170_echo_test._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @carl9170_echo_test._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i64 470787, i64 470814, i64 470836, i64 470864}
!30 = !{i64 471195, i64 471222, i64 471255, i64 471276, i64 471303, i64 471329}
