; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/mac.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.carl9170_vif_info = type { %struct.list_head, i8, i32, ptr, i8 }
%struct.carl9170_set_key_cmd = type { i16, i16, i16, [6 x i8], [4 x i32] }
%struct.carl9170_disable_key_cmd = type { i16, i16 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/carl9170/mac.c\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported operation mode %x\0A\00", [33 x i8] zeroinitializer }, align 32
@carl9170_set_beacon_timers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_upload_key.bcast = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@carl9170_get_main_vif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/ath/carl9170/carl9170.h\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@carl9170_set_mac_reg.zero = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 278, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 337, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"bcast\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 475, i32 18 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 695, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/ath/carl9170/carl9170.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 650, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 723, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@___asan_gen_.35 = private constant [43 x i8] c"../drivers/net/wireless/ath/carl9170/mac.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 260, i32 18 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @carl9170_upload_key.bcast, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @carl9170_set_mac_reg.zero], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_upload_key.bcast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_set_mac_reg.zero to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_dyn_sifs_ack(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %. = select i1 %cmp, i32 261, i32 260
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry.if.end5_crit_edge
  %val.0 = phi i32 [ 266, %entry.if.end5_crit_edge ], [ %., %if.else ]
  %call6 = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1848920, i32 noundef %val.0) #6
  ret i32 %call6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_rts_cts_rate(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end5_crit_edge [
    i32 6, label %entry.if.else_crit_edge
    i32 7, label %entry.if.else_crit_edge10
    i32 0, label %entry.if.else_crit_edge11
  ]

entry.if.else_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

entry.if.else_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge10, %entry.if.else_crit_edge11
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chandef, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %9 = select i1 %cmp, i32 196635, i32 17498555
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry.if.end5_crit_edge
  %or = phi i32 [ %9, %if.else ], [ 17433050, %entry.if.end5_crit_edge ]
  %call6 = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1848888, i32 noundef %or) #6
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_slot_time(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i9 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not.i10 = icmp eq i32 %call.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i12, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i12:                                ; preds = %rcu_read_lock.exit
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool2.not.i = icmp eq i32 %call1.i11, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i12.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i12.do.end.i_crit_edge:             ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i12
  %.b27.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i13

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i13:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 650, ptr noundef nonnull @.str.5) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i13, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i12.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %cvif.0.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %cvif.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %cvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cvif.0.i = load volatile ptr, ptr %cvif.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cvif.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active.i, align 4, !range !32
  %tobool10.not.i = icmp eq i8 %6, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %carl9170_get_main_vif.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

carl9170_get_main_vif.exit:                       ; preds = %for.body.i
  %add.ptr.i.i = getelementptr i8, ptr %cvif.0.i, i32 -848
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %carl9170_get_main_vif.exit.if.then_crit_edge, label %if.end

carl9170_get_main_vif.exit.if.then_crit_edge:     ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %carl9170_get_main_vif.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i14, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.then
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !33
  %7 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i21 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

if.end:                                           ; preds = %carl9170_get_main_vif.exit
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chandef, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %use_short_slot = getelementptr i8, ptr %cvif.0.i, i32 -818
  %17 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %use_short_slot, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not = icmp eq i8 %18, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end3_crit_edge, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

lor.lhs.false.if.end3_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %lor.lhs.false.if.end3_crit_edge
  %slottime.0 = phi i32 [ 9216, %if.then2 ], [ 20480, %lor.lhs.false.if.end3_crit_edge ]
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i24, label %if.end3.rcu_read_unlock.exit35_crit_edge, label %land.lhs.true.i27

if.end3.rcu_read_unlock.exit35_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit35

land.lhs.true.i27:                                ; preds = %if.end3
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit35_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit35_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit35

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit35_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit35_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit35

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit35

rcu_read_unlock.exit35:                           ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit35_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit35_crit_edge, %if.end3.rcu_read_unlock.exit35_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !33
  %19 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i31 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i33 = add i32 %22, -1
  store volatile i32 %sub.i.i.i33, ptr %preempt_count.i.i.i.i32, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %call4 = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1849072, i32 noundef %slottime.0) #6
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit35, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call4, %rcu_read_unlock.exit35 ], [ 0, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_mac_rates(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i92 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i95, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i95:                                ; preds = %rcu_read_lock.exit
  %call1.i94 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool2.not.i = icmp eq i32 %call1.i94, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i95.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i95.do.end.i_crit_edge:             ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i95
  %.b27.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i96

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i96:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 650, ptr noundef nonnull @.str.5) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i96, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i95.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %cvif.0.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %cvif.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %cvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cvif.0.i = load volatile ptr, ptr %cvif.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cvif.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active.i, align 4, !range !32
  %tobool10.not.i = icmp eq i8 %6, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %carl9170_get_main_vif.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

carl9170_get_main_vif.exit:                       ; preds = %for.body.i
  %add.ptr.i.i = getelementptr i8, ptr %cvif.0.i, i32 -848
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %carl9170_get_main_vif.exit.if.then_crit_edge, label %if.end

carl9170_get_main_vif.exit.if.then_crit_edge:     ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %carl9170_get_main_vif.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call.i97 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i97, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i100

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i100:                               ; preds = %if.then
  %call1.i98 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool.not.i99, label %land.lhs.true.i100.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i102

land.lhs.true.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i102:                              ; preds = %land.lhs.true.i100
  %.b4.i101 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101, label %land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge, label %if.then.i103

land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i103:                                     ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i103, %land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i100.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !33
  %7 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i104 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i105, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i105, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

if.end:                                           ; preds = %carl9170_get_main_vif.exit
  %basic_rates = getelementptr i8, ptr %cvif.0.i, i32 -792
  %11 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %basic_rates, align 8
  %and = and i32 %12, 15
  %and3 = shl i32 %12, 4
  %shl = and i32 %and3, 65280
  %or = or i32 %shl, %and
  %call.i107 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i107, label %if.end.rcu_read_unlock.exit118_crit_edge, label %land.lhs.true.i110

if.end.rcu_read_unlock.exit118_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit118

land.lhs.true.i110:                               ; preds = %if.end
  %call1.i108 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110.rcu_read_unlock.exit118_crit_edge, label %land.lhs.true2.i112

land.lhs.true.i110.rcu_read_unlock.exit118_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit118

land.lhs.true2.i112:                              ; preds = %land.lhs.true.i110
  %.b4.i111 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111, label %land.lhs.true2.i112.rcu_read_unlock.exit118_crit_edge, label %if.then.i113

land.lhs.true2.i112.rcu_read_unlock.exit118_crit_edge: ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit118

if.then.i113:                                     ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit118

rcu_read_unlock.exit118:                          ; preds = %if.then.i113, %land.lhs.true2.i112.rcu_read_unlock.exit118_crit_edge, %land.lhs.true.i110.rcu_read_unlock.exit118_crit_edge, %if.end.rcu_read_unlock.exit118_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !33
  %13 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i114 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %sub.i.i.i116 = add i32 %16, -1
  store volatile i32 %sub.i.i.i116, ptr %preempt_count.i.i.i.i115, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chandef, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  %. = select i1 %cmp, i32 65280, i32 65295
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 808852480, ptr %arrayidx, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx9 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx9, align 4
  %arrayidx26 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 875961344, ptr %arrayidx26, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %.)
  %arrayidx29 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx29, align 4
  %state50 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %29 = ptrtoint ptr %state50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp51 = icmp ugt i32 %30, 1
  br i1 %cmp51, label %if.then52, label %rcu_read_unlock.exit118.cleanup_crit_edge

rcu_read_unlock.exit118.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %rcu_read_unlock.exit118
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 16, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %rcu_read_unlock.exit118.cleanup_crit_edge, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %call55, %if.then52 ], [ 0, %rcu_read_unlock.exit118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_exec_cmd(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_qos(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3873792, ptr %arrayidx, align 4
  %edcf = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 76
  %cw_min = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 76, i32 0, i32 1
  %1 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cw_min, align 2
  %conv = zext i16 %2 to i32
  %cw_max = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 76, i32 0, i32 2
  %3 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cw_max, align 4
  %conv5 = zext i16 %4 to i32
  %shl = shl nuw i32 %conv5, 16
  %or = or i32 %shl, %conv
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx8 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx8, align 4
  %arrayidx21 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 70982656, ptr %arrayidx21, align 4
  %arrayidx23 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 1
  %cw_min24 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 1, i32 1
  %8 = ptrtoint ptr %cw_min24 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cw_min24, align 2
  %conv25 = zext i16 %9 to i32
  %cw_max28 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 1, i32 2
  %10 = ptrtoint ptr %cw_max28 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cw_max28, align 2
  %conv29 = zext i16 %11 to i32
  %shl30 = shl nuw i32 %conv29, 16
  %or31 = or i32 %shl30, %conv25
  %12 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %arrayidx34 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx34, align 4
  %arrayidx57 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 138091520, ptr %arrayidx57, align 4
  %arrayidx59 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 2
  %cw_min60 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 2, i32 1
  %15 = ptrtoint ptr %cw_min60 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cw_min60, align 2
  %conv61 = zext i16 %16 to i32
  %cw_max64 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 2, i32 2
  %17 = ptrtoint ptr %cw_max64 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cw_max64, align 4
  %conv65 = zext i16 %18 to i32
  %shl66 = shl nuw i32 %conv65, 16
  %or67 = or i32 %shl66, %conv61
  %19 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %arrayidx70 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx70, align 4
  %arrayidx93 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 205200384, ptr %arrayidx93, align 4
  %arrayidx95 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 3
  %cw_min96 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 3, i32 1
  %22 = ptrtoint ptr %cw_min96 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cw_min96, align 2
  %conv97 = zext i16 %23 to i32
  %cw_max100 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 3, i32 2
  %24 = ptrtoint ptr %cw_max100 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cw_max100, align 2
  %conv101 = zext i16 %25 to i32
  %shl102 = shl nuw i32 %conv101, 16
  %or103 = or i32 %shl102, %conv97
  %26 = tail call i32 @llvm.bswap.i32(i32 %or103)
  %arrayidx106 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 8
  %27 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx106, align 4
  %arrayidx129 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 9
  %28 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 272309248, ptr %arrayidx129, align 4
  %arrayidx131 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 4
  %cw_min132 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 4, i32 1
  %29 = ptrtoint ptr %cw_min132 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cw_min132, align 2
  %conv133 = zext i16 %30 to i32
  %cw_max136 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 4, i32 2
  %31 = ptrtoint ptr %cw_max136 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cw_max136, align 4
  %conv137 = zext i16 %32 to i32
  %shl138 = shl nuw i32 %conv137, 16
  %or139 = or i32 %shl138, %conv133
  %33 = tail call i32 @llvm.bswap.i32(i32 %or139)
  %arrayidx142 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 10
  %34 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx142, align 4
  %arrayidx165 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 11
  %35 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 339418112, ptr %arrayidx165, align 4
  %aifs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 76, i32 0, i32 3
  %36 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %aifs, align 2
  %conv168 = zext i8 %37 to i32
  %mul169 = mul nuw nsw i32 %conv168, 9
  %add170 = add nuw nsw i32 %mul169, 10
  %aifs173 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 1, i32 3
  %38 = ptrtoint ptr %aifs173 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %aifs173, align 2
  %conv174 = zext i8 %39 to i32
  %add176 = mul nuw nsw i32 %conv174, 36864
  %shl177 = add nuw nsw i32 %add176, 40960
  %or178 = or i32 %shl177, %add170
  %aifs181 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 2, i32 3
  %40 = ptrtoint ptr %aifs181 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %aifs181, align 2
  %conv182 = zext i8 %41 to i32
  %add184 = mul i32 %conv182, 150994944
  %shl185 = add i32 %add184, 167772160
  %or186 = or i32 %or178, %shl185
  %42 = tail call i32 @llvm.bswap.i32(i32 %or186)
  %arrayidx189 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 12
  %43 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx189, align 4
  %arrayidx212 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 13
  %44 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 406526976, ptr %arrayidx212, align 4
  %mul217 = mul nuw nsw i32 %conv182, 9
  %add218 = add nuw nsw i32 %mul217, 10
  %45 = lshr i32 %add218, 8
  %aifs221 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 3, i32 3
  %46 = ptrtoint ptr %aifs221 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %aifs221, align 2
  %conv222 = zext i8 %47 to i32
  %add224 = mul nuw nsw i32 %conv222, 144
  %shl225 = add nuw nsw i32 %add224, 160
  %or226 = or i32 %shl225, %45
  %aifs229 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 76, i32 4, i32 3
  %48 = ptrtoint ptr %aifs229 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %aifs229, align 2
  %conv230 = zext i8 %49 to i32
  %add232 = mul nuw nsw i32 %conv230, 589824
  %shl233 = add nuw nsw i32 %add232, 655360
  %or234 = or i32 %or226, %shl233
  %50 = tail call i32 @llvm.bswap.i32(i32 %or234)
  %arrayidx237 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 14
  %51 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx237, align 4
  %state242 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %52 = ptrtoint ptr %state242 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp243 = icmp ugt i32 %53, 1
  br i1 %cmp243, label %if.then245, label %entry.if.end346_crit_edge

entry.if.end346_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end346

if.then245:                                       ; preds = %entry
  %call248 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool251.not = icmp eq i32 %call248, 0
  br i1 %tobool251.not, label %if.then337, label %if.then245.if.end346_crit_edge

if.then245.if.end346_crit_edge:                   ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end346

if.then337:                                       ; preds = %if.then245
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1144724480, ptr %arrayidx, align 4
  %55 = ptrtoint ptr %edcf to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %edcf, align 4
  %conv263 = zext i16 %56 to i32
  %57 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx23, align 2
  %conv267 = zext i16 %58 to i32
  %shl268 = shl nuw i32 %conv267, 16
  %or269 = or i32 %shl268, %conv263
  %59 = tail call i32 @llvm.bswap.i32(i32 %or269)
  %60 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx8, align 4
  %61 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1211833344, ptr %arrayidx21, align 4
  %62 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx59, align 4
  %conv299 = zext i16 %63 to i32
  %64 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx95, align 2
  %conv303 = zext i16 %65 to i32
  %shl304 = shl nuw i32 %conv303, 16
  %or305 = or i32 %shl304, %conv299
  %66 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx131, align 4
  %conv309 = zext i16 %67 to i32
  %shl310 = shl i32 %conv309, 24
  %or311 = or i32 %or305, %shl310
  %68 = tail call i32 @llvm.bswap.i32(i32 %or311)
  %69 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx34, align 4
  %70 = ptrtoint ptr %state242 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %state242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp339 = icmp ugt i32 %.pr, 1
  br i1 %cmp339, label %if.then341, label %if.then337.if.end346_crit_edge

if.then337.if.end346_crit_edge:                   ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end346

if.then341:                                       ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #8
  %call344 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 16, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  br label %if.end346

if.end346:                                        ; preds = %if.then341, %if.then337.if.end346_crit_edge, %if.then245.if.end346_crit_edge, %entry.if.end346_crit_edge
  %__err.10 = phi i32 [ %call344, %if.then341 ], [ 0, %if.then337.if.end346_crit_edge ], [ %call248, %if.then245.if.end346_crit_edge ], [ 0, %entry.if.end346_crit_edge ]
  ret i32 %__err.10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_init_mac(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3546112, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 50331648, ptr %arrayidx4, align 4
  %arrayidx15 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1875502080, ptr %arrayidx15, align 4
  %arrayidx18 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %3 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1073741824, ptr %arrayidx18, align 4
  %arrayidx39 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 5
  %4 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 674962432, ptr %arrayidx39, align 4
  %arrayidx42 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 6
  %5 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx42, align 4
  %arrayidx63 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 7
  %6 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1942610944, ptr %arrayidx63, align 4
  %arrayidx66 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 8
  %7 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -65281, ptr %arrayidx66, align 4
  %arrayidx87 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 9
  %8 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1949703168, ptr %arrayidx87, align 4
  %arrayidx90 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 10
  %9 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %arrayidx90, align 4
  %arrayidx111 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 11
  %10 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1077287936, ptr %arrayidx111, align 4
  %arrayidx114 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 12
  %11 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2145448960, ptr %arrayidx114, align 4
  %arrayidx135 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 13
  %12 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1278614528, ptr %arrayidx135, align 4
  %arrayidx138 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 14
  %13 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1879048192, ptr %arrayidx138, align 4
  %state142 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %14 = ptrtoint ptr %state142 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp143 = icmp ugt i32 %15, 1
  br i1 %cmp143, label %if.then144, label %entry.if.end742_crit_edge

entry.if.end742_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end742

if.then144:                                       ; preds = %entry
  %call147 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool150.not = icmp eq i32 %call147, 0
  br i1 %tobool150.not, label %do.body156, label %if.then144.if.end742_crit_edge

if.then144.if.end742_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end742

do.body156:                                       ; preds = %if.then144
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1741284352, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4199434, ptr %arrayidx4, align 4
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -264889344, ptr %arrayidx15, align 4
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2359296, ptr %arrayidx18, align 4
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 742071296, ptr %arrayidx39, align 4
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 36953, ptr %arrayidx42, align 4
  %22 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 943397888, ptr %arrayidx63, align 4
  %23 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16908288, ptr %arrayidx66, align 4
  %24 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1606607872, ptr %arrayidx87, align 4
  %25 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1879113736, ptr %arrayidx90, align 4
  %26 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1010179072, ptr %arrayidx111, align 4
  %27 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 83951616, ptr %arrayidx114, align 4
  %28 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1673847808, ptr %arrayidx135, align 4
  %29 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 167774208, ptr %arrayidx138, align 4
  %30 = ptrtoint ptr %state142 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp311 = icmp ugt i32 %31, 1
  br i1 %cmp311, label %if.then312, label %do.body156.if.end742_crit_edge

do.body156.if.end742_crit_edge:                   ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end742

if.then312:                                       ; preds = %do.body156
  %call315 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool318.not = icmp eq i32 %call315, 0
  br i1 %tobool318.not, label %do.body324, label %if.then312.if.end742_crit_edge

if.then312.if.end742_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end742

do.body324:                                       ; preds = %if.then312
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1606738944, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 118100992, ptr %arrayidx4, align 4
  %34 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1942610944, ptr %arrayidx15, align 4
  %35 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -65531, ptr %arrayidx18, align 4
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1077681152, ptr %arrayidx39, align 4
  %37 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 50331648, ptr %arrayidx42, align 4
  %38 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 808852480, ptr %arrayidx63, align 4
  %39 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 253034496, ptr %arrayidx66, align 4
  %40 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 875961344, ptr %arrayidx87, align 4
  %41 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 253034496, ptr %arrayidx90, align 4
  %42 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 943070208, ptr %arrayidx111, align 4
  %43 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 855638784, ptr %arrayidx114, align 4
  %44 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1808393216, ptr %arrayidx135, align 4
  %45 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 507248644, ptr %arrayidx138, align 4
  %46 = ptrtoint ptr %state142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp479 = icmp ugt i32 %47, 1
  br i1 %cmp479, label %if.then480, label %do.body324.if.end742_crit_edge

do.body324.if.end742_crit_edge:                   ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end742

if.then480:                                       ; preds = %do.body324
  %call483 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call483)
  %tobool486.not = icmp eq i32 %call483, 0
  br i1 %tobool486.not, label %do.body492, label %if.then480.if.end742_crit_edge

if.then480.if.end742_crit_edge:                   ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end742

do.body492:                                       ; preds = %if.then480
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1346116608, ptr %arrayidx, align 4
  %49 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -65536, ptr %arrayidx4, align 4
  %50 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -2143937536, ptr %arrayidx15, align 4
  %51 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 134279168, ptr %arrayidx18, align 4
  %52 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 741743616, ptr %arrayidx39, align 4
  %53 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx42, align 4
  %54 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2084379648, ptr %arrayidx63, align 4
  %55 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 285217024, ptr %arrayidx66, align 4
  %56 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1338303488, ptr %arrayidx87, align 4
  %57 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 67108864, ptr %arrayidx90, align 4
  %58 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 809180160, ptr %arrayidx111, align 4
  %59 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1208950292, ptr %arrayidx114, align 4
  %60 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 607525888, ptr %arrayidx135, align 4
  %61 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %arrayidx138, align 4
  %62 = ptrtoint ptr %state142 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp647 = icmp ugt i32 %63, 1
  br i1 %cmp647, label %if.then648, label %do.body492.if.end742_crit_edge

do.body492.if.end742_crit_edge:                   ; preds = %do.body492
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end742

if.then648:                                       ; preds = %do.body492
  %call651 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 56, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call651)
  %tobool654.not = icmp eq i32 %call651, 0
  br i1 %tobool654.not, label %if.then734, label %if.then648.if.end742_crit_edge

if.then648.if.end742_crit_edge:                   ; preds = %if.then648
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end742

if.then734:                                       ; preds = %if.then648
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 674634752, ptr %arrayidx, align 4
  %65 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %arrayidx4, align 4
  %66 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 607460352, ptr %arrayidx15, align 4
  %67 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %arrayidx18, align 4
  %68 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 540351488, ptr %arrayidx39, align 4
  %69 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx42, align 4
  %70 = ptrtoint ptr %state142 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %state142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp736 = icmp ugt i32 %.pr, 1
  br i1 %cmp736, label %if.then737, label %if.then734.if.end742_crit_edge

if.then734.if.end742_crit_edge:                   ; preds = %if.then734
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end742

if.then737:                                       ; preds = %if.then734
  call void @__sanitizer_cov_trace_pc() #8
  %call740 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 24, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  br label %if.end742

if.end742:                                        ; preds = %if.then737, %if.then734.if.end742_crit_edge, %if.then648.if.end742_crit_edge, %do.body492.if.end742_crit_edge, %if.then480.if.end742_crit_edge, %do.body324.if.end742_crit_edge, %if.then312.if.end742_crit_edge, %do.body156.if.end742_crit_edge, %if.then144.if.end742_crit_edge, %entry.if.end742_crit_edge
  %__err.32 = phi i32 [ %call740, %if.then737 ], [ 0, %if.then734.if.end742_crit_edge ], [ %call147, %if.then144.if.end742_crit_edge ], [ %call315, %if.then312.if.end742_crit_edge ], [ %call483, %if.then480.if.end742_crit_edge ], [ %call651, %if.then648.if.end742_crit_edge ], [ 0, %entry.if.end742_crit_edge ], [ 0, %do.body156.if.end742_crit_edge ], [ 0, %do.body324.if.end742_crit_edge ], [ 0, %do.body492.if.end742_crit_edge ]
  ret i32 %__err.32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_mod_virtual_mac(ptr noundef %ar, i32 noundef %id, ptr noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vif_num = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 6
  %0 = ptrtoint ptr %vif_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp.not = icmp ugt i32 %1, %id
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end21:                                         ; preds = %entry
  %sub = shl i32 %id, 3
  %add = add i32 %sub, 1850360
  %tobool.not.i = icmp eq ptr %mac, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr @carl9170_set_mac_reg.zero, ptr %mac
  %2 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %arrayidx.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %spec.store.select.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %spec.store.select.i, align 1
  %arrayidx4.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx4.i, align 4
  %add17.i = add i32 %sub, 1850364
  %7 = tail call i32 @llvm.bswap.i32(i32 %add17.i) #6
  %arrayidx20.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx20.i, align 4
  %add.ptr.i = getelementptr i8, ptr %spec.store.select.i, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr.i, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #6
  %conv.i = zext i16 %11 to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #6
  %arrayidx24.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx24.i, align 4
  %state48.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %14 = ptrtoint ptr %state48.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp49.i = icmp ugt i32 %15, 1
  br i1 %cmp49.i, label %if.then51.i, label %if.end21.return_crit_edge

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then51.i:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call54.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 16, ptr noundef %arrayidx.i, i32 noundef 0, ptr noundef null) #6
  br label %return

return:                                           ; preds = %if.then51.i, %if.end21.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call54.i, %if.then51.i ], [ 0, %if.end21.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_update_multicast(ptr noundef %ar, i64 noundef %mc_hash) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 674634752, ptr %arrayidx, align 4
  %shr = lshr i64 %mc_hash, 32
  %conv = trunc i64 %shr to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %arrayidx4 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx4, align 4
  %arrayidx17 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 607525888, ptr %arrayidx17, align 4
  %conv18 = trunc i64 %mc_hash to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv18)
  %arrayidx21 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %5 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx21, align 4
  %state45 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %6 = ptrtoint ptr %state45 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp46 = icmp ugt i32 %7, 1
  br i1 %cmp46, label %if.end53, label %entry.if.end58_crit_edge

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.end53:                                         ; preds = %entry
  %call51 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 16, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool56.not = icmp eq i32 %call51, 0
  br i1 %tobool56.not, label %if.end53.if.end58_crit_edge, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.end58:                                         ; preds = %if.end53.if.end58_crit_edge, %entry.if.end58_crit_edge
  %cur_mc_hash = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 49
  %8 = ptrtoint ptr %cur_mc_hash to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %mc_hash, ptr %cur_mc_hash, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end53.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ %call51, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_operating_mode(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i234 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool.not.i235 = icmp eq i32 %call.i234, 0
  br i1 %tobool.not.i235, label %land.lhs.true.i237, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i237:                               ; preds = %rcu_read_lock.exit
  %call1.i236 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i236)
  %tobool2.not.i = icmp eq i32 %call1.i236, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i237.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i237.do.end.i_crit_edge:            ; preds = %land.lhs.true.i237
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i237
  %.b27.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i238

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i238:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 650, ptr noundef nonnull @.str.5) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i238, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i237.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %cvif.0.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %cvif.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %cvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cvif.0.i = load volatile ptr, ptr %cvif.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cvif.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end30_crit_edge, label %for.body.i

for.cond.i.if.end30_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

for.body.i:                                       ; preds = %for.cond.i
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active.i, align 4, !range !32
  %tobool10.not.i = icmp eq i8 %6, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %carl9170_get_main_vif.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

carl9170_get_main_vif.exit:                       ; preds = %for.body.i
  %add.ptr.i.i = getelementptr i8, ptr %cvif.0.i, i32 -848
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %carl9170_get_main_vif.exit.if.end30_crit_edge, label %if.then

carl9170_get_main_vif.exit.if.end30_crit_edge:    ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then:                                          ; preds = %carl9170_get_main_vif.exit
  %curbssid = getelementptr inbounds %struct.ath_common, ptr %ar, i32 0, i32 10
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %8, label %do.end [
    i32 1, label %if.then.if.end30_crit_edge
    i32 7, label %if.then.sw.bb3_crit_edge
    i32 3, label %if.then.sw.bb3_crit_edge276
    i32 2, label %sw.bb6
  ]

if.then.sw.bb3_crit_edge276:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

if.then.sw.bb3_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

sw.bb3:                                           ; preds = %if.then.sw.bb3_crit_edge, %if.then.sw.bb3_crit_edge276
  br label %if.end30

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 337, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %8) #6
  br label %if.end30

if.end30:                                         ; preds = %do.end, %sw.bb6, %sw.bb3, %if.then.if.end30_crit_edge, %carl9170_get_main_vif.exit.if.end30_crit_edge, %for.cond.i.if.end30_crit_edge
  %bssid.0 = phi ptr [ %curbssid, %do.end ], [ %curbssid, %sw.bb6 ], [ %curbssid, %sw.bb3 ], [ %curbssid, %if.then.if.end30_crit_edge ], [ null, %carl9170_get_main_vif.exit.if.end30_crit_edge ], [ null, %for.cond.i.if.end30_crit_edge ]
  %cam_mode.0 = phi i32 [ 251658240, %do.end ], [ 251658242, %sw.bb6 ], [ 251658401, %sw.bb3 ], [ 251658464, %if.then.if.end30_crit_edge ], [ 251658242, %carl9170_get_main_vif.exit.if.end30_crit_edge ], [ 251658242, %for.cond.i.if.end30_crit_edge ]
  %rx_ctrl.0 = phi i32 [ 3, %do.end ], [ 268435459, %sw.bb6 ], [ 268435459, %sw.bb3 ], [ 3, %if.then.if.end30_crit_edge ], [ 268435459, %carl9170_get_main_vif.exit.if.end30_crit_edge ], [ 268435459, %for.cond.i.if.end30_crit_edge ]
  %tobool31.not = phi i1 [ false, %do.end ], [ true, %sw.bb6 ], [ true, %sw.bb3 ], [ true, %if.then.if.end30_crit_edge ], [ true, %carl9170_get_main_vif.exit.if.end30_crit_edge ], [ true, %for.cond.i.if.end30_crit_edge ]
  %err.0 = phi i32 [ -95, %do.end ], [ 0, %sw.bb6 ], [ 0, %sw.bb3 ], [ 0, %if.then.if.end30_crit_edge ], [ 0, %carl9170_get_main_vif.exit.if.end30_crit_edge ], [ 0, %for.cond.i.if.end30_crit_edge ]
  %mac_addr.0 = getelementptr inbounds %struct.ath_common, ptr %ar, i32 0, i32 9
  %call.i239 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i239, label %if.end30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i242

if.end30.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i242:                               ; preds = %if.end30
  %call1.i240 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i240)
  %tobool.not.i241 = icmp eq i32 %call1.i240, 0
  br i1 %tobool.not.i241, label %land.lhs.true.i242.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i244

land.lhs.true.i242.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i242
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i244:                              ; preds = %land.lhs.true.i242
  %.b4.i243 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i243, label %land.lhs.true2.i244.rcu_read_unlock.exit_crit_edge, label %if.then.i245

land.lhs.true2.i244.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i244
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i245:                                     ; preds = %land.lhs.true2.i244
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i245, %land.lhs.true2.i244.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i242.rcu_read_unlock.exit_crit_edge, %if.end30.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !33
  %10 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i246 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i246 to ptr
  %preempt_count.i.i.i.i247 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i247, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i247, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br i1 %tobool31.not, label %if.end33, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %rcu_read_unlock.exit
  %rx_software_decryption = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 47
  %14 = ptrtoint ptr %rx_software_decryption to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx_software_decryption, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool34.not = icmp eq i8 %15, 0
  %sniffer_enabled = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 53
  %16 = ptrtoint ptr %sniffer_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sniffer_enabled, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool38.not = icmp eq i8 %17, 0
  %18 = select i1 %tobool38.not, i1 %tobool34.not, i1 false
  %enc_mode.1 = select i1 %18, i32 1946157056, i32 2080374784
  %tobool.not.i249 = icmp eq ptr %mac_addr.0, null
  %spec.store.select.i = select i1 %tobool.not.i249, ptr @carl9170_set_mac_reg.zero, ptr %mac_addr.0
  %arrayidx.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 271981568, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %spec.store.select.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %spec.store.select.i, align 1
  %arrayidx4.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx4.i, align 4
  %arrayidx20.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 339090432, ptr %arrayidx20.i, align 4
  %add.ptr.i = getelementptr i8, ptr %spec.store.select.i, i32 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %add.ptr.i, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #6
  %conv.i = zext i16 %26 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #6
  %arrayidx24.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx24.i, align 4
  %state48.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %29 = ptrtoint ptr %state48.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp49.i = icmp ugt i32 %30, 1
  br i1 %cmp49.i, label %carl9170_set_mac_reg.exit, label %if.end33.if.end45_crit_edge

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

carl9170_set_mac_reg.exit:                        ; preds = %if.end33
  %call54.i = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 16, ptr noundef %arrayidx.i, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool43.not = icmp eq i32 %call54.i, 0
  br i1 %tobool43.not, label %carl9170_set_mac_reg.exit.if.end45_crit_edge, label %carl9170_set_mac_reg.exit.cleanup_crit_edge

carl9170_set_mac_reg.exit.cleanup_crit_edge:      ; preds = %carl9170_set_mac_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

carl9170_set_mac_reg.exit.if.end45_crit_edge:     ; preds = %carl9170_set_mac_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end45:                                         ; preds = %carl9170_set_mac_reg.exit.if.end45_crit_edge, %if.end33.if.end45_crit_edge
  %tobool.not.i250 = icmp eq ptr %bssid.0, null
  %spec.store.select.i251 = select i1 %tobool.not.i250, ptr @carl9170_set_mac_reg.zero, ptr %bssid.0
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 406199296, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %spec.store.select.i251 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %spec.store.select.i251, align 1
  %34 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx4.i, align 4
  %35 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 473308160, ptr %arrayidx20.i, align 4
  %add.ptr.i255 = getelementptr i8, ptr %spec.store.select.i251, i32 4
  %36 = ptrtoint ptr %add.ptr.i255 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %add.ptr.i255, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #6
  %conv.i256 = zext i16 %38 to i32
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv.i256) #6
  %40 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx24.i, align 4
  %41 = ptrtoint ptr %state48.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp49.i259 = icmp ugt i32 %42, 1
  br i1 %cmp49.i259, label %carl9170_set_mac_reg.exit263, label %if.end45.do.body50_crit_edge

if.end45.do.body50_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

carl9170_set_mac_reg.exit263:                     ; preds = %if.end45
  %call54.i260 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 16, ptr noundef %arrayidx.i, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i260)
  %tobool47.not = icmp eq i32 %call54.i260, 0
  br i1 %tobool47.not, label %carl9170_set_mac_reg.exit263.do.body50_crit_edge, label %carl9170_set_mac_reg.exit263.cleanup_crit_edge

carl9170_set_mac_reg.exit263.cleanup_crit_edge:   ; preds = %carl9170_set_mac_reg.exit263
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

carl9170_set_mac_reg.exit263.do.body50_crit_edge: ; preds = %carl9170_set_mac_reg.exit263
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

do.body50:                                        ; preds = %carl9170_set_mac_reg.exit263.do.body50_crit_edge, %if.end45.do.body50_crit_edge
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1949703168, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %arrayidx4.i, align 4
  %45 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3611648, ptr %arrayidx20.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %cam_mode.0)
  %47 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx24.i, align 4
  %arrayidx96 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 5
  %48 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2016812032, ptr %arrayidx96, align 4
  %arrayidx99 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 6
  %49 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %enc_mode.1, ptr %arrayidx99, align 4
  %arrayidx120 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 7
  %50 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1077681152, ptr %arrayidx120, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %rx_ctrl.0)
  %arrayidx123 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 8
  %52 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx123, align 4
  %53 = ptrtoint ptr %state48.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp145 = icmp ugt i32 %54, 1
  br i1 %cmp145, label %if.then146, label %do.body50.cleanup_crit_edge

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then146:                                       ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %call149 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 32, ptr noundef %arrayidx.i, i32 noundef 0, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then146, %do.body50.cleanup_crit_edge, %carl9170_set_mac_reg.exit263.cleanup_crit_edge, %carl9170_set_mac_reg.exit.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %rcu_read_unlock.exit.cleanup_crit_edge ], [ %call54.i, %carl9170_set_mac_reg.exit.cleanup_crit_edge ], [ %call54.i260, %carl9170_set_mac_reg.exit263.cleanup_crit_edge ], [ %call149, %if.then146 ], [ 0, %do.body50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_hwretry_limit(ptr noundef %ar, i32 noundef %max_retry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %max_retry, 69905
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 209715)
  %call = tail call i32 @carl9170_write_reg(ptr noundef %ar, i32 noundef 1850152, i32 noundef %0) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_beacon_timers(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i256 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool.not.i257 = icmp eq i32 %call.i256, 0
  br i1 %tobool.not.i257, label %land.lhs.true.i259, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i259:                               ; preds = %rcu_read_lock.exit
  %call1.i258 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i258)
  %tobool2.not.i = icmp eq i32 %call1.i258, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i259.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i259.do.end.i_crit_edge:            ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i259
  %.b27.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i260

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i260:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 650, ptr noundef nonnull @.str.5) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i260, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i259.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %cvif.0.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %cvif.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %cvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cvif.0.i = load volatile ptr, ptr %cvif.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cvif.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.else106_crit_edge, label %for.body.i

for.cond.i.if.else106_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else106

for.body.i:                                       ; preds = %for.cond.i
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active.i, align 4, !range !32
  %tobool10.not.i = icmp eq i8 %6, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %carl9170_get_main_vif.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

carl9170_get_main_vif.exit:                       ; preds = %for.body.i
  %add.ptr.i.i = getelementptr i8, ptr %cvif.0.i, i32 -848
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %carl9170_get_main_vif.exit.if.else106_crit_edge, label %if.then

carl9170_get_main_vif.exit.if.else106_crit_edge:  ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else106

if.then:                                          ; preds = %carl9170_get_main_vif.exit
  %enable_beacon = getelementptr i8, ptr %cvif.0.i, i32 20
  %7 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_beacon, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %beacon_enabled = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 45
  %9 = ptrtoint ptr %beacon_enabled to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %beacon_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %do.end, label %if.then25.critedge, !prof !35

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #6
  br label %if.else

if.then25.critedge:                               ; preds = %land.lhs.true
  %beacon_int = getelementptr i8, ptr %cvif.0.i, i32 -814
  %11 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %12 to i32
  %div = udiv i32 %conv, %10
  %global_beacon_int = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 43
  %13 = ptrtoint ptr %global_beacon_int to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %global_beacon_int, align 8
  %dtim_period = getelementptr i8, ptr %cvif.0.i, i32 -816
  %14 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dtim_period, align 8
  %conv28 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv28, 16
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %17, label %land.end [
    i32 7, label %if.then25.critedge.sw.bb_crit_edge
    i32 1, label %if.then25.critedge.sw.bb_crit_edge292
    i32 3, label %sw.bb31
  ]

if.then25.critedge.sw.bb_crit_edge292:            ; preds = %if.then25.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then25.critedge.sw.bb_crit_edge:               ; preds = %if.then25.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.then25.critedge.sw.bb_crit_edge, %if.then25.critedge.sw.bb_crit_edge292
  %or30 = or i32 %shl, 33554432
  br label %if.end93

sw.bb31:                                          ; preds = %if.then25.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %or32 = or i32 %shl, 16777216
  br label %if.end93

land.end:                                         ; preds = %if.then25.critedge
  %.b255 = load i1, ptr @carl9170_set_beacon_timers.__already_done, align 1
  br i1 %.b255, label %land.end.if.end93_crit_edge, label %if.then44, !prof !34

land.end.if.end93_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then44:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @carl9170_set_beacon_timers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 428, i32 noundef 9, ptr noundef null) #6
  br label %if.end93

if.else:                                          ; preds = %do.end, %if.then.if.else_crit_edge
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %if.then81, label %if.else.if.end93_crit_edge

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then81:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %beacon_int83 = getelementptr i8, ptr %cvif.0.i, i32 -814
  %21 = ptrtoint ptr %beacon_int83 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %beacon_int83, align 2
  %conv84 = zext i16 %22 to i32
  %global_beacon_int85 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 43
  %23 = ptrtoint ptr %global_beacon_int85 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv84, ptr %global_beacon_int85, align 8
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %ps_dtim_period = getelementptr inbounds %struct.ieee80211_conf, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ps_dtim_period to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ps_dtim_period, align 2
  %conv87 = zext i8 %27 to i32
  %shl88 = shl nuw nsw i32 %conv87, 16
  %or91 = or i32 %shl88, 201326592
  br label %if.end93

if.end93:                                         ; preds = %if.then81, %if.else.if.end93_crit_edge, %if.then44, %land.end.if.end93_crit_edge, %sw.bb31, %sw.bb
  %v.0 = phi i32 [ %or91, %if.then81 ], [ 0, %if.else.if.end93_crit_edge ], [ %or32, %sw.bb31 ], [ %or30, %sw.bb ], [ %shl, %if.then44 ], [ %shl, %land.end.if.end93_crit_edge ]
  %global_beacon_int94 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 43
  %28 = ptrtoint ptr %global_beacon_int94 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %global_beacon_int94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool95.not = icmp eq i32 %29, 0
  br i1 %tobool95.not, label %if.end93.if.end109_crit_edge, label %if.then96

if.end93.if.end109_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %29)
  %cmp98 = icmp ult i32 %29, 15
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.then96
  %call.i261 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i261, label %if.then100.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i264

if.then100.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i264:                               ; preds = %if.then100
  %call1.i262 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i262)
  %tobool.not.i263 = icmp eq i32 %call1.i262, 0
  br i1 %tobool.not.i263, label %land.lhs.true.i264.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i266

land.lhs.true.i264.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i264
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i266:                              ; preds = %land.lhs.true.i264
  %.b4.i265 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i265, label %land.lhs.true2.i266.rcu_read_unlock.exit_crit_edge, label %if.then.i267

land.lhs.true2.i266.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i266
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i267:                                     ; preds = %land.lhs.true2.i266
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i267, %land.lhs.true2.i266.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i264.rcu_read_unlock.exit_crit_edge, %if.then100.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !33
  %30 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i268 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i268 to ptr
  %preempt_count.i.i.i.i269 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i269, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i269, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup192

if.end101:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %29, -6
  br label %if.end109

if.else106:                                       ; preds = %carl9170_get_main_vif.exit.if.else106_crit_edge, %for.cond.i.if.else106_crit_edge
  %global_beacon_int107 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 43
  %34 = ptrtoint ptr %global_beacon_int107 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %global_beacon_int107, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.else106, %if.end101, %if.end93.if.end109_crit_edge
  %.sink = phi i32 [ %sub, %if.end101 ], [ 0, %if.else106 ], [ 0, %if.end93.if.end109_crit_edge ]
  %v.1 = phi i32 [ %v.0, %if.end101 ], [ 0, %if.else106 ], [ %v.0, %if.end93.if.end109_crit_edge ]
  %global_pretbtt104 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 42
  %35 = ptrtoint ptr %global_pretbtt104 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %global_pretbtt104, align 4
  %call.i271 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i271, label %if.end109.rcu_read_unlock.exit282_crit_edge, label %land.lhs.true.i274

if.end109.rcu_read_unlock.exit282_crit_edge:      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit282

land.lhs.true.i274:                               ; preds = %if.end109
  %call1.i272 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i272)
  %tobool.not.i273 = icmp eq i32 %call1.i272, 0
  br i1 %tobool.not.i273, label %land.lhs.true.i274.rcu_read_unlock.exit282_crit_edge, label %land.lhs.true2.i276

land.lhs.true.i274.rcu_read_unlock.exit282_crit_edge: ; preds = %land.lhs.true.i274
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit282

land.lhs.true2.i276:                              ; preds = %land.lhs.true.i274
  %.b4.i275 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i275, label %land.lhs.true2.i276.rcu_read_unlock.exit282_crit_edge, label %if.then.i277

land.lhs.true2.i276.rcu_read_unlock.exit282_crit_edge: ; preds = %land.lhs.true2.i276
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit282

if.then.i277:                                     ; preds = %land.lhs.true2.i276
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit282

rcu_read_unlock.exit282:                          ; preds = %if.then.i277, %land.lhs.true2.i276.rcu_read_unlock.exit282_crit_edge, %land.lhs.true.i274.rcu_read_unlock.exit282_crit_edge, %if.end109.rcu_read_unlock.exit282_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !33
  %36 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i278 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i278 to ptr
  %preempt_count.i.i.i.i279 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i279 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i279, align 4
  %sub.i.i.i280 = add i32 %39, -1
  store volatile i32 %sub.i.i.i280, ptr %preempt_count.i.i.i.i279, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %global_beacon_int111 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 43
  %40 = ptrtoint ptr %global_beacon_int111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %global_beacon_int111, align 8
  %global_pretbtt116 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 42
  %42 = ptrtoint ptr %global_pretbtt116 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %global_pretbtt116, align 4
  %and118 = and i32 %43, 65535
  %shl122 = shl i32 %43, 16
  %or124 = or i32 %and118, %shl122
  %arrayidx = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 607460352, ptr %arrayidx, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %or124)
  %arrayidx129 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx129, align 4
  %and110 = and i32 %v.1, -65536
  %and113 = and i32 %41, 65535
  %or114 = or i32 %and113, %and110
  %arrayidx150 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 540351488, ptr %arrayidx150, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %or114)
  %arrayidx153 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx153, align 4
  %state178 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %50 = ptrtoint ptr %state178 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp179 = icmp ugt i32 %51, 1
  br i1 %cmp179, label %if.then181, label %rcu_read_unlock.exit282.cleanup192_crit_edge

rcu_read_unlock.exit282.cleanup192_crit_edge:     ; preds = %rcu_read_unlock.exit282
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup192

if.then181:                                       ; preds = %rcu_read_unlock.exit282
  call void @__sanitizer_cov_trace_pc() #8
  %call184 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 16, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null) #6
  br label %cleanup192

cleanup192:                                       ; preds = %if.then181, %rcu_read_unlock.exit282.cleanup192_crit_edge, %rcu_read_unlock.exit
  %retval.1 = phi i32 [ -34, %rcu_read_unlock.exit ], [ %call184, %if.then181 ], [ 0, %rcu_read_unlock.exit282.cleanup192_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_upload_key(ptr noundef %ar, i8 noundef zeroext %id, ptr noundef readonly %mac, i8 noundef zeroext %ktype, i8 noundef zeroext %keyidx, ptr noundef readonly %keydata, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.carl9170_set_key_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %key) #6
  %0 = getelementptr inbounds i8, ptr %key, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %tobool.not = icmp eq ptr %mac, null
  %.carl9170_upload_key.bcast = select i1 %tobool.not, ptr @carl9170_upload_key.bcast, ptr %mac
  %conv = zext i8 %id to i16
  %2 = shl nuw i16 %conv, 8
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %key, align 4
  %conv1 = zext i8 %keyidx to i16
  %4 = shl nuw i16 %conv1, 8
  %keyId = getelementptr inbounds %struct.carl9170_set_key_cmd, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %keyId to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %keyId, align 2
  %conv2 = zext i8 %ktype to i16
  %6 = shl nuw i16 %conv2, 8
  %type = getelementptr inbounds %struct.carl9170_set_key_cmd, ptr %key, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %type, align 4
  %macAddr = getelementptr inbounds %struct.carl9170_set_key_cmd, ptr %key, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %macAddr, ptr %.carl9170_upload_key.bcast, i32 6)
  %tobool3.not = icmp eq ptr %keydata, null
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %key4 = getelementptr inbounds %struct.carl9170_set_key_cmd, ptr %key, i32 0, i32 4
  %9 = call ptr @memcpy(ptr %key4, ptr %keydata, i32 %keylen)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 16, i32 noundef 28, ptr noundef nonnull %key, i32 noundef 0, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %key) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_disable_key(ptr noundef %ar, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.carl9170_disable_key_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #6
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %key, align 4
  %conv = zext i8 %id to i16
  %1 = shl nuw i16 %conv, 8
  store i16 %1, ptr %key, align 4
  %call = call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %key, i32 noundef 0, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_set_mac_tpc(ptr noundef %ar, ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_mask = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 88, i32 8
  %0 = ptrtoint ptr %tx_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  %. = select i1 %cmp.not, i32 1, i32 5
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %3, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power_2G_ofdm = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 67
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power_5G_leg = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 65
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/carl9170/mac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %power.0.in.in.in = phi ptr [ %power_5G_leg, %sw.bb3 ], [ %power_2G_ofdm, %sw.bb ]
  %5 = ptrtoint ptr %power.0.in.in.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %power.0.in.in = load i8, ptr %power.0.in.in.in, align 8
  %power.0.in = and i8 %power.0.in.in, 63
  %power.0 = zext i8 %power.0.in to i32
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_level, align 4
  %mul = shl i32 %9, 1
  %10 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %power.0)
  %arrayidx15 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1808393216, ptr %arrayidx15, align 4
  %shl = shl nuw nsw i32 %10, 20
  %shl16 = shl nuw nsw i32 %., 26
  %or = or i32 %shl, %shl16
  %or17 = or i32 %or, 15390
  %12 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %arrayidx20 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx20, align 4
  %arrayidx39 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1271194624, ptr %arrayidx39, align 4
  %shl40 = shl nuw nsw i32 %10, 5
  %shl41 = shl nuw nsw i32 %., 11
  %or42 = or i32 %shl40, %shl41
  %shl43 = shl nuw nsw i32 %10, 21
  %or44 = or i32 %or42, %shl43
  %shl45 = shl nuw nsw i32 %., 27
  %or46 = or i32 %or44, %shl45
  %15 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %arrayidx49 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx49, align 4
  %arrayidx72 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1204085760, ptr %arrayidx72, align 4
  %arrayidx82 = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx82, align 4
  %state106 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %19 = ptrtoint ptr %state106 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp107 = icmp ugt i32 %20, 1
  br i1 %cmp107, label %if.then109, label %sw.epilog.if.end114_crit_edge

sw.epilog.if.end114_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then109:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call112 = tail call i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef 1, i32 noundef 24, ptr noundef %arrayidx15, i32 noundef 0, ptr noundef null) #6
  br label %if.end114

if.end114:                                        ; preds = %if.then109, %sw.epilog.if.end114_crit_edge
  %__err.3 = phi i32 [ %call112, %if.then109 ], [ 0, %sw.epilog.if.end114_crit_edge ]
  ret i32 %__err.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/mac.c", i32 278, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/carl9170/mac.c", i32 337, i32 4}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/carl9170/mac.c", i32 428, i32 5}
!6 = !{ptr @carl9170_upload_key.bcast, !7, !"bcast", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/carl9170/mac.c", i32 475, i32 18}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/carl9170/carl9170.h", i32 650, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @carl9170_set_mac_reg.zero, !20, !"zero", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/carl9170/mac.c", i32 260, i32 18}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2149939735}
!32 = !{i8 0, i8 2}
!33 = !{i64 2149940001}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2157854442, i64 2157854946, i64 2157854479, i64 2157854535, i64 2157854569, i64 2157854593, i64 2157854634, i64 2157854655, i64 2157854683, i64 2157854717}
