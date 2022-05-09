; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/led.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/led.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ar9170 = type { %struct.ath_common, ptr, %struct.mutex, i32, %struct.spinlock, i32, i8, ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.tasklet_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i8, %struct.completion, %struct.completion, %struct.anon.130, [1 x %struct.ieee80211_iface_limit], [1 x %struct.ieee80211_iface_combination], %struct.work_struct, %struct.work_struct, i32, [4 x i32], [4 x i32], i8, i8, %struct.atomic_t, %struct.list_head, i32, i32, [7 x %struct.carl9170_vif], %struct.spinlock, i32, i32, ptr, i32, i64, i8, i8, i64, i32, i32, i32, i8, i32, ptr, i32, [4 x i32], i32, i32, i8, i8, %struct.anon.134, %struct.delayed_work, ptr, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], %struct.delayed_work, [2 x %struct.carl9170_led], %struct.spinlock, [4 x %struct.carl9170_tx_queue_stats], [5 x %struct.ieee80211_tx_queue_params], %struct.completion, i32, i32, ptr, %struct.spinlock, %struct.completion, %union.anon.135, i32, i32, i32, i32, %struct.ar9170_eeprom, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], %struct.delayed_work, i32, i8, %struct.work_struct, %struct.spinlock, ptr, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, %struct.spinlock, ptr, %struct.atomic_t, %struct.atomic_t, %struct.ar9170_rx_head, i8, ptr, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.anon.142, %struct.carl9170_debug, ptr, %struct.work_struct, %struct.anon.144, %struct.anon.145 }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@carl9170_led_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&ar->led_work)->work)\00", [54 x i8] zeroinitializer }, align 32
@carl9170_led_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&ar->led_work)->timer\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"assoc\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"carl9170-%s::%s\00", [16 x i8] zeroinitializer }, align 32
@carl9170_led_register_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 142, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s LED (%d).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"carl9170_led_register_led\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/carl9170/led.c\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@carl9170_led_register_led._entry_ptr = internal global ptr @carl9170_led_register_led._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 168, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 170, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 178, i32 41 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 130, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [43 x i8] c"../drivers/net/wireless/ath/carl9170/led.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 141, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @carl9170_led_register_led._entry, ptr @carl9170_led_register_led._entry_ptr, ptr @carl9170_led_register.__key, ptr @.str, ptr @carl9170_led_register.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_led_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_led_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_led_register_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_led_set_state(ptr noundef %ar, i32 noundef %led_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1900804, i32 noundef %led_state) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_led_init(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1900800, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1900804, i32 noundef 0) #5
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call.i, %if.end ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_led_unregister(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %registered = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 5
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %l = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %l) #5
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %registered, align 1
  %toggled = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 3
  %3 = ptrtoint ptr %toggled to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %toggled, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %registered.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 5
  %4 = ptrtoint ptr %registered.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %registered.1, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.1 = icmp eq i8 %5, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %l.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 1
  tail call void @led_classdev_unregister(ptr noundef %l.1) #5
  %6 = ptrtoint ptr %registered.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %registered.1, align 1
  %toggled.1 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 3
  %7 = ptrtoint ptr %toggled.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %toggled.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %led_work = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 72
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %led_work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_led_register(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %led_work = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 72
  tail call void @__init_work(ptr noundef %led_work, i32 noundef 0) #5
  %0 = ptrtoint ptr %led_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %led_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 72, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @carl9170_led_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry8 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 72, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 72, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 72, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @carl9170_led_update, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 72, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @carl9170_led_register.__key.1) #5
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %call.i = tail call ptr @__ieee80211_get_tx_led_name(ptr noundef %5) #5
  %arrayidx.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0
  %name1.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 2
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56, i32 3
  %10 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.wiphy_name.exit.i_crit_edge

entry.wiphy_name.exit.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  br label %wiphy_name.exit.i

wiphy_name.exit.i:                                ; preds = %if.end.i.i.i, %entry.wiphy_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %13, %if.end.i.i.i ], [ %11, %entry.wiphy_name.exit.i_crit_edge ]
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @.str.3) #5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ar, ptr %arrayidx.i, align 4
  %l.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 1
  %15 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %name1.i, ptr %l.i, align 4
  %brightness_set.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @carl9170_led_set_brightness, ptr %brightness_set.i, align 4
  %brightness.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %brightness.i, align 4
  %default_trigger.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 1, i32 14
  %18 = ptrtoint ptr %default_trigger.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %default_trigger.i, align 4
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %wiphy23.i = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wiphy23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy23.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56, i32 1
  %23 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i.i, align 8
  %call.i.i = tail call i32 @led_classdev_register_ext(ptr noundef %24, ptr noundef %l.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %carl9170_led_register_led.exit

carl9170_led_register_led.exit:                   ; preds = %wiphy_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %wiphy30.i = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy30.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy30.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef %name1.i, i32 noundef %call.i.i) #8
  br label %fail

if.end:                                           ; preds = %wiphy_name.exit.i
  %registered.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 5
  %29 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %registered.i, align 1
  %features = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 22
  %30 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %features, align 8
  %and = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %call.i40 = tail call ptr @__ieee80211_get_assoc_led_name(ptr noundef %33) #5
  %arrayidx.i41 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1
  %name1.i42 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 2
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %wiphy.i44 = getelementptr inbounds %struct.ieee80211_hw, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wiphy.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wiphy.i44, align 8
  %init_name.i.i.i45 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56, i32 3
  %38 = ptrtoint ptr %init_name.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i.i45, align 8
  %tobool.not.i.i.i46 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i46, label %if.end.i.i.i48, label %if.end20.wiphy_name.exit.i59_crit_edge

if.end20.wiphy_name.exit.i59_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit.i59

if.end.i.i.i48:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i47 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  %40 = ptrtoint ptr %dev.i.i47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i47, align 4
  br label %wiphy_name.exit.i59

wiphy_name.exit.i59:                              ; preds = %if.end.i.i.i48, %if.end20.wiphy_name.exit.i59_crit_edge
  %retval.0.i.i.i49 = phi ptr [ %41, %if.end.i.i.i48 ], [ %39, %if.end20.wiphy_name.exit.i59_crit_edge ]
  %call2.i50 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i42, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i.i49, ptr noundef nonnull @.str.4) #5
  %42 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ar, ptr %arrayidx.i41, align 4
  %l.i51 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 1
  %43 = ptrtoint ptr %l.i51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %name1.i42, ptr %l.i51, align 4
  %brightness_set.i52 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 1, i32 5
  %44 = ptrtoint ptr %brightness_set.i52 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @carl9170_led_set_brightness, ptr %brightness_set.i52, align 4
  %brightness.i53 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 1, i32 1
  %45 = ptrtoint ptr %brightness.i53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %brightness.i53, align 4
  %default_trigger.i54 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 1, i32 14
  %46 = ptrtoint ptr %default_trigger.i54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i40, ptr %default_trigger.i54, align 4
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %wiphy23.i55 = getelementptr inbounds %struct.ieee80211_hw, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wiphy23.i55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wiphy23.i55, align 8
  %parent.i.i56 = getelementptr inbounds %struct.wiphy, ptr %50, i32 0, i32 56, i32 1
  %51 = ptrtoint ptr %parent.i.i56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent.i.i56, align 8
  %call.i.i57 = tail call i32 @led_classdev_register_ext(ptr noundef %52, ptr noundef %l.i51, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool.not.i58 = icmp eq i32 %call.i.i57, 0
  br i1 %tobool.not.i58, label %carl9170_led_register_led.exit65.thread, label %carl9170_led_register_led.exit65

carl9170_led_register_led.exit65.thread:          ; preds = %wiphy_name.exit.i59
  call void @__sanitizer_cov_trace_pc() #7
  %registered.i63 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 5
  %53 = ptrtoint ptr %registered.i63 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %registered.i63, align 1
  br label %cleanup

carl9170_led_register_led.exit65:                 ; preds = %wiphy_name.exit.i59
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %wiphy30.i60 = getelementptr inbounds %struct.ieee80211_hw, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %wiphy30.i60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wiphy30.i60, align 8
  %dev.i61 = getelementptr inbounds %struct.wiphy, ptr %57, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i61, ptr noundef nonnull @.str.6, ptr noundef %name1.i42, i32 noundef %call.i.i57) #8
  br label %fail

fail:                                             ; preds = %carl9170_led_register_led.exit65, %carl9170_led_register_led.exit
  %err.0 = phi i32 [ %call.i.i, %carl9170_led_register_led.exit ], [ %call.i.i57, %carl9170_led_register_led.exit65 ]
  %registered.i66 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 5
  %58 = ptrtoint ptr %registered.i66 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %registered.i66, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i67 = icmp eq i8 %59, 0
  br i1 %tobool.not.i67, label %fail.for.inc.i_crit_edge, label %if.then.i

fail.for.inc.i_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @led_classdev_unregister(ptr noundef %l.i) #5
  %60 = ptrtoint ptr %registered.i66 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %registered.i66, align 1
  %toggled.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 0, i32 3
  %61 = ptrtoint ptr %toggled.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %toggled.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %fail.for.inc.i_crit_edge
  %registered.1.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 5
  %62 = ptrtoint ptr %registered.1.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %registered.1.i, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.1.i = icmp eq i8 %63, 0
  br i1 %tobool.not.1.i, label %for.inc.i.carl9170_led_unregister.exit_crit_edge, label %if.then.1.i

for.inc.i.carl9170_led_unregister.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %carl9170_led_unregister.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %l.1.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 1
  tail call void @led_classdev_unregister(ptr noundef %l.1.i) #5
  %64 = ptrtoint ptr %registered.1.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %registered.1.i, align 1
  %toggled.1.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 73, i32 1, i32 3
  %65 = ptrtoint ptr %toggled.1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %toggled.1.i, align 4
  br label %carl9170_led_unregister.exit

carl9170_led_unregister.exit:                     ; preds = %if.then.1.i, %for.inc.i.carl9170_led_unregister.exit_crit_edge
  %call.i69 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %led_work) #5
  br label %cleanup

cleanup:                                          ; preds = %carl9170_led_unregister.exit, %carl9170_led_register_led.exit65.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %carl9170_led_unregister.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %carl9170_led_register_led.exit65.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_led_update(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2604
  %state = getelementptr i8, ptr %work, i32 -1640
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 -1732
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %registered = getelementptr i8, ptr %work, i32 541
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %registered, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then3:                                         ; preds = %if.end
  %last_state = getelementptr i8, ptr %work, i32 540
  %4 = ptrtoint ptr %last_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %last_state, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then3.if.then10_crit_edge

if.then3.if.then10_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.then3
  %toggled = getelementptr i8, ptr %work, i32 536
  %6 = ptrtoint ptr %toggled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %toggled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.then3.if.then10_crit_edge
  %toggled13 = getelementptr i8, ptr %work, i32 536
  %8 = ptrtoint ptr %toggled13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %toggled13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %if.then10.if.end19_crit_edge, label %if.then15

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 200, %9
  %add = add nuw nsw i32 %div, 70
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then10.if.end19_crit_edge
  %tmp1.1 = phi i32 [ %add, %if.then15 ], [ 300, %if.then10.if.end19_crit_edge ]
  %10 = ptrtoint ptr %toggled13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %toggled13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %tmp1.2 = phi i32 [ %tmp1.1, %if.end19 ], [ 300, %lor.lhs.false.for.inc_crit_edge ], [ 300, %if.end.for.inc_crit_edge ]
  %blink_delay.2 = phi i32 [ %tmp1.1, %if.end19 ], [ 1000, %lor.lhs.false.for.inc_crit_edge ], [ 1000, %if.end.for.inc_crit_edge ]
  %led_val.1 = phi i32 [ 1, %if.end19 ], [ 0, %lor.lhs.false.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ]
  %rerun.1.off0 = phi i1 [ true, %if.end19 ], [ false, %lor.lhs.false.for.inc_crit_edge ], [ false, %if.end.for.inc_crit_edge ]
  %registered.1 = getelementptr i8, ptr %work, i32 985
  %11 = ptrtoint ptr %registered.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %registered.1, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.1 = icmp eq i8 %12, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  %last_state.1 = getelementptr i8, ptr %work, i32 984
  %13 = ptrtoint ptr %last_state.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %last_state.1, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not.1 = icmp eq i8 %14, 0
  br i1 %tobool6.not.1, label %lor.lhs.false.1, label %if.then3.1.if.then10.1_crit_edge

if.then3.1.if.then10.1_crit_edge:                 ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.1

lor.lhs.false.1:                                  ; preds = %if.then3.1
  %toggled.1 = getelementptr i8, ptr %work, i32 980
  %15 = ptrtoint ptr %toggled.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %toggled.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not.1 = icmp eq i32 %16, 0
  br i1 %tobool9.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %lor.lhs.false.1.if.then10.1_crit_edge

lor.lhs.false.1.if.then10.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then10.1:                                      ; preds = %lor.lhs.false.1.if.then10.1_crit_edge, %if.then3.1.if.then10.1_crit_edge
  %toggled13.1 = getelementptr i8, ptr %work, i32 980
  %17 = ptrtoint ptr %toggled13.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %toggled13.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not.1 = icmp eq i32 %18, 0
  br i1 %tobool14.not.1, label %if.then10.1.if.end19.1_crit_edge, label %if.then15.1

if.then10.1.if.end19.1_crit_edge:                 ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.1

if.then15.1:                                      ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #7
  %div.1 = udiv i32 200, %18
  %add.1 = add nuw nsw i32 %div.1, 70
  br label %if.end19.1

if.end19.1:                                       ; preds = %if.then15.1, %if.then10.1.if.end19.1_crit_edge
  %tmp1.1.1 = phi i32 [ %add.1, %if.then15.1 ], [ %tmp1.2, %if.then10.1.if.end19.1_crit_edge ]
  %19 = tail call i32 @llvm.smin.i32(i32 %tmp1.1.1, i32 %blink_delay.2)
  %or.1 = or i32 %led_val.1, 2
  %20 = ptrtoint ptr %toggled13.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %toggled13.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end19.1, %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %blink_delay.2.1 = phi i32 [ %19, %if.end19.1 ], [ %blink_delay.2, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %blink_delay.2, %for.inc.for.inc.1_crit_edge ]
  %led_val.1.1 = phi i32 [ %or.1, %if.end19.1 ], [ %led_val.1, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %led_val.1, %for.inc.for.inc.1_crit_edge ]
  %rerun.1.off0.1 = phi i1 [ true, %if.end19.1 ], [ %rerun.1.off0, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %rerun.1.off0, %for.inc.for.inc.1_crit_edge ]
  %call.i = tail call i32 @carl9170_write_reg(ptr noundef %add.ptr, i32 noundef 1900804, i32 noundef %led_val.1.1) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br i1 %rerun.1.off0.1, label %if.end31, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr i8, ptr %work, i32 -1736
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %blink_delay.2.1) #5
  tail call void @ieee80211_queue_delayed_work(ptr noundef %22, ptr noundef %work, i32 noundef %call2.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %for.inc.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_led_set_brightness(ptr nocapture noundef %led, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %registered = getelementptr i8, ptr %led, i32 437
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %registered, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_state = getelementptr i8, ptr %led, i32 436
  %4 = ptrtoint ptr %last_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %last_state, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool3 = icmp ne i32 %brightness, 0
  %6 = zext i1 %tobool3 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp.not = icmp eq i8 %5, %6
  br i1 %cmp.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %toggled = getelementptr i8, ptr %led, i32 432
  %7 = ptrtoint ptr %toggled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %toggled, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %toggled, align 4
  %9 = ptrtoint ptr %last_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %last_state, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end.if.end13_crit_edge
  %state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp14 = icmp ugt i32 %11, 1
  br i1 %cmp14, label %land.rhs, label %if.end13.cleanup_crit_edge, !prof !29

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %if.end13
  %toggled16 = getelementptr i8, ptr %led, i32 432
  %12 = ptrtoint ptr %toggled16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %toggled16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %land.rhs.cleanup_crit_edge, label %if.then23, !prof !30

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %led_work = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 72
  tail call void @ieee80211_queue_delayed_work(ptr noundef %15, ptr noundef %led_work, i32 noundef 10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.rhs.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_tx_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_assoc_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @carl9170_led_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/led.c", i32 168, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @carl9170_led_register.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/carl9170/led.c", i32 170, i32 41}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/carl9170/led.c", i32 178, i32 41}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/carl9170/led.c", i32 130, i32 4}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/carl9170/led.c", i32 141, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @carl9170_led_register_led._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @carl9170_led_register_led._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!"branch_weights", i32 1, i32 2000}
