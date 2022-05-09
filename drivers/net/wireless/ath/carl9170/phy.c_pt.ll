; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.carl9170_phy_init = type { i32, i32, i32, i32, i32 }
%struct.carl9170_rf_initvals = type { i32, i32, i32 }
%struct.carl9170_phy_freq_entry = type { i16, [3 x %struct.carl9170_phy_freq_params] }
%struct.carl9170_phy_freq_params = type { i8, i16, i8, i16 }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.carl9170_rf_init_result = type { i32 }
%struct.carl9170_rf_init = type { i32, i8, [3 x i8], i32, i32, i32, i32, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
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
%struct.ctl_modes = type { i8, i8, ptr, i32 }

@carl9170_get_noisefloor.phy_regs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1857636, i32 1865828, i32 1857980, i32 1866172], [16 x i8] zeroinitializer }, align 32
@carl9170_set_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"channel change: %d -> %d failed (%d).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"carl9170_set_channel\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/carl9170/phy.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@carl9170_set_channel._entry_ptr = internal global ptr @carl9170_set_channel._entry, section ".printk_index", align 4
@carl9170_set_channel._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1719, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set heavy clip\0A\00", [38 x i8] zeroinitializer }, align 32
@carl9170_set_channel._entry_ptr.7 = internal global ptr @carl9170_set_channel._entry.5, section ".printk_index", align 4
@ar5416_phy_init = internal constant { [331 x %struct.carl9170_phy_init], [1636 x i8] } { [331 x %struct.carl9170_phy_init] [%struct.carl9170_phy_init { i32 1857536, i32 7, i32 7, i32 7, i32 7 }, %struct.carl9170_phy_init { i32 1857540, i32 768, i32 964, i32 964, i32 768 }, %struct.carl9170_phy_init { i32 1857544, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857548, i32 -1383821799, i32 -1383821799, i32 -1383821799, i32 -1383821799 }, %struct.carl9170_phy_init { i32 1857552, i32 2098520064, i32 2098520064, i32 2098520064, i32 2098520064 }, %struct.carl9170_phy_init { i32 1857556, i32 -1677025429, i32 -1677025429, i32 -1677025429, i32 -1677025429 }, %struct.carl9170_phy_init { i32 1857560, i32 144, i32 144, i32 144, i32 144 }, %struct.carl9170_phy_init { i32 1857564, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857568, i32 33686016, i32 33686016, i32 33686016, i32 33686016 }, %struct.carl9170_phy_init { i32 1857572, i32 3598, i32 3598, i32 3598, i32 3598 }, %struct.carl9170_phy_init { i32 1857576, i32 167903233, i32 167903233, i32 167903233, i32 167903233 }, %struct.carl9170_phy_init { i32 1857580, i32 40960, i32 40960, i32 40960, i32 40960 }, %struct.carl9170_phy_init { i32 1857584, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857588, i32 3598, i32 3598, i32 3598, i32 3598 }, %struct.carl9170_phy_init { i32 1857592, i32 7, i32 7, i32 7, i32 7 }, %struct.carl9170_phy_init { i32 1857596, i32 2098176, i32 2098176, i32 2098176, i32 2098176 }, %struct.carl9170_phy_init { i32 1857600, i32 543817774, i32 543817774, i32 543817774, i32 543817774 }, %struct.carl9170_phy_init { i32 1857604, i32 326243870, i32 326245406, i32 326245412, i32 326244004 }, %struct.carl9170_phy_init { i32 1857608, i32 1731173, i32 1731173, i32 1669736, i32 1669736 }, %struct.carl9170_phy_init { i32 1857612, i32 310649660, i32 310649660, i32 310649660, i32 310649660 }, %struct.carl9170_phy_init { i32 1857616, i32 1816704228, i32 1833481444, i32 1833480420, i32 1816703204 }, %struct.carl9170_phy_init { i32 1857620, i32 2137, i32 2137, i32 2137, i32 2137 }, %struct.carl9170_phy_init { i32 1857624, i32 2127039790, i32 2127039790, i32 2127039790, i32 2127039790 }, %struct.carl9170_phy_init { i32 1857628, i32 825842782, i32 825843806, i32 825843806, i32 825842782 }, %struct.carl9170_phy_init { i32 1857632, i32 318736, i32 318736, i32 318752, i32 318752 }, %struct.carl9170_phy_init { i32 1857636, i32 116224, i32 116224, i32 116224, i32 116224 }, %struct.carl9170_phy_init { i32 1857640, i32 1083851152, i32 1083851152, i32 1083851152, i32 1083851152 }, %struct.carl9170_phy_init { i32 1857644, i32 84717697, i32 84717697, i32 84717697, i32 84717697 }, %struct.carl9170_phy_init { i32 1857792, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857796, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857800, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857804, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857812, i32 2000, i32 2000, i32 2200, i32 2200 }, %struct.carl9170_phy_init { i32 1857816, i32 280, i32 560, i32 616, i32 308 }, %struct.carl9170_phy_init { i32 1857820, i32 268439551, i32 268439551, i32 268439551, i32 268439551 }, %struct.carl9170_phy_init { i32 1857824, i32 84936732, i32 84936732, i32 84934684, i32 84934684 }, %struct.carl9170_phy_init { i32 1857828, i32 -804943339, i32 -804943339, i32 -804943339, i32 -804943339 }, %struct.carl9170_phy_init { i32 1857832, i32 1, i32 1, i32 1, i32 1 }, %struct.carl9170_phy_init { i32 1857836, i32 4, i32 4, i32 4, i32 4 }, %struct.carl9170_phy_init { i32 1857844, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567 }, %struct.carl9170_phy_init { i32 1857848, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567 }, %struct.carl9170_phy_init { i32 1857852, i32 127, i32 127, i32 127, i32 127 }, %struct.carl9170_phy_init { i32 1857860, i32 -541585376, i32 -541585376, i32 -541585376, i32 -541585376 }, %struct.carl9170_phy_init { i32 1857864, i32 -1837059566, i32 -1837059566, i32 -1837059566, i32 -1837059566 }, %struct.carl9170_phy_init { i32 1857868, i32 131112, i32 131112, i32 131112, i32 131112 }, %struct.carl9170_phy_init { i32 1857876, i32 1565581704, i32 1565581704, i32 1565581704, i32 1565581704 }, %struct.carl9170_phy_init { i32 1857880, i32 532479, i32 532479, i32 532479, i32 532479 }, %struct.carl9170_phy_init { i32 1857888, i32 39744, i32 39744, i32 39744, i32 39744 }, %struct.carl9170_phy_init { i32 1857892, i32 4384, i32 4384, i32 4384, i32 4384 }, %struct.carl9170_phy_init { i32 1857904, i32 420459797, i32 420459797, i32 420459797, i32 420459797 }, %struct.carl9170_phy_init { i32 1857908, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857912, i32 1, i32 1, i32 1, i32 1 }, %struct.carl9170_phy_init { i32 1857916, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857920, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857924, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857928, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857932, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857936, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857940, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857944, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857948, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857952, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1857956, i32 7, i32 7, i32 7, i32 7 }, %struct.carl9170_phy_init { i32 1857960, i32 2096896, i32 2096896, i32 2096896, i32 2096896 }, %struct.carl9170_phy_init { i32 1857964, i32 7274692, i32 7274692, i32 7274692, i32 7274692 }, %struct.carl9170_phy_init { i32 1857968, i32 50663424, i32 50663424, i32 50663424, i32 50663424 }, %struct.carl9170_phy_init { i32 1857972, i32 2080, i32 2080, i32 2080, i32 2080 }, %struct.carl9170_phy_init { i32 1857980, i32 1577984, i32 1577984, i32 1577984, i32 1577984 }, %struct.carl9170_phy_init { i32 1857984, i32 59316670, i32 59316670, i32 59316670, i32 59316670 }, %struct.carl9170_phy_init { i32 1857988, i32 104034167, i32 104034167, i32 104034167, i32 104034167 }, %struct.carl9170_phy_init { i32 1857992, i32 1794528044, i32 1794528044, i32 1794528044, i32 1794528044 }, %struct.carl9170_phy_init { i32 1857996, i32 150046408, i32 150046408, i32 150046408, i32 150046408 }, %struct.carl9170_phy_init { i32 1858000, i32 287620, i32 287620, i32 287620, i32 287620 }, %struct.carl9170_phy_init { i32 1858004, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858008, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858012, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858016, i32 512, i32 512, i32 512, i32 512 }, %struct.carl9170_phy_init { i32 1858020, i32 1684300900, i32 1684300900, i32 1684300900, i32 1684300900 }, %struct.carl9170_phy_init { i32 1858024, i32 1014528120, i32 1014528120, i32 1014528120, i32 1014528120 }, %struct.carl9170_phy_init { i32 1858028, i32 170, i32 170, i32 170, i32 170 }, %struct.carl9170_phy_init { i32 1858032, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858044, i32 4162, i32 4162, i32 4162, i32 4162 }, %struct.carl9170_phy_init { i32 1858048, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858052, i32 64, i32 64, i32 64, i32 64 }, %struct.carl9170_phy_init { i32 1858056, i32 128, i32 128, i32 128, i32 128 }, %struct.carl9170_phy_init { i32 1858060, i32 417, i32 417, i32 321, i32 321 }, %struct.carl9170_phy_init { i32 1858064, i32 481, i32 481, i32 385, i32 385 }, %struct.carl9170_phy_init { i32 1858068, i32 33, i32 33, i32 449, i32 449 }, %struct.carl9170_phy_init { i32 1858072, i32 97, i32 97, i32 1, i32 1 }, %struct.carl9170_phy_init { i32 1858076, i32 360, i32 360, i32 65, i32 65 }, %struct.carl9170_phy_init { i32 1858080, i32 424, i32 424, i32 424, i32 424 }, %struct.carl9170_phy_init { i32 1858084, i32 488, i32 488, i32 488, i32 488 }, %struct.carl9170_phy_init { i32 1858088, i32 40, i32 40, i32 40, i32 40 }, %struct.carl9170_phy_init { i32 1858092, i32 104, i32 104, i32 104, i32 104 }, %struct.carl9170_phy_init { i32 1858096, i32 393, i32 393, i32 168, i32 168 }, %struct.carl9170_phy_init { i32 1858100, i32 457, i32 457, i32 361, i32 361 }, %struct.carl9170_phy_init { i32 1858104, i32 9, i32 9, i32 425, i32 425 }, %struct.carl9170_phy_init { i32 1858108, i32 73, i32 73, i32 489, i32 489 }, %struct.carl9170_phy_init { i32 1858112, i32 137, i32 137, i32 41, i32 41 }, %struct.carl9170_phy_init { i32 1858116, i32 368, i32 368, i32 105, i32 105 }, %struct.carl9170_phy_init { i32 1858120, i32 432, i32 432, i32 400, i32 400 }, %struct.carl9170_phy_init { i32 1858124, i32 496, i32 496, i32 464, i32 464 }, %struct.carl9170_phy_init { i32 1858128, i32 48, i32 48, i32 16, i32 16 }, %struct.carl9170_phy_init { i32 1858132, i32 112, i32 112, i32 80, i32 80 }, %struct.carl9170_phy_init { i32 1858136, i32 401, i32 401, i32 144, i32 144 }, %struct.carl9170_phy_init { i32 1858140, i32 465, i32 465, i32 337, i32 337 }, %struct.carl9170_phy_init { i32 1858144, i32 17, i32 17, i32 401, i32 401 }, %struct.carl9170_phy_init { i32 1858148, i32 81, i32 81, i32 465, i32 465 }, %struct.carl9170_phy_init { i32 1858152, i32 145, i32 145, i32 17, i32 17 }, %struct.carl9170_phy_init { i32 1858156, i32 440, i32 440, i32 81, i32 81 }, %struct.carl9170_phy_init { i32 1858160, i32 504, i32 504, i32 408, i32 408 }, %struct.carl9170_phy_init { i32 1858164, i32 56, i32 56, i32 472, i32 472 }, %struct.carl9170_phy_init { i32 1858168, i32 120, i32 120, i32 24, i32 24 }, %struct.carl9170_phy_init { i32 1858172, i32 409, i32 409, i32 88, i32 88 }, %struct.carl9170_phy_init { i32 1858176, i32 473, i32 473, i32 152, i32 152 }, %struct.carl9170_phy_init { i32 1858180, i32 25, i32 25, i32 345, i32 345 }, %struct.carl9170_phy_init { i32 1858184, i32 89, i32 89, i32 409, i32 409 }, %struct.carl9170_phy_init { i32 1858188, i32 153, i32 153, i32 473, i32 473 }, %struct.carl9170_phy_init { i32 1858192, i32 217, i32 217, i32 25, i32 25 }, %struct.carl9170_phy_init { i32 1858196, i32 249, i32 249, i32 89, i32 89 }, %struct.carl9170_phy_init { i32 1858200, i32 249, i32 249, i32 153, i32 153 }, %struct.carl9170_phy_init { i32 1858204, i32 249, i32 249, i32 217, i32 217 }, %struct.carl9170_phy_init { i32 1858208, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858212, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858216, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858220, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858224, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858228, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858232, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858236, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858240, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858244, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858248, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858252, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858256, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858260, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858264, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858268, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858272, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858276, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858280, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858284, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858288, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858292, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858296, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858300, i32 249, i32 249, i32 249, i32 249 }, %struct.carl9170_phy_init { i32 1858304, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858308, i32 1, i32 1, i32 1, i32 1 }, %struct.carl9170_phy_init { i32 1858312, i32 2, i32 2, i32 2, i32 2 }, %struct.carl9170_phy_init { i32 1858316, i32 3, i32 3, i32 3, i32 3 }, %struct.carl9170_phy_init { i32 1858320, i32 4, i32 4, i32 4, i32 4 }, %struct.carl9170_phy_init { i32 1858324, i32 5, i32 5, i32 5, i32 5 }, %struct.carl9170_phy_init { i32 1858328, i32 8, i32 8, i32 8, i32 8 }, %struct.carl9170_phy_init { i32 1858332, i32 9, i32 9, i32 9, i32 9 }, %struct.carl9170_phy_init { i32 1858336, i32 10, i32 10, i32 10, i32 10 }, %struct.carl9170_phy_init { i32 1858340, i32 11, i32 11, i32 11, i32 11 }, %struct.carl9170_phy_init { i32 1858344, i32 12, i32 12, i32 12, i32 12 }, %struct.carl9170_phy_init { i32 1858348, i32 13, i32 13, i32 13, i32 13 }, %struct.carl9170_phy_init { i32 1858352, i32 16, i32 16, i32 16, i32 16 }, %struct.carl9170_phy_init { i32 1858356, i32 17, i32 17, i32 17, i32 17 }, %struct.carl9170_phy_init { i32 1858360, i32 18, i32 18, i32 18, i32 18 }, %struct.carl9170_phy_init { i32 1858364, i32 19, i32 19, i32 19, i32 19 }, %struct.carl9170_phy_init { i32 1858368, i32 20, i32 20, i32 20, i32 20 }, %struct.carl9170_phy_init { i32 1858372, i32 21, i32 21, i32 21, i32 21 }, %struct.carl9170_phy_init { i32 1858376, i32 24, i32 24, i32 24, i32 24 }, %struct.carl9170_phy_init { i32 1858380, i32 25, i32 25, i32 25, i32 25 }, %struct.carl9170_phy_init { i32 1858384, i32 26, i32 26, i32 26, i32 26 }, %struct.carl9170_phy_init { i32 1858388, i32 27, i32 27, i32 27, i32 27 }, %struct.carl9170_phy_init { i32 1858392, i32 28, i32 28, i32 28, i32 28 }, %struct.carl9170_phy_init { i32 1858396, i32 29, i32 29, i32 29, i32 29 }, %struct.carl9170_phy_init { i32 1858400, i32 32, i32 32, i32 32, i32 32 }, %struct.carl9170_phy_init { i32 1858404, i32 33, i32 33, i32 33, i32 33 }, %struct.carl9170_phy_init { i32 1858408, i32 34, i32 34, i32 34, i32 34 }, %struct.carl9170_phy_init { i32 1858412, i32 35, i32 35, i32 35, i32 35 }, %struct.carl9170_phy_init { i32 1858416, i32 36, i32 36, i32 36, i32 36 }, %struct.carl9170_phy_init { i32 1858420, i32 37, i32 37, i32 37, i32 37 }, %struct.carl9170_phy_init { i32 1858424, i32 40, i32 40, i32 40, i32 40 }, %struct.carl9170_phy_init { i32 1858428, i32 41, i32 41, i32 41, i32 41 }, %struct.carl9170_phy_init { i32 1858432, i32 42, i32 42, i32 42, i32 42 }, %struct.carl9170_phy_init { i32 1858436, i32 43, i32 43, i32 43, i32 43 }, %struct.carl9170_phy_init { i32 1858440, i32 44, i32 44, i32 44, i32 44 }, %struct.carl9170_phy_init { i32 1858444, i32 45, i32 45, i32 45, i32 45 }, %struct.carl9170_phy_init { i32 1858448, i32 48, i32 48, i32 48, i32 48 }, %struct.carl9170_phy_init { i32 1858452, i32 49, i32 49, i32 49, i32 49 }, %struct.carl9170_phy_init { i32 1858456, i32 50, i32 50, i32 50, i32 50 }, %struct.carl9170_phy_init { i32 1858460, i32 51, i32 51, i32 51, i32 51 }, %struct.carl9170_phy_init { i32 1858464, i32 52, i32 52, i32 52, i32 52 }, %struct.carl9170_phy_init { i32 1858468, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858472, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858476, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858480, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858484, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858488, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858492, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858496, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858500, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858504, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858508, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858512, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858516, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858520, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858524, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858528, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858532, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858536, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858540, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858544, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858548, i32 53, i32 53, i32 53, i32 53 }, %struct.carl9170_phy_init { i32 1858552, i32 16, i32 16, i32 16, i32 16 }, %struct.carl9170_phy_init { i32 1858556, i32 26, i32 26, i32 26, i32 26 }, %struct.carl9170_phy_init { i32 1858560, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858572, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858576, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858580, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858584, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858588, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858592, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858596, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858600, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858604, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858608, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858612, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858616, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858620, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858800, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858804, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858808, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1858812, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860096, i32 8, i32 8, i32 14, i32 14 }, %struct.carl9170_phy_init { i32 1860100, i32 1088, i32 1088, i32 1088, i32 1088 }, %struct.carl9170_phy_init { i32 1860104, i32 -692172920, i32 -692172920, i32 -801224824, i32 -801224824 }, %struct.carl9170_phy_init { i32 1860108, i32 19824992, i32 19824992, i32 19562848, i32 19562848 }, %struct.carl9170_phy_init { i32 1860112, i32 1082155827, i32 1082155827, i32 1082155827, i32 1082155827 }, %struct.carl9170_phy_init { i32 1860116, i32 1076240, i32 1076240, i32 1076240, i32 1076240 }, %struct.carl9170_phy_init { i32 1860120, i32 10240096, i32 10240096, i32 10240096, i32 10240096 }, %struct.carl9170_phy_init { i32 1860124, i32 411271178, i32 411271178, i32 411271178, i32 411271178 }, %struct.carl9170_phy_init { i32 1860128, i32 25702598, i32 25702598, i32 25702598, i32 25702598 }, %struct.carl9170_phy_init { i32 1860132, i32 1024, i32 1024, i32 1024, i32 1024 }, %struct.carl9170_phy_init { i32 1860136, i32 2485, i32 2485, i32 2485, i32 2485 }, %struct.carl9170_phy_init { i32 1860140, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860144, i32 264, i32 528, i32 528, i32 264 }, %struct.carl9170_phy_init { i32 1860148, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567 }, %struct.carl9170_phy_init { i32 1860152, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567 }, %struct.carl9170_phy_init { i32 1860156, i32 331909551, i32 331909551, i32 331909551, i32 331909551 }, %struct.carl9170_phy_init { i32 1860160, i32 944310816, i32 944310816, i32 944310816, i32 944310816 }, %struct.carl9170_phy_init { i32 1860164, i32 31670, i32 31670, i32 31670, i32 31670 }, %struct.carl9170_phy_init { i32 1860168, i32 268386300, i32 268386300, i32 268386300, i32 268386300 }, %struct.carl9170_phy_init { i32 1860172, i32 1, i32 1, i32 1, i32 1 }, %struct.carl9170_phy_init { i32 1860176, i32 40960, i32 40960, i32 40960, i32 40960 }, %struct.carl9170_phy_init { i32 1860180, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860184, i32 214389632, i32 214389632, i32 214389632, i32 214389632 }, %struct.carl9170_phy_init { i32 1860188, i32 252645121, i32 252645121, i32 252645121, i32 252645121 }, %struct.carl9170_phy_init { i32 1860192, i32 -542564607, i32 -542564607, i32 -542564607, i32 -542564607 }, %struct.carl9170_phy_init { i32 1860196, i32 4295185, i32 4295185, i32 4295185, i32 4295185 }, %struct.carl9170_phy_init { i32 1860200, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860204, i32 153391398, i32 153391398, i32 153391398, i32 153391398 }, %struct.carl9170_phy_init { i32 1860212, i32 169516202, i32 169516202, i32 169508010, i32 169508010 }, %struct.carl9170_phy_init { i32 1860216, i32 484915662, i32 484915662, i32 484915662, i32 484915662 }, %struct.carl9170_phy_init { i32 1860220, i32 85393870, i32 85393870, i32 85393870, i32 85393870 }, %struct.carl9170_phy_init { i32 1860352, i32 402718720, i32 402718720, i32 402718720, i32 402718720 }, %struct.carl9170_phy_init { i32 1860356, i32 805512706, i32 805512706, i32 771957762, i32 771957762 }, %struct.carl9170_phy_init { i32 1860360, i32 1208434182, i32 1208434182, i32 1242184710, i32 1242184710 }, %struct.carl9170_phy_init { i32 1860364, i32 1443580938, i32 1443580938, i32 1645892619, i32 1645892619 }, %struct.carl9170_phy_init { i32 1860368, i32 1679450127, i32 1679450127, i32 1984916507, i32 1984916507 }, %struct.carl9170_phy_init { i32 1860372, i32 2052025883, i32 2052025883, i32 -2074379686, i32 -2074379686 }, %struct.carl9170_phy_init { i32 1860376, i32 -1940160934, i32 -1940160934, i32 -1794143025, i32 -1794143025 }, %struct.carl9170_phy_init { i32 1860380, i32 -1659922737, i32 -1659922737, i32 -1513120945, i32 -1513120945 }, %struct.carl9170_phy_init { i32 1860384, i32 -1256216929, i32 -1256216929, i32 -1109414113, i32 -1109414113 }, %struct.carl9170_phy_init { i32 1860388, i32 -885015289, i32 -885015361, i32 -771765953, i32 -771765953 }, %struct.carl9170_phy_init { i32 1860392, i32 55231, i32 55231, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860396, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860400, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860404, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860408, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860412, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860416, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860420, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860424, i32 1073741823, i32 1073741823, i32 1073741823, i32 1073741823 }, %struct.carl9170_phy_init { i32 1860428, i32 1073741823, i32 1073741823, i32 1073741823, i32 1073741823 }, %struct.carl9170_phy_init { i32 1860432, i32 1073741823, i32 1073741823, i32 1073741823, i32 1073741823 }, %struct.carl9170_phy_init { i32 1860436, i32 262143, i32 262143, i32 262143, i32 262143 }, %struct.carl9170_phy_init { i32 1860440, i32 2041096735, i32 2041096735, i32 2041096735, i32 2041096735 }, %struct.carl9170_phy_init { i32 1860488, i32 134217728, i32 134217728, i32 134217728, i32 134217728 }, %struct.carl9170_phy_init { i32 1860492, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567 }, %struct.carl9170_phy_init { i32 1860496, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567 }, %struct.carl9170_phy_init { i32 1860500, i32 484915662, i32 484915662, i32 484915662, i32 484915662 }, %struct.carl9170_phy_init { i32 1860504, i32 462, i32 462, i32 462, i32 462 }, %struct.carl9170_phy_init { i32 1860508, i32 7, i32 7, i32 7, i32 7 }, %struct.carl9170_phy_init { i32 1860512, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860516, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860520, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860524, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860528, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860532, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860536, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860540, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860544, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860548, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860552, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860556, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567 }, %struct.carl9170_phy_init { i32 1860560, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567 }, %struct.carl9170_phy_init { i32 1860564, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567 }, %struct.carl9170_phy_init { i32 1860568, i32 0, i32 0, i32 0, i32 0 }, %struct.carl9170_phy_init { i32 1860572, i32 484915662, i32 484915662, i32 484915662, i32 484915662 }, %struct.carl9170_phy_init { i32 1860576, i32 192, i32 192, i32 192, i32 192 }, %struct.carl9170_phy_init { i32 1861704, i32 1575525, i32 1575525, i32 1575528, i32 1575528 }, %struct.carl9170_phy_init { i32 1861920, i32 84934684, i32 84934684, i32 84934684, i32 84934684 }, %struct.carl9170_phy_init { i32 1861984, i32 39744, i32 39744, i32 39744, i32 39744 }, %struct.carl9170_phy_init { i32 1864204, i32 19824992, i32 19824992, i32 19562848, i32 19562848 }, %struct.carl9170_phy_init { i32 1864300, i32 153391398, i32 153391398, i32 153391398, i32 153391398 }, %struct.carl9170_phy_init { i32 1865800, i32 1575525, i32 1575525, i32 1575528, i32 1575528 }, %struct.carl9170_phy_init { i32 1866016, i32 84934684, i32 84934684, i32 84934684, i32 84934684 }, %struct.carl9170_phy_init { i32 1866080, i32 39744, i32 39744, i32 39744, i32 39744 }, %struct.carl9170_phy_init { i32 1868300, i32 19824992, i32 19824992, i32 19562848, i32 19562848 }, %struct.carl9170_phy_init { i32 1868396, i32 153391398, i32 153391398, i32 153391398, i32 153391398 }, %struct.carl9170_phy_init { i32 1869924, i32 116224, i32 116224, i32 116224, i32 116224 }, %struct.carl9170_phy_init { i32 1870172, i32 4942478, i32 4942478, i32 4942478, i32 4942478 }, %struct.carl9170_phy_init { i32 1870184, i32 974, i32 974, i32 974, i32 974 }, %struct.carl9170_phy_init { i32 1870268, i32 1577984, i32 1577984, i32 1577984, i32 1577984 }, %struct.carl9170_phy_init { i32 1872496, i32 8521760, i32 8521760, i32 8521760, i32 8521760 }, %struct.carl9170_phy_init { i32 1872732, i32 107758095, i32 107758095, i32 107758095, i32 107758095 }, %struct.carl9170_phy_init { i32 1872736, i32 254288391, i32 254288391, i32 254288391, i32 254288391 }, %struct.carl9170_phy_init { i32 1872740, i32 392173189, i32 392173189, i32 392173189, i32 392173189 }, %struct.carl9170_phy_init { i32 1872744, i32 528486660, i32 528486660, i32 528486660, i32 528486660 }, %struct.carl9170_phy_init { i32 1872748, i32 933235715, i32 933235715, i32 933235715, i32 933235715 }, %struct.carl9170_phy_init { i32 1872752, i32 1069811843, i32 1069811843, i32 1069811843, i32 1069811843 }, %struct.carl9170_phy_init { i32 1872756, i32 1472202755, i32 1472202755, i32 1472202755, i32 1472202755 }, %struct.carl9170_phy_init { i32 1872760, i32 1607992962, i32 1607992962, i32 1607992962, i32 1607992962 }, %struct.carl9170_phy_init { i32 1872764, i32 2145387650, i32 2145387650, i32 2145387650, i32 2145387650 }, %struct.carl9170_phy_init { i32 1872768, i32 2134670266, i32 2134670266, i32 2134670266, i32 2134670266 }, %struct.carl9170_phy_init { i32 1872772, i32 -214925328, i32 -214925328, i32 -214925328, i32 -214925328 }], [1636 x i8] zeroinitializer }, align 32
@carl9170_init_phy_from_eeprom.xpd2pd = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\02\02\02\01\02\02\06\02\02\03\07\02\0B\02\02\02", [16 x i8] zeroinitializer }, align 32
@carl9170_rf_initval = internal constant { [68 x %struct.carl9170_rf_initvals], [208 x i8] } { [68 x %struct.carl9170_rf_initvals] [%struct.carl9170_rf_initvals { i32 1857712, i32 509056485, i32 509056485 }, %struct.carl9170_rf_initvals { i32 1857760, i32 33587232, i32 33587232 }, %struct.carl9170_rf_initvals { i32 1857712, i32 34636833, i32 34636833 }, %struct.carl9170_rf_initvals { i32 1857772, i32 8, i32 8 }, %struct.carl9170_rf_initvals { i32 1857712, i32 242482967, i32 242482967 }, %struct.carl9170_rf_initvals { i32 1857760, i32 1056, i32 1056 }, %struct.carl9170_rf_initvals { i32 1857776, i32 20971544, i32 29360152 }, %struct.carl9170_rf_initvals { i32 1857712, i32 417, i32 417 }, %struct.carl9170_rf_initvals { i32 1857768, i32 1, i32 1 }, %struct.carl9170_rf_initvals { i32 1857712, i32 19, i32 19 }, %struct.carl9170_rf_initvals { i32 1857764, i32 2, i32 2 }, %struct.carl9170_rf_initvals { i32 1857712, i32 0, i32 0 }, %struct.carl9170_rf_initvals { i32 1857712, i32 0, i32 0 }, %struct.carl9170_rf_initvals { i32 1857712, i32 0, i32 0 }, %struct.carl9170_rf_initvals { i32 1857712, i32 0, i32 0 }, %struct.carl9170_rf_initvals { i32 1857712, i32 0, i32 0 }, %struct.carl9170_rf_initvals { i32 1857712, i32 16384, i32 16384 }, %struct.carl9170_rf_initvals { i32 1857712, i32 27648, i32 27648 }, %struct.carl9170_rf_initvals { i32 1857712, i32 11264, i32 11264 }, %struct.carl9170_rf_initvals { i32 1857712, i32 18432, i32 18432 }, %struct.carl9170_rf_initvals { i32 1857712, i32 16384, i32 16384 }, %struct.carl9170_rf_initvals { i32 1857712, i32 24576, i32 24576 }, %struct.carl9170_rf_initvals { i32 1857712, i32 4096, i32 4096 }, %struct.carl9170_rf_initvals { i32 1857712, i32 16384, i32 16384 }, %struct.carl9170_rf_initvals { i32 1857712, i32 31744, i32 31744 }, %struct.carl9170_rf_initvals { i32 1857712, i32 31744, i32 31744 }, %struct.carl9170_rf_initvals { i32 1857712, i32 31744, i32 31744 }, %struct.carl9170_rf_initvals { i32 1857712, i32 31744, i32 31744 }, %struct.carl9170_rf_initvals { i32 1857712, i32 31744, i32 31744 }, %struct.carl9170_rf_initvals { i32 1857712, i32 556032, i32 556032 }, %struct.carl9170_rf_initvals { i32 1857712, i32 31744, i32 31744 }, %struct.carl9170_rf_initvals { i32 1857712, i32 21504, i32 21504 }, %struct.carl9170_rf_initvals { i32 1857712, i32 3072, i32 3072 }, %struct.carl9170_rf_initvals { i32 1857712, i32 6144, i32 6144 }, %struct.carl9170_rf_initvals { i32 1857712, i32 31744, i32 31744 }, %struct.carl9170_rf_initvals { i32 1857712, i32 27648, i32 27648 }, %struct.carl9170_rf_initvals { i32 1857712, i32 27648, i32 27648 }, %struct.carl9170_rf_initvals { i32 1857712, i32 31744, i32 31744 }, %struct.carl9170_rf_initvals { i32 1857712, i32 11264, i32 11264 }, %struct.carl9170_rf_initvals { i32 1857712, i32 15360, i32 15360 }, %struct.carl9170_rf_initvals { i32 1857712, i32 14336, i32 14336 }, %struct.carl9170_rf_initvals { i32 1857712, i32 7168, i32 7168 }, %struct.carl9170_rf_initvals { i32 1857712, i32 2048, i32 2048 }, %struct.carl9170_rf_initvals { i32 1857712, i32 1032, i32 1032 }, %struct.carl9170_rf_initvals { i32 1857712, i32 19477, i32 19477 }, %struct.carl9170_rf_initvals { i32 1857712, i32 16776, i32 16776 }, %struct.carl9170_rf_initvals { i32 1857712, i32 8222, i32 8222 }, %struct.carl9170_rf_initvals { i32 1857712, i32 66568, i32 66568 }, %struct.carl9170_rf_initvals { i32 1857712, i32 2049, i32 2049 }, %struct.carl9170_rf_initvals { i32 1857712, i32 3080, i32 3080 }, %struct.carl9170_rf_initvals { i32 1857712, i32 6174, i32 6174 }, %struct.carl9170_rf_initvals { i32 1857712, i32 4118, i32 4118 }, %struct.carl9170_rf_initvals { i32 1857712, i32 10240, i32 10240 }, %struct.carl9170_rf_initvals { i32 1857712, i32 16400, i32 16400 }, %struct.carl9170_rf_initvals { i32 1857712, i32 2076, i32 2076 }, %struct.carl9170_rf_initvals { i32 1857712, i32 277, i32 277 }, %struct.carl9170_rf_initvals { i32 1857712, i32 21, i32 21 }, %struct.carl9170_rf_initvals { i32 1857712, i32 102, i32 102 }, %struct.carl9170_rf_initvals { i32 1857712, i32 28, i32 28 }, %struct.carl9170_rf_initvals { i32 1857712, i32 0, i32 0 }, %struct.carl9170_rf_initvals { i32 1857712, i32 4, i32 4 }, %struct.carl9170_rf_initvals { i32 1857712, i32 21, i32 21 }, %struct.carl9170_rf_initvals { i32 1857712, i32 31, i32 31 }, %struct.carl9170_rf_initvals { i32 1857760, i32 0, i32 1024 }, %struct.carl9170_rf_initvals { i32 1857712, i32 160, i32 160 }, %struct.carl9170_rf_initvals { i32 1857712, i32 0, i32 0 }, %struct.carl9170_rf_initvals { i32 1857712, i32 64, i32 64 }, %struct.carl9170_rf_initvals { i32 1857776, i32 28, i32 28 }], [208 x i8] zeroinitializer }, align 32
@carl9170_init_rf_banks_0_7._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 686, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rf init failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"carl9170_init_rf_banks_0_7\00", [37 x i8] zeroinitializer }, align 32
@carl9170_init_rf_banks_0_7._entry_ptr = internal global ptr @carl9170_init_rf_banks_0_7._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@carl9170_phy_freq_params = internal constant { [49 x %struct.carl9170_phy_freq_entry], [294 x i8] } { [49 x %struct.carl9170_phy_freq_entry] [%struct.carl9170_phy_freq_entry { i16 2412, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21737, i8 3, i16 19563 }, %struct.carl9170_phy_freq_params { i8 3, i16 21827, i8 3, i16 19644 }, %struct.carl9170_phy_freq_params { i8 3, i16 21647, i8 3, i16 19482 }] }, %struct.carl9170_phy_freq_entry { i16 2417, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21692, i8 3, i16 19523 }, %struct.carl9170_phy_freq_params { i8 3, i16 21782, i8 3, i16 19604 }, %struct.carl9170_phy_freq_params { i8 3, i16 21602, i8 3, i16 19442 }] }, %struct.carl9170_phy_freq_entry { i16 2422, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21647, i8 3, i16 19482 }, %struct.carl9170_phy_freq_params { i8 3, i16 21737, i8 3, i16 19563 }, %struct.carl9170_phy_freq_params { i8 3, i16 21558, i8 3, i16 19402 }] }, %struct.carl9170_phy_freq_entry { i16 2427, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21602, i8 3, i16 19442 }, %struct.carl9170_phy_freq_params { i8 3, i16 21692, i8 3, i16 19523 }, %struct.carl9170_phy_freq_params { i8 3, i16 21514, i8 3, i16 19362 }] }, %struct.carl9170_phy_freq_entry { i16 2432, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21558, i8 3, i16 19402 }, %struct.carl9170_phy_freq_params { i8 3, i16 21647, i8 3, i16 19482 }, %struct.carl9170_phy_freq_params { i8 3, i16 21470, i8 3, i16 19323 }] }, %struct.carl9170_phy_freq_entry { i16 2437, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21514, i8 3, i16 19362 }, %struct.carl9170_phy_freq_params { i8 3, i16 21602, i8 3, i16 19442 }, %struct.carl9170_phy_freq_params { i8 3, i16 21426, i8 3, i16 19283 }] }, %struct.carl9170_phy_freq_entry { i16 2442, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21470, i8 3, i16 19323 }, %struct.carl9170_phy_freq_params { i8 3, i16 21558, i8 3, i16 19402 }, %struct.carl9170_phy_freq_params { i8 3, i16 21382, i8 3, i16 19244 }] }, %struct.carl9170_phy_freq_entry { i16 2447, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21426, i8 3, i16 19283 }, %struct.carl9170_phy_freq_params { i8 3, i16 21514, i8 3, i16 19362 }, %struct.carl9170_phy_freq_params { i8 3, i16 21339, i8 3, i16 19205 }] }, %struct.carl9170_phy_freq_entry { i16 2452, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21382, i8 3, i16 19244 }, %struct.carl9170_phy_freq_params { i8 3, i16 21470, i8 3, i16 19323 }, %struct.carl9170_phy_freq_params { i8 3, i16 21295, i8 3, i16 19166 }] }, %struct.carl9170_phy_freq_entry { i16 2457, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21339, i8 3, i16 19205 }, %struct.carl9170_phy_freq_params { i8 3, i16 21426, i8 3, i16 19283 }, %struct.carl9170_phy_freq_params { i8 3, i16 21252, i8 3, i16 19127 }] }, %struct.carl9170_phy_freq_entry { i16 2462, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21295, i8 3, i16 19166 }, %struct.carl9170_phy_freq_params { i8 3, i16 21382, i8 3, i16 19244 }, %struct.carl9170_phy_freq_params { i8 3, i16 21209, i8 3, i16 19088 }] }, %struct.carl9170_phy_freq_entry { i16 2467, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21252, i8 3, i16 19127 }, %struct.carl9170_phy_freq_params { i8 3, i16 21339, i8 3, i16 19205 }, %struct.carl9170_phy_freq_params { i8 3, i16 21166, i8 3, i16 19050 }] }, %struct.carl9170_phy_freq_entry { i16 2472, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21209, i8 3, i16 19088 }, %struct.carl9170_phy_freq_params { i8 3, i16 21295, i8 3, i16 19166 }, %struct.carl9170_phy_freq_params { i8 3, i16 21124, i8 3, i16 19011 }] }, %struct.carl9170_phy_freq_entry { i16 2484, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 3, i16 21107, i8 3, i16 18996 }, %struct.carl9170_phy_freq_params { i8 3, i16 21192, i8 3, i16 19073 }, %struct.carl9170_phy_freq_params { i8 3, i16 21022, i8 3, i16 18920 }] }, %struct.carl9170_phy_freq_entry { i16 4920, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 21313, i8 4, i16 19181 }, %struct.carl9170_phy_freq_params { i8 4, i16 21356, i8 4, i16 19220 }, %struct.carl9170_phy_freq_params { i8 4, i16 21269, i8 4, i16 19142 }] }, %struct.carl9170_phy_freq_entry { i16 4940, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 21226, i8 4, i16 19104 }, %struct.carl9170_phy_freq_params { i8 4, i16 21269, i8 4, i16 19142 }, %struct.carl9170_phy_freq_params { i8 4, i16 21183, i8 4, i16 19065 }] }, %struct.carl9170_phy_freq_entry { i16 4960, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 21141, i8 4, i16 19027 }, %struct.carl9170_phy_freq_params { i8 4, i16 21183, i8 4, i16 19065 }, %struct.carl9170_phy_freq_params { i8 4, i16 21098, i8 4, i16 18988 }] }, %struct.carl9170_phy_freq_entry { i16 4980, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 21056, i8 4, i16 18950 }, %struct.carl9170_phy_freq_params { i8 4, i16 21098, i8 4, i16 18988 }, %struct.carl9170_phy_freq_params { i8 4, i16 21014, i8 4, i16 18912 }] }, %struct.carl9170_phy_freq_entry { i16 5040, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20805, i8 4, i16 18725 }, %struct.carl9170_phy_freq_params { i8 4, i16 20846, i8 4, i16 18762 }, %struct.carl9170_phy_freq_params { i8 4, i16 20764, i8 4, i16 18687 }] }, %struct.carl9170_phy_freq_entry { i16 5060, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20723, i8 4, i16 18651 }, %struct.carl9170_phy_freq_params { i8 4, i16 20764, i8 4, i16 18687 }, %struct.carl9170_phy_freq_params { i8 4, i16 20682, i8 4, i16 18614 }] }, %struct.carl9170_phy_freq_entry { i16 5080, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20641, i8 4, i16 18577 }, %struct.carl9170_phy_freq_params { i8 4, i16 20682, i8 4, i16 18614 }, %struct.carl9170_phy_freq_params { i8 4, i16 20601, i8 4, i16 18541 }] }, %struct.carl9170_phy_freq_entry { i16 5180, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20243, i8 4, i16 18219 }, %struct.carl9170_phy_freq_params { i8 4, i16 20282, i8 4, i16 18254 }, %struct.carl9170_phy_freq_params { i8 4, i16 20204, i8 4, i16 18183 }] }, %struct.carl9170_phy_freq_entry { i16 5200, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20165, i8 4, i16 18148 }, %struct.carl9170_phy_freq_params { i8 4, i16 20204, i8 4, i16 18183 }, %struct.carl9170_phy_freq_params { i8 4, i16 20126, i8 4, i16 18114 }] }, %struct.carl9170_phy_freq_entry { i16 5220, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20088, i8 4, i16 18079 }, %struct.carl9170_phy_freq_params { i8 4, i16 20126, i8 4, i16 18114 }, %struct.carl9170_phy_freq_params { i8 4, i16 20049, i8 4, i16 18044 }] }, %struct.carl9170_phy_freq_entry { i16 5240, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20011, i8 4, i16 18010 }, %struct.carl9170_phy_freq_params { i8 4, i16 20049, i8 4, i16 18044 }, %struct.carl9170_phy_freq_params { i8 4, i16 19973, i8 4, i16 17976 }] }, %struct.carl9170_phy_freq_entry { i16 5260, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 19935, i8 4, i16 17941 }, %struct.carl9170_phy_freq_params { i8 4, i16 19973, i8 4, i16 17976 }, %struct.carl9170_phy_freq_params { i8 4, i16 19897, i8 4, i16 17907 }] }, %struct.carl9170_phy_freq_entry { i16 5280, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 19859, i8 4, i16 17873 }, %struct.carl9170_phy_freq_params { i8 4, i16 19897, i8 4, i16 17907 }, %struct.carl9170_phy_freq_params { i8 4, i16 19822, i8 4, i16 17840 }] }, %struct.carl9170_phy_freq_entry { i16 5300, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 19784, i8 4, i16 17806 }, %struct.carl9170_phy_freq_params { i8 4, i16 19822, i8 4, i16 17840 }, %struct.carl9170_phy_freq_params { i8 4, i16 19747, i8 4, i16 17772 }] }, %struct.carl9170_phy_freq_entry { i16 5320, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 19710, i8 4, i16 17739 }, %struct.carl9170_phy_freq_params { i8 4, i16 19747, i8 4, i16 17772 }, %struct.carl9170_phy_freq_params { i8 4, i16 19673, i8 4, i16 17706 }] }, %struct.carl9170_phy_freq_entry { i16 5500, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 19065, i8 4, i16 17159 }, %struct.carl9170_phy_freq_params { i8 4, i16 19100, i8 4, i16 17190 }, %struct.carl9170_phy_freq_params { i8 4, i16 19030, i8 4, i16 17127 }] }, %struct.carl9170_phy_freq_entry { i16 5520, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18996, i8 4, i16 17096 }, %struct.carl9170_phy_freq_params { i8 4, i16 19030, i8 4, i16 17127 }, %struct.carl9170_phy_freq_params { i8 4, i16 18962, i8 4, i16 17065 }] }, %struct.carl9170_phy_freq_entry { i16 5540, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18927, i8 4, i16 17035 }, %struct.carl9170_phy_freq_params { i8 4, i16 18962, i8 4, i16 17065 }, %struct.carl9170_phy_freq_params { i8 4, i16 18893, i8 4, i16 17004 }] }, %struct.carl9170_phy_freq_entry { i16 5560, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18859, i8 4, i16 16973 }, %struct.carl9170_phy_freq_params { i8 4, i16 18893, i8 4, i16 17004 }, %struct.carl9170_phy_freq_params { i8 4, i16 18825, i8 4, i16 16943 }] }, %struct.carl9170_phy_freq_entry { i16 5580, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18792, i8 4, i16 16913 }, %struct.carl9170_phy_freq_params { i8 4, i16 18825, i8 4, i16 16943 }, %struct.carl9170_phy_freq_params { i8 4, i16 18758, i8 4, i16 16882 }] }, %struct.carl9170_phy_freq_entry { i16 5600, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18725, i8 4, i16 16852 }, %struct.carl9170_phy_freq_params { i8 4, i16 18758, i8 4, i16 16882 }, %struct.carl9170_phy_freq_params { i8 4, i16 18691, i8 4, i16 16822 }] }, %struct.carl9170_phy_freq_entry { i16 5620, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18658, i8 4, i16 16792 }, %struct.carl9170_phy_freq_params { i8 4, i16 18691, i8 4, i16 16822 }, %struct.carl9170_phy_freq_params { i8 4, i16 18625, i8 4, i16 16762 }] }, %struct.carl9170_phy_freq_entry { i16 5640, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18592, i8 4, i16 16733 }, %struct.carl9170_phy_freq_params { i8 4, i16 18625, i8 4, i16 16762 }, %struct.carl9170_phy_freq_params { i8 4, i16 18559, i8 4, i16 16703 }] }, %struct.carl9170_phy_freq_entry { i16 5660, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18526, i8 4, i16 16673 }, %struct.carl9170_phy_freq_params { i8 4, i16 18559, i8 4, i16 16703 }, %struct.carl9170_phy_freq_params { i8 4, i16 18493, i8 4, i16 16644 }] }, %struct.carl9170_phy_freq_entry { i16 5680, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18461, i8 4, i16 16615 }, %struct.carl9170_phy_freq_params { i8 4, i16 18493, i8 4, i16 16644 }, %struct.carl9170_phy_freq_params { i8 4, i16 18428, i8 4, i16 16586 }] }, %struct.carl9170_phy_freq_entry { i16 5700, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18396, i8 4, i16 16556 }, %struct.carl9170_phy_freq_params { i8 4, i16 18428, i8 4, i16 16586 }, %struct.carl9170_phy_freq_params { i8 4, i16 18364, i8 4, i16 16527 }] }, %struct.carl9170_phy_freq_entry { i16 5745, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18252, i8 4, i16 16427 }, %struct.carl9170_phy_freq_params { i8 4, i16 18284, i8 4, i16 16455 }, %struct.carl9170_phy_freq_params { i8 4, i16 18220, i8 4, i16 16398 }] }, %struct.carl9170_phy_freq_entry { i16 5765, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18189, i8 5, i16 32740 }, %struct.carl9170_phy_freq_params { i8 4, i16 18220, i8 4, i16 16398 }, %struct.carl9170_phy_freq_params { i8 4, i16 18157, i8 5, i16 32683 }] }, %struct.carl9170_phy_freq_entry { i16 5785, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18126, i8 5, i16 32626 }, %struct.carl9170_phy_freq_params { i8 4, i16 18157, i8 5, i16 32683 }, %struct.carl9170_phy_freq_params { i8 4, i16 18094, i8 5, i16 32570 }] }, %struct.carl9170_phy_freq_entry { i16 5805, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18063, i8 5, i16 32514 }, %struct.carl9170_phy_freq_params { i8 4, i16 18094, i8 5, i16 32570 }, %struct.carl9170_phy_freq_params { i8 4, i16 18032, i8 5, i16 32458 }] }, %struct.carl9170_phy_freq_entry { i16 5825, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 18001, i8 5, i16 32402 }, %struct.carl9170_phy_freq_params { i8 4, i16 18032, i8 5, i16 32458 }, %struct.carl9170_phy_freq_params { i8 4, i16 17970, i8 5, i16 32347 }] }, %struct.carl9170_phy_freq_entry { i16 5170, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20282, i8 4, i16 18254 }, %struct.carl9170_phy_freq_params { i8 4, i16 20321, i8 4, i16 18289 }, %struct.carl9170_phy_freq_params { i8 4, i16 20243, i8 4, i16 18219 }] }, %struct.carl9170_phy_freq_entry { i16 5190, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20204, i8 4, i16 18183 }, %struct.carl9170_phy_freq_params { i8 4, i16 20243, i8 4, i16 18219 }, %struct.carl9170_phy_freq_params { i8 4, i16 20165, i8 4, i16 18148 }] }, %struct.carl9170_phy_freq_entry { i16 5210, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20126, i8 4, i16 18114 }, %struct.carl9170_phy_freq_params { i8 4, i16 20165, i8 4, i16 18148 }, %struct.carl9170_phy_freq_params { i8 4, i16 20088, i8 4, i16 18079 }] }, %struct.carl9170_phy_freq_entry { i16 5230, [3 x %struct.carl9170_phy_freq_params] [%struct.carl9170_phy_freq_params { i8 4, i16 20049, i8 4, i16 18044 }, %struct.carl9170_phy_freq_params { i8 4, i16 20088, i8 4, i16 18079 }, %struct.carl9170_phy_freq_params { i8 4, i16 20011, i8 4, i16 18010 }] }], [294 x i8] zeroinitializer }, align 32
@switch.table.carl9170_set_channel = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.carl9170_set_channel.10 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 576, i32 708, i32 724], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 224, i64 255]
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"phy_regs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1529, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1690, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1718, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"ar5416_phy_init\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 67, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"xpd2pd\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 435, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"carl9170_rf_initval\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 593, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 686, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [25 x i8] c"carl9170_phy_freq_params\00", align 1
@___asan_gen_.62 = private constant [43 x i8] c"../drivers/net/wireless/ath/carl9170/phy.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 712, i32 45 }
@___asan_gen_.64 = private unnamed_addr constant [34 x i8] c"switch.table.carl9170_set_channel\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [37 x i8] c"switch.table.carl9170_set_channel.10\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @carl9170_init_rf_banks_0_7._entry, ptr @carl9170_init_rf_banks_0_7._entry_ptr, ptr @carl9170_set_channel._entry, ptr @carl9170_set_channel._entry.5, ptr @carl9170_set_channel._entry_ptr, ptr @carl9170_set_channel._entry_ptr.7, ptr @carl9170_get_noisefloor.phy_regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ar5416_phy_init, ptr @carl9170_init_phy_from_eeprom.xpd2pd, ptr @carl9170_rf_initval, ptr @.str.8, ptr @.str.9, ptr @carl9170_phy_freq_params, ptr @switch.table.carl9170_set_channel, ptr @switch.table.carl9170_set_channel.10], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_get_noisefloor.phy_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_set_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_set_channel._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5416_phy_init to i32), i32 6620, i32 8256, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_init_phy_from_eeprom.xpd2pd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rf_initval to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_init_rf_banks_0_7._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_phy_freq_params to i32), i32 1274, i32 1568, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.carl9170_set_channel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.carl9170_set_channel.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_get_noisefloor(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %phy_res = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %phy_res) #5
  %0 = call ptr @memset(ptr %phy_res, i32 255, i32 16)
  %call = call i32 @carl9170_read_mreg(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull @carl9170_get_noisefloor.phy_regs, ptr noundef nonnull %phy_res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = getelementptr inbounds [4 x i32], ptr %phy_res, i32 0, i32 3
  %2 = getelementptr inbounds [4 x i32], ptr %phy_res, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i32], ptr %phy_res, i32 0, i32 1
  %4 = ptrtoint ptr %phy_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_res, align 4
  %6 = shl i32 %5, 4
  %shr = ashr i32 %6, 23
  %arrayidx2 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 57, i32 0
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %arrayidx2, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  %shr5 = ashr i32 %9, 23
  %arrayidx9 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 57, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr5, ptr %arrayidx9, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %13 = shl i32 %12, 4
  %shr.1 = ashr i32 %13, 23
  %arrayidx2.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 57, i32 1
  %14 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr.1, ptr %arrayidx2.1, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %shr5.1 = ashr i32 %16, 23
  %arrayidx9.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 57, i32 3
  %17 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr5.1, ptr %arrayidx9.1, align 4
  %channel = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 55
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %for.body.preheader.cleanup_crit_edge, label %if.then11

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2, align 4
  %conv = trunc i32 %21 to i8
  %survey = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 64
  %22 = ptrtoint ptr %survey to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %survey, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hw_value, align 2
  %idxprom = zext i16 %25 to i32
  %noise16 = getelementptr %struct.survey_info, ptr %23, i32 %idxprom, i32 9
  %26 = ptrtoint ptr %noise16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %noise16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %phy_res) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_read_mreg(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_channel(ptr noundef %ar, ptr noundef %channel, i32 noundef %_bw) local_unnamed_addr #0 align 64 {
entry:
  %rf_res = alloca %struct.carl9170_rf_init_result, align 4
  %rf = alloca %struct.carl9170_rf_init, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rf_res) #5
  %0 = ptrtoint ptr %rf_res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rf_res, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rf) #5
  %1 = getelementptr inbounds %struct.carl9170_rf_init, ptr %rf, i32 0, i32 1
  %2 = getelementptr inbounds %struct.carl9170_rf_init, ptr %rf, i32 0, i32 3
  %3 = getelementptr inbounds %struct.carl9170_rf_init, ptr %rf, i32 0, i32 4
  %4 = getelementptr inbounds %struct.carl9170_rf_init, ptr %rf, i32 0, i32 5
  %5 = getelementptr inbounds %struct.carl9170_rf_init, ptr %rf, i32 0, i32 6
  %6 = getelementptr inbounds %struct.carl9170_rf_init, ptr %rf, i32 0, i32 7
  %7 = call ptr @memset(ptr %rf, i32 255, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %_bw)
  %8 = icmp ult i32 %_bw, 4
  br i1 %8, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/carl9170/phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1566, 0\0A.popsection", ""() #5, !srcloc !37
  unreachable

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.carl9170_set_channel, i32 0, i32 %_bw
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %11, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %15 [
    i32 6, label %switch.lookup.conf_is_ht.exit_crit_edge
    i32 7, label %switch.lookup.conf_is_ht.exit_crit_edge319
    i32 0, label %switch.lookup.conf_is_ht.exit_crit_edge320
  ]

switch.lookup.conf_is_ht.exit_crit_edge320:       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %conf_is_ht.exit

switch.lookup.conf_is_ht.exit_crit_edge319:       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %conf_is_ht.exit

switch.lookup.conf_is_ht.exit_crit_edge:          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %conf_is_ht.exit

15:                                               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %conf_is_ht.exit

conf_is_ht.exit:                                  ; preds = %15, %switch.lookup.conf_is_ht.exit_crit_edge, %switch.lookup.conf_is_ht.exit_crit_edge319, %switch.lookup.conf_is_ht.exit_crit_edge320
  %16 = phi i32 [ 4, %15 ], [ 0, %switch.lookup.conf_is_ht.exit_crit_edge ], [ 0, %switch.lookup.conf_is_ht.exit_crit_edge319 ], [ 0, %switch.lookup.conf_is_ht.exit_crit_edge320 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  %or6 = or i32 %16, 8
  %new_ht.1 = select i1 %cmp.i, i32 %or6, i32 %16
  %channel8 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 55
  %17 = ptrtoint ptr %channel8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel8, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %conf_is_ht.exit.if.end12_crit_edge, label %if.then9

conf_is_ht.exit.if.end12_crit_edge:               ; preds = %conf_is_ht.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %conf_is_ht.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %channel8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %channel8, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %conf_is_ht.exit.if.end12_crit_edge
  %call13 = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1916932, i32 noundef 2048) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1916932, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i230 = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %width.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %23, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 2
  %26 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 83
  %state.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %arrayidx25.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.end20
  %__nreg.0141.i = phi i32 [ 0, %if.end20 ], [ %__nreg.0141.i.be, %for.body.i.backedge ]
  %i.0139.i = phi i32 [ 0, %if.end20 ], [ %i.0139.i.be, %for.body.i.backedge ]
  br i1 %cmp.i.i, label %if.then.i, label %if.else6.i

if.then.i:                                        ; preds = %for.body.i
  br i1 %cmp.i230, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_40.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.0139.i, i32 3
  br label %do.body14.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_40.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.0139.i, i32 2
  br label %do.body14.i

if.else6.i:                                       ; preds = %for.body.i
  br i1 %cmp.i230, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_20.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.0139.i, i32 4
  br label %do.body14.i

if.else10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_20.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.0139.i, i32 1
  br label %do.body14.i

do.body14.i:                                      ; preds = %if.else10.i, %if.then8.i, %if.else.i, %if.then4.i
  %val.0.in.i = phi ptr [ %_2ghz_40.i, %if.then4.i ], [ %_5ghz_40.i, %if.else.i ], [ %_2ghz_20.i, %if.then8.i ], [ %_5ghz_20.i, %if.else10.i ]
  %27 = ptrtoint ptr %val.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %val.0.i = load i32, ptr %val.0.in.i, align 4
  %arrayidx15.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.0139.i
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %mul.i = shl i32 %__nreg.0141.i, 1
  %add.i = or i32 %mul.i, 1
  %arrayidx16.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add.i
  %31 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx16.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #5
  %add18.i = add i32 %mul.i, 2
  %arrayidx19.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add18.i
  %33 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx19.i, align 4
  %inc.i = add i32 %__nreg.0141.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.i)
  %cmp20.i = icmp sgt i32 %inc.i, 6
  br i1 %cmp20.i, label %if.then21.i, label %for.inc.i

if.then21.i:                                      ; preds = %do.body14.i
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp22.i = icmp ugt i32 %35, 1
  br i1 %cmp22.i, label %if.then23.i, label %if.then21.i.if.end49.i_crit_edge

if.then21.i.if.end49.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.then23.i:                                      ; preds = %if.then21.i
  %mul24.i = shl i32 %inc.i, 3
  %call26.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef %mul24.i, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool29.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool29.not.i, label %for.inc.thread.i, label %if.then23.i.cleanup_crit_edge

if.then23.i.cleanup_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.i:                                        ; preds = %do.body14.i
  %inc33.i = add nuw nsw i32 %i.0139.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 331, i32 %inc33.i)
  %exitcond.not.i = icmp eq i32 %inc33.i, 331
  br i1 %exitcond.not.i, label %land.lhs.true.i, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.backedge

for.inc.thread.i:                                 ; preds = %if.then23.i
  %inc33151.i = add nuw nsw i32 %i.0139.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 331, i32 %inc33151.i)
  %exitcond.not152.i = icmp eq i32 %inc33151.i, 331
  br i1 %exitcond.not152.i, label %for.inc.thread.i.if.end49.i_crit_edge, label %for.inc.thread.i.for.body.i.backedge_crit_edge

for.inc.thread.i.for.body.i.backedge_crit_edge:   ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.backedge

for.inc.thread.i.if.end49.i_crit_edge:            ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

for.body.i.backedge:                              ; preds = %for.inc.thread.i.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %__nreg.0141.i.be = phi i32 [ %inc.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 0, %for.inc.thread.i.for.body.i.backedge_crit_edge ]
  %i.0139.i.be = phi i32 [ %inc33.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %inc33151.i, %for.inc.thread.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

land.lhs.true.i:                                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool35.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true.i.if.end49.i_crit_edge, label %if.then36.i

land.lhs.true.i.if.end49.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.then36.i:                                      ; preds = %land.lhs.true.i
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr.i = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp38.i = icmp ugt i32 %.pr.i, 1
  br i1 %cmp38.i, label %if.end44.i, label %if.then36.i.if.end49.i_crit_edge

if.then36.i.if.end49.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.end44.i:                                       ; preds = %if.then36.i
  %mul40.i = shl i32 %inc.i, 3
  %call42.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef %mul40.i, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool47.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool47.not.i, label %if.end44.i.if.end49.i_crit_edge, label %if.end44.i.cleanup_crit_edge

if.end44.i.cleanup_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44.i.if.end49.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end44.i.if.end49.i_crit_edge, %if.then36.i.if.end49.i_crit_edge, %land.lhs.true.i.if.end49.i_crit_edge, %for.inc.thread.i.if.end49.i_crit_edge, %if.then21.i.if.end49.i_crit_edge
  %idxprom.i.i = zext i1 %cmp.i230 to i32
  %arrayidx.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i
  %37 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1683561472, ptr %arrayidx25.i, align 4
  %antCtrlCommon.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 1
  %38 = ptrtoint ptr %antCtrlCommon.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %antCtrlCommon.i.i, align 1
  %arrayidx6.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx6.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1616452608, ptr %arrayidx18.i.i, align 4
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %arrayidx.i.i, align 1
  %arrayidx22.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx22.i.i, align 4
  %arrayidx43.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 5
  %45 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1618549760, ptr %arrayidx43.i.i, align 4
  %arrayidx45.i.i = getelementptr [2 x i32], ptr %arrayidx.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx45.i.i, align 1
  %arrayidx48.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 6
  %48 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx48.i.i, align 4
  br i1 %cmp.i.i, label %if.end.i889.i.i, label %if.end.i889.thread.i.i

if.end.i889.i.i:                                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select1181.i.i = select i1 %cmp.i230, ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 20, i32 3), ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 20, i32 2)
  br label %if.end.i927.i.i

if.end.i889.thread.i.i:                           ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = select i1 %cmp.i230, i32 326238244, i32 326238238
  %switchSettling.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 3
  %50 = ptrtoint ptr %switchSettling.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %switchSettling.i.i, align 1
  %conv.i.i = zext i8 %51 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 7
  %and71.i.i = and i32 %shl.i.i, 16256
  %or.i.i = or i32 %and71.i.i, %49
  %arrayidx75.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 7
  %52 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1146625024, ptr %arrayidx75.i.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %arrayidx78.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 8
  %54 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx78.i.i, align 4
  %spec.select1182.i.i = select i1 %cmp.i230, ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 20, i32 4), ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 20, i32 1)
  br label %if.end.i927.i.i

if.end.i927.i.i:                                  ; preds = %if.end.i889.thread.i.i, %if.end.i889.i.i
  %spec.select1176.i.i = phi ptr [ getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 10, i32 1), %if.end.i889.thread.i.i ], [ getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 10, i32 2), %if.end.i889.i.i ]
  %spec.select.i.i = phi ptr [ getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 10, i32 4), %if.end.i889.thread.i.i ], [ getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 10, i32 3), %if.end.i889.i.i ]
  %__nreg.31162.i.i = phi i32 [ 8, %if.end.i889.thread.i.i ], [ 6, %if.end.i889.i.i ]
  %_5ghz_20.sink.i897.i.i = phi ptr [ %spec.select1182.i.i, %if.end.i889.thread.i.i ], [ %spec.select1181.i.i, %if.end.i889.i.i ]
  %55 = ptrtoint ptr %_5ghz_20.sink.i897.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %_5ghz_20.sink.i897.i.i, align 4
  %and102.i.i = and i32 %56, -65536
  %pgaDesiredSize.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 7
  %57 = ptrtoint ptr %pgaDesiredSize.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pgaDesiredSize.i.i, align 1
  %conv103.i.i = sext i8 %58 to i32
  %shl104.i.i = shl nsw i32 %conv103.i.i, 8
  %and105.i.i = and i32 %shl104.i.i, 65280
  %adcDesiredSize.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 6
  %59 = ptrtoint ptr %adcDesiredSize.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %adcDesiredSize.i.i, align 1
  %conv108882.i.i = zext i8 %60 to i32
  %or106.i.i = or i32 %and102.i.i, %conv108882.i.i
  %or111.i.i = or i32 %or106.i.i, %and105.i.i
  %add114.i.i = or i32 %__nreg.31162.i.i, 1
  %arrayidx115.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add114.i.i
  %61 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1347951616, ptr %arrayidx115.i.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %or111.i.i) #5
  %add117.i.i = add nuw nsw i32 %__nreg.31162.i.i, 2
  %arrayidx118.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add117.i.i
  %63 = ptrtoint ptr %arrayidx118.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx118.i.i, align 4
  %txEndToXpaOff.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 9
  %64 = ptrtoint ptr %txEndToXpaOff.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %txEndToXpaOff.i.i, align 1
  %conv142.i.i = zext i8 %65 to i32
  %shl143.i.i = shl nuw i32 %conv142.i.i, 24
  %shl149.i.i = shl nuw nsw i32 %conv142.i.i, 16
  %or151.i.i = or i32 %shl143.i.i, %shl149.i.i
  %txFrameToXpaOn.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 11
  %66 = ptrtoint ptr %txFrameToXpaOn.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %txFrameToXpaOn.i.i, align 1
  %conv153.i.i = zext i8 %67 to i32
  %shl154.i.i = shl nuw nsw i32 %conv153.i.i, 8
  %or156.i.i = or i32 %or151.i.i, %conv153.i.i
  %or162.i.i = or i32 %or156.i.i, %shl154.i.i
  %add165.i.i = or i32 %add117.i.i, 1
  %arrayidx166.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add165.i.i
  %68 = ptrtoint ptr %arrayidx166.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 878189568, ptr %arrayidx166.i.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %or162.i.i) #5
  %add168.i.i = add nuw nsw i32 %__nreg.31162.i.i, 4
  %arrayidx169.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add168.i.i
  %70 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx169.i.i, align 4
  %_5ghz_20.sink.i941.i.i = select i1 %cmp.i230, ptr %spec.select.i.i, ptr %spec.select1176.i.i
  %71 = ptrtoint ptr %_5ghz_20.sink.i941.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %_5ghz_20.sink.i941.i.i, align 4
  %and192.i.i = and i32 %72, -16711681
  %txEndToRxOn.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 10
  %73 = ptrtoint ptr %txEndToRxOn.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %txEndToRxOn.i.i, align 1
  %conv193.i.i = zext i8 %74 to i32
  %shl194.i.i = shl nuw nsw i32 %conv193.i.i, 16
  %or196.i.i = or i32 %shl194.i.i, %and192.i.i
  %add199.i.i = or i32 %add168.i.i, 1
  %arrayidx200.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add199.i.i
  %75 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 676862976, ptr %arrayidx200.i.i, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %or196.i.i) #5
  %add202.i.i = add nuw nsw i32 %__nreg.31162.i.i, 6
  %arrayidx203.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add202.i.i
  %77 = ptrtoint ptr %arrayidx203.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx203.i.i, align 4
  br i1 %cmp.i.i, label %if.end.i927.i.i.do.end222.i.i_crit_edge, label %if.then207.i.i

if.end.i927.i.i.do.end222.i.i_crit_edge:          ; preds = %if.end.i927.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end222.i.i

if.then207.i.i:                                   ; preds = %if.end.i927.i.i
  %78 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp209.i.i = icmp ugt i32 %79, 1
  br i1 %cmp209.i.i, label %if.then211.i.i, label %if.then207.i.i.if.end55.i_crit_edge

if.then207.i.i.if.end55.i_crit_edge:              ; preds = %if.then207.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then211.i.i:                                   ; preds = %if.then207.i.i
  %call214.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214.i.i)
  %tobool217.not.i.i = icmp eq i32 %call214.i.i, 0
  br i1 %tobool217.not.i.i, label %if.then211.i.i.do.end222.i.i_crit_edge, label %if.then211.i.i.cleanup_crit_edge

if.then211.i.i.cleanup_crit_edge:                 ; preds = %if.then211.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then211.i.i.do.end222.i.i_crit_edge:           ; preds = %if.then211.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end222.i.i

do.end222.i.i:                                    ; preds = %if.then211.i.i.do.end222.i.i_crit_edge, %if.end.i927.i.i.do.end222.i.i_crit_edge
  %__nreg.6.i.i = phi i32 [ 0, %if.then211.i.i.do.end222.i.i_crit_edge ], [ 6, %if.end.i927.i.i.do.end222.i.i_crit_edge ]
  br label %for.body.i948.i.i

for.body.i948.i.i:                                ; preds = %for.inc.i962.i.i.for.body.i948.i.i_crit_edge, %do.end222.i.i
  %i.023.i945.i.i = phi i32 [ 0, %do.end222.i.i ], [ %inc.i960.i.i, %for.inc.i962.i.i.for.body.i948.i.i_crit_edge ]
  %arrayidx.i946.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i945.i.i
  %80 = ptrtoint ptr %arrayidx.i946.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i946.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1869924, i32 %81)
  %cmp3.not.i947.i.i = icmp eq i32 %81, 1869924
  br i1 %cmp3.not.i947.i.i, label %if.end.i949.i.i, label %for.inc.i962.i.i

if.end.i949.i.i:                                  ; preds = %for.body.i948.i.i
  br i1 %cmp.i230, label %if.then4.i950.i.i, label %if.else9.i955.i.i

if.then4.i950.i.i:                                ; preds = %if.end.i949.i.i
  br i1 %cmp.i.i, label %if.then6.i952.i.i, label %if.else.i954.i.i

if.then6.i952.i.i:                                ; preds = %if.then4.i950.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_40.i951.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i945.i.i, i32 3
  br label %cleanup.sink.split.i964.i.i

if.else.i954.i.i:                                 ; preds = %if.then4.i950.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_20.i953.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i945.i.i, i32 4
  br label %cleanup.sink.split.i964.i.i

if.else9.i955.i.i:                                ; preds = %if.end.i949.i.i
  br i1 %cmp.i.i, label %if.then11.i957.i.i, label %if.else13.i959.i.i

if.then11.i957.i.i:                               ; preds = %if.else9.i955.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_40.i956.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i945.i.i, i32 2
  br label %cleanup.sink.split.i964.i.i

if.else13.i959.i.i:                               ; preds = %if.else9.i955.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_20.i958.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i945.i.i, i32 1
  br label %cleanup.sink.split.i964.i.i

for.inc.i962.i.i:                                 ; preds = %for.body.i948.i.i
  %inc.i960.i.i = add nuw nsw i32 %i.023.i945.i.i, 1
  %exitcond.not.i961.i.i = icmp eq i32 %inc.i960.i.i, 331
  br i1 %exitcond.not.i961.i.i, label %for.inc.i962.i.i.carl9170_def_val.exit966.i.i_crit_edge, label %for.inc.i962.i.i.for.body.i948.i.i_crit_edge

for.inc.i962.i.i.for.body.i948.i.i_crit_edge:     ; preds = %for.inc.i962.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i948.i.i

for.inc.i962.i.i.carl9170_def_val.exit966.i.i_crit_edge: ; preds = %for.inc.i962.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_def_val.exit966.i.i

cleanup.sink.split.i964.i.i:                      ; preds = %if.else13.i959.i.i, %if.then11.i957.i.i, %if.else.i954.i.i, %if.then6.i952.i.i
  %_5ghz_20.sink.i963.i.i = phi ptr [ %_5ghz_20.i958.i.i, %if.else13.i959.i.i ], [ %_5ghz_40.i956.i.i, %if.then11.i957.i.i ], [ %_2ghz_20.i953.i.i, %if.else.i954.i.i ], [ %_2ghz_40.i951.i.i, %if.then6.i952.i.i ]
  %82 = ptrtoint ptr %_5ghz_20.sink.i963.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %_5ghz_20.sink.i963.i.i, align 4
  br label %carl9170_def_val.exit966.i.i

carl9170_def_val.exit966.i.i:                     ; preds = %cleanup.sink.split.i964.i.i, %for.inc.i962.i.i.carl9170_def_val.exit966.i.i_crit_edge
  %retval.0.i965.i.i = phi i32 [ %83, %cleanup.sink.split.i964.i.i ], [ 0, %for.inc.i962.i.i.carl9170_def_val.exit966.i.i_crit_edge ]
  %and226.i.i = and i32 %retval.0.i965.i.i, -520193
  %thresh62.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 12
  %84 = ptrtoint ptr %thresh62.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %thresh62.i.i, align 1
  %conv227.i.i = zext i8 %85 to i32
  %shl228.i.i = shl nuw nsw i32 %conv227.i.i, 12
  %or229.i.i = or i32 %shl228.i.i, %and226.i.i
  %mul231.i.i = shl nuw nsw i32 %__nreg.6.i.i, 1
  %add232.i.i = or i32 %mul231.i.i, 1
  %arrayidx233.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add232.i.i
  %86 = ptrtoint ptr %arrayidx233.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1686641664, ptr %arrayidx233.i.i, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %or229.i.i) #5
  %add235.i.i = or i32 %mul231.i.i, 2
  %arrayidx236.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add235.i.i
  %88 = ptrtoint ptr %arrayidx236.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx236.i.i, align 4
  %inc237.i.i = or i32 %__nreg.6.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc237.i.i)
  %cmp238.i.i = icmp eq i32 %inc237.i.i, 7
  br i1 %cmp238.i.i, label %if.then240.i.i, label %carl9170_def_val.exit966.i.i.if.end.i971.i.i_crit_edge

carl9170_def_val.exit966.i.i.if.end.i971.i.i_crit_edge: ; preds = %carl9170_def_val.exit966.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i971.i.i

if.then240.i.i:                                   ; preds = %carl9170_def_val.exit966.i.i
  %89 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp242.i.i = icmp ugt i32 %90, 1
  br i1 %cmp242.i.i, label %if.then244.i.i, label %if.then240.i.i.if.end55.i_crit_edge

if.then240.i.i.if.end55.i_crit_edge:              ; preds = %if.then240.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then244.i.i:                                   ; preds = %if.then240.i.i
  %call247.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247.i.i)
  %tobool250.not.i.i = icmp eq i32 %call247.i.i, 0
  br i1 %tobool250.not.i.i, label %if.then244.i.i.if.end.i971.i.i_crit_edge, label %if.then244.i.i.cleanup_crit_edge

if.then244.i.i.cleanup_crit_edge:                 ; preds = %if.then244.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then244.i.i.if.end.i971.i.i_crit_edge:         ; preds = %if.then244.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i971.i.i

if.end.i971.i.i:                                  ; preds = %if.then244.i.i.if.end.i971.i.i_crit_edge, %carl9170_def_val.exit966.i.i.if.end.i971.i.i_crit_edge
  %__nreg.7.i.i = phi i32 [ 0, %if.then244.i.i.if.end.i971.i.i_crit_edge ], [ %inc237.i.i, %carl9170_def_val.exit966.i.i.if.end.i971.i.i_crit_edge ]
  %spec.select1177.i.i = select i1 %cmp.i.i, ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 18, i32 3), ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 18, i32 4)
  %spec.select1178.i.i = select i1 %cmp.i.i, ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 18, i32 2), ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 18, i32 1)
  %_5ghz_20.sink.i985.i.i = select i1 %cmp.i230, ptr %spec.select1177.i.i, ptr %spec.select1178.i.i
  %91 = ptrtoint ptr %_5ghz_20.sink.i985.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %_5ghz_20.sink.i985.i.i, align 4
  %and259.i.i = and i32 %92, -258049
  %txRxAttenCh.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 4
  %93 = ptrtoint ptr %txRxAttenCh.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %txRxAttenCh.i.i, align 1
  %conv261.i.i = zext i8 %94 to i32
  %shl262.i.i = shl nuw nsw i32 %conv261.i.i, 12
  %and263.i.i = and i32 %shl262.i.i, 258048
  %or264.i.i = or i32 %and263.i.i, %and259.i.i
  %mul266.i.i = shl nsw i32 %__nreg.7.i.i, 1
  %add267.i.i = or i32 %mul266.i.i, 1
  %arrayidx268.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add267.i.i
  %95 = ptrtoint ptr %arrayidx268.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1213733888, ptr %arrayidx268.i.i, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %or264.i.i) #5
  %add270.i.i = add nsw i32 %mul266.i.i, 2
  %arrayidx271.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add270.i.i
  %97 = ptrtoint ptr %arrayidx271.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx271.i.i, align 4
  %inc272.i.i = add nsw i32 %__nreg.7.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %__nreg.7.i.i)
  %cmp273.i.i = icmp sgt i32 %__nreg.7.i.i, 5
  br i1 %cmp273.i.i, label %if.then275.i.i, label %if.end.i971.i.i.do.end290.i.i_crit_edge

if.end.i971.i.i.do.end290.i.i_crit_edge:          ; preds = %if.end.i971.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end290.i.i

if.then275.i.i:                                   ; preds = %if.end.i971.i.i
  %98 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp277.i.i = icmp ugt i32 %99, 1
  br i1 %cmp277.i.i, label %if.then279.i.i, label %if.then275.i.i.if.end55.i_crit_edge

if.then275.i.i.if.end55.i_crit_edge:              ; preds = %if.then275.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then279.i.i:                                   ; preds = %if.then275.i.i
  %call282.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282.i.i)
  %tobool285.not.i.i = icmp eq i32 %call282.i.i, 0
  br i1 %tobool285.not.i.i, label %if.then279.i.i.do.end290.i.i_crit_edge, label %if.then279.i.i.cleanup_crit_edge

if.then279.i.i.cleanup_crit_edge:                 ; preds = %if.then279.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then279.i.i.do.end290.i.i_crit_edge:           ; preds = %if.then279.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end290.i.i

do.end290.i.i:                                    ; preds = %if.then279.i.i.do.end290.i.i_crit_edge, %if.end.i971.i.i.do.end290.i.i_crit_edge
  %__nreg.8.i.i = phi i32 [ 0, %if.then279.i.i.do.end290.i.i_crit_edge ], [ %inc272.i.i, %if.end.i971.i.i.do.end290.i.i_crit_edge ]
  br label %for.body.i992.i.i

for.body.i992.i.i:                                ; preds = %for.inc.i1006.i.i.for.body.i992.i.i_crit_edge, %do.end290.i.i
  %i.023.i989.i.i = phi i32 [ 0, %do.end290.i.i ], [ %inc.i1004.i.i, %for.inc.i1006.i.i.for.body.i992.i.i_crit_edge ]
  %arrayidx.i990.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i989.i.i
  %100 = ptrtoint ptr %arrayidx.i990.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i990.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1865800, i32 %101)
  %cmp3.not.i991.i.i = icmp eq i32 %101, 1865800
  br i1 %cmp3.not.i991.i.i, label %if.end.i993.i.i, label %for.inc.i1006.i.i

if.end.i993.i.i:                                  ; preds = %for.body.i992.i.i
  br i1 %cmp.i230, label %if.then4.i994.i.i, label %if.else9.i999.i.i

if.then4.i994.i.i:                                ; preds = %if.end.i993.i.i
  br i1 %cmp.i.i, label %if.then6.i996.i.i, label %if.else.i998.i.i

if.then6.i996.i.i:                                ; preds = %if.then4.i994.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_40.i995.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i989.i.i, i32 3
  br label %cleanup.sink.split.i1008.i.i

if.else.i998.i.i:                                 ; preds = %if.then4.i994.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_20.i997.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i989.i.i, i32 4
  br label %cleanup.sink.split.i1008.i.i

if.else9.i999.i.i:                                ; preds = %if.end.i993.i.i
  br i1 %cmp.i.i, label %if.then11.i1001.i.i, label %if.else13.i1003.i.i

if.then11.i1001.i.i:                              ; preds = %if.else9.i999.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_40.i1000.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i989.i.i, i32 2
  br label %cleanup.sink.split.i1008.i.i

if.else13.i1003.i.i:                              ; preds = %if.else9.i999.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_20.i1002.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i989.i.i, i32 1
  br label %cleanup.sink.split.i1008.i.i

for.inc.i1006.i.i:                                ; preds = %for.body.i992.i.i
  %inc.i1004.i.i = add nuw nsw i32 %i.023.i989.i.i, 1
  %exitcond.not.i1005.i.i = icmp eq i32 %inc.i1004.i.i, 331
  br i1 %exitcond.not.i1005.i.i, label %for.inc.i1006.i.i.carl9170_def_val.exit1010.i.i_crit_edge, label %for.inc.i1006.i.i.for.body.i992.i.i_crit_edge

for.inc.i1006.i.i.for.body.i992.i.i_crit_edge:    ; preds = %for.inc.i1006.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i992.i.i

for.inc.i1006.i.i.carl9170_def_val.exit1010.i.i_crit_edge: ; preds = %for.inc.i1006.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_def_val.exit1010.i.i

cleanup.sink.split.i1008.i.i:                     ; preds = %if.else13.i1003.i.i, %if.then11.i1001.i.i, %if.else.i998.i.i, %if.then6.i996.i.i
  %_5ghz_20.sink.i1007.i.i = phi ptr [ %_5ghz_20.i1002.i.i, %if.else13.i1003.i.i ], [ %_5ghz_40.i1000.i.i, %if.then11.i1001.i.i ], [ %_2ghz_20.i997.i.i, %if.else.i998.i.i ], [ %_2ghz_40.i995.i.i, %if.then6.i996.i.i ]
  %102 = ptrtoint ptr %_5ghz_20.sink.i1007.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %_5ghz_20.sink.i1007.i.i, align 4
  br label %carl9170_def_val.exit1010.i.i

carl9170_def_val.exit1010.i.i:                    ; preds = %cleanup.sink.split.i1008.i.i, %for.inc.i1006.i.i.carl9170_def_val.exit1010.i.i_crit_edge
  %retval.0.i1009.i.i = phi i32 [ %103, %cleanup.sink.split.i1008.i.i ], [ 0, %for.inc.i1006.i.i.carl9170_def_val.exit1010.i.i_crit_edge ]
  %and294.i.i = and i32 %retval.0.i1009.i.i, -258049
  %arrayidx296.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 4, i32 1
  %104 = ptrtoint ptr %arrayidx296.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx296.i.i, align 1
  %conv297.i.i = zext i8 %105 to i32
  %shl298.i.i = shl nuw nsw i32 %conv297.i.i, 12
  %and299.i.i = and i32 %shl298.i.i, 258048
  %or300.i.i = or i32 %and299.i.i, %and294.i.i
  %mul302.i.i = shl nsw i32 %__nreg.8.i.i, 1
  %add303.i.i = or i32 %mul302.i.i, 1
  %arrayidx304.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add303.i.i
  %106 = ptrtoint ptr %arrayidx304.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1215831040, ptr %arrayidx304.i.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %or300.i.i) #5
  %add306.i.i = add i32 %mul302.i.i, 2
  %arrayidx307.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add306.i.i
  %108 = ptrtoint ptr %arrayidx307.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx307.i.i, align 4
  %inc308.i.i = add nsw i32 %__nreg.8.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %__nreg.8.i.i)
  %cmp309.i.i = icmp sgt i32 %__nreg.8.i.i, 5
  br i1 %cmp309.i.i, label %if.then311.i.i, label %carl9170_def_val.exit1010.i.i.do.end326.i.i_crit_edge

carl9170_def_val.exit1010.i.i.do.end326.i.i_crit_edge: ; preds = %carl9170_def_val.exit1010.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end326.i.i

if.then311.i.i:                                   ; preds = %carl9170_def_val.exit1010.i.i
  %109 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp313.i.i = icmp ugt i32 %110, 1
  br i1 %cmp313.i.i, label %if.then315.i.i, label %if.then311.i.i.if.end55.i_crit_edge

if.then311.i.i.if.end55.i_crit_edge:              ; preds = %if.then311.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then315.i.i:                                   ; preds = %if.then311.i.i
  %call318.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318.i.i)
  %tobool321.not.i.i = icmp eq i32 %call318.i.i, 0
  br i1 %tobool321.not.i.i, label %if.then315.i.i.do.end326.i.i_crit_edge, label %if.then315.i.i.cleanup_crit_edge

if.then315.i.i.cleanup_crit_edge:                 ; preds = %if.then315.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then315.i.i.do.end326.i.i_crit_edge:           ; preds = %if.then315.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end326.i.i

do.end326.i.i:                                    ; preds = %if.then315.i.i.do.end326.i.i_crit_edge, %carl9170_def_val.exit1010.i.i.do.end326.i.i_crit_edge
  %__nreg.9.i.i = phi i32 [ 0, %if.then315.i.i.do.end326.i.i_crit_edge ], [ %inc308.i.i, %carl9170_def_val.exit1010.i.i.do.end326.i.i_crit_edge ]
  br label %for.body.i1014.i.i

for.body.i1014.i.i:                               ; preds = %for.inc.i1028.i.i.for.body.i1014.i.i_crit_edge, %do.end326.i.i
  %i.023.i1011.i.i = phi i32 [ 0, %do.end326.i.i ], [ %inc.i1026.i.i, %for.inc.i1028.i.i.for.body.i1014.i.i_crit_edge ]
  %arrayidx.i1012.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1011.i.i
  %111 = ptrtoint ptr %arrayidx.i1012.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i1012.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1860108, i32 %112)
  %cmp3.not.i1013.i.i = icmp eq i32 %112, 1860108
  br i1 %cmp3.not.i1013.i.i, label %if.end.i1015.i.i, label %for.inc.i1028.i.i

if.end.i1015.i.i:                                 ; preds = %for.body.i1014.i.i
  br i1 %cmp.i230, label %if.then4.i1016.i.i, label %if.else9.i1021.i.i

if.then4.i1016.i.i:                               ; preds = %if.end.i1015.i.i
  br i1 %cmp.i.i, label %if.then6.i1018.i.i, label %if.else.i1020.i.i

if.then6.i1018.i.i:                               ; preds = %if.then4.i1016.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_40.i1017.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1011.i.i, i32 3
  br label %cleanup.sink.split.i1030.i.i

if.else.i1020.i.i:                                ; preds = %if.then4.i1016.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_20.i1019.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1011.i.i, i32 4
  br label %cleanup.sink.split.i1030.i.i

if.else9.i1021.i.i:                               ; preds = %if.end.i1015.i.i
  br i1 %cmp.i.i, label %if.then11.i1023.i.i, label %if.else13.i1025.i.i

if.then11.i1023.i.i:                              ; preds = %if.else9.i1021.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_40.i1022.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1011.i.i, i32 2
  br label %cleanup.sink.split.i1030.i.i

if.else13.i1025.i.i:                              ; preds = %if.else9.i1021.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_20.i1024.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1011.i.i, i32 1
  br label %cleanup.sink.split.i1030.i.i

for.inc.i1028.i.i:                                ; preds = %for.body.i1014.i.i
  %inc.i1026.i.i = add nuw nsw i32 %i.023.i1011.i.i, 1
  %exitcond.not.i1027.i.i = icmp eq i32 %inc.i1026.i.i, 331
  br i1 %exitcond.not.i1027.i.i, label %for.inc.i1028.i.i.carl9170_def_val.exit1032.i.i_crit_edge, label %for.inc.i1028.i.i.for.body.i1014.i.i_crit_edge

for.inc.i1028.i.i.for.body.i1014.i.i_crit_edge:   ; preds = %for.inc.i1028.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1014.i.i

for.inc.i1028.i.i.carl9170_def_val.exit1032.i.i_crit_edge: ; preds = %for.inc.i1028.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_def_val.exit1032.i.i

cleanup.sink.split.i1030.i.i:                     ; preds = %if.else13.i1025.i.i, %if.then11.i1023.i.i, %if.else.i1020.i.i, %if.then6.i1018.i.i
  %_5ghz_20.sink.i1029.i.i = phi ptr [ %_5ghz_20.i1024.i.i, %if.else13.i1025.i.i ], [ %_5ghz_40.i1022.i.i, %if.then11.i1023.i.i ], [ %_2ghz_20.i1019.i.i, %if.else.i1020.i.i ], [ %_2ghz_40.i1017.i.i, %if.then6.i1018.i.i ]
  %113 = ptrtoint ptr %_5ghz_20.sink.i1029.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %_5ghz_20.sink.i1029.i.i, align 4
  br label %carl9170_def_val.exit1032.i.i

carl9170_def_val.exit1032.i.i:                    ; preds = %cleanup.sink.split.i1030.i.i, %for.inc.i1028.i.i.carl9170_def_val.exit1032.i.i_crit_edge
  %retval.0.i1031.i.i = phi i32 [ %114, %cleanup.sink.split.i1030.i.i ], [ 0, %for.inc.i1028.i.i.carl9170_def_val.exit1032.i.i_crit_edge ]
  %and330.i.i = and i32 %retval.0.i1031.i.i, -16515073
  %rxTxMarginCh.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 5
  %115 = ptrtoint ptr %rxTxMarginCh.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %rxTxMarginCh.i.i, align 1
  %conv332.i.i = zext i8 %116 to i32
  %shl333.i.i = shl nuw nsw i32 %conv332.i.i, 18
  %and334.i.i = and i32 %shl333.i.i, 16515072
  %or335.i.i = or i32 %and334.i.i, %and330.i.i
  br i1 %cmp.i230, label %carl9170_def_val.exit1032.i.i.do.body345.i.i_crit_edge, label %if.then337.i.i

carl9170_def_val.exit1032.i.i.do.body345.i.i_crit_edge: ; preds = %carl9170_def_val.exit1032.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body345.i.i

if.then337.i.i:                                   ; preds = %carl9170_def_val.exit1032.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and338.i.i = and i32 %or335.i.i, -15361
  %bswMargin.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 28
  %117 = ptrtoint ptr %bswMargin.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bswMargin.i.i, align 1
  %conv340.i.i = zext i8 %118 to i32
  %shl341.i.i = shl nuw nsw i32 %conv340.i.i, 10
  %and342.i.i = and i32 %shl341.i.i, 15360
  %or343.i.i = or i32 %and342.i.i, %and338.i.i
  br label %do.body345.i.i

do.body345.i.i:                                   ; preds = %if.then337.i.i, %carl9170_def_val.exit1032.i.i.do.body345.i.i_crit_edge
  %val.0.i.i = phi i32 [ %or335.i.i, %carl9170_def_val.exit1032.i.i.do.body345.i.i_crit_edge ], [ %or343.i.i, %if.then337.i.i ]
  %mul346.i.i = shl i32 %__nreg.9.i.i, 1
  %add347.i.i = or i32 %mul346.i.i, 1
  %arrayidx348.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add347.i.i
  %119 = ptrtoint ptr %arrayidx348.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 207756288, ptr %arrayidx348.i.i, align 4
  %120 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #5
  %add350.i.i = add i32 %mul346.i.i, 2
  %arrayidx351.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add350.i.i
  %121 = ptrtoint ptr %arrayidx351.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx351.i.i, align 4
  %inc352.i.i = add i32 %__nreg.9.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc352.i.i)
  %cmp353.i.i = icmp sgt i32 %inc352.i.i, 6
  br i1 %cmp353.i.i, label %if.then355.i.i, label %do.body345.i.i.do.end370.i.i_crit_edge

do.body345.i.i.do.end370.i.i_crit_edge:           ; preds = %do.body345.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end370.i.i

if.then355.i.i:                                   ; preds = %do.body345.i.i
  %122 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %cmp357.i.i = icmp ugt i32 %123, 1
  br i1 %cmp357.i.i, label %if.then359.i.i, label %if.then355.i.i.if.end55.i_crit_edge

if.then355.i.i.if.end55.i_crit_edge:              ; preds = %if.then355.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then359.i.i:                                   ; preds = %if.then355.i.i
  %call362.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362.i.i)
  %tobool365.not.i.i = icmp eq i32 %call362.i.i, 0
  br i1 %tobool365.not.i.i, label %if.then359.i.i.do.end370.i.i_crit_edge, label %if.then359.i.i.cleanup_crit_edge

if.then359.i.i.cleanup_crit_edge:                 ; preds = %if.then359.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then359.i.i.do.end370.i.i_crit_edge:           ; preds = %if.then359.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end370.i.i

do.end370.i.i:                                    ; preds = %if.then359.i.i.do.end370.i.i_crit_edge, %do.body345.i.i.do.end370.i.i_crit_edge
  %__nreg.10.i.i = phi i32 [ 0, %if.then359.i.i.do.end370.i.i_crit_edge ], [ %inc352.i.i, %do.body345.i.i.do.end370.i.i_crit_edge ]
  br label %for.body.i1036.i.i

for.body.i1036.i.i:                               ; preds = %for.inc.i1050.i.i.for.body.i1036.i.i_crit_edge, %do.end370.i.i
  %i.023.i1033.i.i = phi i32 [ 0, %do.end370.i.i ], [ %inc.i1048.i.i, %for.inc.i1050.i.i.for.body.i1036.i.i_crit_edge ]
  %arrayidx.i1034.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1033.i.i
  %124 = ptrtoint ptr %arrayidx.i1034.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i1034.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1868300, i32 %125)
  %cmp3.not.i1035.i.i = icmp eq i32 %125, 1868300
  br i1 %cmp3.not.i1035.i.i, label %if.end.i1037.i.i, label %for.inc.i1050.i.i

if.end.i1037.i.i:                                 ; preds = %for.body.i1036.i.i
  br i1 %cmp.i230, label %if.then4.i1038.i.i, label %if.else9.i1043.i.i

if.then4.i1038.i.i:                               ; preds = %if.end.i1037.i.i
  br i1 %cmp.i.i, label %if.then6.i1040.i.i, label %if.else.i1042.i.i

if.then6.i1040.i.i:                               ; preds = %if.then4.i1038.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_40.i1039.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1033.i.i, i32 3
  br label %cleanup.sink.split.i1052.i.i

if.else.i1042.i.i:                                ; preds = %if.then4.i1038.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_20.i1041.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1033.i.i, i32 4
  br label %cleanup.sink.split.i1052.i.i

if.else9.i1043.i.i:                               ; preds = %if.end.i1037.i.i
  br i1 %cmp.i.i, label %if.then11.i1045.i.i, label %if.else13.i1047.i.i

if.then11.i1045.i.i:                              ; preds = %if.else9.i1043.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_40.i1044.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1033.i.i, i32 2
  br label %cleanup.sink.split.i1052.i.i

if.else13.i1047.i.i:                              ; preds = %if.else9.i1043.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_20.i1046.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1033.i.i, i32 1
  br label %cleanup.sink.split.i1052.i.i

for.inc.i1050.i.i:                                ; preds = %for.body.i1036.i.i
  %inc.i1048.i.i = add nuw nsw i32 %i.023.i1033.i.i, 1
  %exitcond.not.i1049.i.i = icmp eq i32 %inc.i1048.i.i, 331
  br i1 %exitcond.not.i1049.i.i, label %for.inc.i1050.i.i.carl9170_def_val.exit1054.i.i_crit_edge, label %for.inc.i1050.i.i.for.body.i1036.i.i_crit_edge

for.inc.i1050.i.i.for.body.i1036.i.i_crit_edge:   ; preds = %for.inc.i1050.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1036.i.i

for.inc.i1050.i.i.carl9170_def_val.exit1054.i.i_crit_edge: ; preds = %for.inc.i1050.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_def_val.exit1054.i.i

cleanup.sink.split.i1052.i.i:                     ; preds = %if.else13.i1047.i.i, %if.then11.i1045.i.i, %if.else.i1042.i.i, %if.then6.i1040.i.i
  %_5ghz_20.sink.i1051.i.i = phi ptr [ %_5ghz_20.i1046.i.i, %if.else13.i1047.i.i ], [ %_5ghz_40.i1044.i.i, %if.then11.i1045.i.i ], [ %_2ghz_20.i1041.i.i, %if.else.i1042.i.i ], [ %_2ghz_40.i1039.i.i, %if.then6.i1040.i.i ]
  %126 = ptrtoint ptr %_5ghz_20.sink.i1051.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %_5ghz_20.sink.i1051.i.i, align 4
  br label %carl9170_def_val.exit1054.i.i

carl9170_def_val.exit1054.i.i:                    ; preds = %cleanup.sink.split.i1052.i.i, %for.inc.i1050.i.i.carl9170_def_val.exit1054.i.i_crit_edge
  %retval.0.i1053.i.i = phi i32 [ %127, %cleanup.sink.split.i1052.i.i ], [ 0, %for.inc.i1050.i.i.carl9170_def_val.exit1054.i.i_crit_edge ]
  %and374.i.i = and i32 %retval.0.i1053.i.i, -16515073
  %arrayidx376.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 5, i32 1
  %128 = ptrtoint ptr %arrayidx376.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx376.i.i, align 1
  %conv377.i.i = zext i8 %129 to i32
  %shl378.i.i = shl nuw nsw i32 %conv377.i.i, 18
  %and379.i.i = and i32 %shl378.i.i, 16515072
  %or380.i.i = or i32 %and379.i.i, %and374.i.i
  %mul382.i.i = shl i32 %__nreg.10.i.i, 1
  %add383.i.i = or i32 %mul382.i.i, 1
  %arrayidx384.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add383.i.i
  %130 = ptrtoint ptr %arrayidx384.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 209853440, ptr %arrayidx384.i.i, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %or380.i.i) #5
  %add386.i.i = add i32 %mul382.i.i, 2
  %arrayidx387.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add386.i.i
  %132 = ptrtoint ptr %arrayidx387.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx387.i.i, align 4
  %inc388.i.i = add i32 %__nreg.10.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc388.i.i)
  %cmp389.i.i = icmp sgt i32 %inc388.i.i, 6
  br i1 %cmp389.i.i, label %if.then391.i.i, label %carl9170_def_val.exit1054.i.i.if.end.i1059.i.i_crit_edge

carl9170_def_val.exit1054.i.i.if.end.i1059.i.i_crit_edge: ; preds = %carl9170_def_val.exit1054.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1059.i.i

if.then391.i.i:                                   ; preds = %carl9170_def_val.exit1054.i.i
  %133 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp393.i.i = icmp ugt i32 %134, 1
  br i1 %cmp393.i.i, label %if.then395.i.i, label %if.then391.i.i.if.end55.i_crit_edge

if.then391.i.i.if.end55.i_crit_edge:              ; preds = %if.then391.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then395.i.i:                                   ; preds = %if.then391.i.i
  %call398.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398.i.i)
  %tobool401.not.i.i = icmp eq i32 %call398.i.i, 0
  br i1 %tobool401.not.i.i, label %if.then395.i.i.if.end.i1059.i.i_crit_edge, label %if.then395.i.i.cleanup_crit_edge

if.then395.i.i.cleanup_crit_edge:                 ; preds = %if.then395.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then395.i.i.if.end.i1059.i.i_crit_edge:        ; preds = %if.then395.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1059.i.i

if.end.i1059.i.i:                                 ; preds = %if.then395.i.i.if.end.i1059.i.i_crit_edge, %carl9170_def_val.exit1054.i.i.if.end.i1059.i.i_crit_edge
  %__nreg.11.i.i = phi i32 [ 0, %if.then395.i.i.if.end.i1059.i.i_crit_edge ], [ %inc388.i.i, %carl9170_def_val.exit1054.i.i.if.end.i1059.i.i_crit_edge ]
  %spec.select1179.i.i = select i1 %cmp.i.i, ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 35, i32 3), ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 35, i32 4)
  %spec.select1180.i.i = select i1 %cmp.i.i, ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 35, i32 2), ptr getelementptr inbounds ([331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 35, i32 1)
  %_5ghz_20.sink.i1073.i.i = select i1 %cmp.i230, ptr %spec.select1179.i.i, ptr %spec.select1180.i.i
  %135 = ptrtoint ptr %_5ghz_20.sink.i1073.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %_5ghz_20.sink.i1073.i.i, align 4
  %and410.i.i = and i32 %136, -2048
  %iqCalICh.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 16
  %137 = ptrtoint ptr %iqCalICh.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %iqCalICh.i.i, align 1
  %conv412.i.i = sext i8 %138 to i32
  %shl413.i.i = shl nsw i32 %conv412.i.i, 5
  %and414.i.i = and i32 %shl413.i.i, 2016
  %or415.i.i = or i32 %and414.i.i, %and410.i.i
  %iqCalQCh.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 17
  %139 = ptrtoint ptr %iqCalQCh.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %iqCalQCh.i.i, align 1
  %141 = and i8 %140, 31
  %and420.i.i = zext i8 %141 to i32
  %or421.i.i = or i32 %or415.i.i, %and420.i.i
  %mul423.i.i = shl i32 %__nreg.11.i.i, 1
  %add424.i.i = or i32 %mul423.i.i, 1
  %arrayidx425.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add424.i.i
  %142 = ptrtoint ptr %arrayidx425.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 542710784, ptr %arrayidx425.i.i, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %or421.i.i) #5
  %add427.i.i = add i32 %mul423.i.i, 2
  %arrayidx428.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add427.i.i
  %144 = ptrtoint ptr %arrayidx428.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx428.i.i, align 4
  %inc429.i.i = add nsw i32 %__nreg.11.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %__nreg.11.i.i)
  %cmp430.i.i = icmp sgt i32 %__nreg.11.i.i, 5
  br i1 %cmp430.i.i, label %if.then432.i.i, label %if.end.i1059.i.i.do.end447.i.i_crit_edge

if.end.i1059.i.i.do.end447.i.i_crit_edge:         ; preds = %if.end.i1059.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end447.i.i

if.then432.i.i:                                   ; preds = %if.end.i1059.i.i
  %145 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp434.i.i = icmp ugt i32 %146, 1
  br i1 %cmp434.i.i, label %if.then436.i.i, label %if.then432.i.i.if.end55.i_crit_edge

if.then432.i.i.if.end55.i_crit_edge:              ; preds = %if.then432.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then436.i.i:                                   ; preds = %if.then432.i.i
  %call439.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call439.i.i)
  %tobool442.not.i.i = icmp eq i32 %call439.i.i, 0
  br i1 %tobool442.not.i.i, label %if.then436.i.i.do.end447.i.i_crit_edge, label %if.then436.i.i.cleanup_crit_edge

if.then436.i.i.cleanup_crit_edge:                 ; preds = %if.then436.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then436.i.i.do.end447.i.i_crit_edge:           ; preds = %if.then436.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end447.i.i

do.end447.i.i:                                    ; preds = %if.then436.i.i.do.end447.i.i_crit_edge, %if.end.i1059.i.i.do.end447.i.i_crit_edge
  %__nreg.12.i.i = phi i32 [ 0, %if.then436.i.i.do.end447.i.i_crit_edge ], [ %inc429.i.i, %if.end.i1059.i.i.do.end447.i.i_crit_edge ]
  br label %for.body.i1080.i.i

for.body.i1080.i.i:                               ; preds = %for.inc.i1094.i.i.for.body.i1080.i.i_crit_edge, %do.end447.i.i
  %i.023.i1077.i.i = phi i32 [ 0, %do.end447.i.i ], [ %inc.i1092.i.i, %for.inc.i1094.i.i.for.body.i1080.i.i_crit_edge ]
  %arrayidx.i1078.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1077.i.i
  %147 = ptrtoint ptr %arrayidx.i1078.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i1078.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1866016, i32 %148)
  %cmp3.not.i1079.i.i = icmp eq i32 %148, 1866016
  br i1 %cmp3.not.i1079.i.i, label %if.end.i1081.i.i, label %for.inc.i1094.i.i

if.end.i1081.i.i:                                 ; preds = %for.body.i1080.i.i
  br i1 %cmp.i230, label %if.then4.i1082.i.i, label %if.else9.i1087.i.i

if.then4.i1082.i.i:                               ; preds = %if.end.i1081.i.i
  br i1 %cmp.i.i, label %if.then6.i1084.i.i, label %if.else.i1086.i.i

if.then6.i1084.i.i:                               ; preds = %if.then4.i1082.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_40.i1083.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1077.i.i, i32 3
  br label %cleanup.sink.split.i1096.i.i

if.else.i1086.i.i:                                ; preds = %if.then4.i1082.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_20.i1085.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1077.i.i, i32 4
  br label %cleanup.sink.split.i1096.i.i

if.else9.i1087.i.i:                               ; preds = %if.end.i1081.i.i
  br i1 %cmp.i.i, label %if.then11.i1089.i.i, label %if.else13.i1091.i.i

if.then11.i1089.i.i:                              ; preds = %if.else9.i1087.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_40.i1088.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1077.i.i, i32 2
  br label %cleanup.sink.split.i1096.i.i

if.else13.i1091.i.i:                              ; preds = %if.else9.i1087.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_20.i1090.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1077.i.i, i32 1
  br label %cleanup.sink.split.i1096.i.i

for.inc.i1094.i.i:                                ; preds = %for.body.i1080.i.i
  %inc.i1092.i.i = add nuw nsw i32 %i.023.i1077.i.i, 1
  %exitcond.not.i1093.i.i = icmp eq i32 %inc.i1092.i.i, 331
  br i1 %exitcond.not.i1093.i.i, label %for.inc.i1094.i.i.carl9170_def_val.exit1098.i.i_crit_edge, label %for.inc.i1094.i.i.for.body.i1080.i.i_crit_edge

for.inc.i1094.i.i.for.body.i1080.i.i_crit_edge:   ; preds = %for.inc.i1094.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1080.i.i

for.inc.i1094.i.i.carl9170_def_val.exit1098.i.i_crit_edge: ; preds = %for.inc.i1094.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_def_val.exit1098.i.i

cleanup.sink.split.i1096.i.i:                     ; preds = %if.else13.i1091.i.i, %if.then11.i1089.i.i, %if.else.i1086.i.i, %if.then6.i1084.i.i
  %_5ghz_20.sink.i1095.i.i = phi ptr [ %_5ghz_20.i1090.i.i, %if.else13.i1091.i.i ], [ %_5ghz_40.i1088.i.i, %if.then11.i1089.i.i ], [ %_2ghz_20.i1085.i.i, %if.else.i1086.i.i ], [ %_2ghz_40.i1083.i.i, %if.then6.i1084.i.i ]
  %149 = ptrtoint ptr %_5ghz_20.sink.i1095.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %_5ghz_20.sink.i1095.i.i, align 4
  %phi.bo.i.i = and i32 %150, -2048
  br label %carl9170_def_val.exit1098.i.i

carl9170_def_val.exit1098.i.i:                    ; preds = %cleanup.sink.split.i1096.i.i, %for.inc.i1094.i.i.carl9170_def_val.exit1098.i.i_crit_edge
  %retval.0.i1097.i.i = phi i32 [ %phi.bo.i.i, %cleanup.sink.split.i1096.i.i ], [ 0, %for.inc.i1094.i.i.carl9170_def_val.exit1098.i.i_crit_edge ]
  %arrayidx453.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 16, i32 1
  %151 = ptrtoint ptr %arrayidx453.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx453.i.i, align 1
  %conv454.i.i = sext i8 %152 to i32
  %shl455.i.i = shl nsw i32 %conv454.i.i, 5
  %and456.i.i = and i32 %shl455.i.i, 2016
  %or457.i.i = or i32 %and456.i.i, %retval.0.i1097.i.i
  %arrayidx460.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 17, i32 1
  %153 = ptrtoint ptr %arrayidx460.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx460.i.i, align 1
  %155 = and i8 %154, 31
  %and463.i.i = zext i8 %155 to i32
  %or464.i.i = or i32 %or457.i.i, %and463.i.i
  %mul466.i.i = shl i32 %__nreg.12.i.i, 1
  %add467.i.i = or i32 %mul466.i.i, 1
  %arrayidx468.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add467.i.i
  %156 = ptrtoint ptr %arrayidx468.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 544807936, ptr %arrayidx468.i.i, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %or464.i.i) #5
  %add470.i.i = add i32 %mul466.i.i, 2
  %arrayidx471.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add470.i.i
  %158 = ptrtoint ptr %arrayidx471.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx471.i.i, align 4
  %inc472.i.i = add i32 %__nreg.12.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc472.i.i)
  %cmp473.i.i = icmp sgt i32 %inc472.i.i, 6
  br i1 %cmp473.i.i, label %if.then475.i.i, label %carl9170_def_val.exit1098.i.i.do.end490.i.i_crit_edge

carl9170_def_val.exit1098.i.i.do.end490.i.i_crit_edge: ; preds = %carl9170_def_val.exit1098.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end490.i.i

if.then475.i.i:                                   ; preds = %carl9170_def_val.exit1098.i.i
  %159 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp477.i.i = icmp ugt i32 %160, 1
  br i1 %cmp477.i.i, label %if.then479.i.i, label %if.then475.i.i.if.end55.i_crit_edge

if.then475.i.i.if.end55.i_crit_edge:              ; preds = %if.then475.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then479.i.i:                                   ; preds = %if.then475.i.i
  %call482.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call482.i.i)
  %tobool485.not.i.i = icmp eq i32 %call482.i.i, 0
  br i1 %tobool485.not.i.i, label %if.then479.i.i.do.end490.i.i_crit_edge, label %if.then479.i.i.cleanup_crit_edge

if.then479.i.i.cleanup_crit_edge:                 ; preds = %if.then479.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then479.i.i.do.end490.i.i_crit_edge:           ; preds = %if.then479.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end490.i.i

do.end490.i.i:                                    ; preds = %if.then479.i.i.do.end490.i.i_crit_edge, %carl9170_def_val.exit1098.i.i.do.end490.i.i_crit_edge
  %__nreg.13.i.i = phi i32 [ 0, %if.then479.i.i.do.end490.i.i_crit_edge ], [ %inc472.i.i, %carl9170_def_val.exit1098.i.i.do.end490.i.i_crit_edge ]
  br label %for.body.i1102.i.i

for.body.i1102.i.i:                               ; preds = %for.inc.i1116.i.i.for.body.i1102.i.i_crit_edge, %do.end490.i.i
  %i.023.i1099.i.i = phi i32 [ 0, %do.end490.i.i ], [ %inc.i1114.i.i, %for.inc.i1116.i.i.for.body.i1102.i.i_crit_edge ]
  %arrayidx.i1100.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1099.i.i
  %161 = ptrtoint ptr %arrayidx.i1100.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i1100.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1860184, i32 %162)
  %cmp3.not.i1101.i.i = icmp eq i32 %162, 1860184
  br i1 %cmp3.not.i1101.i.i, label %if.end.i1103.i.i, label %for.inc.i1116.i.i

if.end.i1103.i.i:                                 ; preds = %for.body.i1102.i.i
  br i1 %cmp.i230, label %if.then4.i1104.i.i, label %if.else9.i1109.i.i

if.then4.i1104.i.i:                               ; preds = %if.end.i1103.i.i
  br i1 %cmp.i.i, label %if.then6.i1106.i.i, label %if.else.i1108.i.i

if.then6.i1106.i.i:                               ; preds = %if.then4.i1104.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_40.i1105.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1099.i.i, i32 3
  br label %cleanup.sink.split.i1118.i.i

if.else.i1108.i.i:                                ; preds = %if.then4.i1104.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_2ghz_20.i1107.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1099.i.i, i32 4
  br label %cleanup.sink.split.i1118.i.i

if.else9.i1109.i.i:                               ; preds = %if.end.i1103.i.i
  br i1 %cmp.i.i, label %if.then11.i1111.i.i, label %if.else13.i1113.i.i

if.then11.i1111.i.i:                              ; preds = %if.else9.i1109.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_40.i1110.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1099.i.i, i32 2
  br label %cleanup.sink.split.i1118.i.i

if.else13.i1113.i.i:                              ; preds = %if.else9.i1109.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %_5ghz_20.i1112.i.i = getelementptr [331 x %struct.carl9170_phy_init], ptr @ar5416_phy_init, i32 0, i32 %i.023.i1099.i.i, i32 1
  br label %cleanup.sink.split.i1118.i.i

for.inc.i1116.i.i:                                ; preds = %for.body.i1102.i.i
  %inc.i1114.i.i = add nuw nsw i32 %i.023.i1099.i.i, 1
  %exitcond.not.i1115.i.i = icmp eq i32 %inc.i1114.i.i, 331
  br i1 %exitcond.not.i1115.i.i, label %for.inc.i1116.i.i.carl9170_def_val.exit1120.i.i_crit_edge, label %for.inc.i1116.i.i.for.body.i1102.i.i_crit_edge

for.inc.i1116.i.i.for.body.i1102.i.i_crit_edge:   ; preds = %for.inc.i1116.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1102.i.i

for.inc.i1116.i.i.carl9170_def_val.exit1120.i.i_crit_edge: ; preds = %for.inc.i1116.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_def_val.exit1120.i.i

cleanup.sink.split.i1118.i.i:                     ; preds = %if.else13.i1113.i.i, %if.then11.i1111.i.i, %if.else.i1108.i.i, %if.then6.i1106.i.i
  %_5ghz_20.sink.i1117.i.i = phi ptr [ %_5ghz_20.i1112.i.i, %if.else13.i1113.i.i ], [ %_5ghz_40.i1110.i.i, %if.then11.i1111.i.i ], [ %_2ghz_20.i1107.i.i, %if.else.i1108.i.i ], [ %_2ghz_40.i1105.i.i, %if.then6.i1106.i.i ]
  %163 = ptrtoint ptr %_5ghz_20.sink.i1117.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %_5ghz_20.sink.i1117.i.i, align 4
  %phi.bo1136.i.i = and i32 %164, -983041
  br label %carl9170_def_val.exit1120.i.i

carl9170_def_val.exit1120.i.i:                    ; preds = %cleanup.sink.split.i1118.i.i, %for.inc.i1116.i.i.carl9170_def_val.exit1120.i.i_crit_edge
  %retval.0.i1119.i.i = phi i32 [ %phi.bo1136.i.i, %cleanup.sink.split.i1118.i.i ], [ 0, %for.inc.i1116.i.i.carl9170_def_val.exit1120.i.i_crit_edge ]
  %xpdGain.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 16, i32 %idxprom.i.i, i32 14
  %165 = ptrtoint ptr %xpdGain.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %xpdGain.i.i, align 1
  %167 = and i8 %166, 15
  %and496.i.i = zext i8 %167 to i32
  %arrayidx497.i.i = getelementptr [16 x i8], ptr @carl9170_init_phy_from_eeprom.xpd2pd, i32 0, i32 %and496.i.i
  %168 = ptrtoint ptr %arrayidx497.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx497.i.i, align 1
  %conv498.i.i = zext i8 %169 to i32
  %and499.i.i = shl nuw nsw i32 %conv498.i.i, 16
  %shl500.i.i = and i32 %and499.i.i, 196608
  %or502.i.i = or i32 %shl500.i.i, %retval.0.i1119.i.i
  %and510.i.i = and i32 %and499.i.i, 786432
  %or511.i.i = or i32 %or502.i.i, %and510.i.i
  %mul513.i.i = shl i32 %__nreg.13.i.i, 1
  %add514.i.i = or i32 %mul513.i.i, 1
  %arrayidx515.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add514.i.i
  %170 = ptrtoint ptr %arrayidx515.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1482824704, ptr %arrayidx515.i.i, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %or511.i.i) #5
  %add517.i.i = add i32 %mul513.i.i, 2
  %arrayidx518.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add517.i.i
  %172 = ptrtoint ptr %arrayidx518.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx518.i.i, align 4
  %inc519.i.i = add i32 %__nreg.13.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc519.i.i)
  %cmp520.i.i = icmp sgt i32 %inc519.i.i, 6
  br i1 %cmp520.i.i, label %if.then522.i.i, label %carl9170_def_val.exit1120.i.i.do.body538.i.i_crit_edge

carl9170_def_val.exit1120.i.i.do.body538.i.i_crit_edge: ; preds = %carl9170_def_val.exit1120.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body538.i.i

if.then522.i.i:                                   ; preds = %carl9170_def_val.exit1120.i.i
  %173 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp524.i.i = icmp ugt i32 %174, 1
  br i1 %cmp524.i.i, label %if.then526.i.i, label %if.then522.i.i.if.end55.i_crit_edge

if.then522.i.i.if.end55.i_crit_edge:              ; preds = %if.then522.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then526.i.i:                                   ; preds = %if.then522.i.i
  %call529.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call529.i.i)
  %tobool532.not.i.i = icmp eq i32 %call529.i.i, 0
  br i1 %tobool532.not.i.i, label %if.then526.i.i.do.body538.i.i_crit_edge, label %if.then526.i.i.cleanup_crit_edge

if.then526.i.i.cleanup_crit_edge:                 ; preds = %if.then526.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then526.i.i.do.body538.i.i_crit_edge:          ; preds = %if.then526.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body538.i.i

do.body538.i.i:                                   ; preds = %if.then526.i.i.do.body538.i.i_crit_edge, %carl9170_def_val.exit1120.i.i.do.body538.i.i_crit_edge
  %__nreg.14.i.i = phi i32 [ 0, %if.then526.i.i.do.body538.i.i_crit_edge ], [ %inc519.i.i, %carl9170_def_val.exit1120.i.i.do.body538.i.i_crit_edge ]
  %mul539.i.i = shl i32 %__nreg.14.i.i, 1
  %add540.i.i = or i32 %mul539.i.i, 1
  %arrayidx541.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add540.i.i
  %175 = ptrtoint ptr %arrayidx541.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -1537664000, ptr %arrayidx541.i.i, align 4
  %rx_mask.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 7
  %176 = ptrtoint ptr %rx_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %rx_mask.i.i, align 2
  %conv543.i.i = zext i8 %177 to i32
  %178 = shl nuw i32 %conv543.i.i, 24
  %add545.i.i = add i32 %mul539.i.i, 2
  %arrayidx546.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add545.i.i
  %179 = ptrtoint ptr %arrayidx546.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %arrayidx546.i.i, align 4
  %inc547.i.i = add nsw i32 %__nreg.14.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %__nreg.14.i.i)
  %cmp548.i.i = icmp sgt i32 %__nreg.14.i.i, 5
  br i1 %cmp548.i.i, label %if.then550.i.i, label %do.body538.i.i.do.body566.i.i_crit_edge

do.body538.i.i.do.body566.i.i_crit_edge:          ; preds = %do.body538.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body566.i.i

if.then550.i.i:                                   ; preds = %do.body538.i.i
  %180 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp552.i.i = icmp ugt i32 %181, 1
  br i1 %cmp552.i.i, label %if.then554.i.i, label %if.then550.i.i.if.end55.i_crit_edge

if.then550.i.i.if.end55.i_crit_edge:              ; preds = %if.then550.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then554.i.i:                                   ; preds = %if.then550.i.i
  %call557.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557.i.i)
  %tobool560.not.i.i = icmp eq i32 %call557.i.i, 0
  br i1 %tobool560.not.i.i, label %if.then554.i.i.do.body566.i.i_crit_edge, label %if.then554.i.i.cleanup_crit_edge

if.then554.i.i.cleanup_crit_edge:                 ; preds = %if.then554.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then554.i.i.do.body566.i.i_crit_edge:          ; preds = %if.then554.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body566.i.i

do.body566.i.i:                                   ; preds = %if.then554.i.i.do.body566.i.i_crit_edge, %do.body538.i.i.do.body566.i.i_crit_edge
  %__nreg.15.i.i = phi i32 [ 0, %if.then554.i.i.do.body566.i.i_crit_edge ], [ %inc547.i.i, %do.body538.i.i.do.body566.i.i_crit_edge ]
  %mul567.i.i = shl i32 %__nreg.15.i.i, 1
  %add568.i.i = or i32 %mul567.i.i, 1
  %arrayidx569.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add568.i.i
  %182 = ptrtoint ptr %arrayidx569.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 -1671226368, ptr %arrayidx569.i.i, align 4
  %183 = ptrtoint ptr %rx_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %rx_mask.i.i, align 2
  %conv572.i.i = zext i8 %184 to i32
  %185 = shl nuw i32 %conv572.i.i, 24
  %add574.i.i = add i32 %mul567.i.i, 2
  %arrayidx575.i.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add574.i.i
  %186 = ptrtoint ptr %arrayidx575.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %arrayidx575.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %__nreg.15.i.i)
  %cmp577.i.i = icmp sgt i32 %__nreg.15.i.i, 5
  br i1 %cmp577.i.i, label %if.then579.i.i, label %land.lhs.true.i.i

if.then579.i.i:                                   ; preds = %do.body566.i.i
  %187 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %188)
  %cmp581.i.i = icmp ugt i32 %188, 1
  br i1 %cmp581.i.i, label %if.then579.i.i.carl9170_init_phy_from_eeprom.exit.i_crit_edge, label %if.then579.i.i.if.end55.i_crit_edge

if.then579.i.i.if.end55.i_crit_edge:              ; preds = %if.then579.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then579.i.i.carl9170_init_phy_from_eeprom.exit.i_crit_edge: ; preds = %if.then579.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_init_phy_from_eeprom.exit.i

land.lhs.true.i.i:                                ; preds = %do.body566.i.i
  %inc576.i.i = add nsw i32 %__nreg.15.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc576.i.i)
  %tobool597.not.i.i = icmp eq i32 %inc576.i.i, 0
  br i1 %tobool597.not.i.i, label %land.lhs.true.i.i.if.end55.i_crit_edge, label %if.then598.i.i

land.lhs.true.i.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then598.i.i:                                   ; preds = %land.lhs.true.i.i
  %189 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %.pr158.i = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr158.i)
  %cmp600.i.i = icmp ugt i32 %.pr158.i, 1
  br i1 %cmp600.i.i, label %if.then602.i.i, label %if.then598.i.i.if.end55.i_crit_edge

if.then598.i.i.if.end55.i_crit_edge:              ; preds = %if.then598.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then602.i.i:                                   ; preds = %if.then598.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul603.i.i = shl i32 %inc576.i.i, 3
  br label %carl9170_init_phy_from_eeprom.exit.i

carl9170_init_phy_from_eeprom.exit.i:             ; preds = %if.then602.i.i, %if.then579.i.i.carl9170_init_phy_from_eeprom.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %mul603.i.i, %if.then602.i.i ], [ 56, %if.then579.i.i.carl9170_init_phy_from_eeprom.exit.i_crit_edge ]
  %call586.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef %.sink.i.i, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call586.i.i)
  %tobool53.not.i = icmp eq i32 %call586.i.i, 0
  br i1 %tobool53.not.i, label %carl9170_init_phy_from_eeprom.exit.i.if.end55.i_crit_edge, label %carl9170_init_phy_from_eeprom.exit.i.cleanup_crit_edge

carl9170_init_phy_from_eeprom.exit.i.cleanup_crit_edge: ; preds = %carl9170_init_phy_from_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

carl9170_init_phy_from_eeprom.exit.i.if.end55.i_crit_edge: ; preds = %carl9170_init_phy_from_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.end55.i:                                       ; preds = %carl9170_init_phy_from_eeprom.exit.i.if.end55.i_crit_edge, %if.then598.i.i.if.end55.i_crit_edge, %land.lhs.true.i.i.if.end55.i_crit_edge, %if.then579.i.i.if.end55.i_crit_edge, %if.then550.i.i.if.end55.i_crit_edge, %if.then522.i.i.if.end55.i_crit_edge, %if.then475.i.i.if.end55.i_crit_edge, %if.then432.i.i.if.end55.i_crit_edge, %if.then391.i.i.if.end55.i_crit_edge, %if.then355.i.i.if.end55.i_crit_edge, %if.then311.i.i.if.end55.i_crit_edge, %if.then275.i.i.if.end55.i_crit_edge, %if.then240.i.i.if.end55.i_crit_edge, %if.then207.i.i.if.end55.i_crit_edge
  %190 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1012472832, ptr %arrayidx25.i, align 4
  %191 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 2130706432, ptr %arrayidx6.i.i, align 4
  %192 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 878255104, ptr %arrayidx18.i.i, align 4
  %193 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 1061109567, ptr %arrayidx22.i.i, align 4
  %194 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 945363968, ptr %arrayidx43.i.i, align 4
  %195 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 1061109567, ptr %arrayidx48.i.i, align 4
  %arrayidx63.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 7
  %196 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 878844928, ptr %arrayidx63.i.i, align 4
  %arrayidx66.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 8
  %197 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1061109567, ptr %arrayidx66.i.i, align 4
  %arrayidx87.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 9
  %198 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 945953792, ptr %arrayidx87.i.i, align 4
  %arrayidx90.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 10
  %199 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 1061109567, ptr %arrayidx90.i.i, align 4
  %arrayidx111.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 11
  %200 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1939661824, ptr %arrayidx111.i.i, align 4
  %arrayidx114.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 12
  %201 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 1061109567, ptr %arrayidx114.i.i, align 4
  %arrayidx135.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 13
  %202 = ptrtoint ptr %arrayidx135.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 -1872552960, ptr %arrayidx135.i.i, align 4
  %arrayidx138.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 14
  %203 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 1061109567, ptr %arrayidx138.i.i, align 4
  %204 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %205)
  %cmp143.i.i = icmp ugt i32 %205, 1
  br i1 %cmp143.i.i, label %if.then144.i.i, label %if.end55.i.if.end59.i_crit_edge

if.end55.i.if.end59.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

if.then144.i.i:                                   ; preds = %if.end55.i
  %call147.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i.i)
  %tobool150.not.i.i = icmp eq i32 %call147.i.i, 0
  br i1 %tobool150.not.i.i, label %if.then230.i.i, label %if.then144.i.i.cleanup_crit_edge

if.then144.i.i.cleanup_crit_edge:                 ; preds = %if.then144.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then230.i.i:                                   ; preds = %if.then144.i.i
  %206 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 -865920000, ptr %arrayidx25.i, align 4
  %207 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 1061109567, ptr %arrayidx6.i.i, align 4
  %208 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -798811136, ptr %arrayidx18.i.i, align 4
  %209 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 1061109567, ptr %arrayidx22.i.i, align 4
  %210 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 -731702272, ptr %arrayidx43.i.i, align 4
  %211 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 1061109567, ptr %arrayidx48.i.i, align 4
  %212 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pr.i.i = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i)
  %cmp232.i.i = icmp ugt i32 %.pr.i.i, 1
  br i1 %cmp232.i.i, label %carl9170_init_power_cal.exit.i, label %if.then230.i.i.if.end59.i_crit_edge

if.then230.i.i.if.end59.i_crit_edge:              ; preds = %if.then230.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

carl9170_init_power_cal.exit.i:                   ; preds = %if.then230.i.i
  %call236.i.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 24, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236.i.i)
  %tobool57.not.i = icmp eq i32 %call236.i.i, 0
  br i1 %tobool57.not.i, label %carl9170_init_power_cal.exit.i.if.end59.i_crit_edge, label %carl9170_init_power_cal.exit.i.cleanup_crit_edge

carl9170_init_power_cal.exit.i.cleanup_crit_edge: ; preds = %carl9170_init_power_cal.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

carl9170_init_power_cal.exit.i.if.end59.i_crit_edge: ; preds = %carl9170_init_power_cal.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

if.end59.i:                                       ; preds = %carl9170_init_power_cal.exit.i.if.end59.i_crit_edge, %if.then230.i.i.if.end59.i_crit_edge, %if.end55.i.if.end59.i_crit_edge
  %hw_counters.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 14
  %213 = ptrtoint ptr %hw_counters.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %hw_counters.i, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool60.not.i = icmp eq i8 %214, 0
  br i1 %tobool60.not.i, label %carl9170_init_phy.exit, label %if.end59.i.if.end24_crit_edge

if.end59.i.if.end24_crit_edge:                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

carl9170_init_phy.exit:                           ; preds = %if.end59.i
  %cond.i = select i1 %cmp.i230, i32 20835, i32 20803
  %call63.i = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1916948, i32 noundef %cond.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool22.not = icmp eq i32 %call63.i, 0
  br i1 %tobool22.not, label %carl9170_init_phy.exit.if.end24_crit_edge, label %carl9170_init_phy.exit.cleanup_crit_edge

carl9170_init_phy.exit.cleanup_crit_edge:         ; preds = %carl9170_init_phy.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

carl9170_init_phy.exit.if.end24_crit_edge:        ; preds = %carl9170_init_phy.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %carl9170_init_phy.exit.if.end24_crit_edge, %if.end59.i.if.end24_crit_edge
  %215 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %216)
  %cmp = icmp eq i32 %216, 1
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i.backedge, %if.end24
  %__nreg.076.i = phi i32 [ 0, %if.end24 ], [ %__nreg.076.i.be, %do.body1.i.backedge ]
  %i.075.i = phi i32 [ 0, %if.end24 ], [ %i.075.i.be, %do.body1.i.backedge ]
  %arrayidx.i = getelementptr [68 x %struct.carl9170_rf_initvals], ptr @carl9170_rf_initval, i32 0, i32 %i.075.i
  %217 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx.i, align 4
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #5
  %mul.i233 = shl i32 %__nreg.076.i, 1
  %add.i234 = or i32 %mul.i233, 1
  %arrayidx2.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add.i234
  %220 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %arrayidx2.i, align 4
  %_5ghz.i = getelementptr [68 x %struct.carl9170_rf_initvals], ptr @carl9170_rf_initval, i32 0, i32 %i.075.i, i32 1
  %_2ghz.i = getelementptr [68 x %struct.carl9170_rf_initvals], ptr @carl9170_rf_initval, i32 0, i32 %i.075.i, i32 2
  %cond.in.i = select i1 %cmp, ptr %_5ghz.i, ptr %_2ghz.i
  %221 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %cond.i235 = load i32, ptr %cond.in.i, align 4
  %222 = tail call i32 @llvm.bswap.i32(i32 %cond.i235) #5
  %add6.i = add i32 %mul.i233, 2
  %arrayidx7.i = getelementptr [16 x i32], ptr %26, i32 0, i32 %add6.i
  %223 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %arrayidx7.i, align 4
  %inc.i236 = add i32 %__nreg.076.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.i236)
  %cmp8.i = icmp sgt i32 %inc.i236, 6
  br i1 %cmp8.i, label %if.then.i237, label %for.inc.i239

if.then.i237:                                     ; preds = %do.body1.i
  %224 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %225)
  %cmp9.i = icmp ugt i32 %225, 1
  br i1 %cmp9.i, label %if.then10.i, label %if.then.i237.if.end29_crit_edge

if.then.i237.if.end29_crit_edge:                  ; preds = %if.then.i237
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then10.i:                                      ; preds = %if.then.i237
  %mul11.i = shl i32 %inc.i236, 3
  %call.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef %mul11.i, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %for.inc.thread.i240, label %if.then10.i.carl9170_init_rf_banks_0_7.exit_crit_edge

if.then10.i.carl9170_init_rf_banks_0_7.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_init_rf_banks_0_7.exit

for.inc.i239:                                     ; preds = %do.body1.i
  %inc17.i = add nuw nsw i32 %i.075.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %inc17.i)
  %exitcond.not.i238 = icmp eq i32 %inc17.i, 68
  br i1 %exitcond.not.i238, label %land.lhs.true.i241, label %for.inc.i239.do.body1.i.backedge_crit_edge

for.inc.i239.do.body1.i.backedge_crit_edge:       ; preds = %for.inc.i239
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1.i.backedge

for.inc.thread.i240:                              ; preds = %if.then10.i
  %inc1780.i = add nuw nsw i32 %i.075.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %inc1780.i)
  %exitcond.not81.i = icmp eq i32 %inc1780.i, 68
  br i1 %exitcond.not81.i, label %for.inc.thread.i240.if.end29_crit_edge, label %for.inc.thread.i240.do.body1.i.backedge_crit_edge

for.inc.thread.i240.do.body1.i.backedge_crit_edge: ; preds = %for.inc.thread.i240
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1.i.backedge

for.inc.thread.i240.if.end29_crit_edge:           ; preds = %for.inc.thread.i240
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.body1.i.backedge:                              ; preds = %for.inc.thread.i240.do.body1.i.backedge_crit_edge, %for.inc.i239.do.body1.i.backedge_crit_edge
  %__nreg.076.i.be = phi i32 [ %inc.i236, %for.inc.i239.do.body1.i.backedge_crit_edge ], [ 0, %for.inc.thread.i240.do.body1.i.backedge_crit_edge ]
  %i.075.i.be = phi i32 [ %inc17.i, %for.inc.i239.do.body1.i.backedge_crit_edge ], [ %inc1780.i, %for.inc.thread.i240.do.body1.i.backedge_crit_edge ]
  br label %do.body1.i

land.lhs.true.i241:                               ; preds = %for.inc.i239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i236)
  %tobool19.not.i = icmp eq i32 %inc.i236, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i241.if.end29_crit_edge, label %if.then20.i

land.lhs.true.i241.if.end29_crit_edge:            ; preds = %land.lhs.true.i241
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then20.i:                                      ; preds = %land.lhs.true.i241
  %226 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %.pr.i242 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i242)
  %cmp22.i243 = icmp ugt i32 %.pr.i242, 1
  br i1 %cmp22.i243, label %if.end28.i, label %if.then20.i.if.end29_crit_edge

if.then20.i.if.end29_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end28.i:                                       ; preds = %if.then20.i
  %mul24.i244 = shl i32 %inc.i236, 3
  %call26.i245 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef %mul24.i244, ptr noundef %arrayidx25.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i245)
  %tobool31.not.i = icmp eq i32 %call26.i245, 0
  br i1 %tobool31.not.i, label %if.end28.i.if.end29_crit_edge, label %if.end28.i.carl9170_init_rf_banks_0_7.exit_crit_edge

if.end28.i.carl9170_init_rf_banks_0_7.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_init_rf_banks_0_7.exit

if.end28.i.if.end29_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

carl9170_init_rf_banks_0_7.exit:                  ; preds = %if.end28.i.carl9170_init_rf_banks_0_7.exit_crit_edge, %if.then10.i.carl9170_init_rf_banks_0_7.exit_crit_edge
  %__err.471.i = phi i32 [ %call26.i245, %if.end28.i.carl9170_init_rf_banks_0_7.exit_crit_edge ], [ %call.i, %if.then10.i.carl9170_init_rf_banks_0_7.exit_crit_edge ]
  %227 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %230, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end28.i.if.end29_crit_edge, %if.then20.i.if.end29_crit_edge, %land.lhs.true.i241.if.end29_crit_edge, %for.inc.thread.i240.if.end29_crit_edge, %if.then.i237.if.end29_crit_edge
  %call30 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 35, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %call34 = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1858016, i32 noundef 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %231 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %232)
  %cmp39 = icmp eq i32 %232, 1
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %233 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %center_freq, align 4
  %call40 = tail call fastcc i32 @carl9170_init_rf_bank4_pwr(ptr noundef %ar, i1 noundef zeroext %cmp39, i32 noundef %234, i32 noundef %switch.load)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %switch.lookup296, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup296:                                 ; preds = %if.end37
  %switch.gep297 = getelementptr inbounds [3 x i32], ptr @switch.table.carl9170_set_channel.10, i32 0, i32 %switch.load
  %235 = ptrtoint ptr %switch.gep297 to i32
  call void @__asan_load4_noabort(i32 %235)
  %switch.load298 = load i32, ptr %switch.gep297, align 4
  %tx_mask = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 8
  %236 = ptrtoint ptr %tx_mask to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %tx_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %237)
  %cmp50.not = icmp eq i8 %237, 1
  %or53 = or i32 %switch.load298, 256
  %spec.select228 = select i1 %cmp50.not, i32 %switch.load298, i32 %or53
  %call55 = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1857540, i32 noundef %spec.select228) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %switch.lookup296.cleanup_crit_edge

switch.lookup296.cleanup_crit_edge:               ; preds = %switch.lookup296
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end58:                                         ; preds = %switch.lookup296
  %call59 = tail call fastcc i32 @carl9170_set_freq_cal_data(ptr noundef %ar, ptr noundef %channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %238 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %center_freq, align 4
  tail call fastcc void @carl9170_set_power_cal(ptr noundef %ar, i32 noundef %239, i32 noundef %switch.load)
  %call64 = tail call i32 @carl9170_set_mac_tpc(ptr noundef %ar, ptr noundef %channel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %call68 = tail call fastcc ptr @carl9170_get_hw_dyn_params(ptr noundef %channel, i32 noundef %switch.load)
  %conv69 = trunc i32 %new_ht.1 to i8
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv69, ptr %1, align 4
  %241 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %center_freq, align 4
  %mul = mul i32 %242, 1000
  %243 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %244 = ptrtoint ptr %rf to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %rf, align 4
  %245 = ptrtoint ptr %call68 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %call68, align 2
  %conv82 = zext i8 %246 to i32
  %247 = shl nuw i32 %conv82, 24
  %248 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %2, align 4
  %coeff_man = getelementptr inbounds %struct.carl9170_phy_freq_params, ptr %call68, i32 0, i32 1
  %249 = ptrtoint ptr %coeff_man to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %coeff_man, align 2
  %conv83 = zext i16 %250 to i32
  %251 = tail call i32 @llvm.bswap.i32(i32 %conv83)
  %252 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %3, align 4
  %coeff_exp_shgi = getelementptr inbounds %struct.carl9170_phy_freq_params, ptr %call68, i32 0, i32 2
  %253 = ptrtoint ptr %coeff_exp_shgi to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %coeff_exp_shgi, align 2
  %conv84 = zext i8 %254 to i32
  %255 = shl nuw i32 %conv84, 24
  %256 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %4, align 4
  %coeff_man_shgi = getelementptr inbounds %struct.carl9170_phy_freq_params, ptr %call68, i32 0, i32 3
  %257 = ptrtoint ptr %coeff_man_shgi to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %coeff_man_shgi, align 2
  %conv85 = zext i16 %258 to i32
  %259 = tail call i32 @llvm.bswap.i32(i32 %conv85)
  %260 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %5, align 4
  %261 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 -804847616, ptr %6, align 4
  %call86 = call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 33, i32 noundef 28, ptr noundef nonnull %rf, i32 noundef 4, ptr noundef nonnull %rf_res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end89:                                         ; preds = %if.end67
  %262 = ptrtoint ptr %rf_res to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %rf_res, align 4
  %264 = call i32 @llvm.bswap.i32(i32 %263)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp90.not = icmp eq i32 %263, 0
  %chan_fail110 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 58
  br i1 %cmp90.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.end89
  %265 = ptrtoint ptr %chan_fail110 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %chan_fail110, align 4
  %inc = add i32 %266, 1
  store i32 %inc, ptr %chan_fail110, align 4
  %total_chan_fail = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 59
  %267 = ptrtoint ptr %total_chan_fail to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %total_chan_fail, align 8
  %inc93 = add i32 %268, 1
  store i32 %inc93, ptr %total_chan_fail, align 8
  %269 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %272, i32 0, i32 56
  br i1 %tobool.not, label %if.then92.cond.end_crit_edge, label %cond.true

if.then92.cond.end_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  %center_freq99 = getelementptr inbounds %struct.ieee80211_channel, ptr %18, i32 0, i32 1
  %273 = ptrtoint ptr %center_freq99 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %center_freq99, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then92.cond.end_crit_edge
  %cond = phi i32 [ %274, %cond.true ], [ -1, %if.then92.cond.end_crit_edge ]
  %275 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %center_freq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %cond, i32 noundef %276, i32 noundef %264) #8
  %277 = ptrtoint ptr %chan_fail110 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %chan_fail110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %278)
  %cmp102 = icmp ugt i32 %278, 3
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @carl9170_restart(ptr noundef %ar, i32 noundef 7) #5
  br label %cleanup

if.end105:                                        ; preds = %cond.end
  %call106 = call i32 @carl9170_set_channel(ptr noundef %ar, ptr noundef %channel, i32 noundef %_bw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end105.if.end111_crit_edge, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.else:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %279 = ptrtoint ptr %chan_fail110 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 0, ptr %chan_fail110, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.end105.if.end111_crit_edge
  %heavy_clip = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 60
  %280 = ptrtoint ptr %heavy_clip to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %heavy_clip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool112.not = icmp eq i8 %281, 0
  br i1 %tobool112.not, label %if.end111.if.end131_crit_edge, label %if.then113

if.end111.if.end131_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then113:                                       ; preds = %if.end111
  %conv115 = zext i8 %281 to i32
  %or116 = or i32 %conv115, 512
  %call117 = call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1858016, i32 noundef %or116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then113.if.end131_crit_edge, label %if.then119

if.then113.if.end131_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then119:                                       ; preds = %if.then113
  %call120 = call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then119.cleanup_crit_edge, label %do.end125

if.then119.cleanup_crit_edge:                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end125:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  %282 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %hw, align 4
  %wiphy127 = getelementptr inbounds %struct.ieee80211_hw, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %wiphy127 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wiphy127, align 8
  %dev128 = getelementptr inbounds %struct.wiphy, ptr %285, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev128, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end131:                                        ; preds = %if.then113.if.end131_crit_edge, %if.end111.if.end131_crit_edge
  %286 = ptrtoint ptr %channel8 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %channel, ptr %channel8, align 4
  %ht_settings134 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 61
  %287 = ptrtoint ptr %ht_settings134 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %conv69, ptr %ht_settings134, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %do.end125, %if.then119.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.then104, %if.end67.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %switch.lookup296.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %carl9170_init_rf_banks_0_7.exit, %carl9170_init_phy.exit.cleanup_crit_edge, %carl9170_init_power_cal.exit.i.cleanup_crit_edge, %if.then144.i.i.cleanup_crit_edge, %carl9170_init_phy_from_eeprom.exit.i.cleanup_crit_edge, %if.then554.i.i.cleanup_crit_edge, %if.then526.i.i.cleanup_crit_edge, %if.then479.i.i.cleanup_crit_edge, %if.then436.i.i.cleanup_crit_edge, %if.then395.i.i.cleanup_crit_edge, %if.then359.i.i.cleanup_crit_edge, %if.then315.i.i.cleanup_crit_edge, %if.then279.i.i.cleanup_crit_edge, %if.then244.i.i.cleanup_crit_edge, %if.then211.i.i.cleanup_crit_edge, %if.end44.i.cleanup_crit_edge, %if.then23.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then104 ], [ 0, %if.end131 ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call63.i, %carl9170_init_phy.exit.cleanup_crit_edge ], [ %__err.471.i, %carl9170_init_rf_banks_0_7.exit ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ %call40, %if.end37.cleanup_crit_edge ], [ %call55, %switch.lookup296.cleanup_crit_edge ], [ %call59, %if.end58.cleanup_crit_edge ], [ %call64, %if.end62.cleanup_crit_edge ], [ %call86, %if.end67.cleanup_crit_edge ], [ %call106, %if.end105.cleanup_crit_edge ], [ %call117, %do.end125 ], [ %call117, %if.then119.cleanup_crit_edge ], [ %call147.i.i, %if.then144.i.i.cleanup_crit_edge ], [ %call557.i.i, %if.then554.i.i.cleanup_crit_edge ], [ %call529.i.i, %if.then526.i.i.cleanup_crit_edge ], [ %call482.i.i, %if.then479.i.i.cleanup_crit_edge ], [ %call439.i.i, %if.then436.i.i.cleanup_crit_edge ], [ %call398.i.i, %if.then395.i.i.cleanup_crit_edge ], [ %call362.i.i, %if.then359.i.i.cleanup_crit_edge ], [ %call318.i.i, %if.then315.i.i.cleanup_crit_edge ], [ %call282.i.i, %if.then279.i.i.cleanup_crit_edge ], [ %call247.i.i, %if.then244.i.i.cleanup_crit_edge ], [ %call214.i.i, %if.then211.i.i.cleanup_crit_edge ], [ %call236.i.i, %carl9170_init_power_cal.exit.i.cleanup_crit_edge ], [ %call586.i.i, %carl9170_init_phy_from_eeprom.exit.i.cleanup_crit_edge ], [ %call42.i, %if.end44.i.cleanup_crit_edge ], [ %call26.i, %if.then23.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rf_res) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_exec_cmd(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_init_rf_bank4_pwr(ptr noundef %ar, i1 noundef zeroext %band5ghz, i32 noundef %freq, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %bw, label %do.body [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %freq, 10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %freq, -10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/carl9170/phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 985, 0\0A.popsection", ""() #5, !srcloc !39
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %freq.addr.0 = phi i32 [ %freq, %entry.sw.epilog_crit_edge ], [ %sub, %sw.bb1 ], [ %add, %sw.bb ]
  br i1 %band5ghz, label %cond.false, label %cond.false77

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %rem = urem i32 %freq.addr.0, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool5.not = icmp eq i32 %rem, 0
  %sub8 = add i32 %freq.addr.0, -4800
  %div9 = udiv i32 %sub8, 10
  %conv10 = shl nuw nsw i32 %div9, 1
  %div = udiv i32 %sub8, 5
  %chansel.0 = select i1 %tobool5.not, i32 %conv10, i32 %div
  %idxprom.i = and i32 %chansel.0, 255
  %1 = select i1 %tobool5.not, i32 4, i32 8
  br label %if.end83

cond.false77:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2484, i32 %freq.addr.0)
  %cmp = icmp eq i32 %freq.addr.0, 2484
  %lf_synth.0 = select i1 %cmp, i32 2, i32 0
  %sub41 = add i32 %freq.addr.0, -2272
  %div42 = udiv i32 %sub41, 5
  %2 = shl nuw i32 %div42, 2
  %phi.cast238 = add i32 %2, 64
  %3 = and i32 %phi.cast238, 252
  %idxprom.i240 = select i1 %cmp, i32 208, i32 %3
  br label %if.end83

if.end83:                                         ; preds = %cond.false77, %cond.false
  %idxprom.i.pn = phi i32 [ %idxprom.i, %cond.false ], [ %idxprom.i240, %cond.false77 ]
  %lf_synth.1 = phi i32 [ 0, %cond.false ], [ %lf_synth.0, %cond.false77 ]
  %or87 = phi i32 [ %1, %cond.false ], [ 8, %cond.false77 ]
  %chansel.2.in = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.pn
  %4 = ptrtoint ptr %chansel.2.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %chansel.2 = load i8, ptr %chansel.2.in, align 1
  %conv84 = zext i8 %chansel.2 to i32
  %or90 = or i32 %or87, %lf_synth.1
  %and95 = shl nuw nsw i32 %conv84, 5
  %shl96 = and i32 %and95, 992
  %or93 = or i32 %or90, %shl96
  %or97 = or i32 %or93, 1
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1336402944, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or97)
  %arrayidx110 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx110, align 4
  %arrayidx131 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -396878848, ptr %arrayidx131, align 4
  %shr100 = shl nuw i32 %conv84, 24
  %or103 = and i32 %shr100, -536870912
  %9 = or i32 %or103, 16777216
  %arrayidx134 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx134, align 4
  %state158 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %11 = ptrtoint ptr %state158 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp159 = icmp ugt i32 %12, 1
  br i1 %cmp159, label %if.then161, label %if.end83.if.end166_crit_edge

if.end83.if.end166_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

if.then161:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %call164 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 16, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #5
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.end83.if.end166_crit_edge
  %__err.2 = phi i32 [ %call164, %if.then161 ], [ 0, %if.end83.if.end166_crit_edge ]
  ret i32 %__err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_set_freq_cal_data(ptr noundef %ar, ptr nocapture noundef readonly %channel) unnamed_addr #0 align 64 {
entry:
  %vpds = alloca [2 x [5 x i8]], align 1
  %pwrs = alloca [2 x [5 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %vpds) #5
  %0 = getelementptr inbounds [2 x [5 x i8]], ptr %vpds, i32 0, i32 1
  %1 = call ptr @memset(ptr %vpds, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %pwrs) #5
  %2 = getelementptr inbounds [5 x i8], ptr %pwrs, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %pwrs, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %pwrs, i32 0, i32 3
  %5 = getelementptr inbounds [2 x [5 x i8]], ptr %pwrs, i32 0, i32 1
  %6 = getelementptr inbounds [2 x [5 x i8]], ptr %pwrs, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds [2 x [5 x i8]], ptr %pwrs, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds [2 x [5 x i8]], ptr %pwrs, i32 0, i32 1, i32 3
  %9 = call ptr @memset(ptr %pwrs, i32 255, i32 10)
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %11, label %entry.cleanup184_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup184_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %13 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %center_freq, align 4
  %sub = add i32 %14, -2300
  %cal_freq_pier_2G = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 18
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %center_freq2 = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %15 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %center_freq2, align 4
  %sub3 = add i32 %16, -4800
  %div = udiv i32 %sub3, 5
  %cal_freq_pier_5G = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %cal_freq_pier.0 = phi ptr [ %cal_freq_pier_5G, %sw.bb1 ], [ %cal_freq_pier_2G, %sw.bb ]
  %cmp.4 = phi i1 [ true, %sw.bb1 ], [ false, %sw.bb ]
  %i.0 = phi i32 [ 7, %sw.bb1 ], [ 3, %sw.bb ]
  %f.0.in = phi i32 [ %div, %sw.bb1 ], [ %sub, %sw.bb ]
  %f.0 = trunc i32 %f.0.in to i8
  %arrayidx = getelementptr i8, ptr %cal_freq_pier.0, i32 %i.0
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp9.not = icmp eq i8 %18, -1
  br i1 %cmp9.not, label %for.body.1, label %sw.epilog.if.end14_crit_edge

sw.epilog.if.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.body.1:                                       ; preds = %sw.epilog
  %dec = add nsw i32 %i.0, -1
  %arrayidx.1 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp9.not.1 = icmp eq i8 %20, -1
  br i1 %cmp9.not.1, label %for.body.2, label %for.body.1.if.end14_crit_edge

for.body.1.if.end14_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.body.2:                                       ; preds = %for.body.1
  %dec.1 = add nsw i32 %i.0, -2
  %arrayidx.2 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.1
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp9.not.2 = icmp eq i8 %22, -1
  br i1 %cmp9.not.2, label %for.inc.2, label %for.body.2.if.end14_crit_edge

for.body.2.if.end14_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.inc.2:                                        ; preds = %for.body.2
  %dec.2 = add nsw i32 %i.0, -3
  %arrayidx.3 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.2
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp9.not.3 = icmp eq i8 %24, -1
  br i1 %cmp9.not.3, label %for.inc.3, label %for.inc.2.if.end14_crit_edge

for.inc.2.if.end14_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %cmp.3.not = icmp eq i32 %dec.2, 0
  br i1 %cmp.3.not, label %for.inc.3.cleanup184_crit_edge, label %for.body.4

for.inc.3.cleanup184_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

for.body.4:                                       ; preds = %for.inc.3
  %dec.3 = add nsw i32 %i.0, -4
  %arrayidx.4 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.3
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp9.not.4 = icmp eq i8 %26, -1
  br i1 %cmp9.not.4, label %for.inc.4, label %for.body.4.if.end14_crit_edge

for.body.4.if.end14_crit_edge:                    ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.inc.4:                                        ; preds = %for.body.4
  br i1 %cmp.4, label %for.body.5, label %for.inc.4.cleanup184_crit_edge

for.inc.4.cleanup184_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

for.body.5:                                       ; preds = %for.inc.4
  %dec.4 = add nsw i32 %i.0, -5
  %arrayidx.5 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.4
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp9.not.5 = icmp eq i8 %28, -1
  br i1 %cmp9.not.5, label %for.body.6.critedge, label %for.body.5.if.end14_crit_edge

for.body.5.if.end14_crit_edge:                    ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.body.6.critedge:                              ; preds = %for.body.5
  %dec.5 = add nsw i32 %i.0, -6
  %arrayidx.6 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.5
  %29 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp9.not.6 = icmp eq i8 %30, -1
  br i1 %cmp9.not.6, label %for.body.7.critedge, label %for.body.6.critedge.if.end14_crit_edge

for.body.6.critedge.if.end14_crit_edge:           ; preds = %for.body.6.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.body.7.critedge:                              ; preds = %for.body.6.critedge
  %dec.6 = add nsw i32 %i.0, -7
  %arrayidx.7 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.6
  %31 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp9.not.7 = icmp eq i8 %32, -1
  br i1 %cmp9.not.7, label %for.body.7.critedge.cleanup184_crit_edge, label %for.body.7.critedge.if.end14_crit_edge

for.body.7.critedge.if.end14_crit_edge:           ; preds = %for.body.7.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.body.7.critedge.cleanup184_crit_edge:         ; preds = %for.body.7.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

if.end14:                                         ; preds = %for.body.7.critedge.if.end14_crit_edge, %for.body.6.critedge.if.end14_crit_edge, %for.body.5.if.end14_crit_edge, %for.body.4.if.end14_crit_edge, %for.inc.2.if.end14_crit_edge, %for.body.2.if.end14_crit_edge, %for.body.1.if.end14_crit_edge, %sw.epilog.if.end14_crit_edge
  %i.1382.lcssa = phi i32 [ %i.0, %sw.epilog.if.end14_crit_edge ], [ %dec, %for.body.1.if.end14_crit_edge ], [ %dec.1, %for.body.2.if.end14_crit_edge ], [ %dec.2, %for.inc.2.if.end14_crit_edge ], [ %dec.3, %for.body.4.if.end14_crit_edge ], [ %dec.4, %for.body.5.if.end14_crit_edge ], [ %dec.5, %for.body.6.critedge.if.end14_crit_edge ], [ %dec.6, %for.body.7.critedge.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1382.lcssa)
  %cmp7.i = icmp ugt i32 %i.1382.lcssa, 1
  br i1 %cmp7.i, label %while.body.i, label %if.end14.carl9170_find_freq_idx.exit_crit_edge

if.end14.carl9170_find_freq_idx.exit_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i:                                     ; preds = %if.end14
  %sub.i = add nsw i32 %i.1382.lcssa, -2
  %arrayidx.i = getelementptr i8, ptr %cal_freq_pier.0, i32 %sub.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %f.0)
  %cmp2.not.i = icmp ugt i8 %34, %f.0
  br i1 %cmp2.not.i, label %if.end.i, label %while.body.i.carl9170_find_freq_idx.exit_crit_edge

while.body.i.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1382.lcssa)
  %cmp.i = icmp sgt i32 %i.1382.lcssa, 2
  br i1 %cmp.i, label %while.body.i.1, label %if.end.i.carl9170_find_freq_idx.exit_crit_edge

if.end.i.carl9170_find_freq_idx.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.1:                                   ; preds = %if.end.i
  %dec.i = add nsw i32 %i.1382.lcssa, -3
  %arrayidx.i.1 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.i
  %35 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %f.0)
  %cmp2.not.i.1 = icmp ugt i8 %36, %f.0
  br i1 %cmp2.not.i.1, label %if.end.i.1, label %while.body.i.1.carl9170_find_freq_idx.exit_crit_edge

while.body.i.1.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i.1:                                       ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1382.lcssa)
  %cmp.i.1 = icmp sgt i32 %i.1382.lcssa, 3
  br i1 %cmp.i.1, label %while.body.i.2, label %if.end.i.1.carl9170_find_freq_idx.exit_crit_edge

if.end.i.1.carl9170_find_freq_idx.exit_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.2:                                   ; preds = %if.end.i.1
  %dec.i.1 = add nsw i32 %i.1382.lcssa, -4
  %arrayidx.i.2 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.i.1
  %37 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %f.0)
  %cmp2.not.i.2 = icmp ugt i8 %38, %f.0
  br i1 %cmp2.not.i.2, label %if.end.i.2, label %while.body.i.2.carl9170_find_freq_idx.exit_crit_edge

while.body.i.2.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i.2:                                       ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1382.lcssa)
  %cmp.i.2 = icmp sgt i32 %i.1382.lcssa, 4
  br i1 %cmp.i.2, label %while.body.i.3, label %if.end.i.2.carl9170_find_freq_idx.exit_crit_edge

if.end.i.2.carl9170_find_freq_idx.exit_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.3:                                   ; preds = %if.end.i.2
  %dec.i.2 = add nsw i32 %i.1382.lcssa, -5
  %arrayidx.i.3 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.i.2
  %39 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %f.0)
  %cmp2.not.i.3 = icmp ugt i8 %40, %f.0
  br i1 %cmp2.not.i.3, label %if.end.i.3, label %while.body.i.3.carl9170_find_freq_idx.exit_crit_edge

while.body.i.3.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i.3:                                       ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.1382.lcssa)
  %cmp.i.3 = icmp sgt i32 %i.1382.lcssa, 5
  br i1 %cmp.i.3, label %while.body.i.4, label %if.end.i.3.carl9170_find_freq_idx.exit_crit_edge

if.end.i.3.carl9170_find_freq_idx.exit_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.4:                                   ; preds = %if.end.i.3
  %dec.i.3 = add nsw i32 %i.1382.lcssa, -6
  %arrayidx.i.4 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.i.3
  %41 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %f.0)
  %cmp2.not.i.4 = icmp ugt i8 %42, %f.0
  br i1 %cmp2.not.i.4, label %if.end.i.4, label %while.body.i.4.carl9170_find_freq_idx.exit_crit_edge

while.body.i.4.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i.4:                                       ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1382.lcssa)
  %cmp.i.4 = icmp sgt i32 %i.1382.lcssa, 6
  br i1 %cmp.i.4, label %while.body.i.5, label %if.end.i.4.carl9170_find_freq_idx.exit_crit_edge

if.end.i.4.carl9170_find_freq_idx.exit_crit_edge: ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.5:                                   ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i.4 = add nsw i32 %i.1382.lcssa, -7
  %arrayidx.i.5 = getelementptr i8, ptr %cal_freq_pier.0, i32 %dec.i.4
  %43 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %f.0)
  %cmp2.not.i.5 = icmp ugt i8 %44, %f.0
  %spec.select = select i1 %cmp2.not.i.5, i32 0, i32 %dec.i.4
  br label %carl9170_find_freq_idx.exit

carl9170_find_freq_idx.exit:                      ; preds = %while.body.i.5, %if.end.i.4.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.4.carl9170_find_freq_idx.exit_crit_edge, %if.end.i.3.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.3.carl9170_find_freq_idx.exit_crit_edge, %if.end.i.2.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.2.carl9170_find_freq_idx.exit_crit_edge, %if.end.i.1.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.1.carl9170_find_freq_idx.exit_crit_edge, %if.end.i.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.carl9170_find_freq_idx.exit_crit_edge, %if.end14.carl9170_find_freq_idx.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end14.carl9170_find_freq_idx.exit_crit_edge ], [ %sub.i, %while.body.i.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.carl9170_find_freq_idx.exit_crit_edge ], [ %dec.i, %while.body.i.1.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.1.carl9170_find_freq_idx.exit_crit_edge ], [ %dec.i.1, %while.body.i.2.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.2.carl9170_find_freq_idx.exit_crit_edge ], [ %dec.i.2, %while.body.i.3.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.3.carl9170_find_freq_idx.exit_crit_edge ], [ %dec.i.3, %while.body.i.4.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.4.carl9170_find_freq_idx.exit_crit_edge ], [ %spec.select, %while.body.i.5 ]
  %arrayidx38 = getelementptr i8, ptr %cal_freq_pier.0, i32 %retval.0.i
  %add = add nuw nsw i32 %retval.0.i, 1
  %arrayidx41 = getelementptr i8, ptr %cal_freq_pier.0, i32 %add
  %conv.i = shl i32 %f.0.in, 8
  %shl.i = and i32 %conv.i, 65280
  %45 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 83
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %arrayidx115 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.inc163.for.cond19.preheader_crit_edge, %carl9170_find_freq_idx.exit
  %__nreg.0394 = phi i32 [ 0, %carl9170_find_freq_idx.exit ], [ %__nreg.5, %for.inc163.for.cond19.preheader_crit_edge ]
  %phy_data.0393 = phi i32 [ 0, %carl9170_find_freq_idx.exit ], [ %phy_data.2, %for.inc163.for.cond19.preheader_crit_edge ]
  %chain.0392 = phi i32 [ 0, %carl9170_find_freq_idx.exit ], [ %inc164, %for.inc163.for.cond19.preheader_crit_edge ]
  %46 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %switch = icmp ult i32 %47, 2
  br i1 %switch, label %for.cond19.preheader.split, label %for.cond19.preheader.cleanup184_crit_edge

for.cond19.preheader.cleanup184_crit_edge:        ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

for.cond19.preheader.split:                       ; preds = %for.cond19.preheader
  %arrayidx27 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 20, i32 %chain.0392, i32 %retval.0.i
  %arrayidx31 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 19, i32 %chain.0392, i32 %retval.0.i
  %48 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx38, align 1
  %50 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx41, align 1
  %conv1.i = zext i8 %49 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %conv5.i = zext i8 %51 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i)
  %cmp1.i.i = icmp eq i32 %shl.i, %shl2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i)
  %cmp4.i.i = icmp eq i32 %shl.i, %shl6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i, i32 %shl2.i)
  %cmp7.i.i = icmp eq i32 %shl6.i, %shl2.i
  %sub10.i.i = sub nsw i32 %shl.i, %shl2.i
  %sub11.i.i = sub nsw i32 %shl6.i, %shl2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cond = icmp eq i32 %47, 0
  %arrayidx27.arrayidx31 = select i1 %cond, ptr %arrayidx27, ptr %arrayidx31
  %arrayidx42 = getelementptr %struct.ar9170_calibration_data_per_freq, ptr %arrayidx27.arrayidx31, i32 1
  br label %for.body22

for.cond70.preheader:                             ; preds = %carl9170_interpolate_u8.exit307.1
  %mul = shl i32 %chain.0392, 12
  %add98 = add nuw nsw i32 %mul, 1860224
  br label %for.body73

for.body22:                                       ; preds = %carl9170_interpolate_u8.exit307.1.for.body22_crit_edge, %for.cond19.preheader.split
  %i.2384 = phi i32 [ 0, %for.cond19.preheader.split ], [ %inc68, %carl9170_interpolate_u8.exit307.1.for.body22_crit_edge ]
  %arrayidx40 = getelementptr %struct.ar9170_calibration_data_per_freq, ptr %arrayidx27.arrayidx31, i32 0, i32 1, i32 0, i32 %i.2384
  %52 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx40, align 1
  %arrayidx45 = getelementptr %struct.ar9170_calibration_data_per_freq, ptr %arrayidx27.arrayidx31, i32 1, i32 1, i32 0, i32 %i.2384
  %54 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx45, align 1
  %conv3.i = zext i8 %53 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 8
  %conv7.i = zext i8 %55 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i, i32 %shl4.i)
  %cmp.i.i = icmp eq i32 %shl8.i, %shl4.i
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  %brmerge = select i1 %or.cond.i.i, i1 true, i1 %cmp4.i.i
  %shl4.i.mux = select i1 %or.cond.i.i, i32 %shl4.i, i32 %shl8.i
  %brmerge395 = select i1 %brmerge, i1 true, i1 %cmp7.i.i
  %shl4.i.mux.mux = select i1 %brmerge, i32 %shl4.i.mux, i32 %shl4.i
  br i1 %brmerge395, label %for.body22.carl9170_interpolate_u8.exit_crit_edge, label %if.end9.i.i

for.body22.carl9170_interpolate_u8.exit_crit_edge: ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit

if.end9.i.i:                                      ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = sub nsw i32 %shl8.i, %shl4.i
  %mul.i.i = mul i32 %sub.i.i, %sub10.i.i
  %div.i.i = sdiv i32 %mul.i.i, %sub11.i.i
  %add.i.i = add i32 %div.i.i, %shl4.i
  br label %carl9170_interpolate_u8.exit

carl9170_interpolate_u8.exit:                     ; preds = %if.end9.i.i, %for.body22.carl9170_interpolate_u8.exit_crit_edge
  %retval.0.i.i = phi i32 [ %add.i.i, %if.end9.i.i ], [ %shl4.i.mux.mux, %for.body22.carl9170_interpolate_u8.exit_crit_edge ]
  %56 = lshr i32 %retval.0.i.i, 8
  %and.i = lshr i32 %retval.0.i.i, 7
  %57 = and i32 %and.i, 1
  %add.i = add nuw nsw i32 %57, %56
  %conv10.i = trunc i32 %add.i to i8
  %arrayidx48 = getelementptr [2 x [5 x i8]], ptr %vpds, i32 0, i32 0, i32 %i.2384
  %58 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv10.i, ptr %arrayidx48, align 1
  %arrayidx51 = getelementptr [4 x [5 x i8]], ptr %arrayidx27.arrayidx31, i32 0, i32 0, i32 %i.2384
  %59 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx51, align 1
  %arrayidx57 = getelementptr [5 x i8], ptr %arrayidx42, i32 0, i32 %i.2384
  %61 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx57, align 1
  %conv3.i283 = zext i8 %60 to i32
  %shl4.i284 = shl nuw nsw i32 %conv3.i283, 8
  %conv7.i287 = zext i8 %62 to i32
  %shl8.i288 = shl nuw nsw i32 %conv7.i287, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i288, i32 %shl4.i284)
  %cmp.i.i289 = icmp eq i32 %shl8.i288, %shl4.i284
  %or.cond.i.i291 = or i1 %cmp1.i.i, %cmp.i.i289
  %brmerge396 = select i1 %or.cond.i.i291, i1 true, i1 %cmp4.i.i
  %shl4.i284.mux = select i1 %or.cond.i.i291, i32 %shl4.i284, i32 %shl8.i288
  %brmerge397 = select i1 %brmerge396, i1 true, i1 %cmp7.i.i
  %shl4.i284.mux.mux = select i1 %brmerge396, i32 %shl4.i284.mux, i32 %shl4.i284
  br i1 %brmerge397, label %carl9170_interpolate_u8.exit.carl9170_interpolate_u8.exit307_crit_edge, label %if.end9.i.i302

carl9170_interpolate_u8.exit.carl9170_interpolate_u8.exit307_crit_edge: ; preds = %carl9170_interpolate_u8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit307

if.end9.i.i302:                                   ; preds = %carl9170_interpolate_u8.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i296 = sub nsw i32 %shl8.i288, %shl4.i284
  %mul.i.i298 = mul i32 %sub.i.i296, %sub10.i.i
  %div.i.i300 = sdiv i32 %mul.i.i298, %sub11.i.i
  %add.i.i301 = add i32 %div.i.i300, %shl4.i284
  br label %carl9170_interpolate_u8.exit307

carl9170_interpolate_u8.exit307:                  ; preds = %if.end9.i.i302, %carl9170_interpolate_u8.exit.carl9170_interpolate_u8.exit307_crit_edge
  %retval.0.i.i303 = phi i32 [ %add.i.i301, %if.end9.i.i302 ], [ %shl4.i284.mux.mux, %carl9170_interpolate_u8.exit.carl9170_interpolate_u8.exit307_crit_edge ]
  %63 = lshr i32 %retval.0.i.i303, 8
  %and.i304 = lshr i32 %retval.0.i.i303, 7
  %64 = and i32 %and.i304, 1
  %add.i305 = add nuw nsw i32 %64, %63
  %conv10.i306 = trunc i32 %add.i305 to i8
  %65 = lshr i8 %conv10.i306, 1
  %arrayidx63 = getelementptr [2 x [5 x i8]], ptr %pwrs, i32 0, i32 0, i32 %i.2384
  %66 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx63, align 1
  %arrayidx40.1 = getelementptr %struct.ar9170_calibration_data_per_freq, ptr %arrayidx27.arrayidx31, i32 0, i32 1, i32 1, i32 %i.2384
  %67 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx40.1, align 1
  %arrayidx45.1 = getelementptr %struct.ar9170_calibration_data_per_freq, ptr %arrayidx27.arrayidx31, i32 1, i32 1, i32 1, i32 %i.2384
  %69 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx45.1, align 1
  %conv3.i.1 = zext i8 %68 to i32
  %shl4.i.1 = shl nuw nsw i32 %conv3.i.1, 8
  %conv7.i.1 = zext i8 %70 to i32
  %shl8.i.1 = shl nuw nsw i32 %conv7.i.1, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i.1, i32 %shl4.i.1)
  %cmp.i.i.1 = icmp eq i32 %shl8.i.1, %shl4.i.1
  %or.cond.i.i.1 = or i1 %cmp1.i.i, %cmp.i.i.1
  %brmerge.1 = select i1 %or.cond.i.i.1, i1 true, i1 %cmp4.i.i
  %shl4.i.mux.1 = select i1 %or.cond.i.i.1, i32 %shl4.i.1, i32 %shl8.i.1
  %brmerge395.1 = select i1 %brmerge.1, i1 true, i1 %cmp7.i.i
  %shl4.i.mux.mux.1 = select i1 %brmerge.1, i32 %shl4.i.mux.1, i32 %shl4.i.1
  br i1 %brmerge395.1, label %carl9170_interpolate_u8.exit307.carl9170_interpolate_u8.exit.1_crit_edge, label %if.end9.i.i.1

carl9170_interpolate_u8.exit307.carl9170_interpolate_u8.exit.1_crit_edge: ; preds = %carl9170_interpolate_u8.exit307
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.1

if.end9.i.i.1:                                    ; preds = %carl9170_interpolate_u8.exit307
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.1 = sub nsw i32 %shl8.i.1, %shl4.i.1
  %mul.i.i.1 = mul i32 %sub.i.i.1, %sub10.i.i
  %div.i.i.1 = sdiv i32 %mul.i.i.1, %sub11.i.i
  %add.i.i.1 = add i32 %div.i.i.1, %shl4.i.1
  br label %carl9170_interpolate_u8.exit.1

carl9170_interpolate_u8.exit.1:                   ; preds = %if.end9.i.i.1, %carl9170_interpolate_u8.exit307.carl9170_interpolate_u8.exit.1_crit_edge
  %retval.0.i.i.1 = phi i32 [ %add.i.i.1, %if.end9.i.i.1 ], [ %shl4.i.mux.mux.1, %carl9170_interpolate_u8.exit307.carl9170_interpolate_u8.exit.1_crit_edge ]
  %71 = lshr i32 %retval.0.i.i.1, 8
  %and.i.1 = lshr i32 %retval.0.i.i.1, 7
  %72 = and i32 %and.i.1, 1
  %add.i.1 = add nuw nsw i32 %72, %71
  %conv10.i.1 = trunc i32 %add.i.1 to i8
  %arrayidx48.1 = getelementptr [2 x [5 x i8]], ptr %vpds, i32 0, i32 1, i32 %i.2384
  %73 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv10.i.1, ptr %arrayidx48.1, align 1
  %arrayidx51.1 = getelementptr [4 x [5 x i8]], ptr %arrayidx27.arrayidx31, i32 0, i32 1, i32 %i.2384
  %74 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx51.1, align 1
  %arrayidx57.1 = getelementptr %struct.ar9170_calibration_data_per_freq, ptr %arrayidx27.arrayidx31, i32 1, i32 0, i32 1, i32 %i.2384
  %76 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx57.1, align 1
  %conv3.i283.1 = zext i8 %75 to i32
  %shl4.i284.1 = shl nuw nsw i32 %conv3.i283.1, 8
  %conv7.i287.1 = zext i8 %77 to i32
  %shl8.i288.1 = shl nuw nsw i32 %conv7.i287.1, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i288.1, i32 %shl4.i284.1)
  %cmp.i.i289.1 = icmp eq i32 %shl8.i288.1, %shl4.i284.1
  %or.cond.i.i291.1 = or i1 %cmp1.i.i, %cmp.i.i289.1
  %brmerge396.1 = select i1 %or.cond.i.i291.1, i1 true, i1 %cmp4.i.i
  %shl4.i284.mux.1 = select i1 %or.cond.i.i291.1, i32 %shl4.i284.1, i32 %shl8.i288.1
  %brmerge397.1 = select i1 %brmerge396.1, i1 true, i1 %cmp7.i.i
  %shl4.i284.mux.mux.1 = select i1 %brmerge396.1, i32 %shl4.i284.mux.1, i32 %shl4.i284.1
  br i1 %brmerge397.1, label %carl9170_interpolate_u8.exit.1.carl9170_interpolate_u8.exit307.1_crit_edge, label %if.end9.i.i302.1

carl9170_interpolate_u8.exit.1.carl9170_interpolate_u8.exit307.1_crit_edge: ; preds = %carl9170_interpolate_u8.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit307.1

if.end9.i.i302.1:                                 ; preds = %carl9170_interpolate_u8.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i296.1 = sub nsw i32 %shl8.i288.1, %shl4.i284.1
  %mul.i.i298.1 = mul i32 %sub.i.i296.1, %sub10.i.i
  %div.i.i300.1 = sdiv i32 %mul.i.i298.1, %sub11.i.i
  %add.i.i301.1 = add i32 %div.i.i300.1, %shl4.i284.1
  br label %carl9170_interpolate_u8.exit307.1

carl9170_interpolate_u8.exit307.1:                ; preds = %if.end9.i.i302.1, %carl9170_interpolate_u8.exit.1.carl9170_interpolate_u8.exit307.1_crit_edge
  %retval.0.i.i303.1 = phi i32 [ %add.i.i301.1, %if.end9.i.i302.1 ], [ %shl4.i284.mux.mux.1, %carl9170_interpolate_u8.exit.1.carl9170_interpolate_u8.exit307.1_crit_edge ]
  %78 = lshr i32 %retval.0.i.i303.1, 8
  %and.i304.1 = lshr i32 %retval.0.i.i303.1, 7
  %79 = and i32 %and.i304.1, 1
  %add.i305.1 = add nuw nsw i32 %79, %78
  %conv10.i306.1 = trunc i32 %add.i305.1 to i8
  %80 = lshr i8 %conv10.i306.1, 1
  %arrayidx63.1 = getelementptr [2 x [5 x i8]], ptr %pwrs, i32 0, i32 1, i32 %i.2384
  %81 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx63.1, align 1
  %inc68 = add nuw nsw i32 %i.2384, 1
  %exitcond.not = icmp eq i32 %inc68, 5
  br i1 %exitcond.not, label %for.cond70.preheader, label %carl9170_interpolate_u8.exit307.1.for.body22_crit_edge

carl9170_interpolate_u8.exit307.1.for.body22_crit_edge: ; preds = %carl9170_interpolate_u8.exit307.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

for.body73:                                       ; preds = %for.inc123.for.body73_crit_edge, %for.cond70.preheader
  %__nreg.1389 = phi i32 [ %__nreg.0394, %for.cond70.preheader ], [ %__nreg.3, %for.inc123.for.body73_crit_edge ]
  %phy_data.1388 = phi i32 [ %phy_data.0393, %for.cond70.preheader ], [ %phy_data.2, %for.inc123.for.body73_crit_edge ]
  %i.3385 = phi i32 [ 0, %for.cond70.preheader ], [ %inc124, %for.inc123.for.body73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %i.3385)
  %cmp74 = icmp ult i32 %i.3385, 25
  %conv77 = trunc i32 %i.3385 to i8
  br i1 %cmp74, label %if.then76, label %if.else

if.then76:                                        ; preds = %for.body73
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %conv77)
  %cmp2.not.i309 = icmp ult i8 %83, %conv77
  br i1 %cmp2.not.i309, label %for.cond.1.i, label %if.then76.for.end.i_crit_edge

if.then76.for.end.i_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.1.i:                                     ; preds = %if.then76
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %conv77)
  %cmp2.not.1.i = icmp ult i8 %85, %conv77
  br i1 %cmp2.not.1.i, label %for.cond.2.i, label %for.cond.1.i.for.end.i_crit_edge

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %conv77)
  %cmp2.not.2.i = icmp ult i8 %87, %conv77
  %spec.select.i = select i1 %cmp2.not.2.i, i32 3, i32 2
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.2.i, %for.cond.1.i.for.end.i_crit_edge, %if.then76.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then76.for.end.i_crit_edge ], [ 1, %for.cond.1.i.for.end.i_crit_edge ], [ %spec.select.i, %for.cond.2.i ]
  %arrayidx4.i = getelementptr i8, ptr %pwrs, i32 %i.0.lcssa.i
  %88 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %vpds, i32 %i.0.lcssa.i
  %90 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx5.i, align 1
  %add6.i = add nuw nsw i32 %i.0.lcssa.i, 1
  %arrayidx7.i = getelementptr i8, ptr %pwrs, i32 %add6.i
  %92 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %vpds, i32 %add6.i
  %94 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx9.i, align 1
  %conv.i.i = shl nuw nsw i32 %i.3385, 8
  %conv1.i.i = zext i8 %89 to i32
  %shl2.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %conv3.i.i = zext i8 %91 to i32
  %shl4.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %conv5.i.i = zext i8 %93 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %conv7.i.i = zext i8 %95 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i.i, i32 %shl4.i.i)
  %cmp.i.i.i = icmp eq i32 %shl8.i.i, %shl4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %shl2.i.i)
  %cmp1.i.i.i = icmp eq i32 %conv.i.i, %shl2.i.i
  %or.cond.i.i.i = or i1 %cmp1.i.i.i, %cmp.i.i.i
  br i1 %or.cond.i.i.i, label %for.end.i.if.end90_crit_edge, label %if.end3.i.i.i

for.end.i.if.end90_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end3.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %shl6.i.i)
  %cmp4.i.i.i = icmp eq i32 %conv.i.i, %shl6.i.i
  br i1 %cmp4.i.i.i, label %if.end3.i.i.i.if.end90_crit_edge, label %if.end6.i.i.i

if.end3.i.i.i.if.end90_crit_edge:                 ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end6.i.i.i:                                    ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i.i, i32 %shl2.i.i)
  %cmp7.i.i.i = icmp eq i32 %shl6.i.i, %shl2.i.i
  br i1 %cmp7.i.i.i, label %if.end6.i.i.i.if.end90_crit_edge, label %if.end9.i.i.i

if.end6.i.i.i.if.end90_crit_edge:                 ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end9.i.i.i:                                    ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = sub nsw i32 %shl8.i.i, %shl4.i.i
  %sub10.i.i.i = sub nsw i32 %conv.i.i, %shl2.i.i
  %mul.i.i.i = mul i32 %sub.i.i.i, %sub10.i.i.i
  %sub11.i.i.i = sub nsw i32 %shl6.i.i, %shl2.i.i
  %div.i.i.i = sdiv i32 %mul.i.i.i, %sub11.i.i.i
  %add.i.i.i = add i32 %div.i.i.i, %shl4.i.i
  br label %if.end90

if.else:                                          ; preds = %for.body73
  %conv84 = add nsw i8 %conv77, -12
  %96 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %conv84)
  %cmp2.not.i312 = icmp ult i8 %97, %conv84
  br i1 %cmp2.not.i312, label %for.cond.1.i315, label %if.else.for.end.i339_crit_edge

if.else.for.end.i339_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i339

for.cond.1.i315:                                  ; preds = %if.else
  %98 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %conv84)
  %cmp2.not.1.i314 = icmp ult i8 %99, %conv84
  br i1 %cmp2.not.1.i314, label %for.cond.2.i319, label %for.cond.1.i315.for.end.i339_crit_edge

for.cond.1.i315.for.end.i339_crit_edge:           ; preds = %for.cond.1.i315
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i339

for.cond.2.i319:                                  ; preds = %for.cond.1.i315
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %101, i8 %conv84)
  %cmp2.not.2.i317 = icmp ult i8 %101, %conv84
  %spec.select.i318 = select i1 %cmp2.not.2.i317, i32 3, i32 2
  br label %for.end.i339

for.end.i339:                                     ; preds = %for.cond.2.i319, %for.cond.1.i315.for.end.i339_crit_edge, %if.else.for.end.i339_crit_edge
  %i.0.lcssa.i320 = phi i32 [ 0, %if.else.for.end.i339_crit_edge ], [ 1, %for.cond.1.i315.for.end.i339_crit_edge ], [ %spec.select.i318, %for.cond.2.i319 ]
  %arrayidx4.i321 = getelementptr i8, ptr %5, i32 %i.0.lcssa.i320
  %102 = ptrtoint ptr %arrayidx4.i321 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx4.i321, align 1
  %arrayidx5.i322 = getelementptr i8, ptr %0, i32 %i.0.lcssa.i320
  %104 = ptrtoint ptr %arrayidx5.i322 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx5.i322, align 1
  %add6.i323 = add nuw nsw i32 %i.0.lcssa.i320, 1
  %arrayidx7.i324 = getelementptr i8, ptr %5, i32 %add6.i323
  %106 = ptrtoint ptr %arrayidx7.i324 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx7.i324, align 1
  %arrayidx9.i325 = getelementptr i8, ptr %0, i32 %add6.i323
  %108 = ptrtoint ptr %arrayidx9.i325 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx9.i325, align 1
  %conv.i.i326 = zext i8 %conv84 to i32
  %shl.i.i327 = shl nuw nsw i32 %conv.i.i326, 8
  %conv1.i.i328 = zext i8 %103 to i32
  %shl2.i.i329 = shl nuw nsw i32 %conv1.i.i328, 8
  %conv3.i.i330 = zext i8 %105 to i32
  %shl4.i.i331 = shl nuw nsw i32 %conv3.i.i330, 8
  %conv5.i.i332 = zext i8 %107 to i32
  %shl6.i.i333 = shl nuw nsw i32 %conv5.i.i332, 8
  %conv7.i.i334 = zext i8 %109 to i32
  %shl8.i.i335 = shl nuw nsw i32 %conv7.i.i334, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i.i335, i32 %shl4.i.i331)
  %cmp.i.i.i336 = icmp eq i32 %shl8.i.i335, %shl4.i.i331
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i327, i32 %shl2.i.i329)
  %cmp1.i.i.i337 = icmp eq i32 %shl.i.i327, %shl2.i.i329
  %or.cond.i.i.i338 = or i1 %cmp1.i.i.i337, %cmp.i.i.i336
  br i1 %or.cond.i.i.i338, label %for.end.i339.if.end90_crit_edge, label %if.end3.i.i.i341

for.end.i339.if.end90_crit_edge:                  ; preds = %for.end.i339
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end3.i.i.i341:                                 ; preds = %for.end.i339
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i327, i32 %shl6.i.i333)
  %cmp4.i.i.i340 = icmp eq i32 %shl.i.i327, %shl6.i.i333
  br i1 %cmp4.i.i.i340, label %if.end3.i.i.i341.if.end90_crit_edge, label %if.end6.i.i.i343

if.end3.i.i.i341.if.end90_crit_edge:              ; preds = %if.end3.i.i.i341
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end6.i.i.i343:                                 ; preds = %if.end3.i.i.i341
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i.i333, i32 %shl2.i.i329)
  %cmp7.i.i.i342 = icmp eq i32 %shl6.i.i333, %shl2.i.i329
  br i1 %cmp7.i.i.i342, label %if.end6.i.i.i343.if.end90_crit_edge, label %if.end9.i.i.i350

if.end6.i.i.i343.if.end90_crit_edge:              ; preds = %if.end6.i.i.i343
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end9.i.i.i350:                                 ; preds = %if.end6.i.i.i343
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i344 = sub nsw i32 %shl8.i.i335, %shl4.i.i331
  %sub10.i.i.i345 = sub nsw i32 %shl.i.i327, %shl2.i.i329
  %mul.i.i.i346 = mul i32 %sub.i.i.i344, %sub10.i.i.i345
  %sub11.i.i.i347 = sub nsw i32 %shl6.i.i333, %shl2.i.i329
  %div.i.i.i348 = sdiv i32 %mul.i.i.i346, %sub11.i.i.i347
  %add.i.i.i349 = add i32 %div.i.i.i348, %shl4.i.i331
  br label %if.end90

if.end90:                                         ; preds = %if.end9.i.i.i350, %if.end6.i.i.i343.if.end90_crit_edge, %if.end3.i.i.i341.if.end90_crit_edge, %for.end.i339.if.end90_crit_edge, %if.end9.i.i.i, %if.end6.i.i.i.if.end90_crit_edge, %if.end3.i.i.i.if.end90_crit_edge, %for.end.i.if.end90_crit_edge
  %retval.0.i.i.i351.sink417 = phi i32 [ %add.i.i.i, %if.end9.i.i.i ], [ %shl4.i.i, %for.end.i.if.end90_crit_edge ], [ %shl8.i.i, %if.end3.i.i.i.if.end90_crit_edge ], [ %shl4.i.i, %if.end6.i.i.i.if.end90_crit_edge ], [ %add.i.i.i349, %if.end9.i.i.i350 ], [ %shl4.i.i331, %for.end.i339.if.end90_crit_edge ], [ %shl8.i.i335, %if.end3.i.i.i341.if.end90_crit_edge ], [ %shl4.i.i331, %if.end6.i.i.i343.if.end90_crit_edge ]
  %110 = lshr i32 %retval.0.i.i.i351.sink417, 8
  %and.i.i352 = lshr i32 %retval.0.i.i.i351.sink417, 7
  %111 = and i32 %and.i.i352, 1
  %add.i.i353 = add nuw nsw i32 %111, %110
  %conv91 = and i32 %add.i.i353, 255
  %and = and i32 %i.3385, 3
  %shl = shl nuw nsw i32 %and, 3
  %shl92 = shl nuw i32 %conv91, %shl
  %or = or i32 %shl92, %phy_data.1388
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp94 = icmp eq i32 %and, 3
  br i1 %cmp94, label %do.body97, label %if.end90.for.inc123_crit_edge

if.end90.for.inc123_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123

do.body97:                                        ; preds = %if.end90
  %and99 = and i32 %i.3385, 2147483644
  %add100 = add i32 %add98, %and99
  %112 = tail call i32 @llvm.bswap.i32(i32 %add100)
  %mul101 = shl i32 %__nreg.1389, 1
  %add102 = or i32 %mul101, 1
  %arrayidx103 = getelementptr [16 x i32], ptr %45, i32 0, i32 %add102
  %113 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx103, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add105 = add i32 %mul101, 2
  %arrayidx106 = getelementptr [16 x i32], ptr %45, i32 0, i32 %add105
  %115 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx106, align 4
  %inc107 = add i32 %__nreg.1389, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc107)
  %cmp108 = icmp sgt i32 %inc107, 6
  br i1 %cmp108, label %if.then110, label %do.body97.for.inc123_crit_edge

do.body97.for.inc123_crit_edge:                   ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123

if.then110:                                       ; preds = %do.body97
  %116 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp111 = icmp ugt i32 %117, 1
  br i1 %cmp111, label %if.then113, label %if.then110.cleanup184_crit_edge

if.then110.cleanup184_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

if.then113:                                       ; preds = %if.then110
  %mul114 = shl i32 %inc107, 3
  %call116 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef %mul114, ptr noundef %arrayidx115, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool.not = icmp eq i32 %call116, 0
  br i1 %tobool.not, label %if.then113.for.inc123_crit_edge, label %if.then113.cleanup184_crit_edge

if.then113.cleanup184_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

if.then113.for.inc123_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123

for.inc123:                                       ; preds = %if.then113.for.inc123_crit_edge, %do.body97.for.inc123_crit_edge, %if.end90.for.inc123_crit_edge
  %phy_data.2 = phi i32 [ %or, %if.end90.for.inc123_crit_edge ], [ 0, %if.then113.for.inc123_crit_edge ], [ 0, %do.body97.for.inc123_crit_edge ]
  %__nreg.3 = phi i32 [ %__nreg.1389, %if.end90.for.inc123_crit_edge ], [ 0, %if.then113.for.inc123_crit_edge ], [ %inc107, %do.body97.for.inc123_crit_edge ]
  %inc124 = add nuw nsw i32 %i.3385, 1
  %exitcond406.not = icmp eq i32 %inc124, 76
  br i1 %exitcond406.not, label %for.inc123.do.body130_crit_edge, label %for.inc123.for.body73_crit_edge

for.inc123.for.body73_crit_edge:                  ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body73

for.inc123.do.body130_crit_edge:                  ; preds = %for.inc123
  br label %do.body130

do.body130:                                       ; preds = %for.inc160.do.body130_crit_edge, %for.inc123.do.body130_crit_edge
  %__nreg.4391 = phi i32 [ %__nreg.5, %for.inc160.do.body130_crit_edge ], [ %__nreg.3, %for.inc123.do.body130_crit_edge ]
  %i.4390 = phi i32 [ %inc161, %for.inc160.do.body130_crit_edge ], [ 19, %for.inc123.do.body130_crit_edge ]
  %shl133 = shl i32 %i.4390, 2
  %add134 = add nuw nsw i32 %add98, %shl133
  %118 = tail call i32 @llvm.bswap.i32(i32 %add134)
  %mul135 = shl i32 %__nreg.4391, 1
  %add136 = or i32 %mul135, 1
  %arrayidx137 = getelementptr [16 x i32], ptr %45, i32 0, i32 %add136
  %119 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx137, align 4
  %add139 = add i32 %mul135, 2
  %arrayidx140 = getelementptr [16 x i32], ptr %45, i32 0, i32 %add139
  %120 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %arrayidx140, align 4
  %inc141 = add i32 %__nreg.4391, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc141)
  %cmp142 = icmp sgt i32 %inc141, 6
  br i1 %cmp142, label %if.then144, label %do.body130.for.inc160_crit_edge

do.body130.for.inc160_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc160

if.then144:                                       ; preds = %do.body130
  %121 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cmp146 = icmp ugt i32 %122, 1
  br i1 %cmp146, label %if.then148, label %if.then144.cleanup184_crit_edge

if.then144.cleanup184_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

if.then148:                                       ; preds = %if.then144
  %mul149 = shl i32 %inc141, 3
  %call151 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef %mul149, ptr noundef %arrayidx115, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool154.not = icmp eq i32 %call151, 0
  br i1 %tobool154.not, label %if.then148.for.inc160_crit_edge, label %if.then148.cleanup184_crit_edge

if.then148.cleanup184_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

if.then148.for.inc160_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc160

for.inc160:                                       ; preds = %if.then148.for.inc160_crit_edge, %do.body130.for.inc160_crit_edge
  %__nreg.5 = phi i32 [ 0, %if.then148.for.inc160_crit_edge ], [ %inc141, %do.body130.for.inc160_crit_edge ]
  %inc161 = add nuw nsw i32 %i.4390, 1
  %exitcond407.not = icmp eq i32 %inc161, 32
  br i1 %exitcond407.not, label %for.inc163, label %for.inc160.do.body130_crit_edge

for.inc160.do.body130_crit_edge:                  ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body130

for.inc163:                                       ; preds = %for.inc160
  %inc164 = add nuw nsw i32 %chain.0392, 1
  %exitcond408.not = icmp eq i32 %inc164, 2
  br i1 %exitcond408.not, label %land.lhs.true, label %for.inc163.for.cond19.preheader_crit_edge

for.inc163.for.cond19.preheader_crit_edge:        ; preds = %for.inc163
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader

land.lhs.true:                                    ; preds = %for.inc163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__nreg.5)
  %tobool168.not = icmp eq i32 %__nreg.5, 0
  br i1 %tobool168.not, label %land.lhs.true.cleanup184_crit_edge, label %if.then169

land.lhs.true.cleanup184_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

if.then169:                                       ; preds = %land.lhs.true
  %123 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp171 = icmp ugt i32 %.pr, 1
  br i1 %cmp171, label %if.then173, label %if.then169.cleanup184_crit_edge

if.then169.cleanup184_crit_edge:                  ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup184

if.then173:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #7
  %mul174 = shl i32 %__nreg.5, 3
  %call176 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef %mul174, ptr noundef %arrayidx115, i32 noundef 0, ptr noundef null) #5
  br label %cleanup184

cleanup184:                                       ; preds = %if.then173, %if.then169.cleanup184_crit_edge, %land.lhs.true.cleanup184_crit_edge, %if.then148.cleanup184_crit_edge, %if.then144.cleanup184_crit_edge, %if.then113.cleanup184_crit_edge, %if.then110.cleanup184_crit_edge, %for.cond19.preheader.cleanup184_crit_edge, %for.body.7.critedge.cleanup184_crit_edge, %for.inc.4.cleanup184_crit_edge, %for.inc.3.cleanup184_crit_edge, %entry.cleanup184_crit_edge
  %retval.4 = phi i32 [ -22, %entry.cleanup184_crit_edge ], [ 0, %land.lhs.true.cleanup184_crit_edge ], [ %call176, %if.then173 ], [ 0, %if.then169.cleanup184_crit_edge ], [ 0, %if.then144.cleanup184_crit_edge ], [ %call151, %if.then148.cleanup184_crit_edge ], [ 0, %if.then110.cleanup184_crit_edge ], [ %call116, %if.then113.cleanup184_crit_edge ], [ -22, %for.cond19.preheader.cleanup184_crit_edge ], [ -22, %for.body.7.critedge.cleanup184_crit_edge ], [ -22, %for.inc.4.cleanup184_crit_edge ], [ -22, %for.inc.3.cleanup184_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %pwrs) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %vpds) #5
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_set_power_cal(ptr noundef %ar, i32 noundef %freq, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  %mode_list_2ghz.i = alloca [4 x %struct.ctl_modes], align 4
  %mode_list_5ghz.i = alloca [3 x %struct.ctl_modes], align 4
  %pwr_freqs = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pwr_freqs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %freq)
  %cmp = icmp ult i32 %freq, 3000
  %sub = add i32 %freq, 4
  %sub1 = add i32 %freq, -4800
  %div = udiv i32 %sub1, 5
  %f.0.in = select i1 %cmp, i32 %sub, i32 %div
  %f.0 = trunc i32 %f.0.in to i8
  %cal_tgt_pwr_2G_ofdm = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 25
  %power_2G_ofdm = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 67
  %cal_tgt_pwr_2G_cck = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 24
  %power_2G_cck = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 66
  %cal_tgt_pwr_5G = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 21
  %power_5G_leg = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 65
  %conv.i = shl i32 %f.0.in, 8
  %shl.i = and i32 %conv.i, 65280
  %0 = ptrtoint ptr %pwr_freqs to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %pwr_freqs, align 8
  %arrayidx29.1 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 1
  %arrayidx29.2 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 2
  %arrayidx29.3 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 3
  %arrayidx29.4 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 4
  %arrayidx29.5 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 5
  %arrayidx29.6 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 6
  %arrayidx29.7 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 7
  br label %for.body

for.cond55.preheader:                             ; preds = %carl9170_interpolate_u8.exit.3
  %cal_tgt_pwr_2G_ht40 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 27
  %power_2G_ht40 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 71
  %cal_tgt_pwr_2G_ht20 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 26
  %power_2G_ht20 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 70
  %cal_tgt_pwr_5G_ht40 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 23
  %power_5G_ht40 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 69
  %cal_tgt_pwr_5G_ht20 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 22
  %power_5G_ht20 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 68
  %arrayidx96.1 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 1
  %arrayidx96.2 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 2
  %arrayidx96.3 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 3
  %arrayidx96.4 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 4
  %arrayidx96.5 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 5
  %arrayidx96.6 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 6
  %arrayidx96.7 = getelementptr inbounds [8 x i8], ptr %pwr_freqs, i32 0, i32 7
  br label %for.body58

for.body:                                         ; preds = %carl9170_interpolate_u8.exit.3.for.body_crit_edge, %entry
  %i.0247 = phi i32 [ 0, %entry ], [ %inc53, %carl9170_interpolate_u8.exit.3.for.body_crit_edge ]
  %1 = zext i32 %i.0247 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %i.0247, label %do.body [
    i32 0, label %for.body.for.body19_crit_edge
    i32 1, label %sw.bb5
    i32 2, label %sw.bb9
  ]

for.body.for.body19_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/carl9170/phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1467, 0\0A.popsection", ""() #5, !srcloc !40
  unreachable

for.body19:                                       ; preds = %sw.bb9, %sw.bb5, %for.body.for.body19_crit_edge
  %ctpl.0 = phi ptr [ %cal_tgt_pwr_2G_ofdm, %sw.bb9 ], [ %cal_tgt_pwr_2G_cck, %sw.bb5 ], [ %cal_tgt_pwr_5G, %for.body.for.body19_crit_edge ]
  %ctpres.0 = phi ptr [ %power_2G_ofdm, %sw.bb9 ], [ %power_2G_cck, %sw.bb5 ], [ %power_5G_leg, %for.body.for.body19_crit_edge ]
  %exitcond.not.2 = phi i1 [ false, %sw.bb9 ], [ true, %sw.bb5 ], [ false, %for.body.for.body19_crit_edge ]
  %exitcond.not.3 = phi i1 [ true, %sw.bb9 ], [ false, %sw.bb5 ], [ false, %for.body.for.body19_crit_edge ]
  %ntargets.0 = phi i32 [ 4, %sw.bb9 ], [ 3, %sw.bb5 ], [ 8, %for.body.for.body19_crit_edge ]
  %2 = ptrtoint ptr %ctpl.0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctpl.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp23 = icmp eq i8 %3, -1
  br i1 %cmp23, label %for.body19.for.end_crit_edge, label %if.end26

for.body19.for.end_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26:                                         ; preds = %for.body19
  %4 = ptrtoint ptr %pwr_freqs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %pwr_freqs, align 8
  %arrayidx20.1 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 1
  %5 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx20.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp23.1 = icmp eq i8 %6, -1
  br i1 %cmp23.1, label %if.end26.for.end_crit_edge, label %if.end26.1

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26.1:                                       ; preds = %if.end26
  %7 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx29.1, align 1
  %arrayidx20.2 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 2
  %8 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx20.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp23.2 = icmp eq i8 %9, -1
  br i1 %cmp23.2, label %if.end26.1.for.end_crit_edge, label %if.end26.2

if.end26.1.for.end_crit_edge:                     ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26.2:                                       ; preds = %if.end26.1
  %10 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx29.2, align 2
  br i1 %exitcond.not.2, label %if.end26.2.for.end_crit_edge, label %for.body19.3

if.end26.2.for.end_crit_edge:                     ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body19.3:                                     ; preds = %if.end26.2
  %arrayidx20.3 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 3
  %11 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp23.3 = icmp eq i8 %12, -1
  br i1 %cmp23.3, label %for.body19.3.for.end_crit_edge, label %if.end26.3

for.body19.3.for.end_crit_edge:                   ; preds = %for.body19.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26.3:                                       ; preds = %for.body19.3
  %13 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx29.3, align 1
  br i1 %exitcond.not.3, label %if.end26.3.for.end_crit_edge, label %for.body19.4

if.end26.3.for.end_crit_edge:                     ; preds = %if.end26.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body19.4:                                     ; preds = %if.end26.3
  %arrayidx20.4 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 4
  %14 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp23.4 = icmp eq i8 %15, -1
  br i1 %cmp23.4, label %for.body19.4.for.end_crit_edge, label %if.end26.4

for.body19.4.for.end_crit_edge:                   ; preds = %for.body19.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26.4:                                       ; preds = %for.body19.4
  %16 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx29.4, align 4
  %arrayidx20.5 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 5
  %17 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp23.5 = icmp eq i8 %18, -1
  br i1 %cmp23.5, label %if.end26.4.for.end_crit_edge, label %if.end26.5

if.end26.4.for.end_crit_edge:                     ; preds = %if.end26.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26.5:                                       ; preds = %if.end26.4
  %19 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx29.5, align 1
  %arrayidx20.6 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 6
  %20 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx20.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp23.6 = icmp eq i8 %21, -1
  br i1 %cmp23.6, label %if.end26.5.for.end_crit_edge, label %if.end26.6

if.end26.5.for.end_crit_edge:                     ; preds = %if.end26.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26.6:                                       ; preds = %if.end26.5
  %22 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx29.6, align 2
  %arrayidx20.7 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 7
  %23 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx20.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp23.7 = icmp eq i8 %24, -1
  br i1 %cmp23.7, label %if.end26.6.for.end_crit_edge, label %if.end26.7

if.end26.6.for.end_crit_edge:                     ; preds = %if.end26.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26.7:                                       ; preds = %if.end26.6
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx29.7, align 1
  br label %for.end

for.end:                                          ; preds = %if.end26.7, %if.end26.6.for.end_crit_edge, %if.end26.5.for.end_crit_edge, %if.end26.4.for.end_crit_edge, %for.body19.4.for.end_crit_edge, %if.end26.3.for.end_crit_edge, %for.body19.3.for.end_crit_edge, %if.end26.2.for.end_crit_edge, %if.end26.1.for.end_crit_edge, %if.end26.for.end_crit_edge, %for.body19.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %for.body19.for.end_crit_edge ], [ 1, %if.end26.for.end_crit_edge ], [ 2, %if.end26.1.for.end_crit_edge ], [ %ntargets.0, %if.end26.2.for.end_crit_edge ], [ 3, %for.body19.3.for.end_crit_edge ], [ %ntargets.0, %if.end26.3.for.end_crit_edge ], [ 4, %for.body19.4.for.end_crit_edge ], [ 5, %if.end26.4.for.end_crit_edge ], [ 6, %if.end26.5.for.end_crit_edge ], [ 7, %if.end26.6.for.end_crit_edge ], [ %ntargets.0, %if.end26.7 ]
  %sub.i = add i32 %n.0.lcssa, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp7.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp7.i, label %while.body.i, label %for.end.carl9170_find_freq_idx.exit_crit_edge

for.end.carl9170_find_freq_idx.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i:                                     ; preds = %for.end
  %arrayidx.i = getelementptr i8, ptr %pwr_freqs, i32 %sub.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %f.0)
  %cmp2.not.i = icmp ugt i8 %27, %f.0
  br i1 %cmp2.not.i, label %if.end.i, label %while.body.i.carl9170_find_freq_idx.exit_crit_edge

while.body.i.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add i32 %n.0.lcssa, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.1, label %if.end.i.carl9170_find_freq_idx.exit_crit_edge

if.end.i.carl9170_find_freq_idx.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.1:                                   ; preds = %if.end.i
  %arrayidx.i.1 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i
  %28 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %f.0)
  %cmp2.not.i.1 = icmp ugt i8 %29, %f.0
  br i1 %cmp2.not.i.1, label %if.end.i.1, label %while.body.i.1.carl9170_find_freq_idx.exit_crit_edge

while.body.i.1.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i.1:                                       ; preds = %while.body.i.1
  %dec.i.1 = add i32 %n.0.lcssa, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i.1 = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i.1, label %while.body.i.2, label %if.end.i.1.carl9170_find_freq_idx.exit_crit_edge

if.end.i.1.carl9170_find_freq_idx.exit_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.2:                                   ; preds = %if.end.i.1
  %arrayidx.i.2 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i.1
  %30 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %f.0)
  %cmp2.not.i.2 = icmp ugt i8 %31, %f.0
  br i1 %cmp2.not.i.2, label %if.end.i.2, label %while.body.i.2.carl9170_find_freq_idx.exit_crit_edge

while.body.i.2.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i.2:                                       ; preds = %while.body.i.2
  %dec.i.2 = add i32 %n.0.lcssa, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %cmp.i.2 = icmp sgt i32 %dec.i.1, 0
  br i1 %cmp.i.2, label %while.body.i.3, label %if.end.i.2.carl9170_find_freq_idx.exit_crit_edge

if.end.i.2.carl9170_find_freq_idx.exit_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.3:                                   ; preds = %if.end.i.2
  %arrayidx.i.3 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i.2
  %32 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %f.0)
  %cmp2.not.i.3 = icmp ugt i8 %33, %f.0
  br i1 %cmp2.not.i.3, label %if.end.i.3, label %while.body.i.3.carl9170_find_freq_idx.exit_crit_edge

while.body.i.3.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i.3:                                       ; preds = %while.body.i.3
  %dec.i.3 = add i32 %n.0.lcssa, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.2)
  %cmp.i.3 = icmp sgt i32 %dec.i.2, 0
  br i1 %cmp.i.3, label %while.body.i.4, label %if.end.i.3.carl9170_find_freq_idx.exit_crit_edge

if.end.i.3.carl9170_find_freq_idx.exit_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.4:                                   ; preds = %if.end.i.3
  %arrayidx.i.4 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i.3
  %34 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %f.0)
  %cmp2.not.i.4 = icmp ugt i8 %35, %f.0
  br i1 %cmp2.not.i.4, label %if.end.i.4, label %while.body.i.4.carl9170_find_freq_idx.exit_crit_edge

while.body.i.4.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i.4:                                       ; preds = %while.body.i.4
  %dec.i.4 = add i32 %n.0.lcssa, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.3)
  %cmp.i.4 = icmp sgt i32 %dec.i.3, 0
  br i1 %cmp.i.4, label %while.body.i.5, label %if.end.i.4.carl9170_find_freq_idx.exit_crit_edge

if.end.i.4.carl9170_find_freq_idx.exit_crit_edge: ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.5:                                   ; preds = %if.end.i.4
  %arrayidx.i.5 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i.4
  %36 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %f.0)
  %cmp2.not.i.5 = icmp ugt i8 %37, %f.0
  br i1 %cmp2.not.i.5, label %if.end.i.5, label %while.body.i.5.carl9170_find_freq_idx.exit_crit_edge

while.body.i.5.carl9170_find_freq_idx.exit_crit_edge: ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

if.end.i.5:                                       ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.4)
  %cmp.i.5 = icmp sgt i32 %dec.i.4, 0
  br i1 %cmp.i.5, label %while.body.i.6, label %if.end.i.5.carl9170_find_freq_idx.exit_crit_edge

if.end.i.5.carl9170_find_freq_idx.exit_crit_edge: ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit

while.body.i.6:                                   ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i.5 = add i32 %n.0.lcssa, -8
  %arrayidx.i.6 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i.5
  %38 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %f.0)
  %cmp2.not.i.6 = icmp ugt i8 %39, %f.0
  %spec.select = select i1 %cmp2.not.i.6, i32 0, i32 %dec.i.5
  br label %carl9170_find_freq_idx.exit

carl9170_find_freq_idx.exit:                      ; preds = %while.body.i.6, %if.end.i.5.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.5.carl9170_find_freq_idx.exit_crit_edge, %if.end.i.4.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.4.carl9170_find_freq_idx.exit_crit_edge, %if.end.i.3.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.3.carl9170_find_freq_idx.exit_crit_edge, %if.end.i.2.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.2.carl9170_find_freq_idx.exit_crit_edge, %if.end.i.1.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.1.carl9170_find_freq_idx.exit_crit_edge, %if.end.i.carl9170_find_freq_idx.exit_crit_edge, %while.body.i.carl9170_find_freq_idx.exit_crit_edge, %for.end.carl9170_find_freq_idx.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.carl9170_find_freq_idx.exit_crit_edge ], [ %sub.i, %while.body.i.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.carl9170_find_freq_idx.exit_crit_edge ], [ %dec.i, %while.body.i.1.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.1.carl9170_find_freq_idx.exit_crit_edge ], [ %dec.i.1, %while.body.i.2.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.2.carl9170_find_freq_idx.exit_crit_edge ], [ %dec.i.2, %while.body.i.3.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.3.carl9170_find_freq_idx.exit_crit_edge ], [ %dec.i.3, %while.body.i.4.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.4.carl9170_find_freq_idx.exit_crit_edge ], [ %dec.i.4, %while.body.i.5.carl9170_find_freq_idx.exit_crit_edge ], [ 0, %if.end.i.5.carl9170_find_freq_idx.exit_crit_edge ], [ %spec.select, %while.body.i.6 ]
  %arrayidx35 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %retval.0.i
  %add40 = add nuw i32 %retval.0.i, 1
  %arrayidx41 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %add40
  %40 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx35, align 1
  %arrayidx39 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %retval.0.i, i32 1, i32 0
  %42 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx39, align 1
  %44 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx41, align 1
  %arrayidx46 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %add40, i32 1, i32 0
  %46 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx46, align 1
  %conv1.i = zext i8 %41 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %conv3.i = zext i8 %43 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 8
  %conv5.i = zext i8 %45 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %conv7.i = zext i8 %47 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i, i32 %shl4.i)
  %cmp.i.i = icmp eq i32 %shl8.i, %shl4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i)
  %cmp1.i.i = icmp eq i32 %shl.i, %shl2.i
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %carl9170_find_freq_idx.exit.carl9170_interpolate_u8.exit_crit_edge, label %if.end3.i.i

carl9170_find_freq_idx.exit.carl9170_interpolate_u8.exit_crit_edge: ; preds = %carl9170_find_freq_idx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit

if.end3.i.i:                                      ; preds = %carl9170_find_freq_idx.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i)
  %cmp4.i.i = icmp eq i32 %shl.i, %shl6.i
  br i1 %cmp4.i.i, label %if.end3.i.i.carl9170_interpolate_u8.exit_crit_edge, label %if.end6.i.i

if.end3.i.i.carl9170_interpolate_u8.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i, i32 %shl2.i)
  %cmp7.i.i = icmp eq i32 %shl6.i, %shl2.i
  br i1 %cmp7.i.i, label %if.end6.i.i.carl9170_interpolate_u8.exit_crit_edge, label %if.end9.i.i

if.end6.i.i.carl9170_interpolate_u8.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit

if.end9.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = sub nsw i32 %shl8.i, %shl4.i
  %sub10.i.i = sub nsw i32 %shl.i, %shl2.i
  %mul.i.i = mul i32 %sub.i.i, %sub10.i.i
  %sub11.i.i = sub nsw i32 %shl6.i, %shl2.i
  %div.i.i = sdiv i32 %mul.i.i, %sub11.i.i
  %add.i.i = add i32 %div.i.i, %shl4.i
  br label %carl9170_interpolate_u8.exit

carl9170_interpolate_u8.exit:                     ; preds = %if.end9.i.i, %if.end6.i.i.carl9170_interpolate_u8.exit_crit_edge, %if.end3.i.i.carl9170_interpolate_u8.exit_crit_edge, %carl9170_find_freq_idx.exit.carl9170_interpolate_u8.exit_crit_edge
  %retval.0.i.i = phi i32 [ %add.i.i, %if.end9.i.i ], [ %shl4.i, %carl9170_find_freq_idx.exit.carl9170_interpolate_u8.exit_crit_edge ], [ %shl8.i, %if.end3.i.i.carl9170_interpolate_u8.exit_crit_edge ], [ %shl4.i, %if.end6.i.i.carl9170_interpolate_u8.exit_crit_edge ]
  %48 = lshr i32 %retval.0.i.i, 8
  %and.i = lshr i32 %retval.0.i.i, 7
  %49 = and i32 %and.i, 1
  %add.i = add nuw nsw i32 %49, %48
  %conv10.i = trunc i32 %add.i to i8
  %50 = ptrtoint ptr %ctpres.0 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv10.i, ptr %ctpres.0, align 1
  %51 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx35, align 1
  %arrayidx39.1 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %retval.0.i, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx39.1, align 1
  %55 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx41, align 1
  %arrayidx46.1 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %add40, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx46.1, align 1
  %conv1.i.1 = zext i8 %52 to i32
  %shl2.i.1 = shl nuw nsw i32 %conv1.i.1, 8
  %conv3.i.1 = zext i8 %54 to i32
  %shl4.i.1 = shl nuw nsw i32 %conv3.i.1, 8
  %conv5.i.1 = zext i8 %56 to i32
  %shl6.i.1 = shl nuw nsw i32 %conv5.i.1, 8
  %conv7.i.1 = zext i8 %58 to i32
  %shl8.i.1 = shl nuw nsw i32 %conv7.i.1, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i.1, i32 %shl4.i.1)
  %cmp.i.i.1 = icmp eq i32 %shl8.i.1, %shl4.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i.1)
  %cmp1.i.i.1 = icmp eq i32 %shl.i, %shl2.i.1
  %or.cond.i.i.1 = or i1 %cmp1.i.i.1, %cmp.i.i.1
  br i1 %or.cond.i.i.1, label %carl9170_interpolate_u8.exit.carl9170_interpolate_u8.exit.1_crit_edge, label %if.end3.i.i.1

carl9170_interpolate_u8.exit.carl9170_interpolate_u8.exit.1_crit_edge: ; preds = %carl9170_interpolate_u8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.1

if.end3.i.i.1:                                    ; preds = %carl9170_interpolate_u8.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i.1)
  %cmp4.i.i.1 = icmp eq i32 %shl.i, %shl6.i.1
  br i1 %cmp4.i.i.1, label %if.end3.i.i.1.carl9170_interpolate_u8.exit.1_crit_edge, label %if.end6.i.i.1

if.end3.i.i.1.carl9170_interpolate_u8.exit.1_crit_edge: ; preds = %if.end3.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.1

if.end6.i.i.1:                                    ; preds = %if.end3.i.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i.1, i32 %shl2.i.1)
  %cmp7.i.i.1 = icmp eq i32 %shl6.i.1, %shl2.i.1
  br i1 %cmp7.i.i.1, label %if.end6.i.i.1.carl9170_interpolate_u8.exit.1_crit_edge, label %if.end9.i.i.1

if.end6.i.i.1.carl9170_interpolate_u8.exit.1_crit_edge: ; preds = %if.end6.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.1

if.end9.i.i.1:                                    ; preds = %if.end6.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.1 = sub nsw i32 %shl8.i.1, %shl4.i.1
  %sub10.i.i.1 = sub nsw i32 %shl.i, %shl2.i.1
  %mul.i.i.1 = mul i32 %sub.i.i.1, %sub10.i.i.1
  %sub11.i.i.1 = sub nsw i32 %shl6.i.1, %shl2.i.1
  %div.i.i.1 = sdiv i32 %mul.i.i.1, %sub11.i.i.1
  %add.i.i.1 = add i32 %div.i.i.1, %shl4.i.1
  br label %carl9170_interpolate_u8.exit.1

carl9170_interpolate_u8.exit.1:                   ; preds = %if.end9.i.i.1, %if.end6.i.i.1.carl9170_interpolate_u8.exit.1_crit_edge, %if.end3.i.i.1.carl9170_interpolate_u8.exit.1_crit_edge, %carl9170_interpolate_u8.exit.carl9170_interpolate_u8.exit.1_crit_edge
  %retval.0.i.i.1 = phi i32 [ %add.i.i.1, %if.end9.i.i.1 ], [ %shl4.i.1, %carl9170_interpolate_u8.exit.carl9170_interpolate_u8.exit.1_crit_edge ], [ %shl8.i.1, %if.end3.i.i.1.carl9170_interpolate_u8.exit.1_crit_edge ], [ %shl4.i.1, %if.end6.i.i.1.carl9170_interpolate_u8.exit.1_crit_edge ]
  %59 = lshr i32 %retval.0.i.i.1, 8
  %and.i.1 = lshr i32 %retval.0.i.i.1, 7
  %60 = and i32 %and.i.1, 1
  %add.i.1 = add nuw nsw i32 %60, %59
  %conv10.i.1 = trunc i32 %add.i.1 to i8
  %arrayidx48.1 = getelementptr i8, ptr %ctpres.0, i32 1
  %61 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv10.i.1, ptr %arrayidx48.1, align 1
  %62 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx35, align 1
  %arrayidx39.2 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %retval.0.i, i32 1, i32 2
  %64 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx39.2, align 1
  %66 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx41, align 1
  %arrayidx46.2 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %add40, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx46.2, align 1
  %conv1.i.2 = zext i8 %63 to i32
  %shl2.i.2 = shl nuw nsw i32 %conv1.i.2, 8
  %conv3.i.2 = zext i8 %65 to i32
  %shl4.i.2 = shl nuw nsw i32 %conv3.i.2, 8
  %conv5.i.2 = zext i8 %67 to i32
  %shl6.i.2 = shl nuw nsw i32 %conv5.i.2, 8
  %conv7.i.2 = zext i8 %69 to i32
  %shl8.i.2 = shl nuw nsw i32 %conv7.i.2, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i.2, i32 %shl4.i.2)
  %cmp.i.i.2 = icmp eq i32 %shl8.i.2, %shl4.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i.2)
  %cmp1.i.i.2 = icmp eq i32 %shl.i, %shl2.i.2
  %or.cond.i.i.2 = or i1 %cmp1.i.i.2, %cmp.i.i.2
  br i1 %or.cond.i.i.2, label %carl9170_interpolate_u8.exit.1.carl9170_interpolate_u8.exit.2_crit_edge, label %if.end3.i.i.2

carl9170_interpolate_u8.exit.1.carl9170_interpolate_u8.exit.2_crit_edge: ; preds = %carl9170_interpolate_u8.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.2

if.end3.i.i.2:                                    ; preds = %carl9170_interpolate_u8.exit.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i.2)
  %cmp4.i.i.2 = icmp eq i32 %shl.i, %shl6.i.2
  br i1 %cmp4.i.i.2, label %if.end3.i.i.2.carl9170_interpolate_u8.exit.2_crit_edge, label %if.end6.i.i.2

if.end3.i.i.2.carl9170_interpolate_u8.exit.2_crit_edge: ; preds = %if.end3.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.2

if.end6.i.i.2:                                    ; preds = %if.end3.i.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i.2, i32 %shl2.i.2)
  %cmp7.i.i.2 = icmp eq i32 %shl6.i.2, %shl2.i.2
  br i1 %cmp7.i.i.2, label %if.end6.i.i.2.carl9170_interpolate_u8.exit.2_crit_edge, label %if.end9.i.i.2

if.end6.i.i.2.carl9170_interpolate_u8.exit.2_crit_edge: ; preds = %if.end6.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.2

if.end9.i.i.2:                                    ; preds = %if.end6.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.2 = sub nsw i32 %shl8.i.2, %shl4.i.2
  %sub10.i.i.2 = sub nsw i32 %shl.i, %shl2.i.2
  %mul.i.i.2 = mul i32 %sub.i.i.2, %sub10.i.i.2
  %sub11.i.i.2 = sub nsw i32 %shl6.i.2, %shl2.i.2
  %div.i.i.2 = sdiv i32 %mul.i.i.2, %sub11.i.i.2
  %add.i.i.2 = add i32 %div.i.i.2, %shl4.i.2
  br label %carl9170_interpolate_u8.exit.2

carl9170_interpolate_u8.exit.2:                   ; preds = %if.end9.i.i.2, %if.end6.i.i.2.carl9170_interpolate_u8.exit.2_crit_edge, %if.end3.i.i.2.carl9170_interpolate_u8.exit.2_crit_edge, %carl9170_interpolate_u8.exit.1.carl9170_interpolate_u8.exit.2_crit_edge
  %retval.0.i.i.2 = phi i32 [ %add.i.i.2, %if.end9.i.i.2 ], [ %shl4.i.2, %carl9170_interpolate_u8.exit.1.carl9170_interpolate_u8.exit.2_crit_edge ], [ %shl8.i.2, %if.end3.i.i.2.carl9170_interpolate_u8.exit.2_crit_edge ], [ %shl4.i.2, %if.end6.i.i.2.carl9170_interpolate_u8.exit.2_crit_edge ]
  %70 = lshr i32 %retval.0.i.i.2, 8
  %and.i.2 = lshr i32 %retval.0.i.i.2, 7
  %71 = and i32 %and.i.2, 1
  %add.i.2 = add nuw nsw i32 %71, %70
  %conv10.i.2 = trunc i32 %add.i.2 to i8
  %arrayidx48.2 = getelementptr i8, ptr %ctpres.0, i32 2
  %72 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv10.i.2, ptr %arrayidx48.2, align 1
  %73 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx35, align 1
  %arrayidx39.3 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %retval.0.i, i32 1, i32 3
  %75 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx39.3, align 1
  %77 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx41, align 1
  %arrayidx46.3 = getelementptr %struct.ar9170_calibration_target_power_legacy, ptr %ctpl.0, i32 %add40, i32 1, i32 3
  %79 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx46.3, align 1
  %conv1.i.3 = zext i8 %74 to i32
  %shl2.i.3 = shl nuw nsw i32 %conv1.i.3, 8
  %conv3.i.3 = zext i8 %76 to i32
  %shl4.i.3 = shl nuw nsw i32 %conv3.i.3, 8
  %conv5.i.3 = zext i8 %78 to i32
  %shl6.i.3 = shl nuw nsw i32 %conv5.i.3, 8
  %conv7.i.3 = zext i8 %80 to i32
  %shl8.i.3 = shl nuw nsw i32 %conv7.i.3, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i.3, i32 %shl4.i.3)
  %cmp.i.i.3 = icmp eq i32 %shl8.i.3, %shl4.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i.3)
  %cmp1.i.i.3 = icmp eq i32 %shl.i, %shl2.i.3
  %or.cond.i.i.3 = or i1 %cmp1.i.i.3, %cmp.i.i.3
  br i1 %or.cond.i.i.3, label %carl9170_interpolate_u8.exit.2.carl9170_interpolate_u8.exit.3_crit_edge, label %if.end3.i.i.3

carl9170_interpolate_u8.exit.2.carl9170_interpolate_u8.exit.3_crit_edge: ; preds = %carl9170_interpolate_u8.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.3

if.end3.i.i.3:                                    ; preds = %carl9170_interpolate_u8.exit.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i.3)
  %cmp4.i.i.3 = icmp eq i32 %shl.i, %shl6.i.3
  br i1 %cmp4.i.i.3, label %if.end3.i.i.3.carl9170_interpolate_u8.exit.3_crit_edge, label %if.end6.i.i.3

if.end3.i.i.3.carl9170_interpolate_u8.exit.3_crit_edge: ; preds = %if.end3.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.3

if.end6.i.i.3:                                    ; preds = %if.end3.i.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i.3, i32 %shl2.i.3)
  %cmp7.i.i.3 = icmp eq i32 %shl6.i.3, %shl2.i.3
  br i1 %cmp7.i.i.3, label %if.end6.i.i.3.carl9170_interpolate_u8.exit.3_crit_edge, label %if.end9.i.i.3

if.end6.i.i.3.carl9170_interpolate_u8.exit.3_crit_edge: ; preds = %if.end6.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit.3

if.end9.i.i.3:                                    ; preds = %if.end6.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.3 = sub nsw i32 %shl8.i.3, %shl4.i.3
  %sub10.i.i.3 = sub nsw i32 %shl.i, %shl2.i.3
  %mul.i.i.3 = mul i32 %sub.i.i.3, %sub10.i.i.3
  %sub11.i.i.3 = sub nsw i32 %shl6.i.3, %shl2.i.3
  %div.i.i.3 = sdiv i32 %mul.i.i.3, %sub11.i.i.3
  %add.i.i.3 = add i32 %div.i.i.3, %shl4.i.3
  br label %carl9170_interpolate_u8.exit.3

carl9170_interpolate_u8.exit.3:                   ; preds = %if.end9.i.i.3, %if.end6.i.i.3.carl9170_interpolate_u8.exit.3_crit_edge, %if.end3.i.i.3.carl9170_interpolate_u8.exit.3_crit_edge, %carl9170_interpolate_u8.exit.2.carl9170_interpolate_u8.exit.3_crit_edge
  %retval.0.i.i.3 = phi i32 [ %add.i.i.3, %if.end9.i.i.3 ], [ %shl4.i.3, %carl9170_interpolate_u8.exit.2.carl9170_interpolate_u8.exit.3_crit_edge ], [ %shl8.i.3, %if.end3.i.i.3.carl9170_interpolate_u8.exit.3_crit_edge ], [ %shl4.i.3, %if.end6.i.i.3.carl9170_interpolate_u8.exit.3_crit_edge ]
  %81 = lshr i32 %retval.0.i.i.3, 8
  %and.i.3 = lshr i32 %retval.0.i.i.3, 7
  %82 = and i32 %and.i.3, 1
  %add.i.3 = add nuw nsw i32 %82, %81
  %conv10.i.3 = trunc i32 %add.i.3 to i8
  %arrayidx48.3 = getelementptr i8, ptr %ctpres.0, i32 3
  %83 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv10.i.3, ptr %arrayidx48.3, align 1
  %inc53 = add nuw nsw i32 %i.0247, 1
  %exitcond252.not = icmp eq i32 %inc53, 3
  br i1 %exitcond252.not, label %for.cond55.preheader, label %carl9170_interpolate_u8.exit.3.for.body_crit_edge

carl9170_interpolate_u8.exit.3.for.body_crit_edge: ; preds = %carl9170_interpolate_u8.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body58:                                       ; preds = %carl9170_interpolate_u8.exit234.7.for.body58_crit_edge, %for.cond55.preheader
  %i.1250 = phi i32 [ 0, %for.cond55.preheader ], [ %inc126, %carl9170_interpolate_u8.exit234.7.for.body58_crit_edge ]
  %84 = zext i32 %i.1250 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %i.1250, label %do.body76 [
    i32 0, label %for.body58.for.body86_crit_edge
    i32 1, label %sw.bb63
    i32 2, label %sw.bb67
    i32 3, label %sw.bb71
  ]

for.body58.for.body86_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body86

sw.bb63:                                          ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body86

sw.bb67:                                          ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body86

sw.bb71:                                          ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body86

do.body76:                                        ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/carl9170/phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1507, 0\0A.popsection", ""() #5, !srcloc !41
  unreachable

for.body86:                                       ; preds = %sw.bb71, %sw.bb67, %sw.bb63, %for.body58.for.body86_crit_edge
  %ctph.0 = phi ptr [ %cal_tgt_pwr_2G_ht40, %sw.bb71 ], [ %cal_tgt_pwr_2G_ht20, %sw.bb67 ], [ %cal_tgt_pwr_5G_ht40, %sw.bb63 ], [ %cal_tgt_pwr_5G_ht20, %for.body58.for.body86_crit_edge ]
  %ctpres.1 = phi ptr [ %power_2G_ht40, %sw.bb71 ], [ %power_2G_ht20, %sw.bb67 ], [ %power_5G_ht40, %sw.bb63 ], [ %power_5G_ht20, %for.body58.for.body86_crit_edge ]
  %exitcond253.not.3 = phi i1 [ true, %sw.bb71 ], [ true, %sw.bb67 ], [ false, %sw.bb63 ], [ false, %for.body58.for.body86_crit_edge ]
  %ntargets.1 = phi i32 [ 4, %sw.bb71 ], [ 4, %sw.bb67 ], [ 8, %sw.bb63 ], [ 8, %for.body58.for.body86_crit_edge ]
  %85 = ptrtoint ptr %ctph.0 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ctph.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %86)
  %cmp90 = icmp eq i8 %86, -1
  br i1 %cmp90, label %for.body86.for.end99_crit_edge, label %if.end93

for.body86.for.end99_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

if.end93:                                         ; preds = %for.body86
  %87 = ptrtoint ptr %pwr_freqs to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %pwr_freqs, align 8
  %arrayidx87.1 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 1
  %88 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx87.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %cmp90.1 = icmp eq i8 %89, -1
  br i1 %cmp90.1, label %if.end93.for.end99_crit_edge, label %if.end93.1

if.end93.for.end99_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

if.end93.1:                                       ; preds = %if.end93
  %90 = ptrtoint ptr %arrayidx96.1 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx96.1, align 1
  %arrayidx87.2 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 2
  %91 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx87.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %92)
  %cmp90.2 = icmp eq i8 %92, -1
  br i1 %cmp90.2, label %if.end93.1.for.end99_crit_edge, label %if.end93.2

if.end93.1.for.end99_crit_edge:                   ; preds = %if.end93.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

if.end93.2:                                       ; preds = %if.end93.1
  %93 = ptrtoint ptr %arrayidx96.2 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx96.2, align 2
  %arrayidx87.3 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 3
  %94 = ptrtoint ptr %arrayidx87.3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx87.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %95)
  %cmp90.3 = icmp eq i8 %95, -1
  br i1 %cmp90.3, label %if.end93.2.for.end99_crit_edge, label %if.end93.3

if.end93.2.for.end99_crit_edge:                   ; preds = %if.end93.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

if.end93.3:                                       ; preds = %if.end93.2
  %96 = ptrtoint ptr %arrayidx96.3 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx96.3, align 1
  br i1 %exitcond253.not.3, label %if.end93.3.for.end99_crit_edge, label %for.body86.4

if.end93.3.for.end99_crit_edge:                   ; preds = %if.end93.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

for.body86.4:                                     ; preds = %if.end93.3
  %arrayidx87.4 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 4
  %97 = ptrtoint ptr %arrayidx87.4 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx87.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %98)
  %cmp90.4 = icmp eq i8 %98, -1
  br i1 %cmp90.4, label %for.body86.4.for.end99_crit_edge, label %if.end93.4

for.body86.4.for.end99_crit_edge:                 ; preds = %for.body86.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

if.end93.4:                                       ; preds = %for.body86.4
  %99 = ptrtoint ptr %arrayidx96.4 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx96.4, align 4
  %arrayidx87.5 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 5
  %100 = ptrtoint ptr %arrayidx87.5 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx87.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp90.5 = icmp eq i8 %101, -1
  br i1 %cmp90.5, label %if.end93.4.for.end99_crit_edge, label %if.end93.5

if.end93.4.for.end99_crit_edge:                   ; preds = %if.end93.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

if.end93.5:                                       ; preds = %if.end93.4
  %102 = ptrtoint ptr %arrayidx96.5 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx96.5, align 1
  %arrayidx87.6 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 6
  %103 = ptrtoint ptr %arrayidx87.6 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx87.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %104)
  %cmp90.6 = icmp eq i8 %104, -1
  br i1 %cmp90.6, label %if.end93.5.for.end99_crit_edge, label %if.end93.6

if.end93.5.for.end99_crit_edge:                   ; preds = %if.end93.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

if.end93.6:                                       ; preds = %if.end93.5
  %105 = ptrtoint ptr %arrayidx96.6 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx96.6, align 2
  %arrayidx87.7 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 7
  %106 = ptrtoint ptr %arrayidx87.7 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx87.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %107)
  %cmp90.7 = icmp eq i8 %107, -1
  br i1 %cmp90.7, label %if.end93.6.for.end99_crit_edge, label %if.end93.7

if.end93.6.for.end99_crit_edge:                   ; preds = %if.end93.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

if.end93.7:                                       ; preds = %if.end93.6
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %arrayidx96.7 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx96.7, align 1
  br label %for.end99

for.end99:                                        ; preds = %if.end93.7, %if.end93.6.for.end99_crit_edge, %if.end93.5.for.end99_crit_edge, %if.end93.4.for.end99_crit_edge, %for.body86.4.for.end99_crit_edge, %if.end93.3.for.end99_crit_edge, %if.end93.2.for.end99_crit_edge, %if.end93.1.for.end99_crit_edge, %if.end93.for.end99_crit_edge, %for.body86.for.end99_crit_edge
  %n.2.lcssa = phi i32 [ 0, %for.body86.for.end99_crit_edge ], [ 1, %if.end93.for.end99_crit_edge ], [ 2, %if.end93.1.for.end99_crit_edge ], [ 3, %if.end93.2.for.end99_crit_edge ], [ %ntargets.1, %if.end93.3.for.end99_crit_edge ], [ 4, %for.body86.4.for.end99_crit_edge ], [ 5, %if.end93.4.for.end99_crit_edge ], [ 6, %if.end93.5.for.end99_crit_edge ], [ 7, %if.end93.6.for.end99_crit_edge ], [ %ntargets.1, %if.end93.7 ]
  %sub.i195 = add i32 %n.2.lcssa, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i195)
  %cmp7.i196 = icmp sgt i32 %sub.i195, -1
  br i1 %cmp7.i196, label %while.body.i200, label %for.end99.carl9170_find_freq_idx.exit205_crit_edge

for.end99.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

while.body.i200:                                  ; preds = %for.end99
  %arrayidx.i198 = getelementptr i8, ptr %pwr_freqs, i32 %sub.i195
  %109 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i198, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %f.0)
  %cmp2.not.i199 = icmp ugt i8 %110, %f.0
  br i1 %cmp2.not.i199, label %if.end.i203, label %while.body.i200.carl9170_find_freq_idx.exit205_crit_edge

while.body.i200.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %while.body.i200
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

if.end.i203:                                      ; preds = %while.body.i200
  %dec.i201 = add i32 %n.2.lcssa, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i195)
  %cmp.i202 = icmp sgt i32 %sub.i195, 0
  br i1 %cmp.i202, label %while.body.i200.1, label %if.end.i203.carl9170_find_freq_idx.exit205_crit_edge

if.end.i203.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

while.body.i200.1:                                ; preds = %if.end.i203
  %arrayidx.i198.1 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i201
  %111 = ptrtoint ptr %arrayidx.i198.1 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i198.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %f.0)
  %cmp2.not.i199.1 = icmp ugt i8 %112, %f.0
  br i1 %cmp2.not.i199.1, label %if.end.i203.1, label %while.body.i200.1.carl9170_find_freq_idx.exit205_crit_edge

while.body.i200.1.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %while.body.i200.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

if.end.i203.1:                                    ; preds = %while.body.i200.1
  %dec.i201.1 = add i32 %n.2.lcssa, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i201)
  %cmp.i202.1 = icmp sgt i32 %dec.i201, 0
  br i1 %cmp.i202.1, label %while.body.i200.2, label %if.end.i203.1.carl9170_find_freq_idx.exit205_crit_edge

if.end.i203.1.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %if.end.i203.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

while.body.i200.2:                                ; preds = %if.end.i203.1
  %arrayidx.i198.2 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i201.1
  %113 = ptrtoint ptr %arrayidx.i198.2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i198.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %f.0)
  %cmp2.not.i199.2 = icmp ugt i8 %114, %f.0
  br i1 %cmp2.not.i199.2, label %if.end.i203.2, label %while.body.i200.2.carl9170_find_freq_idx.exit205_crit_edge

while.body.i200.2.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %while.body.i200.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

if.end.i203.2:                                    ; preds = %while.body.i200.2
  %dec.i201.2 = add i32 %n.2.lcssa, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i201.1)
  %cmp.i202.2 = icmp sgt i32 %dec.i201.1, 0
  br i1 %cmp.i202.2, label %while.body.i200.3, label %if.end.i203.2.carl9170_find_freq_idx.exit205_crit_edge

if.end.i203.2.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %if.end.i203.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

while.body.i200.3:                                ; preds = %if.end.i203.2
  %arrayidx.i198.3 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i201.2
  %115 = ptrtoint ptr %arrayidx.i198.3 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i198.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %f.0)
  %cmp2.not.i199.3 = icmp ugt i8 %116, %f.0
  br i1 %cmp2.not.i199.3, label %if.end.i203.3, label %while.body.i200.3.carl9170_find_freq_idx.exit205_crit_edge

while.body.i200.3.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %while.body.i200.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

if.end.i203.3:                                    ; preds = %while.body.i200.3
  %dec.i201.3 = add i32 %n.2.lcssa, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i201.2)
  %cmp.i202.3 = icmp sgt i32 %dec.i201.2, 0
  br i1 %cmp.i202.3, label %while.body.i200.4, label %if.end.i203.3.carl9170_find_freq_idx.exit205_crit_edge

if.end.i203.3.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %if.end.i203.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

while.body.i200.4:                                ; preds = %if.end.i203.3
  %arrayidx.i198.4 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i201.3
  %117 = ptrtoint ptr %arrayidx.i198.4 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i198.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %118, i8 %f.0)
  %cmp2.not.i199.4 = icmp ugt i8 %118, %f.0
  br i1 %cmp2.not.i199.4, label %if.end.i203.4, label %while.body.i200.4.carl9170_find_freq_idx.exit205_crit_edge

while.body.i200.4.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %while.body.i200.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

if.end.i203.4:                                    ; preds = %while.body.i200.4
  %dec.i201.4 = add i32 %n.2.lcssa, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i201.3)
  %cmp.i202.4 = icmp sgt i32 %dec.i201.3, 0
  br i1 %cmp.i202.4, label %while.body.i200.5, label %if.end.i203.4.carl9170_find_freq_idx.exit205_crit_edge

if.end.i203.4.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %if.end.i203.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

while.body.i200.5:                                ; preds = %if.end.i203.4
  %arrayidx.i198.5 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i201.4
  %119 = ptrtoint ptr %arrayidx.i198.5 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i198.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %120, i8 %f.0)
  %cmp2.not.i199.5 = icmp ugt i8 %120, %f.0
  br i1 %cmp2.not.i199.5, label %if.end.i203.5, label %while.body.i200.5.carl9170_find_freq_idx.exit205_crit_edge

while.body.i200.5.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %while.body.i200.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

if.end.i203.5:                                    ; preds = %while.body.i200.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i201.4)
  %cmp.i202.5 = icmp sgt i32 %dec.i201.4, 0
  br i1 %cmp.i202.5, label %while.body.i200.6, label %if.end.i203.5.carl9170_find_freq_idx.exit205_crit_edge

if.end.i203.5.carl9170_find_freq_idx.exit205_crit_edge: ; preds = %if.end.i203.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_find_freq_idx.exit205

while.body.i200.6:                                ; preds = %if.end.i203.5
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i201.5 = add i32 %n.2.lcssa, -8
  %arrayidx.i198.6 = getelementptr i8, ptr %pwr_freqs, i32 %dec.i201.5
  %121 = ptrtoint ptr %arrayidx.i198.6 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i198.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %f.0)
  %cmp2.not.i199.6 = icmp ugt i8 %122, %f.0
  %spec.select256 = select i1 %cmp2.not.i199.6, i32 0, i32 %dec.i201.5
  br label %carl9170_find_freq_idx.exit205

carl9170_find_freq_idx.exit205:                   ; preds = %while.body.i200.6, %if.end.i203.5.carl9170_find_freq_idx.exit205_crit_edge, %while.body.i200.5.carl9170_find_freq_idx.exit205_crit_edge, %if.end.i203.4.carl9170_find_freq_idx.exit205_crit_edge, %while.body.i200.4.carl9170_find_freq_idx.exit205_crit_edge, %if.end.i203.3.carl9170_find_freq_idx.exit205_crit_edge, %while.body.i200.3.carl9170_find_freq_idx.exit205_crit_edge, %if.end.i203.2.carl9170_find_freq_idx.exit205_crit_edge, %while.body.i200.2.carl9170_find_freq_idx.exit205_crit_edge, %if.end.i203.1.carl9170_find_freq_idx.exit205_crit_edge, %while.body.i200.1.carl9170_find_freq_idx.exit205_crit_edge, %if.end.i203.carl9170_find_freq_idx.exit205_crit_edge, %while.body.i200.carl9170_find_freq_idx.exit205_crit_edge, %for.end99.carl9170_find_freq_idx.exit205_crit_edge
  %retval.0.i204 = phi i32 [ 0, %for.end99.carl9170_find_freq_idx.exit205_crit_edge ], [ %sub.i195, %while.body.i200.carl9170_find_freq_idx.exit205_crit_edge ], [ 0, %if.end.i203.carl9170_find_freq_idx.exit205_crit_edge ], [ %dec.i201, %while.body.i200.1.carl9170_find_freq_idx.exit205_crit_edge ], [ 0, %if.end.i203.1.carl9170_find_freq_idx.exit205_crit_edge ], [ %dec.i201.1, %while.body.i200.2.carl9170_find_freq_idx.exit205_crit_edge ], [ 0, %if.end.i203.2.carl9170_find_freq_idx.exit205_crit_edge ], [ %dec.i201.2, %while.body.i200.3.carl9170_find_freq_idx.exit205_crit_edge ], [ 0, %if.end.i203.3.carl9170_find_freq_idx.exit205_crit_edge ], [ %dec.i201.3, %while.body.i200.4.carl9170_find_freq_idx.exit205_crit_edge ], [ 0, %if.end.i203.4.carl9170_find_freq_idx.exit205_crit_edge ], [ %dec.i201.4, %while.body.i200.5.carl9170_find_freq_idx.exit205_crit_edge ], [ 0, %if.end.i203.5.carl9170_find_freq_idx.exit205_crit_edge ], [ %spec.select256, %while.body.i200.6 ]
  %arrayidx107 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %retval.0.i204
  %add113 = add nuw i32 %retval.0.i204, 1
  %arrayidx114 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %add113
  %123 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx107, align 1
  %arrayidx112 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %retval.0.i204, i32 1, i32 0
  %125 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx112, align 1
  %127 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx114, align 1
  %arrayidx119 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %add113, i32 1, i32 0
  %129 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx119, align 1
  %conv1.i208 = zext i8 %124 to i32
  %shl2.i209 = shl nuw nsw i32 %conv1.i208, 8
  %conv3.i210 = zext i8 %126 to i32
  %shl4.i211 = shl nuw nsw i32 %conv3.i210, 8
  %conv5.i212 = zext i8 %128 to i32
  %shl6.i213 = shl nuw nsw i32 %conv5.i212, 8
  %conv7.i214 = zext i8 %130 to i32
  %shl8.i215 = shl nuw nsw i32 %conv7.i214, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i215, i32 %shl4.i211)
  %cmp.i.i216 = icmp eq i32 %shl8.i215, %shl4.i211
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i209)
  %cmp1.i.i217 = icmp eq i32 %shl.i, %shl2.i209
  %or.cond.i.i218 = or i1 %cmp1.i.i217, %cmp.i.i216
  br i1 %or.cond.i.i218, label %carl9170_find_freq_idx.exit205.carl9170_interpolate_u8.exit234_crit_edge, label %if.end3.i.i220

carl9170_find_freq_idx.exit205.carl9170_interpolate_u8.exit234_crit_edge: ; preds = %carl9170_find_freq_idx.exit205
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234

if.end3.i.i220:                                   ; preds = %carl9170_find_freq_idx.exit205
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i213)
  %cmp4.i.i219 = icmp eq i32 %shl.i, %shl6.i213
  br i1 %cmp4.i.i219, label %if.end3.i.i220.carl9170_interpolate_u8.exit234_crit_edge, label %if.end6.i.i222

if.end3.i.i220.carl9170_interpolate_u8.exit234_crit_edge: ; preds = %if.end3.i.i220
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234

if.end6.i.i222:                                   ; preds = %if.end3.i.i220
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i213, i32 %shl2.i209)
  %cmp7.i.i221 = icmp eq i32 %shl6.i213, %shl2.i209
  br i1 %cmp7.i.i221, label %if.end6.i.i222.carl9170_interpolate_u8.exit234_crit_edge, label %if.end9.i.i229

if.end6.i.i222.carl9170_interpolate_u8.exit234_crit_edge: ; preds = %if.end6.i.i222
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234

if.end9.i.i229:                                   ; preds = %if.end6.i.i222
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i223 = sub nsw i32 %shl8.i215, %shl4.i211
  %sub10.i.i224 = sub nsw i32 %shl.i, %shl2.i209
  %mul.i.i225 = mul i32 %sub.i.i223, %sub10.i.i224
  %sub11.i.i226 = sub nsw i32 %shl6.i213, %shl2.i209
  %div.i.i227 = sdiv i32 %mul.i.i225, %sub11.i.i226
  %add.i.i228 = add i32 %div.i.i227, %shl4.i211
  br label %carl9170_interpolate_u8.exit234

carl9170_interpolate_u8.exit234:                  ; preds = %if.end9.i.i229, %if.end6.i.i222.carl9170_interpolate_u8.exit234_crit_edge, %if.end3.i.i220.carl9170_interpolate_u8.exit234_crit_edge, %carl9170_find_freq_idx.exit205.carl9170_interpolate_u8.exit234_crit_edge
  %retval.0.i.i230 = phi i32 [ %add.i.i228, %if.end9.i.i229 ], [ %shl4.i211, %carl9170_find_freq_idx.exit205.carl9170_interpolate_u8.exit234_crit_edge ], [ %shl8.i215, %if.end3.i.i220.carl9170_interpolate_u8.exit234_crit_edge ], [ %shl4.i211, %if.end6.i.i222.carl9170_interpolate_u8.exit234_crit_edge ]
  %131 = lshr i32 %retval.0.i.i230, 8
  %and.i231 = lshr i32 %retval.0.i.i230, 7
  %132 = and i32 %and.i231, 1
  %add.i232 = add nuw nsw i32 %132, %131
  %conv10.i233 = trunc i32 %add.i232 to i8
  %133 = ptrtoint ptr %ctpres.1 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv10.i233, ptr %ctpres.1, align 1
  %134 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx107, align 1
  %arrayidx112.1 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %retval.0.i204, i32 1, i32 1
  %136 = ptrtoint ptr %arrayidx112.1 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx112.1, align 1
  %138 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx114, align 1
  %arrayidx119.1 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %add113, i32 1, i32 1
  %140 = ptrtoint ptr %arrayidx119.1 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx119.1, align 1
  %conv1.i208.1 = zext i8 %135 to i32
  %shl2.i209.1 = shl nuw nsw i32 %conv1.i208.1, 8
  %conv3.i210.1 = zext i8 %137 to i32
  %shl4.i211.1 = shl nuw nsw i32 %conv3.i210.1, 8
  %conv5.i212.1 = zext i8 %139 to i32
  %shl6.i213.1 = shl nuw nsw i32 %conv5.i212.1, 8
  %conv7.i214.1 = zext i8 %141 to i32
  %shl8.i215.1 = shl nuw nsw i32 %conv7.i214.1, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i215.1, i32 %shl4.i211.1)
  %cmp.i.i216.1 = icmp eq i32 %shl8.i215.1, %shl4.i211.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i209.1)
  %cmp1.i.i217.1 = icmp eq i32 %shl.i, %shl2.i209.1
  %or.cond.i.i218.1 = or i1 %cmp1.i.i217.1, %cmp.i.i216.1
  br i1 %or.cond.i.i218.1, label %carl9170_interpolate_u8.exit234.carl9170_interpolate_u8.exit234.1_crit_edge, label %if.end3.i.i220.1

carl9170_interpolate_u8.exit234.carl9170_interpolate_u8.exit234.1_crit_edge: ; preds = %carl9170_interpolate_u8.exit234
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.1

if.end3.i.i220.1:                                 ; preds = %carl9170_interpolate_u8.exit234
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i213.1)
  %cmp4.i.i219.1 = icmp eq i32 %shl.i, %shl6.i213.1
  br i1 %cmp4.i.i219.1, label %if.end3.i.i220.1.carl9170_interpolate_u8.exit234.1_crit_edge, label %if.end6.i.i222.1

if.end3.i.i220.1.carl9170_interpolate_u8.exit234.1_crit_edge: ; preds = %if.end3.i.i220.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.1

if.end6.i.i222.1:                                 ; preds = %if.end3.i.i220.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i213.1, i32 %shl2.i209.1)
  %cmp7.i.i221.1 = icmp eq i32 %shl6.i213.1, %shl2.i209.1
  br i1 %cmp7.i.i221.1, label %if.end6.i.i222.1.carl9170_interpolate_u8.exit234.1_crit_edge, label %if.end9.i.i229.1

if.end6.i.i222.1.carl9170_interpolate_u8.exit234.1_crit_edge: ; preds = %if.end6.i.i222.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.1

if.end9.i.i229.1:                                 ; preds = %if.end6.i.i222.1
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i223.1 = sub nsw i32 %shl8.i215.1, %shl4.i211.1
  %sub10.i.i224.1 = sub nsw i32 %shl.i, %shl2.i209.1
  %mul.i.i225.1 = mul i32 %sub.i.i223.1, %sub10.i.i224.1
  %sub11.i.i226.1 = sub nsw i32 %shl6.i213.1, %shl2.i209.1
  %div.i.i227.1 = sdiv i32 %mul.i.i225.1, %sub11.i.i226.1
  %add.i.i228.1 = add i32 %div.i.i227.1, %shl4.i211.1
  br label %carl9170_interpolate_u8.exit234.1

carl9170_interpolate_u8.exit234.1:                ; preds = %if.end9.i.i229.1, %if.end6.i.i222.1.carl9170_interpolate_u8.exit234.1_crit_edge, %if.end3.i.i220.1.carl9170_interpolate_u8.exit234.1_crit_edge, %carl9170_interpolate_u8.exit234.carl9170_interpolate_u8.exit234.1_crit_edge
  %retval.0.i.i230.1 = phi i32 [ %add.i.i228.1, %if.end9.i.i229.1 ], [ %shl4.i211.1, %carl9170_interpolate_u8.exit234.carl9170_interpolate_u8.exit234.1_crit_edge ], [ %shl8.i215.1, %if.end3.i.i220.1.carl9170_interpolate_u8.exit234.1_crit_edge ], [ %shl4.i211.1, %if.end6.i.i222.1.carl9170_interpolate_u8.exit234.1_crit_edge ]
  %142 = lshr i32 %retval.0.i.i230.1, 8
  %and.i231.1 = lshr i32 %retval.0.i.i230.1, 7
  %143 = and i32 %and.i231.1, 1
  %add.i232.1 = add nuw nsw i32 %143, %142
  %conv10.i233.1 = trunc i32 %add.i232.1 to i8
  %arrayidx121.1 = getelementptr i8, ptr %ctpres.1, i32 1
  %144 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv10.i233.1, ptr %arrayidx121.1, align 1
  %145 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx107, align 1
  %arrayidx112.2 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %retval.0.i204, i32 1, i32 2
  %147 = ptrtoint ptr %arrayidx112.2 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx112.2, align 1
  %149 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx114, align 1
  %arrayidx119.2 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %add113, i32 1, i32 2
  %151 = ptrtoint ptr %arrayidx119.2 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx119.2, align 1
  %conv1.i208.2 = zext i8 %146 to i32
  %shl2.i209.2 = shl nuw nsw i32 %conv1.i208.2, 8
  %conv3.i210.2 = zext i8 %148 to i32
  %shl4.i211.2 = shl nuw nsw i32 %conv3.i210.2, 8
  %conv5.i212.2 = zext i8 %150 to i32
  %shl6.i213.2 = shl nuw nsw i32 %conv5.i212.2, 8
  %conv7.i214.2 = zext i8 %152 to i32
  %shl8.i215.2 = shl nuw nsw i32 %conv7.i214.2, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i215.2, i32 %shl4.i211.2)
  %cmp.i.i216.2 = icmp eq i32 %shl8.i215.2, %shl4.i211.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i209.2)
  %cmp1.i.i217.2 = icmp eq i32 %shl.i, %shl2.i209.2
  %or.cond.i.i218.2 = or i1 %cmp1.i.i217.2, %cmp.i.i216.2
  br i1 %or.cond.i.i218.2, label %carl9170_interpolate_u8.exit234.1.carl9170_interpolate_u8.exit234.2_crit_edge, label %if.end3.i.i220.2

carl9170_interpolate_u8.exit234.1.carl9170_interpolate_u8.exit234.2_crit_edge: ; preds = %carl9170_interpolate_u8.exit234.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.2

if.end3.i.i220.2:                                 ; preds = %carl9170_interpolate_u8.exit234.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i213.2)
  %cmp4.i.i219.2 = icmp eq i32 %shl.i, %shl6.i213.2
  br i1 %cmp4.i.i219.2, label %if.end3.i.i220.2.carl9170_interpolate_u8.exit234.2_crit_edge, label %if.end6.i.i222.2

if.end3.i.i220.2.carl9170_interpolate_u8.exit234.2_crit_edge: ; preds = %if.end3.i.i220.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.2

if.end6.i.i222.2:                                 ; preds = %if.end3.i.i220.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i213.2, i32 %shl2.i209.2)
  %cmp7.i.i221.2 = icmp eq i32 %shl6.i213.2, %shl2.i209.2
  br i1 %cmp7.i.i221.2, label %if.end6.i.i222.2.carl9170_interpolate_u8.exit234.2_crit_edge, label %if.end9.i.i229.2

if.end6.i.i222.2.carl9170_interpolate_u8.exit234.2_crit_edge: ; preds = %if.end6.i.i222.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.2

if.end9.i.i229.2:                                 ; preds = %if.end6.i.i222.2
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i223.2 = sub nsw i32 %shl8.i215.2, %shl4.i211.2
  %sub10.i.i224.2 = sub nsw i32 %shl.i, %shl2.i209.2
  %mul.i.i225.2 = mul i32 %sub.i.i223.2, %sub10.i.i224.2
  %sub11.i.i226.2 = sub nsw i32 %shl6.i213.2, %shl2.i209.2
  %div.i.i227.2 = sdiv i32 %mul.i.i225.2, %sub11.i.i226.2
  %add.i.i228.2 = add i32 %div.i.i227.2, %shl4.i211.2
  br label %carl9170_interpolate_u8.exit234.2

carl9170_interpolate_u8.exit234.2:                ; preds = %if.end9.i.i229.2, %if.end6.i.i222.2.carl9170_interpolate_u8.exit234.2_crit_edge, %if.end3.i.i220.2.carl9170_interpolate_u8.exit234.2_crit_edge, %carl9170_interpolate_u8.exit234.1.carl9170_interpolate_u8.exit234.2_crit_edge
  %retval.0.i.i230.2 = phi i32 [ %add.i.i228.2, %if.end9.i.i229.2 ], [ %shl4.i211.2, %carl9170_interpolate_u8.exit234.1.carl9170_interpolate_u8.exit234.2_crit_edge ], [ %shl8.i215.2, %if.end3.i.i220.2.carl9170_interpolate_u8.exit234.2_crit_edge ], [ %shl4.i211.2, %if.end6.i.i222.2.carl9170_interpolate_u8.exit234.2_crit_edge ]
  %153 = lshr i32 %retval.0.i.i230.2, 8
  %and.i231.2 = lshr i32 %retval.0.i.i230.2, 7
  %154 = and i32 %and.i231.2, 1
  %add.i232.2 = add nuw nsw i32 %154, %153
  %conv10.i233.2 = trunc i32 %add.i232.2 to i8
  %arrayidx121.2 = getelementptr i8, ptr %ctpres.1, i32 2
  %155 = ptrtoint ptr %arrayidx121.2 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv10.i233.2, ptr %arrayidx121.2, align 1
  %156 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx107, align 1
  %arrayidx112.3 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %retval.0.i204, i32 1, i32 3
  %158 = ptrtoint ptr %arrayidx112.3 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx112.3, align 1
  %160 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx114, align 1
  %arrayidx119.3 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %add113, i32 1, i32 3
  %162 = ptrtoint ptr %arrayidx119.3 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx119.3, align 1
  %conv1.i208.3 = zext i8 %157 to i32
  %shl2.i209.3 = shl nuw nsw i32 %conv1.i208.3, 8
  %conv3.i210.3 = zext i8 %159 to i32
  %shl4.i211.3 = shl nuw nsw i32 %conv3.i210.3, 8
  %conv5.i212.3 = zext i8 %161 to i32
  %shl6.i213.3 = shl nuw nsw i32 %conv5.i212.3, 8
  %conv7.i214.3 = zext i8 %163 to i32
  %shl8.i215.3 = shl nuw nsw i32 %conv7.i214.3, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i215.3, i32 %shl4.i211.3)
  %cmp.i.i216.3 = icmp eq i32 %shl8.i215.3, %shl4.i211.3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i209.3)
  %cmp1.i.i217.3 = icmp eq i32 %shl.i, %shl2.i209.3
  %or.cond.i.i218.3 = or i1 %cmp1.i.i217.3, %cmp.i.i216.3
  br i1 %or.cond.i.i218.3, label %carl9170_interpolate_u8.exit234.2.carl9170_interpolate_u8.exit234.3_crit_edge, label %if.end3.i.i220.3

carl9170_interpolate_u8.exit234.2.carl9170_interpolate_u8.exit234.3_crit_edge: ; preds = %carl9170_interpolate_u8.exit234.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.3

if.end3.i.i220.3:                                 ; preds = %carl9170_interpolate_u8.exit234.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i213.3)
  %cmp4.i.i219.3 = icmp eq i32 %shl.i, %shl6.i213.3
  br i1 %cmp4.i.i219.3, label %if.end3.i.i220.3.carl9170_interpolate_u8.exit234.3_crit_edge, label %if.end6.i.i222.3

if.end3.i.i220.3.carl9170_interpolate_u8.exit234.3_crit_edge: ; preds = %if.end3.i.i220.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.3

if.end6.i.i222.3:                                 ; preds = %if.end3.i.i220.3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i213.3, i32 %shl2.i209.3)
  %cmp7.i.i221.3 = icmp eq i32 %shl6.i213.3, %shl2.i209.3
  br i1 %cmp7.i.i221.3, label %if.end6.i.i222.3.carl9170_interpolate_u8.exit234.3_crit_edge, label %if.end9.i.i229.3

if.end6.i.i222.3.carl9170_interpolate_u8.exit234.3_crit_edge: ; preds = %if.end6.i.i222.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.3

if.end9.i.i229.3:                                 ; preds = %if.end6.i.i222.3
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i223.3 = sub nsw i32 %shl8.i215.3, %shl4.i211.3
  %sub10.i.i224.3 = sub nsw i32 %shl.i, %shl2.i209.3
  %mul.i.i225.3 = mul i32 %sub.i.i223.3, %sub10.i.i224.3
  %sub11.i.i226.3 = sub nsw i32 %shl6.i213.3, %shl2.i209.3
  %div.i.i227.3 = sdiv i32 %mul.i.i225.3, %sub11.i.i226.3
  %add.i.i228.3 = add i32 %div.i.i227.3, %shl4.i211.3
  br label %carl9170_interpolate_u8.exit234.3

carl9170_interpolate_u8.exit234.3:                ; preds = %if.end9.i.i229.3, %if.end6.i.i222.3.carl9170_interpolate_u8.exit234.3_crit_edge, %if.end3.i.i220.3.carl9170_interpolate_u8.exit234.3_crit_edge, %carl9170_interpolate_u8.exit234.2.carl9170_interpolate_u8.exit234.3_crit_edge
  %retval.0.i.i230.3 = phi i32 [ %add.i.i228.3, %if.end9.i.i229.3 ], [ %shl4.i211.3, %carl9170_interpolate_u8.exit234.2.carl9170_interpolate_u8.exit234.3_crit_edge ], [ %shl8.i215.3, %if.end3.i.i220.3.carl9170_interpolate_u8.exit234.3_crit_edge ], [ %shl4.i211.3, %if.end6.i.i222.3.carl9170_interpolate_u8.exit234.3_crit_edge ]
  %164 = lshr i32 %retval.0.i.i230.3, 8
  %and.i231.3 = lshr i32 %retval.0.i.i230.3, 7
  %165 = and i32 %and.i231.3, 1
  %add.i232.3 = add nuw nsw i32 %165, %164
  %conv10.i233.3 = trunc i32 %add.i232.3 to i8
  %arrayidx121.3 = getelementptr i8, ptr %ctpres.1, i32 3
  %166 = ptrtoint ptr %arrayidx121.3 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv10.i233.3, ptr %arrayidx121.3, align 1
  %167 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx107, align 1
  %arrayidx112.4 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %retval.0.i204, i32 1, i32 4
  %169 = ptrtoint ptr %arrayidx112.4 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx112.4, align 1
  %171 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx114, align 1
  %arrayidx119.4 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %add113, i32 1, i32 4
  %173 = ptrtoint ptr %arrayidx119.4 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx119.4, align 1
  %conv1.i208.4 = zext i8 %168 to i32
  %shl2.i209.4 = shl nuw nsw i32 %conv1.i208.4, 8
  %conv3.i210.4 = zext i8 %170 to i32
  %shl4.i211.4 = shl nuw nsw i32 %conv3.i210.4, 8
  %conv5.i212.4 = zext i8 %172 to i32
  %shl6.i213.4 = shl nuw nsw i32 %conv5.i212.4, 8
  %conv7.i214.4 = zext i8 %174 to i32
  %shl8.i215.4 = shl nuw nsw i32 %conv7.i214.4, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i215.4, i32 %shl4.i211.4)
  %cmp.i.i216.4 = icmp eq i32 %shl8.i215.4, %shl4.i211.4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i209.4)
  %cmp1.i.i217.4 = icmp eq i32 %shl.i, %shl2.i209.4
  %or.cond.i.i218.4 = or i1 %cmp1.i.i217.4, %cmp.i.i216.4
  br i1 %or.cond.i.i218.4, label %carl9170_interpolate_u8.exit234.3.carl9170_interpolate_u8.exit234.4_crit_edge, label %if.end3.i.i220.4

carl9170_interpolate_u8.exit234.3.carl9170_interpolate_u8.exit234.4_crit_edge: ; preds = %carl9170_interpolate_u8.exit234.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.4

if.end3.i.i220.4:                                 ; preds = %carl9170_interpolate_u8.exit234.3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i213.4)
  %cmp4.i.i219.4 = icmp eq i32 %shl.i, %shl6.i213.4
  br i1 %cmp4.i.i219.4, label %if.end3.i.i220.4.carl9170_interpolate_u8.exit234.4_crit_edge, label %if.end6.i.i222.4

if.end3.i.i220.4.carl9170_interpolate_u8.exit234.4_crit_edge: ; preds = %if.end3.i.i220.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.4

if.end6.i.i222.4:                                 ; preds = %if.end3.i.i220.4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i213.4, i32 %shl2.i209.4)
  %cmp7.i.i221.4 = icmp eq i32 %shl6.i213.4, %shl2.i209.4
  br i1 %cmp7.i.i221.4, label %if.end6.i.i222.4.carl9170_interpolate_u8.exit234.4_crit_edge, label %if.end9.i.i229.4

if.end6.i.i222.4.carl9170_interpolate_u8.exit234.4_crit_edge: ; preds = %if.end6.i.i222.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.4

if.end9.i.i229.4:                                 ; preds = %if.end6.i.i222.4
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i223.4 = sub nsw i32 %shl8.i215.4, %shl4.i211.4
  %sub10.i.i224.4 = sub nsw i32 %shl.i, %shl2.i209.4
  %mul.i.i225.4 = mul i32 %sub.i.i223.4, %sub10.i.i224.4
  %sub11.i.i226.4 = sub nsw i32 %shl6.i213.4, %shl2.i209.4
  %div.i.i227.4 = sdiv i32 %mul.i.i225.4, %sub11.i.i226.4
  %add.i.i228.4 = add i32 %div.i.i227.4, %shl4.i211.4
  br label %carl9170_interpolate_u8.exit234.4

carl9170_interpolate_u8.exit234.4:                ; preds = %if.end9.i.i229.4, %if.end6.i.i222.4.carl9170_interpolate_u8.exit234.4_crit_edge, %if.end3.i.i220.4.carl9170_interpolate_u8.exit234.4_crit_edge, %carl9170_interpolate_u8.exit234.3.carl9170_interpolate_u8.exit234.4_crit_edge
  %retval.0.i.i230.4 = phi i32 [ %add.i.i228.4, %if.end9.i.i229.4 ], [ %shl4.i211.4, %carl9170_interpolate_u8.exit234.3.carl9170_interpolate_u8.exit234.4_crit_edge ], [ %shl8.i215.4, %if.end3.i.i220.4.carl9170_interpolate_u8.exit234.4_crit_edge ], [ %shl4.i211.4, %if.end6.i.i222.4.carl9170_interpolate_u8.exit234.4_crit_edge ]
  %175 = lshr i32 %retval.0.i.i230.4, 8
  %and.i231.4 = lshr i32 %retval.0.i.i230.4, 7
  %176 = and i32 %and.i231.4, 1
  %add.i232.4 = add nuw nsw i32 %176, %175
  %conv10.i233.4 = trunc i32 %add.i232.4 to i8
  %arrayidx121.4 = getelementptr i8, ptr %ctpres.1, i32 4
  %177 = ptrtoint ptr %arrayidx121.4 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv10.i233.4, ptr %arrayidx121.4, align 1
  %178 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx107, align 1
  %arrayidx112.5 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %retval.0.i204, i32 1, i32 5
  %180 = ptrtoint ptr %arrayidx112.5 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx112.5, align 1
  %182 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx114, align 1
  %arrayidx119.5 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %add113, i32 1, i32 5
  %184 = ptrtoint ptr %arrayidx119.5 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx119.5, align 1
  %conv1.i208.5 = zext i8 %179 to i32
  %shl2.i209.5 = shl nuw nsw i32 %conv1.i208.5, 8
  %conv3.i210.5 = zext i8 %181 to i32
  %shl4.i211.5 = shl nuw nsw i32 %conv3.i210.5, 8
  %conv5.i212.5 = zext i8 %183 to i32
  %shl6.i213.5 = shl nuw nsw i32 %conv5.i212.5, 8
  %conv7.i214.5 = zext i8 %185 to i32
  %shl8.i215.5 = shl nuw nsw i32 %conv7.i214.5, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i215.5, i32 %shl4.i211.5)
  %cmp.i.i216.5 = icmp eq i32 %shl8.i215.5, %shl4.i211.5
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i209.5)
  %cmp1.i.i217.5 = icmp eq i32 %shl.i, %shl2.i209.5
  %or.cond.i.i218.5 = or i1 %cmp1.i.i217.5, %cmp.i.i216.5
  br i1 %or.cond.i.i218.5, label %carl9170_interpolate_u8.exit234.4.carl9170_interpolate_u8.exit234.5_crit_edge, label %if.end3.i.i220.5

carl9170_interpolate_u8.exit234.4.carl9170_interpolate_u8.exit234.5_crit_edge: ; preds = %carl9170_interpolate_u8.exit234.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.5

if.end3.i.i220.5:                                 ; preds = %carl9170_interpolate_u8.exit234.4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i213.5)
  %cmp4.i.i219.5 = icmp eq i32 %shl.i, %shl6.i213.5
  br i1 %cmp4.i.i219.5, label %if.end3.i.i220.5.carl9170_interpolate_u8.exit234.5_crit_edge, label %if.end6.i.i222.5

if.end3.i.i220.5.carl9170_interpolate_u8.exit234.5_crit_edge: ; preds = %if.end3.i.i220.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.5

if.end6.i.i222.5:                                 ; preds = %if.end3.i.i220.5
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i213.5, i32 %shl2.i209.5)
  %cmp7.i.i221.5 = icmp eq i32 %shl6.i213.5, %shl2.i209.5
  br i1 %cmp7.i.i221.5, label %if.end6.i.i222.5.carl9170_interpolate_u8.exit234.5_crit_edge, label %if.end9.i.i229.5

if.end6.i.i222.5.carl9170_interpolate_u8.exit234.5_crit_edge: ; preds = %if.end6.i.i222.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.5

if.end9.i.i229.5:                                 ; preds = %if.end6.i.i222.5
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i223.5 = sub nsw i32 %shl8.i215.5, %shl4.i211.5
  %sub10.i.i224.5 = sub nsw i32 %shl.i, %shl2.i209.5
  %mul.i.i225.5 = mul i32 %sub.i.i223.5, %sub10.i.i224.5
  %sub11.i.i226.5 = sub nsw i32 %shl6.i213.5, %shl2.i209.5
  %div.i.i227.5 = sdiv i32 %mul.i.i225.5, %sub11.i.i226.5
  %add.i.i228.5 = add i32 %div.i.i227.5, %shl4.i211.5
  br label %carl9170_interpolate_u8.exit234.5

carl9170_interpolate_u8.exit234.5:                ; preds = %if.end9.i.i229.5, %if.end6.i.i222.5.carl9170_interpolate_u8.exit234.5_crit_edge, %if.end3.i.i220.5.carl9170_interpolate_u8.exit234.5_crit_edge, %carl9170_interpolate_u8.exit234.4.carl9170_interpolate_u8.exit234.5_crit_edge
  %retval.0.i.i230.5 = phi i32 [ %add.i.i228.5, %if.end9.i.i229.5 ], [ %shl4.i211.5, %carl9170_interpolate_u8.exit234.4.carl9170_interpolate_u8.exit234.5_crit_edge ], [ %shl8.i215.5, %if.end3.i.i220.5.carl9170_interpolate_u8.exit234.5_crit_edge ], [ %shl4.i211.5, %if.end6.i.i222.5.carl9170_interpolate_u8.exit234.5_crit_edge ]
  %186 = lshr i32 %retval.0.i.i230.5, 8
  %and.i231.5 = lshr i32 %retval.0.i.i230.5, 7
  %187 = and i32 %and.i231.5, 1
  %add.i232.5 = add nuw nsw i32 %187, %186
  %conv10.i233.5 = trunc i32 %add.i232.5 to i8
  %arrayidx121.5 = getelementptr i8, ptr %ctpres.1, i32 5
  %188 = ptrtoint ptr %arrayidx121.5 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv10.i233.5, ptr %arrayidx121.5, align 1
  %189 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx107, align 1
  %arrayidx112.6 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %retval.0.i204, i32 1, i32 6
  %191 = ptrtoint ptr %arrayidx112.6 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx112.6, align 1
  %193 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx114, align 1
  %arrayidx119.6 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %add113, i32 1, i32 6
  %195 = ptrtoint ptr %arrayidx119.6 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx119.6, align 1
  %conv1.i208.6 = zext i8 %190 to i32
  %shl2.i209.6 = shl nuw nsw i32 %conv1.i208.6, 8
  %conv3.i210.6 = zext i8 %192 to i32
  %shl4.i211.6 = shl nuw nsw i32 %conv3.i210.6, 8
  %conv5.i212.6 = zext i8 %194 to i32
  %shl6.i213.6 = shl nuw nsw i32 %conv5.i212.6, 8
  %conv7.i214.6 = zext i8 %196 to i32
  %shl8.i215.6 = shl nuw nsw i32 %conv7.i214.6, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i215.6, i32 %shl4.i211.6)
  %cmp.i.i216.6 = icmp eq i32 %shl8.i215.6, %shl4.i211.6
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i209.6)
  %cmp1.i.i217.6 = icmp eq i32 %shl.i, %shl2.i209.6
  %or.cond.i.i218.6 = or i1 %cmp1.i.i217.6, %cmp.i.i216.6
  br i1 %or.cond.i.i218.6, label %carl9170_interpolate_u8.exit234.5.carl9170_interpolate_u8.exit234.6_crit_edge, label %if.end3.i.i220.6

carl9170_interpolate_u8.exit234.5.carl9170_interpolate_u8.exit234.6_crit_edge: ; preds = %carl9170_interpolate_u8.exit234.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.6

if.end3.i.i220.6:                                 ; preds = %carl9170_interpolate_u8.exit234.5
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i213.6)
  %cmp4.i.i219.6 = icmp eq i32 %shl.i, %shl6.i213.6
  br i1 %cmp4.i.i219.6, label %if.end3.i.i220.6.carl9170_interpolate_u8.exit234.6_crit_edge, label %if.end6.i.i222.6

if.end3.i.i220.6.carl9170_interpolate_u8.exit234.6_crit_edge: ; preds = %if.end3.i.i220.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.6

if.end6.i.i222.6:                                 ; preds = %if.end3.i.i220.6
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i213.6, i32 %shl2.i209.6)
  %cmp7.i.i221.6 = icmp eq i32 %shl6.i213.6, %shl2.i209.6
  br i1 %cmp7.i.i221.6, label %if.end6.i.i222.6.carl9170_interpolate_u8.exit234.6_crit_edge, label %if.end9.i.i229.6

if.end6.i.i222.6.carl9170_interpolate_u8.exit234.6_crit_edge: ; preds = %if.end6.i.i222.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.6

if.end9.i.i229.6:                                 ; preds = %if.end6.i.i222.6
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i223.6 = sub nsw i32 %shl8.i215.6, %shl4.i211.6
  %sub10.i.i224.6 = sub nsw i32 %shl.i, %shl2.i209.6
  %mul.i.i225.6 = mul i32 %sub.i.i223.6, %sub10.i.i224.6
  %sub11.i.i226.6 = sub nsw i32 %shl6.i213.6, %shl2.i209.6
  %div.i.i227.6 = sdiv i32 %mul.i.i225.6, %sub11.i.i226.6
  %add.i.i228.6 = add i32 %div.i.i227.6, %shl4.i211.6
  br label %carl9170_interpolate_u8.exit234.6

carl9170_interpolate_u8.exit234.6:                ; preds = %if.end9.i.i229.6, %if.end6.i.i222.6.carl9170_interpolate_u8.exit234.6_crit_edge, %if.end3.i.i220.6.carl9170_interpolate_u8.exit234.6_crit_edge, %carl9170_interpolate_u8.exit234.5.carl9170_interpolate_u8.exit234.6_crit_edge
  %retval.0.i.i230.6 = phi i32 [ %add.i.i228.6, %if.end9.i.i229.6 ], [ %shl4.i211.6, %carl9170_interpolate_u8.exit234.5.carl9170_interpolate_u8.exit234.6_crit_edge ], [ %shl8.i215.6, %if.end3.i.i220.6.carl9170_interpolate_u8.exit234.6_crit_edge ], [ %shl4.i211.6, %if.end6.i.i222.6.carl9170_interpolate_u8.exit234.6_crit_edge ]
  %197 = lshr i32 %retval.0.i.i230.6, 8
  %and.i231.6 = lshr i32 %retval.0.i.i230.6, 7
  %198 = and i32 %and.i231.6, 1
  %add.i232.6 = add nuw nsw i32 %198, %197
  %conv10.i233.6 = trunc i32 %add.i232.6 to i8
  %arrayidx121.6 = getelementptr i8, ptr %ctpres.1, i32 6
  %199 = ptrtoint ptr %arrayidx121.6 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv10.i233.6, ptr %arrayidx121.6, align 1
  %200 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx107, align 1
  %arrayidx112.7 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %retval.0.i204, i32 1, i32 7
  %202 = ptrtoint ptr %arrayidx112.7 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx112.7, align 1
  %204 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx114, align 1
  %arrayidx119.7 = getelementptr %struct.ar9170_calibration_target_power_ht, ptr %ctph.0, i32 %add113, i32 1, i32 7
  %206 = ptrtoint ptr %arrayidx119.7 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx119.7, align 1
  %conv1.i208.7 = zext i8 %201 to i32
  %shl2.i209.7 = shl nuw nsw i32 %conv1.i208.7, 8
  %conv3.i210.7 = zext i8 %203 to i32
  %shl4.i211.7 = shl nuw nsw i32 %conv3.i210.7, 8
  %conv5.i212.7 = zext i8 %205 to i32
  %shl6.i213.7 = shl nuw nsw i32 %conv5.i212.7, 8
  %conv7.i214.7 = zext i8 %207 to i32
  %shl8.i215.7 = shl nuw nsw i32 %conv7.i214.7, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl8.i215.7, i32 %shl4.i211.7)
  %cmp.i.i216.7 = icmp eq i32 %shl8.i215.7, %shl4.i211.7
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl2.i209.7)
  %cmp1.i.i217.7 = icmp eq i32 %shl.i, %shl2.i209.7
  %or.cond.i.i218.7 = or i1 %cmp1.i.i217.7, %cmp.i.i216.7
  br i1 %or.cond.i.i218.7, label %carl9170_interpolate_u8.exit234.6.carl9170_interpolate_u8.exit234.7_crit_edge, label %if.end3.i.i220.7

carl9170_interpolate_u8.exit234.6.carl9170_interpolate_u8.exit234.7_crit_edge: ; preds = %carl9170_interpolate_u8.exit234.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.7

if.end3.i.i220.7:                                 ; preds = %carl9170_interpolate_u8.exit234.6
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl6.i213.7)
  %cmp4.i.i219.7 = icmp eq i32 %shl.i, %shl6.i213.7
  br i1 %cmp4.i.i219.7, label %if.end3.i.i220.7.carl9170_interpolate_u8.exit234.7_crit_edge, label %if.end6.i.i222.7

if.end3.i.i220.7.carl9170_interpolate_u8.exit234.7_crit_edge: ; preds = %if.end3.i.i220.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.7

if.end6.i.i222.7:                                 ; preds = %if.end3.i.i220.7
  call void @__sanitizer_cov_trace_cmp4(i32 %shl6.i213.7, i32 %shl2.i209.7)
  %cmp7.i.i221.7 = icmp eq i32 %shl6.i213.7, %shl2.i209.7
  br i1 %cmp7.i.i221.7, label %if.end6.i.i222.7.carl9170_interpolate_u8.exit234.7_crit_edge, label %if.end9.i.i229.7

if.end6.i.i222.7.carl9170_interpolate_u8.exit234.7_crit_edge: ; preds = %if.end6.i.i222.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_interpolate_u8.exit234.7

if.end9.i.i229.7:                                 ; preds = %if.end6.i.i222.7
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i223.7 = sub nsw i32 %shl8.i215.7, %shl4.i211.7
  %sub10.i.i224.7 = sub nsw i32 %shl.i, %shl2.i209.7
  %mul.i.i225.7 = mul i32 %sub.i.i223.7, %sub10.i.i224.7
  %sub11.i.i226.7 = sub nsw i32 %shl6.i213.7, %shl2.i209.7
  %div.i.i227.7 = sdiv i32 %mul.i.i225.7, %sub11.i.i226.7
  %add.i.i228.7 = add i32 %div.i.i227.7, %shl4.i211.7
  br label %carl9170_interpolate_u8.exit234.7

carl9170_interpolate_u8.exit234.7:                ; preds = %if.end9.i.i229.7, %if.end6.i.i222.7.carl9170_interpolate_u8.exit234.7_crit_edge, %if.end3.i.i220.7.carl9170_interpolate_u8.exit234.7_crit_edge, %carl9170_interpolate_u8.exit234.6.carl9170_interpolate_u8.exit234.7_crit_edge
  %retval.0.i.i230.7 = phi i32 [ %add.i.i228.7, %if.end9.i.i229.7 ], [ %shl4.i211.7, %carl9170_interpolate_u8.exit234.6.carl9170_interpolate_u8.exit234.7_crit_edge ], [ %shl8.i215.7, %if.end3.i.i220.7.carl9170_interpolate_u8.exit234.7_crit_edge ], [ %shl4.i211.7, %if.end6.i.i222.7.carl9170_interpolate_u8.exit234.7_crit_edge ]
  %208 = lshr i32 %retval.0.i.i230.7, 8
  %and.i231.7 = lshr i32 %retval.0.i.i230.7, 7
  %209 = and i32 %and.i231.7, 1
  %add.i232.7 = add nuw nsw i32 %209, %208
  %conv10.i233.7 = trunc i32 %add.i232.7 to i8
  %arrayidx121.7 = getelementptr i8, ptr %ctpres.1, i32 7
  %210 = ptrtoint ptr %arrayidx121.7 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv10.i233.7, ptr %arrayidx121.7, align 1
  %inc126 = add nuw nsw i32 %i.1250, 1
  %exitcond255.not = icmp eq i32 %inc126, 4
  br i1 %exitcond255.not, label %for.end127, label %carl9170_interpolate_u8.exit234.7.for.body58_crit_edge

carl9170_interpolate_u8.exit234.7.for.body58_crit_edge: ; preds = %carl9170_interpolate_u8.exit234.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body58

for.end127:                                       ; preds = %carl9170_interpolate_u8.exit234.7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mode_list_2ghz.i) #5
  %211 = call ptr @memset(ptr %mode_list_2ghz.i, i32 255, i32 40)
  %212 = ptrtoint ptr %mode_list_2ghz.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %mode_list_2ghz.i, align 4
  %max_power.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 0, i32 1
  %213 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %max_power.i, align 1
  %pwr_cal_data.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 0, i32 2
  %214 = ptrtoint ptr %pwr_cal_data.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %power_2G_cck, ptr %pwr_cal_data.i, align 4
  %pwr_cal_len.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 0, i32 3
  %215 = ptrtoint ptr %pwr_cal_len.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 4, ptr %pwr_cal_len.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 1
  %216 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 2, ptr %arrayinit.element.i, align 4
  %max_power2.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 1, i32 1
  %217 = ptrtoint ptr %max_power2.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %max_power2.i, align 1
  %pwr_cal_data3.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 1, i32 2
  %218 = ptrtoint ptr %pwr_cal_data3.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %power_2G_ofdm, ptr %pwr_cal_data3.i, align 4
  %pwr_cal_len5.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 1, i32 3
  %219 = ptrtoint ptr %pwr_cal_len5.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 4, ptr %pwr_cal_len5.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 2
  %220 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 5, ptr %arrayinit.element6.i, align 4
  %max_power8.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 2, i32 1
  %221 = ptrtoint ptr %max_power8.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %max_power8.i, align 1
  %pwr_cal_data9.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 2, i32 2
  %222 = ptrtoint ptr %pwr_cal_data9.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %power_2G_ht20, ptr %pwr_cal_data9.i, align 4
  %pwr_cal_len11.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 2, i32 3
  %223 = ptrtoint ptr %pwr_cal_len11.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 8, ptr %pwr_cal_len11.i, align 4
  %arrayinit.element12.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 3
  %224 = ptrtoint ptr %arrayinit.element12.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 7, ptr %arrayinit.element12.i, align 4
  %max_power14.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 3, i32 1
  %225 = ptrtoint ptr %max_power14.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %max_power14.i, align 1
  %pwr_cal_data15.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 3, i32 2
  %226 = ptrtoint ptr %pwr_cal_data15.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %power_2G_ht40, ptr %pwr_cal_data15.i, align 4
  %pwr_cal_len17.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_2ghz.i, i32 3, i32 3
  %227 = ptrtoint ptr %pwr_cal_len17.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 8, ptr %pwr_cal_len17.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mode_list_5ghz.i) #5
  %228 = call ptr @memset(ptr %mode_list_5ghz.i, i32 255, i32 28)
  %229 = ptrtoint ptr %mode_list_5ghz.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %mode_list_5ghz.i, align 4
  %max_power20.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 0, i32 1
  %230 = ptrtoint ptr %max_power20.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %max_power20.i, align 1
  %pwr_cal_data21.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 0, i32 2
  %231 = ptrtoint ptr %pwr_cal_data21.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %power_5G_leg, ptr %pwr_cal_data21.i, align 4
  %pwr_cal_len23.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 0, i32 3
  %232 = ptrtoint ptr %pwr_cal_len23.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 4, ptr %pwr_cal_len23.i, align 4
  %arrayinit.element24.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 1
  %233 = ptrtoint ptr %arrayinit.element24.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 6, ptr %arrayinit.element24.i, align 4
  %max_power26.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 1, i32 1
  %234 = ptrtoint ptr %max_power26.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 0, ptr %max_power26.i, align 1
  %pwr_cal_data27.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 1, i32 2
  %235 = ptrtoint ptr %pwr_cal_data27.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %power_5G_ht20, ptr %pwr_cal_data27.i, align 4
  %pwr_cal_len29.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 1, i32 3
  %236 = ptrtoint ptr %pwr_cal_len29.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 8, ptr %pwr_cal_len29.i, align 4
  %arrayinit.element30.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 2
  %237 = ptrtoint ptr %arrayinit.element30.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 8, ptr %arrayinit.element30.i, align 4
  %max_power32.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 2, i32 1
  %238 = ptrtoint ptr %max_power32.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %max_power32.i, align 1
  %pwr_cal_data33.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 2, i32 2
  %239 = ptrtoint ptr %pwr_cal_data33.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %power_5G_ht40, ptr %pwr_cal_data33.i, align 4
  %pwr_cal_len35.i = getelementptr inbounds %struct.ctl_modes, ptr %mode_list_5ghz.i, i32 2, i32 3
  %240 = ptrtoint ptr %pwr_cal_len35.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 8, ptr %pwr_cal_len35.i, align 4
  %heavy_clip.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 60
  %241 = ptrtoint ptr %heavy_clip.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %heavy_clip.i, align 4
  %regulatory.i = getelementptr inbounds %struct.ath_common, ptr %ar, i32 0, i32 22
  %hw.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %242 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %243, i32 0, i32 7
  %244 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %chandef.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %245, align 4
  %call.i = tail call i32 @ath_regd_get_band_ctl(ptr noundef %regulatory.i, i32 noundef %247) #5
  %trunc.i = trunc i32 %call.i to i8
  %248 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %248, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %trunc.i, label %if.end.i235 [
    i8 -1, label %for.end127.if.end45.i_crit_edge
    i8 -32, label %for.end127.if.end45.i_crit_edge257
  ]

for.end127.if.end45.i_crit_edge257:               ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

for.end127.if.end45.i_crit_edge:                  ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.end.i235:                                      ; preds = %for.end127
  %conv41.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv41.i)
  %cmp42.not.i = icmp eq i32 %conv41.i, 16
  br i1 %cmp42.not.i, label %if.end.i235.if.end45.i_crit_edge, label %if.end.i235.carl9170_calc_ctl.exit_crit_edge

if.end.i235.carl9170_calc_ctl.exit_crit_edge:     ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_calc_ctl.exit

if.end.i235.if.end45.i_crit_edge:                 ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end.i235.if.end45.i_crit_edge, %for.end127.if.end45.i_crit_edge, %for.end127.if.end45.i_crit_edge257
  %249 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hw.i, align 4
  %chandef48.i = getelementptr inbounds %struct.ieee80211_conf, ptr %250, i32 0, i32 7
  %251 = ptrtoint ptr %chandef48.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %chandef48.i, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp51.i = icmp eq i32 %254, 0
  %mode_list_2ghz.mode_list_5ghz.i = select i1 %cmp51.i, ptr %mode_list_2ghz.i, ptr %mode_list_5ghz.i
  %..i = select i1 %cmp51.i, i32 4, i32 3
  %bw.off.i.i = add i32 %bw, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bw.off.i.i)
  %switch.i.i = icmp ult i32 %bw.off.i.i, 2
  %spec.select1.i.i = select i1 %switch.i.i, i8 -16, i8 0
  %255 = or i8 %spec.select1.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bw)
  %cmp105.i = icmp eq i32 %bw, 1
  %.266.i = select i1 %cmp105.i, i32 -10, i32 10
  %arrayidx69.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 0
  %arrayidx69.1.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 1
  %arrayidx69.2.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 2
  %arrayidx69.3.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 3
  %arrayidx69.4.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 4
  %arrayidx69.5.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 5
  %arrayidx69.6.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 6
  %arrayidx69.7.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 7
  %arrayidx69.8.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 8
  %arrayidx69.9.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 9
  %arrayidx69.10.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 10
  %arrayidx69.11.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 11
  %arrayidx69.12.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 12
  %arrayidx69.13.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 13
  %arrayidx69.14.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 14
  %arrayidx69.15.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 15
  %arrayidx69.16.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 16
  %arrayidx69.17.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 17
  %arrayidx69.18.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 18
  %arrayidx69.19.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 19
  %arrayidx69.20.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 20
  %arrayidx69.21.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 21
  %arrayidx69.22.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 22
  %arrayidx69.23.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 28, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.end161.i.for.body.i_crit_edge, %if.end45.i
  %i.0308.i = phi i32 [ 0, %if.end45.i ], [ %inc163.i, %for.end161.i.for.body.i_crit_edge ]
  %arrayidx.i239 = getelementptr %struct.ctl_modes, ptr %mode_list_2ghz.mode_list_5ghz.i, i32 %i.0308.i
  %256 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx.i239, align 4
  %258 = or i8 %257, 16
  %259 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx69.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %260)
  %cmp71.i = icmp eq i8 %258, %260
  br i1 %cmp71.i, label %for.body.i.if.then78.critedge.i_crit_edge, label %for.cond63.i

for.body.i.if.then78.critedge.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.i:                                     ; preds = %for.body.i
  %261 = ptrtoint ptr %arrayidx69.1.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx69.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %262)
  %cmp71.1.i = icmp eq i8 %258, %262
  br i1 %cmp71.1.i, label %for.cond63.i.if.then78.critedge.i_crit_edge, label %for.cond63.1.i

for.cond63.i.if.then78.critedge.i_crit_edge:      ; preds = %for.cond63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.1.i:                                   ; preds = %for.cond63.i
  %263 = ptrtoint ptr %arrayidx69.2.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx69.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %264)
  %cmp71.2.i = icmp eq i8 %258, %264
  br i1 %cmp71.2.i, label %for.cond63.1.i.if.then78.critedge.i_crit_edge, label %for.cond63.2.i

for.cond63.1.i.if.then78.critedge.i_crit_edge:    ; preds = %for.cond63.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.2.i:                                   ; preds = %for.cond63.1.i
  %265 = ptrtoint ptr %arrayidx69.3.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx69.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %266)
  %cmp71.3.i = icmp eq i8 %258, %266
  br i1 %cmp71.3.i, label %for.cond63.2.i.if.then78.critedge.i_crit_edge, label %for.cond63.3.i

for.cond63.2.i.if.then78.critedge.i_crit_edge:    ; preds = %for.cond63.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.3.i:                                   ; preds = %for.cond63.2.i
  %267 = ptrtoint ptr %arrayidx69.4.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx69.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %268)
  %cmp71.4.i = icmp eq i8 %258, %268
  br i1 %cmp71.4.i, label %for.cond63.3.i.if.then78.critedge.i_crit_edge, label %for.cond63.4.i

for.cond63.3.i.if.then78.critedge.i_crit_edge:    ; preds = %for.cond63.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.4.i:                                   ; preds = %for.cond63.3.i
  %269 = ptrtoint ptr %arrayidx69.5.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx69.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %270)
  %cmp71.5.i = icmp eq i8 %258, %270
  br i1 %cmp71.5.i, label %for.cond63.4.i.if.then78.critedge.i_crit_edge, label %for.cond63.5.i

for.cond63.4.i.if.then78.critedge.i_crit_edge:    ; preds = %for.cond63.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.5.i:                                   ; preds = %for.cond63.4.i
  %271 = ptrtoint ptr %arrayidx69.6.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx69.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %272)
  %cmp71.6.i = icmp eq i8 %258, %272
  br i1 %cmp71.6.i, label %for.cond63.5.i.if.then78.critedge.i_crit_edge, label %for.cond63.6.i

for.cond63.5.i.if.then78.critedge.i_crit_edge:    ; preds = %for.cond63.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.6.i:                                   ; preds = %for.cond63.5.i
  %273 = ptrtoint ptr %arrayidx69.7.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx69.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %274)
  %cmp71.7.i = icmp eq i8 %258, %274
  br i1 %cmp71.7.i, label %for.cond63.6.i.if.then78.critedge.i_crit_edge, label %for.cond63.7.i

for.cond63.6.i.if.then78.critedge.i_crit_edge:    ; preds = %for.cond63.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.7.i:                                   ; preds = %for.cond63.6.i
  %275 = ptrtoint ptr %arrayidx69.8.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx69.8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %276)
  %cmp71.8.i = icmp eq i8 %258, %276
  br i1 %cmp71.8.i, label %for.cond63.7.i.if.then78.critedge.i_crit_edge, label %for.cond63.8.i

for.cond63.7.i.if.then78.critedge.i_crit_edge:    ; preds = %for.cond63.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.8.i:                                   ; preds = %for.cond63.7.i
  %277 = ptrtoint ptr %arrayidx69.9.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx69.9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %278)
  %cmp71.9.i = icmp eq i8 %258, %278
  br i1 %cmp71.9.i, label %for.cond63.8.i.if.then78.critedge.i_crit_edge, label %for.cond63.9.i

for.cond63.8.i.if.then78.critedge.i_crit_edge:    ; preds = %for.cond63.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.9.i:                                   ; preds = %for.cond63.8.i
  %279 = ptrtoint ptr %arrayidx69.10.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx69.10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %280)
  %cmp71.10.i = icmp eq i8 %258, %280
  br i1 %cmp71.10.i, label %for.cond63.9.i.if.then78.critedge.i_crit_edge, label %for.cond63.10.i

for.cond63.9.i.if.then78.critedge.i_crit_edge:    ; preds = %for.cond63.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.10.i:                                  ; preds = %for.cond63.9.i
  %281 = ptrtoint ptr %arrayidx69.11.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx69.11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %282)
  %cmp71.11.i = icmp eq i8 %258, %282
  br i1 %cmp71.11.i, label %for.cond63.10.i.if.then78.critedge.i_crit_edge, label %for.cond63.11.i

for.cond63.10.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.11.i:                                  ; preds = %for.cond63.10.i
  %283 = ptrtoint ptr %arrayidx69.12.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx69.12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %284)
  %cmp71.12.i = icmp eq i8 %258, %284
  br i1 %cmp71.12.i, label %for.cond63.11.i.if.then78.critedge.i_crit_edge, label %for.cond63.12.i

for.cond63.11.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.12.i:                                  ; preds = %for.cond63.11.i
  %285 = ptrtoint ptr %arrayidx69.13.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx69.13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %286)
  %cmp71.13.i = icmp eq i8 %258, %286
  br i1 %cmp71.13.i, label %for.cond63.12.i.if.then78.critedge.i_crit_edge, label %for.cond63.13.i

for.cond63.12.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.13.i:                                  ; preds = %for.cond63.12.i
  %287 = ptrtoint ptr %arrayidx69.14.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx69.14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %288)
  %cmp71.14.i = icmp eq i8 %258, %288
  br i1 %cmp71.14.i, label %for.cond63.13.i.if.then78.critedge.i_crit_edge, label %for.cond63.14.i

for.cond63.13.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.14.i:                                  ; preds = %for.cond63.13.i
  %289 = ptrtoint ptr %arrayidx69.15.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx69.15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %290)
  %cmp71.15.i = icmp eq i8 %258, %290
  br i1 %cmp71.15.i, label %for.cond63.14.i.if.then78.critedge.i_crit_edge, label %for.cond63.15.i

for.cond63.14.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.15.i:                                  ; preds = %for.cond63.14.i
  %291 = ptrtoint ptr %arrayidx69.16.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx69.16.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %292)
  %cmp71.16.i = icmp eq i8 %258, %292
  br i1 %cmp71.16.i, label %for.cond63.15.i.if.then78.critedge.i_crit_edge, label %for.cond63.16.i

for.cond63.15.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.16.i:                                  ; preds = %for.cond63.15.i
  %293 = ptrtoint ptr %arrayidx69.17.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx69.17.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %294)
  %cmp71.17.i = icmp eq i8 %258, %294
  br i1 %cmp71.17.i, label %for.cond63.16.i.if.then78.critedge.i_crit_edge, label %for.cond63.17.i

for.cond63.16.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.17.i:                                  ; preds = %for.cond63.16.i
  %295 = ptrtoint ptr %arrayidx69.18.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx69.18.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %296)
  %cmp71.18.i = icmp eq i8 %258, %296
  br i1 %cmp71.18.i, label %for.cond63.17.i.if.then78.critedge.i_crit_edge, label %for.cond63.18.i

for.cond63.17.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.18.i:                                  ; preds = %for.cond63.17.i
  %297 = ptrtoint ptr %arrayidx69.19.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx69.19.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %298)
  %cmp71.19.i = icmp eq i8 %258, %298
  br i1 %cmp71.19.i, label %for.cond63.18.i.if.then78.critedge.i_crit_edge, label %for.cond63.19.i

for.cond63.18.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.19.i:                                  ; preds = %for.cond63.18.i
  %299 = ptrtoint ptr %arrayidx69.20.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx69.20.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %300)
  %cmp71.20.i = icmp eq i8 %258, %300
  br i1 %cmp71.20.i, label %for.cond63.19.i.if.then78.critedge.i_crit_edge, label %for.cond63.20.i

for.cond63.19.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.20.i:                                  ; preds = %for.cond63.19.i
  %301 = ptrtoint ptr %arrayidx69.21.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx69.21.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %302)
  %cmp71.21.i = icmp eq i8 %258, %302
  br i1 %cmp71.21.i, label %for.cond63.20.i.if.then78.critedge.i_crit_edge, label %for.cond63.21.i

for.cond63.20.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.21.i:                                  ; preds = %for.cond63.20.i
  %303 = ptrtoint ptr %arrayidx69.22.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx69.22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %304)
  %cmp71.22.i = icmp eq i8 %258, %304
  br i1 %cmp71.22.i, label %for.cond63.21.i.if.then78.critedge.i_crit_edge, label %for.cond63.22.i

for.cond63.21.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.22.i:                                  ; preds = %for.cond63.21.i
  %305 = ptrtoint ptr %arrayidx69.23.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx69.23.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %306)
  %cmp71.23.i = icmp eq i8 %258, %306
  br i1 %cmp71.23.i, label %for.cond63.22.i.if.then78.critedge.i_crit_edge, label %for.cond63.23.i

for.cond63.22.i.if.then78.critedge.i_crit_edge:   ; preds = %for.cond63.22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78.critedge.i

for.cond63.23.i:                                  ; preds = %for.cond63.22.i
  %max_power123.i = getelementptr %struct.ctl_modes, ptr %mode_list_2ghz.mode_list_5ghz.i, i32 %i.0308.i, i32 1
  %307 = ptrtoint ptr %max_power123.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 63, ptr %max_power123.i, align 1
  br label %while.cond.i

if.then78.critedge.i:                             ; preds = %for.cond63.22.i.if.then78.critedge.i_crit_edge, %for.cond63.21.i.if.then78.critedge.i_crit_edge, %for.cond63.20.i.if.then78.critedge.i_crit_edge, %for.cond63.19.i.if.then78.critedge.i_crit_edge, %for.cond63.18.i.if.then78.critedge.i_crit_edge, %for.cond63.17.i.if.then78.critedge.i_crit_edge, %for.cond63.16.i.if.then78.critedge.i_crit_edge, %for.cond63.15.i.if.then78.critedge.i_crit_edge, %for.cond63.14.i.if.then78.critedge.i_crit_edge, %for.cond63.13.i.if.then78.critedge.i_crit_edge, %for.cond63.12.i.if.then78.critedge.i_crit_edge, %for.cond63.11.i.if.then78.critedge.i_crit_edge, %for.cond63.10.i.if.then78.critedge.i_crit_edge, %for.cond63.9.i.if.then78.critedge.i_crit_edge, %for.cond63.8.i.if.then78.critedge.i_crit_edge, %for.cond63.7.i.if.then78.critedge.i_crit_edge, %for.cond63.6.i.if.then78.critedge.i_crit_edge, %for.cond63.5.i.if.then78.critedge.i_crit_edge, %for.cond63.4.i.if.then78.critedge.i_crit_edge, %for.cond63.3.i.if.then78.critedge.i_crit_edge, %for.cond63.2.i.if.then78.critedge.i_crit_edge, %for.cond63.1.i.if.then78.critedge.i_crit_edge, %for.cond63.i.if.then78.critedge.i_crit_edge, %for.body.i.if.then78.critedge.i_crit_edge
  %conv64305.lcssa.i = phi i32 [ 0, %for.body.i.if.then78.critedge.i_crit_edge ], [ 1, %for.cond63.i.if.then78.critedge.i_crit_edge ], [ 2, %for.cond63.1.i.if.then78.critedge.i_crit_edge ], [ 3, %for.cond63.2.i.if.then78.critedge.i_crit_edge ], [ 4, %for.cond63.3.i.if.then78.critedge.i_crit_edge ], [ 5, %for.cond63.4.i.if.then78.critedge.i_crit_edge ], [ 6, %for.cond63.5.i.if.then78.critedge.i_crit_edge ], [ 7, %for.cond63.6.i.if.then78.critedge.i_crit_edge ], [ 8, %for.cond63.7.i.if.then78.critedge.i_crit_edge ], [ 9, %for.cond63.8.i.if.then78.critedge.i_crit_edge ], [ 10, %for.cond63.9.i.if.then78.critedge.i_crit_edge ], [ 11, %for.cond63.10.i.if.then78.critedge.i_crit_edge ], [ 12, %for.cond63.11.i.if.then78.critedge.i_crit_edge ], [ 13, %for.cond63.12.i.if.then78.critedge.i_crit_edge ], [ 14, %for.cond63.13.i.if.then78.critedge.i_crit_edge ], [ 15, %for.cond63.14.i.if.then78.critedge.i_crit_edge ], [ 16, %for.cond63.15.i.if.then78.critedge.i_crit_edge ], [ 17, %for.cond63.16.i.if.then78.critedge.i_crit_edge ], [ 18, %for.cond63.17.i.if.then78.critedge.i_crit_edge ], [ 19, %for.cond63.18.i.if.then78.critedge.i_crit_edge ], [ 20, %for.cond63.19.i.if.then78.critedge.i_crit_edge ], [ 21, %for.cond63.20.i.if.then78.critedge.i_crit_edge ], [ 22, %for.cond63.21.i.if.then78.critedge.i_crit_edge ], [ 23, %for.cond63.22.i.if.then78.critedge.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %257)
  %cmp82.i = icmp eq i8 %257, 2
  br i1 %cmp82.i, label %if.then84.i, label %if.then78.critedge.i.if.end92.i_crit_edge

if.then78.critedge.i.if.end92.i_crit_edge:        ; preds = %if.then78.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92.i

if.then84.i:                                      ; preds = %if.then78.critedge.i
  %arrayidx88.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 29, i32 %conv64305.lcssa.i, i32 0, i32 1
  %308 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx88.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %309)
  %cmp14.i.i = icmp eq i8 %309, -1
  br i1 %cmp14.i.i, label %if.then84.i.carl9170_get_heavy_clip.exit.i_crit_edge, label %if.end17.i.i

if.then84.i.carl9170_get_heavy_clip.exit.i_crit_edge: ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_heavy_clip.exit.i

if.end17.i.i:                                     ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_cmp1(i8 %309, i8 %f.0)
  %cmp22.i.i = icmp eq i8 %309, %f.0
  br i1 %cmp22.i.i, label %if.end17.i.i.if.then24.i.i_crit_edge, label %for.inc.i.i

if.end17.i.i.if.then24.i.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

if.then24.i.i:                                    ; preds = %for.inc.6.i.i.if.then24.i.i_crit_edge, %if.end17.6.i.i.if.then24.i.i_crit_edge, %if.end17.5.i.i.if.then24.i.i_crit_edge, %if.end17.4.i.i.if.then24.i.i_crit_edge, %if.end17.3.i.i.if.then24.i.i_crit_edge, %if.end17.2.i.i.if.then24.i.i_crit_edge, %if.end17.1.i.i.if.then24.i.i_crit_edge, %if.end17.i.i.if.then24.i.i_crit_edge
  %i.03.lcssa4.i.i = phi i32 [ 0, %if.end17.i.i.if.then24.i.i_crit_edge ], [ 1, %if.end17.1.i.i.if.then24.i.i_crit_edge ], [ 2, %if.end17.2.i.i.if.then24.i.i_crit_edge ], [ 3, %if.end17.3.i.i.if.then24.i.i_crit_edge ], [ 4, %if.end17.4.i.i.if.then24.i.i_crit_edge ], [ 5, %if.end17.5.i.i.if.then24.i.i_crit_edge ], [ 6, %if.end17.6.i.i.if.then24.i.i_crit_edge ], [ 7, %for.inc.6.i.i.if.then24.i.i_crit_edge ]
  %power_flags.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx88.i, i32 %i.03.lcssa4.i.i, i32 1
  %310 = ptrtoint ptr %power_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %power_flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %311)
  %tobool.not.i.i = icmp ult i8 %311, 64
  %spec.select.i.i = select i1 %tobool.not.i.i, i8 %255, i8 %spec.select1.i.i
  br label %carl9170_get_heavy_clip.exit.i

for.inc.i.i:                                      ; preds = %if.end17.i.i
  %arrayidx.1.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx88.i, i32 1
  %312 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %313)
  %cmp14.1.i.i = icmp eq i8 %313, -1
  br i1 %cmp14.1.i.i, label %for.inc.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, label %if.end17.1.i.i

for.inc.i.i.carl9170_get_heavy_clip.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_heavy_clip.exit.i

if.end17.1.i.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %313, i8 %f.0)
  %cmp22.1.i.i = icmp eq i8 %313, %f.0
  br i1 %cmp22.1.i.i, label %if.end17.1.i.i.if.then24.i.i_crit_edge, label %for.inc.1.i.i

if.end17.1.i.i.if.then24.i.i_crit_edge:           ; preds = %if.end17.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

for.inc.1.i.i:                                    ; preds = %if.end17.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx88.i, i32 2
  %314 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %315)
  %cmp14.2.i.i = icmp eq i8 %315, -1
  br i1 %cmp14.2.i.i, label %for.inc.1.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, label %if.end17.2.i.i

for.inc.1.i.i.carl9170_get_heavy_clip.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_heavy_clip.exit.i

if.end17.2.i.i:                                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %315, i8 %f.0)
  %cmp22.2.i.i = icmp eq i8 %315, %f.0
  br i1 %cmp22.2.i.i, label %if.end17.2.i.i.if.then24.i.i_crit_edge, label %for.inc.2.i.i

if.end17.2.i.i.if.then24.i.i_crit_edge:           ; preds = %if.end17.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

for.inc.2.i.i:                                    ; preds = %if.end17.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx88.i, i32 3
  %316 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %317)
  %cmp14.3.i.i = icmp eq i8 %317, -1
  br i1 %cmp14.3.i.i, label %for.inc.2.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, label %if.end17.3.i.i

for.inc.2.i.i.carl9170_get_heavy_clip.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_heavy_clip.exit.i

if.end17.3.i.i:                                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %317, i8 %f.0)
  %cmp22.3.i.i = icmp eq i8 %317, %f.0
  br i1 %cmp22.3.i.i, label %if.end17.3.i.i.if.then24.i.i_crit_edge, label %for.inc.3.i.i

if.end17.3.i.i.if.then24.i.i_crit_edge:           ; preds = %if.end17.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

for.inc.3.i.i:                                    ; preds = %if.end17.3.i.i
  %arrayidx.4.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx88.i, i32 4
  %318 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %319)
  %cmp14.4.i.i = icmp eq i8 %319, -1
  br i1 %cmp14.4.i.i, label %for.inc.3.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, label %if.end17.4.i.i

for.inc.3.i.i.carl9170_get_heavy_clip.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_heavy_clip.exit.i

if.end17.4.i.i:                                   ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %319, i8 %f.0)
  %cmp22.4.i.i = icmp eq i8 %319, %f.0
  br i1 %cmp22.4.i.i, label %if.end17.4.i.i.if.then24.i.i_crit_edge, label %for.inc.4.i.i

if.end17.4.i.i.if.then24.i.i_crit_edge:           ; preds = %if.end17.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

for.inc.4.i.i:                                    ; preds = %if.end17.4.i.i
  %arrayidx.5.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx88.i, i32 5
  %320 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %321)
  %cmp14.5.i.i = icmp eq i8 %321, -1
  br i1 %cmp14.5.i.i, label %for.inc.4.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, label %if.end17.5.i.i

for.inc.4.i.i.carl9170_get_heavy_clip.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_heavy_clip.exit.i

if.end17.5.i.i:                                   ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %321, i8 %f.0)
  %cmp22.5.i.i = icmp eq i8 %321, %f.0
  br i1 %cmp22.5.i.i, label %if.end17.5.i.i.if.then24.i.i_crit_edge, label %for.inc.5.i.i

if.end17.5.i.i.if.then24.i.i_crit_edge:           ; preds = %if.end17.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

for.inc.5.i.i:                                    ; preds = %if.end17.5.i.i
  %arrayidx.6.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx88.i, i32 6
  %322 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %323)
  %cmp14.6.i.i = icmp eq i8 %323, -1
  br i1 %cmp14.6.i.i, label %for.inc.5.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, label %if.end17.6.i.i

for.inc.5.i.i.carl9170_get_heavy_clip.exit.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_heavy_clip.exit.i

if.end17.6.i.i:                                   ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %323, i8 %f.0)
  %cmp22.6.i.i = icmp eq i8 %323, %f.0
  br i1 %cmp22.6.i.i, label %if.end17.6.i.i.if.then24.i.i_crit_edge, label %for.inc.6.i.i

if.end17.6.i.i.if.then24.i.i_crit_edge:           ; preds = %if.end17.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

for.inc.6.i.i:                                    ; preds = %if.end17.6.i.i
  %arrayidx.7.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx88.i, i32 7
  %324 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %325)
  %cmp14.7.i.i = icmp ne i8 %325, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %325, i8 %f.0)
  %cmp22.7.i.i = icmp eq i8 %325, %f.0
  %or.cond.i.i240 = and i1 %cmp14.7.i.i, %cmp22.7.i.i
  br i1 %or.cond.i.i240, label %for.inc.6.i.i.if.then24.i.i_crit_edge, label %for.inc.6.i.i.carl9170_get_heavy_clip.exit.i_crit_edge

for.inc.6.i.i.carl9170_get_heavy_clip.exit.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_heavy_clip.exit.i

for.inc.6.i.i.if.then24.i.i_crit_edge:            ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

carl9170_get_heavy_clip.exit.i:                   ; preds = %for.inc.6.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, %for.inc.5.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, %for.inc.4.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, %for.inc.3.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, %for.inc.2.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, %for.inc.1.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, %for.inc.i.i.carl9170_get_heavy_clip.exit.i_crit_edge, %if.then24.i.i, %if.then84.i.carl9170_get_heavy_clip.exit.i_crit_edge
  %rc.1.i.i = phi i8 [ %spec.select.i.i, %if.then24.i.i ], [ %spec.select1.i.i, %for.inc.6.i.i.carl9170_get_heavy_clip.exit.i_crit_edge ], [ %spec.select1.i.i, %for.inc.5.i.i.carl9170_get_heavy_clip.exit.i_crit_edge ], [ %spec.select1.i.i, %for.inc.4.i.i.carl9170_get_heavy_clip.exit.i_crit_edge ], [ %spec.select1.i.i, %for.inc.3.i.i.carl9170_get_heavy_clip.exit.i_crit_edge ], [ %spec.select1.i.i, %for.inc.2.i.i.carl9170_get_heavy_clip.exit.i_crit_edge ], [ %spec.select1.i.i, %for.inc.1.i.i.carl9170_get_heavy_clip.exit.i_crit_edge ], [ %spec.select1.i.i, %for.inc.i.i.carl9170_get_heavy_clip.exit.i_crit_edge ], [ %spec.select1.i.i, %if.then84.i.carl9170_get_heavy_clip.exit.i_crit_edge ]
  %326 = ptrtoint ptr %heavy_clip.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %rc.1.i.i, ptr %heavy_clip.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %carl9170_get_heavy_clip.exit.i, %if.then78.critedge.i.if.end92.i_crit_edge
  %.off.i = add i8 %257, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %f_off.0.i = select i1 %switch.i, i32 %.266.i, i32 0
  %add.i241 = add i32 %f_off.0.i, %freq
  %arrayidx116.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 88, i32 29, i32 %conv64305.lcssa.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %add.i241)
  %cmp.i268.i = icmp ult i32 %add.i241, 3000
  %sub.i269.i = add i32 %add.i241, 4
  %sub1.i270.i = add i32 %add.i241, -4800
  %div.i271.i = udiv i32 %sub1.i270.i, 5
  %f.0.in.i272.i = select i1 %cmp.i268.i, i32 %sub.i269.i, i32 %div.i271.i
  %conv10.i.i = and i32 %f.0.in.i272.i, 255
  %327 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx116.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %328)
  %cmp6.i.i = icmp eq i8 %328, -1
  br i1 %cmp6.i.i, label %if.end92.i.carl9170_get_max_edge_power.exit.i_crit_edge, label %if.end9.i.i242

if.end92.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

if.end9.i.i242:                                   ; preds = %if.end92.i
  %329 = trunc i32 %f.0.in.i272.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %328, i8 %329)
  %cmp14.i273.i = icmp eq i8 %328, %329
  br i1 %cmp14.i273.i, label %if.end9.i.i242.if.then16.i.i_crit_edge, label %for.inc.i277.i

if.end9.i.i242.if.then16.i.i_crit_edge:           ; preds = %if.end9.i.i242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end9.7.i.i.if.then16.i.i_crit_edge, %if.end9.6.i.i.if.then16.i.i_crit_edge, %if.end9.5.i.i.if.then16.i.i_crit_edge, %if.end9.4.i.i.if.then16.i.i_crit_edge, %if.end9.3.i.i.if.then16.i.i_crit_edge, %if.end9.2.i.i.if.then16.i.i_crit_edge, %if.end9.1.i.i.if.then16.i.i_crit_edge, %if.end9.i.i242.if.then16.i.i_crit_edge
  %i.08.lcssa9.i.i = phi i32 [ 0, %if.end9.i.i242.if.then16.i.i_crit_edge ], [ 1, %if.end9.1.i.i.if.then16.i.i_crit_edge ], [ 2, %if.end9.2.i.i.if.then16.i.i_crit_edge ], [ 3, %if.end9.3.i.i.if.then16.i.i_crit_edge ], [ 4, %if.end9.4.i.i.if.then16.i.i_crit_edge ], [ 5, %if.end9.5.i.i.if.then16.i.i_crit_edge ], [ 6, %if.end9.6.i.i.if.then16.i.i_crit_edge ], [ 7, %if.end9.7.i.i.if.then16.i.i_crit_edge ]
  %power_flags.i274.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 %i.08.lcssa9.i.i, i32 1
  %330 = ptrtoint ptr %power_flags.i274.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %power_flags.i274.i, align 1
  %332 = and i8 %331, 63
  br label %carl9170_get_max_edge_power.exit.i

if.then29.i.i:                                    ; preds = %if.end20.7.i.i.if.then29.i.i_crit_edge, %if.end20.6.i.i.if.then29.i.i_crit_edge, %if.end20.5.i.i.if.then29.i.i_crit_edge, %if.end20.4.i.i.if.then29.i.i_crit_edge, %if.end20.3.i.i.if.then29.i.i_crit_edge, %if.end20.2.i.i.if.then29.i.i_crit_edge, %if.end20.1.i.i.if.then29.i.i_crit_edge
  %i.08.lcssa10.i.i = phi i32 [ 0, %if.end20.1.i.i.if.then29.i.i_crit_edge ], [ 1, %if.end20.2.i.i.if.then29.i.i_crit_edge ], [ 2, %if.end20.3.i.i.if.then29.i.i_crit_edge ], [ 3, %if.end20.4.i.i.if.then29.i.i_crit_edge ], [ 4, %if.end20.5.i.i.if.then29.i.i_crit_edge ], [ 5, %if.end20.6.i.i.if.then29.i.i_crit_edge ], [ 6, %if.end20.7.i.i.if.then29.i.i_crit_edge ]
  %arrayidx32.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 %i.08.lcssa10.i.i
  %333 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx32.i.i, align 1
  %conv34.i.i = zext i8 %334 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv34.i.i)
  %cmp35.i.i = icmp ugt i32 %conv10.i.i, %conv34.i.i
  br i1 %cmp35.i.i, label %land.lhs.true37.i.i, label %if.then29.i.i.carl9170_get_max_edge_power.exit.i_crit_edge

if.then29.i.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

land.lhs.true37.i.i:                              ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %power_flags40.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 %i.08.lcssa10.i.i, i32 1
  %335 = ptrtoint ptr %power_flags40.i.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %power_flags40.i.i, align 1
  %and48.i.i = and i8 %336, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %336)
  %tobool.not.inv.i.i = icmp ugt i8 %336, 63
  %spec.select.i275.i = select i1 %tobool.not.inv.i.i, i8 %and48.i.i, i8 63
  br label %carl9170_get_max_edge_power.exit.i

for.inc.i277.i:                                   ; preds = %if.end9.i.i242
  %arrayidx.1.i276.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 1
  %337 = ptrtoint ptr %arrayidx.1.i276.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx.1.i276.i, align 1
  %conv5.1.i.i = zext i8 %338 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %338)
  %cmp6.1.i.i = icmp eq i8 %338, -1
  br i1 %cmp6.1.i.i, label %for.inc.i277.i.carl9170_get_max_edge_power.exit.i_crit_edge, label %if.end9.1.i.i

for.inc.i277.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %for.inc.i277.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

if.end9.1.i.i:                                    ; preds = %for.inc.i277.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.1.i.i)
  %cmp14.1.i278.i = icmp eq i32 %conv10.i.i, %conv5.1.i.i
  br i1 %cmp14.1.i278.i, label %if.end9.1.i.i.if.then16.i.i_crit_edge, label %if.end20.1.i.i

if.end9.1.i.i.if.then16.i.i_crit_edge:            ; preds = %if.end9.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end20.1.i.i:                                   ; preds = %if.end9.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.1.i.i)
  %cmp27.1.i.i = icmp ult i32 %conv10.i.i, %conv5.1.i.i
  br i1 %cmp27.1.i.i, label %if.end20.1.i.i.if.then29.i.i_crit_edge, label %for.inc.1.i280.i

if.end20.1.i.i.if.then29.i.i_crit_edge:           ; preds = %if.end20.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i.i

for.inc.1.i280.i:                                 ; preds = %if.end20.1.i.i
  %arrayidx.2.i279.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 2
  %339 = ptrtoint ptr %arrayidx.2.i279.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx.2.i279.i, align 1
  %conv5.2.i.i = zext i8 %340 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %340)
  %cmp6.2.i.i = icmp eq i8 %340, -1
  br i1 %cmp6.2.i.i, label %for.inc.1.i280.i.carl9170_get_max_edge_power.exit.i_crit_edge, label %if.end9.2.i.i

for.inc.1.i280.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %for.inc.1.i280.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

if.end9.2.i.i:                                    ; preds = %for.inc.1.i280.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.2.i.i)
  %cmp14.2.i281.i = icmp eq i32 %conv10.i.i, %conv5.2.i.i
  br i1 %cmp14.2.i281.i, label %if.end9.2.i.i.if.then16.i.i_crit_edge, label %if.end20.2.i.i

if.end9.2.i.i.if.then16.i.i_crit_edge:            ; preds = %if.end9.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end20.2.i.i:                                   ; preds = %if.end9.2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.2.i.i)
  %cmp27.2.i.i = icmp ult i32 %conv10.i.i, %conv5.2.i.i
  br i1 %cmp27.2.i.i, label %if.end20.2.i.i.if.then29.i.i_crit_edge, label %for.inc.2.i283.i

if.end20.2.i.i.if.then29.i.i_crit_edge:           ; preds = %if.end20.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i.i

for.inc.2.i283.i:                                 ; preds = %if.end20.2.i.i
  %arrayidx.3.i282.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 3
  %341 = ptrtoint ptr %arrayidx.3.i282.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx.3.i282.i, align 1
  %conv5.3.i.i = zext i8 %342 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %342)
  %cmp6.3.i.i = icmp eq i8 %342, -1
  br i1 %cmp6.3.i.i, label %for.inc.2.i283.i.carl9170_get_max_edge_power.exit.i_crit_edge, label %if.end9.3.i.i

for.inc.2.i283.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %for.inc.2.i283.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

if.end9.3.i.i:                                    ; preds = %for.inc.2.i283.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.3.i.i)
  %cmp14.3.i284.i = icmp eq i32 %conv10.i.i, %conv5.3.i.i
  br i1 %cmp14.3.i284.i, label %if.end9.3.i.i.if.then16.i.i_crit_edge, label %if.end20.3.i.i

if.end9.3.i.i.if.then16.i.i_crit_edge:            ; preds = %if.end9.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end20.3.i.i:                                   ; preds = %if.end9.3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.3.i.i)
  %cmp27.3.i.i = icmp ult i32 %conv10.i.i, %conv5.3.i.i
  br i1 %cmp27.3.i.i, label %if.end20.3.i.i.if.then29.i.i_crit_edge, label %for.inc.3.i286.i

if.end20.3.i.i.if.then29.i.i_crit_edge:           ; preds = %if.end20.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i.i

for.inc.3.i286.i:                                 ; preds = %if.end20.3.i.i
  %arrayidx.4.i285.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 4
  %343 = ptrtoint ptr %arrayidx.4.i285.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx.4.i285.i, align 1
  %conv5.4.i.i = zext i8 %344 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %344)
  %cmp6.4.i.i = icmp eq i8 %344, -1
  br i1 %cmp6.4.i.i, label %for.inc.3.i286.i.carl9170_get_max_edge_power.exit.i_crit_edge, label %if.end9.4.i.i

for.inc.3.i286.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %for.inc.3.i286.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

if.end9.4.i.i:                                    ; preds = %for.inc.3.i286.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.4.i.i)
  %cmp14.4.i287.i = icmp eq i32 %conv10.i.i, %conv5.4.i.i
  br i1 %cmp14.4.i287.i, label %if.end9.4.i.i.if.then16.i.i_crit_edge, label %if.end20.4.i.i

if.end9.4.i.i.if.then16.i.i_crit_edge:            ; preds = %if.end9.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end20.4.i.i:                                   ; preds = %if.end9.4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.4.i.i)
  %cmp27.4.i.i = icmp ult i32 %conv10.i.i, %conv5.4.i.i
  br i1 %cmp27.4.i.i, label %if.end20.4.i.i.if.then29.i.i_crit_edge, label %for.inc.4.i289.i

if.end20.4.i.i.if.then29.i.i_crit_edge:           ; preds = %if.end20.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i.i

for.inc.4.i289.i:                                 ; preds = %if.end20.4.i.i
  %arrayidx.5.i288.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 5
  %345 = ptrtoint ptr %arrayidx.5.i288.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx.5.i288.i, align 1
  %conv5.5.i.i = zext i8 %346 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %346)
  %cmp6.5.i.i = icmp eq i8 %346, -1
  br i1 %cmp6.5.i.i, label %for.inc.4.i289.i.carl9170_get_max_edge_power.exit.i_crit_edge, label %if.end9.5.i.i

for.inc.4.i289.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %for.inc.4.i289.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

if.end9.5.i.i:                                    ; preds = %for.inc.4.i289.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.5.i.i)
  %cmp14.5.i290.i = icmp eq i32 %conv10.i.i, %conv5.5.i.i
  br i1 %cmp14.5.i290.i, label %if.end9.5.i.i.if.then16.i.i_crit_edge, label %if.end20.5.i.i

if.end9.5.i.i.if.then16.i.i_crit_edge:            ; preds = %if.end9.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end20.5.i.i:                                   ; preds = %if.end9.5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.5.i.i)
  %cmp27.5.i.i = icmp ult i32 %conv10.i.i, %conv5.5.i.i
  br i1 %cmp27.5.i.i, label %if.end20.5.i.i.if.then29.i.i_crit_edge, label %for.inc.5.i292.i

if.end20.5.i.i.if.then29.i.i_crit_edge:           ; preds = %if.end20.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i.i

for.inc.5.i292.i:                                 ; preds = %if.end20.5.i.i
  %arrayidx.6.i291.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 6
  %347 = ptrtoint ptr %arrayidx.6.i291.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx.6.i291.i, align 1
  %conv5.6.i.i = zext i8 %348 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %348)
  %cmp6.6.i.i = icmp eq i8 %348, -1
  br i1 %cmp6.6.i.i, label %for.inc.5.i292.i.carl9170_get_max_edge_power.exit.i_crit_edge, label %if.end9.6.i.i

for.inc.5.i292.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %for.inc.5.i292.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

if.end9.6.i.i:                                    ; preds = %for.inc.5.i292.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.6.i.i)
  %cmp14.6.i293.i = icmp eq i32 %conv10.i.i, %conv5.6.i.i
  br i1 %cmp14.6.i293.i, label %if.end9.6.i.i.if.then16.i.i_crit_edge, label %if.end20.6.i.i

if.end9.6.i.i.if.then16.i.i_crit_edge:            ; preds = %if.end9.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end20.6.i.i:                                   ; preds = %if.end9.6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.6.i.i)
  %cmp27.6.i.i = icmp ult i32 %conv10.i.i, %conv5.6.i.i
  br i1 %cmp27.6.i.i, label %if.end20.6.i.i.if.then29.i.i_crit_edge, label %for.inc.6.i295.i

if.end20.6.i.i.if.then29.i.i_crit_edge:           ; preds = %if.end20.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i.i

for.inc.6.i295.i:                                 ; preds = %if.end20.6.i.i
  %arrayidx.7.i294.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 7
  %349 = ptrtoint ptr %arrayidx.7.i294.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx.7.i294.i, align 1
  %conv5.7.i.i = zext i8 %350 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %350)
  %cmp6.7.i.i = icmp eq i8 %350, -1
  br i1 %cmp6.7.i.i, label %for.inc.6.i295.i.carl9170_get_max_edge_power.exit.i_crit_edge, label %if.end9.7.i.i

for.inc.6.i295.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %for.inc.6.i295.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

if.end9.7.i.i:                                    ; preds = %for.inc.6.i295.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.7.i.i)
  %cmp14.7.i296.i = icmp eq i32 %conv10.i.i, %conv5.7.i.i
  br i1 %cmp14.7.i296.i, label %if.end9.7.i.i.if.then16.i.i_crit_edge, label %if.end20.7.i.i

if.end9.7.i.i.if.then16.i.i_crit_edge:            ; preds = %if.end9.7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end20.7.i.i:                                   ; preds = %if.end9.7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.7.i.i)
  %cmp27.7.i.i = icmp ult i32 %conv10.i.i, %conv5.7.i.i
  br i1 %cmp27.7.i.i, label %if.end20.7.i.i.if.then29.i.i_crit_edge, label %if.then54.i.i

if.end20.7.i.i.if.then29.i.i_crit_edge:           ; preds = %if.end20.7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i.i

if.then54.i.i:                                    ; preds = %if.end20.7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %conv5.7.i.i)
  %cmp60.i.i = icmp ugt i32 %conv10.i.i, %conv5.7.i.i
  br i1 %cmp60.i.i, label %land.lhs.true62.i.i, label %if.then54.i.i.carl9170_get_max_edge_power.exit.i_crit_edge

if.then54.i.i.carl9170_get_max_edge_power.exit.i_crit_edge: ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_get_max_edge_power.exit.i

land.lhs.true62.i.i:                              ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %power_flags65.i.i = getelementptr %struct.ar9170_calctl_edges, ptr %arrayidx116.i, i32 7, i32 1
  %351 = ptrtoint ptr %power_flags65.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %power_flags65.i.i, align 1
  %and74.i.i = and i8 %352, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %352)
  %tobool68.not.inv.i.i = icmp ugt i8 %352, 63
  %spec.select1.i297.i = select i1 %tobool68.not.inv.i.i, i8 %and74.i.i, i8 63
  br label %carl9170_get_max_edge_power.exit.i

carl9170_get_max_edge_power.exit.i:               ; preds = %land.lhs.true62.i.i, %if.then54.i.i.carl9170_get_max_edge_power.exit.i_crit_edge, %for.inc.6.i295.i.carl9170_get_max_edge_power.exit.i_crit_edge, %for.inc.5.i292.i.carl9170_get_max_edge_power.exit.i_crit_edge, %for.inc.4.i289.i.carl9170_get_max_edge_power.exit.i_crit_edge, %for.inc.3.i286.i.carl9170_get_max_edge_power.exit.i_crit_edge, %for.inc.2.i283.i.carl9170_get_max_edge_power.exit.i_crit_edge, %for.inc.1.i280.i.carl9170_get_max_edge_power.exit.i_crit_edge, %for.inc.i277.i.carl9170_get_max_edge_power.exit.i_crit_edge, %land.lhs.true37.i.i, %if.then29.i.i.carl9170_get_max_edge_power.exit.i_crit_edge, %if.then16.i.i, %if.end92.i.carl9170_get_max_edge_power.exit.i_crit_edge
  %rc.1.i298.i = phi i8 [ 63, %if.then54.i.i.carl9170_get_max_edge_power.exit.i_crit_edge ], [ %spec.select1.i297.i, %land.lhs.true62.i.i ], [ %spec.select.i275.i, %land.lhs.true37.i.i ], [ 63, %if.then29.i.i.carl9170_get_max_edge_power.exit.i_crit_edge ], [ %332, %if.then16.i.i ], [ 63, %for.inc.6.i295.i.carl9170_get_max_edge_power.exit.i_crit_edge ], [ 63, %for.inc.5.i292.i.carl9170_get_max_edge_power.exit.i_crit_edge ], [ 63, %for.inc.4.i289.i.carl9170_get_max_edge_power.exit.i_crit_edge ], [ 63, %for.inc.3.i286.i.carl9170_get_max_edge_power.exit.i_crit_edge ], [ 63, %for.inc.2.i283.i.carl9170_get_max_edge_power.exit.i_crit_edge ], [ 63, %for.inc.1.i280.i.carl9170_get_max_edge_power.exit.i_crit_edge ], [ 63, %for.inc.i277.i.carl9170_get_max_edge_power.exit.i_crit_edge ], [ 63, %if.end92.i.carl9170_get_max_edge_power.exit.i_crit_edge ]
  %max_power120.i = getelementptr %struct.ctl_modes, ptr %mode_list_2ghz.mode_list_5ghz.i, i32 %i.0308.i, i32 1
  %353 = ptrtoint ptr %max_power120.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %rc.1.i298.i, ptr %max_power120.i, align 1
  br label %if.end137.i

while.cond.i:                                     ; preds = %while.body.i244.while.cond.i_crit_edge, %for.cond63.23.i
  %k.0.i = phi i32 [ %i.0308.i, %for.cond63.23.i ], [ %dec.i243, %while.body.i244.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.i)
  %cmp124.i = icmp sgt i32 %k.0.i, 0
  br i1 %cmp124.i, label %while.body.i244, label %while.cond.i.if.end137.i_crit_edge

while.cond.i.if.end137.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137.i

while.body.i244:                                  ; preds = %while.cond.i
  %dec.i243 = add nsw i32 %k.0.i, -1
  %max_power127.i = getelementptr %struct.ctl_modes, ptr %mode_list_2ghz.mode_list_5ghz.i, i32 %dec.i243, i32 1
  %354 = ptrtoint ptr %max_power127.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %max_power127.i, align 1
  %cmp129.not.i = icmp eq i8 %355, 63
  br i1 %cmp129.not.i, label %while.body.i244.while.cond.i_crit_edge, label %if.then131.i

while.body.i244.while.cond.i_crit_edge:           ; preds = %while.body.i244
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

if.then131.i:                                     ; preds = %while.body.i244
  call void @__sanitizer_cov_trace_pc() #7
  %356 = ptrtoint ptr %max_power123.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %355, ptr %max_power123.i, align 1
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then131.i, %while.cond.i.if.end137.i_crit_edge, %carl9170_get_max_edge_power.exit.i
  %pwr_cal_len140.i = getelementptr %struct.ctl_modes, ptr %mode_list_2ghz.mode_list_5ghz.i, i32 %i.0308.i, i32 3
  %357 = ptrtoint ptr %pwr_cal_len140.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %pwr_cal_len140.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %cmp141306.i = icmp sgt i32 %358, 0
  br i1 %cmp141306.i, label %for.body143.lr.ph.i, label %if.end137.i.for.end161.i_crit_edge

if.end137.i.for.end161.i_crit_edge:               ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end161.i

for.body143.lr.ph.i:                              ; preds = %if.end137.i
  %pwr_cal_data145.i = getelementptr %struct.ctl_modes, ptr %mode_list_2ghz.mode_list_5ghz.i, i32 %i.0308.i, i32 2
  %359 = ptrtoint ptr %pwr_cal_data145.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %pwr_cal_data145.i, align 4
  %max_power148.i = getelementptr %struct.ctl_modes, ptr %mode_list_2ghz.mode_list_5ghz.i, i32 %i.0308.i, i32 1
  %361 = ptrtoint ptr %max_power148.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %max_power148.i, align 1
  br label %for.body143.i

for.body143.i:                                    ; preds = %for.body143.i.for.body143.i_crit_edge, %for.body143.lr.ph.i
  %j.0307.i = phi i32 [ 0, %for.body143.lr.ph.i ], [ %inc160.i, %for.body143.i.for.body143.i_crit_edge ]
  %arrayidx146.i = getelementptr i8, ptr %360, i32 %j.0307.i
  %363 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx146.i, align 1
  %365 = tail call i8 @llvm.umin.i8(i8 %364, i8 %362) #5
  %366 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %365, ptr %arrayidx146.i, align 1
  %inc160.i = add nuw nsw i32 %j.0307.i, 1
  %exitcond.not.i = icmp eq i32 %inc160.i, %358
  br i1 %exitcond.not.i, label %for.body143.i.for.end161.i_crit_edge, label %for.body143.i.for.body143.i_crit_edge

for.body143.i.for.body143.i_crit_edge:            ; preds = %for.body143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body143.i

for.body143.i.for.end161.i_crit_edge:             ; preds = %for.body143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end161.i

for.end161.i:                                     ; preds = %for.body143.i.for.end161.i_crit_edge, %if.end137.i.for.end161.i_crit_edge
  %inc163.i = add nuw nsw i32 %i.0308.i, 1
  %exitcond313.not.i = icmp eq i32 %inc163.i, %..i
  br i1 %exitcond313.not.i, label %for.end164.i, label %for.end161.i.for.body.i_crit_edge

for.end161.i.for.body.i_crit_edge:                ; preds = %for.end161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end164.i:                                     ; preds = %for.end161.i
  %367 = ptrtoint ptr %heavy_clip.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %heavy_clip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %368)
  %tobool.not.i = icmp ult i8 %368, 16
  br i1 %tobool.not.i, label %for.end164.i.if.end177.i_crit_edge, label %if.then167.i

for.end164.i.if.end177.i_crit_edge:               ; preds = %for.end164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177.i

if.then167.i:                                     ; preds = %for.end164.i
  call void @__sanitizer_cov_trace_pc() #7
  %369 = ptrtoint ptr %power_2G_ht40 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %power_2G_ht40, align 4
  %dec170.i = add i8 %370, -1
  store i8 %dec170.i, ptr %power_2G_ht40, align 4
  %arrayidx172.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 71, i32 1
  %371 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx172.i, align 1
  %dec173.i = add i8 %372, -1
  store i8 %dec173.i, ptr %arrayidx172.i, align 1
  %arrayidx175.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 71, i32 2
  %373 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx175.i, align 2
  %dec176.i = add i8 %374, -1
  store i8 %dec176.i, ptr %arrayidx175.i, align 2
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.then167.i, %for.end164.i.if.end177.i_crit_edge
  %375 = and i8 %368, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %tobool181.not.i = icmp eq i8 %375, 0
  br i1 %tobool181.not.i, label %if.end177.i.carl9170_calc_ctl.exit_crit_edge, label %if.then182.i

if.end177.i.carl9170_calc_ctl.exit_crit_edge:     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_calc_ctl.exit

if.then182.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #7
  %376 = ptrtoint ptr %power_2G_ht20 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %power_2G_ht20, align 4
  %inc185.i = add i8 %377, 1
  store i8 %inc185.i, ptr %power_2G_ht20, align 4
  %arrayidx187.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 70, i32 1
  %378 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %arrayidx187.i, align 1
  %inc188.i = add i8 %379, 1
  store i8 %inc188.i, ptr %arrayidx187.i, align 1
  %arrayidx190.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 70, i32 2
  %380 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %arrayidx190.i, align 2
  %inc191.i = add i8 %381, 1
  store i8 %inc191.i, ptr %arrayidx190.i, align 2
  br label %carl9170_calc_ctl.exit

carl9170_calc_ctl.exit:                           ; preds = %if.then182.i, %if.end177.i.carl9170_calc_ctl.exit_crit_edge, %if.end.i235.carl9170_calc_ctl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %mode_list_5ghz.i) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mode_list_2ghz.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pwr_freqs) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_set_mac_tpc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @carl9170_get_hw_dyn_params(ptr noundef readonly %channel, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %channel, null
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.body:                                          ; preds = %entry
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %0 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %1 to i32
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %center_freq, align 4
  %phi.cast = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %1)
  %cmp = icmp ugt i16 %1, 48
  br i1 %cmp, label %do.body6, label %do.body.do.end15_crit_edge, !prof !42

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/carl9170/phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1046, 0\0A.popsection", ""() #5, !srcloc !43
  unreachable

do.end15:                                         ; preds = %do.body.do.end15_crit_edge, %entry.do.end15_crit_edge
  %chanidx.060 = phi i32 [ %conv, %do.body.do.end15_crit_edge ], [ 0, %entry.do.end15_crit_edge ]
  %freq.059 = phi i32 [ %phi.cast, %do.body.do.end15_crit_edge ], [ 2412, %entry.do.end15_crit_edge ]
  %arrayidx = getelementptr [49 x %struct.carl9170_phy_freq_entry], ptr @carl9170_phy_freq_params, i32 0, i32 %chanidx.060
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv17 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %freq.059, i32 %conv17)
  %cmp19.not = icmp eq i32 %freq.059, %conv17
  br i1 %cmp19.not, label %do.end15.if.end42_crit_edge, label %do.end36, !prof !44

do.end15.if.end42_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end36:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1050, i32 noundef 9, ptr noundef null) #5
  br label %if.end42

if.end42:                                         ; preds = %do.end36, %do.end15.if.end42_crit_edge
  %arrayidx50 = getelementptr [49 x %struct.carl9170_phy_freq_entry], ptr @carl9170_phy_freq_params, i32 0, i32 %chanidx.060, i32 1, i32 %bw
  ret ptr %arrayidx50
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_restart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_regd_get_band_ctl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !21, !22, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @carl9170_get_noisefloor.phy_regs, !1, !"phy_regs", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/phy.c", i32 1529, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/carl9170/phy.c", i32 1690, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @carl9170_set_channel._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @carl9170_set_channel._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/carl9170/phy.c", i32 1718, i32 5}
!12 = !{ptr @carl9170_set_channel._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @carl9170_set_channel._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @ar5416_phy_init, !15, !"ar5416_phy_init", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/carl9170/phy.c", i32 67, i32 33}
!16 = !{ptr @carl9170_init_phy_from_eeprom.xpd2pd, !17, !"xpd2pd", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/carl9170/phy.c", i32 435, i32 18}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/carl9170/phy.c", i32 686, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @carl9170_init_rf_banks_0_7._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @carl9170_init_rf_banks_0_7._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @carl9170_rf_initval, !24, !"carl9170_rf_initval", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/carl9170/phy.c", i32 593, i32 36}
!25 = !{ptr @carl9170_phy_freq_params, !26, !"carl9170_phy_freq_params", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/carl9170/phy.c", i32 712, i32 45}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i64 2157922305, i64 2157922810, i64 2157922342, i64 2157922398, i64 2157922432, i64 2157922456, i64 2157922497, i64 2157922518, i64 2157922546, i64 2157922580}
!38 = !{i8 0, i8 2}
!39 = !{i64 2157900633, i64 2157901137, i64 2157900670, i64 2157900726, i64 2157900760, i64 2157900784, i64 2157900825, i64 2157900846, i64 2157900874, i64 2157900908}
!40 = !{i64 2157914401, i64 2157914906, i64 2157914438, i64 2157914494, i64 2157914528, i64 2157914552, i64 2157914593, i64 2157914614, i64 2157914642, i64 2157914676}
!41 = !{i64 2157915950, i64 2157916455, i64 2157915987, i64 2157916043, i64 2157916077, i64 2157916101, i64 2157916142, i64 2157916163, i64 2157916191, i64 2157916225}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2157906044, i64 2157906549, i64 2157906081, i64 2157906137, i64 2157906171, i64 2157906195, i64 2157906236, i64 2157906257, i64 2157906285, i64 2157906319}
!44 = !{!"branch_weights", i32 2000, i32 1}
