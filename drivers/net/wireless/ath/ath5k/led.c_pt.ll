; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/led.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/led.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath5k_hw = type { %struct.ath_common, ptr, ptr, i32, i16, ptr, %struct.mutex, ptr, [6 x %struct.ieee80211_supported_band], [314 x %struct.ieee80211_channel], [6 x [32 x %struct.ieee80211_rate]], [6 x [32 x i8]], i32, %struct.ath5k_dbg_info, ptr, ptr, i32, i32, [1 x i32], i32, i32, ptr, i16, i32, %struct.spinlock, i8, i8, [6 x i8], i32, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.ath5k_led, %struct.list_head, %struct.spinlock, i32, [10 x %struct.ath5k_txq], %struct.tasklet_struct, %struct.ath5k_led, %struct.ath5k_rfkill, %struct.spinlock, %struct.tasklet_struct, %struct.list_head, [4 x ptr], i16, i16, i16, i32, i32, i32, i32, i32, ptr, i8, i8, %struct.ath5k_statistics, %struct.ath5k_ani_state, %struct.tasklet_struct, %struct.delayed_work, %struct.survey_info, i32, ptr, i8, i8, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x [3 x i32]], i8, i8, i8, %struct.ath5k_capabilities, [10 x %struct.ath5k_txq_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.ath5k_gain, [8 x i8], %struct.anon.138, %struct.ath5k_nfcal_hist, %struct.ewma_beacon_rssi, i32, i32, i32, i32, i8, ptr, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ath5k_statistics = type { [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath5k_ani_state = type { i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.ath_cycle_counters, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.131, i32 }
%union.anon.131 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath5k_capabilities = type { [1 x i32], %struct.anon.135, %struct.ath5k_eeprom_info, %struct.anon.137, i8, i8, i8 }
%struct.anon.135 = type { i16, i16, i16, i16 }
%struct.ath5k_eeprom_info = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x [11 x i16]], [3 x [4 x i16]], [3 x [4 x i16]], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i8], [3 x [4 x i8]], [3 x i8], [10 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [3 x i8], [10 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], i8, [32 x i8], [256 x %struct.ath5k_edge_power], [3 x i16], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, [5 x [2 x i16]], [3 x [3 x i32]] }
%struct.ath5k_chan_pcal_info = type { i16, i16, i16, %union.anon.136, ptr }
%union.anon.136 = type { %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_chan_pcal_info_rf2413 = type { [4 x i8], [4 x i8], [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ath5k_rate_pcal_info = type { i16, i16, i16, i16, i16 }
%struct.ath5k_edge_power = type { i16, i16, i8 }
%struct.anon.137 = type { i8 }
%struct.ath5k_txq_info = type { i32, i32, i16, i8, i16, i16, i32, i32, i32, i32 }
%struct.ath5k_gain = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.138 = type { [4 x [64 x i8]], [4 x [64 x i8]], [128 x i8], [32 x i16], i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i32 }
%struct.ath5k_nfcal_hist = type { i16, [8 x i16] }
%struct.ewma_beacon_rssi = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }

@ath5k_led_devices = internal constant { [16 x %struct.pci_device_id], [128 x i8] } { [16 x %struct.pci_device_id] [%struct.pci_device_id { i32 5772, i32 18, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 3601, i32 -1, i32 0, i32 0, i32 257, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 4187, i32 57352, i32 0, i32 0, i32 768, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 4187, i32 57357, i32 0, i32 0, i32 768, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 5224, i32 1058, i32 0, i32 0, i32 257, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 5224, i32 1064, i32 0, i32 0, i32 768, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 6706, i32 256, i32 0, i32 0, i32 256, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 6706, i32 261, i32 0, i32 0, i32 768, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 6715, i32 4134, i32 0, i32 0, i32 768, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 4116, i32 1418, i32 0, i32 0, i32 256, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 4156, i32 4986, i32 0, i32 0, i32 769, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 4156, i32 4987, i32 0, i32 0, i32 768, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 5772, i32 12391, i32 0, i32 0, i32 768, i32 0 }, %struct.pci_device_id { i32 5772, i32 4116, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 6706, i32 274, i32 0, i32 0, i32 768, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ath5k-%s::rx\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ath5k-%s::tx\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not register LED %s\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"ath5k_led_devices\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 56, i32 35 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 193, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 199, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath5k/led.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 142, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @ath5k_led_devices, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_led_devices to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_led_enable(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 18
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %led_pin = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 28
  %3 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %led_pin, align 4
  %call1 = tail call i32 @ath5k_hw_set_gpio_output(ptr noundef %ah, i32 noundef %4) #5
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %led_pin, align 4
  %led_on.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 29
  %10 = ptrtoint ptr %led_on.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %led_on.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  %lnot.ext.i = zext i1 %tobool1.not.i to i32
  %call2.i = tail call i32 @ath5k_hw_set_gpio(ptr noundef %ah, i32 noundef %9, i32 noundef %lnot.ext.i) #5
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_gpio_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_led_off(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 18
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %led_pin = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 28
  %3 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %led_pin, align 4
  %led_on = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 29
  %5 = ptrtoint ptr %led_on to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %led_on, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  %lnot.ext = zext i1 %tobool1.not to i32
  %call2 = tail call i32 @ath5k_hw_set_gpio(ptr noundef %ah, i32 noundef %4, i32 noundef %lnot.ext) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_gpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_unregister_leds(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ah.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ath5k_unregister_led.exit_crit_edge, label %if.end.i

entry.ath5k_unregister_led.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath5k_unregister_led.exit

if.end.i:                                         ; preds = %entry
  %led_dev.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 36, i32 2
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i) #5
  %2 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah.i, align 4
  %status.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.ath5k_led_off.exit.i_crit_edge, label %if.end.i.i

if.end.i.ath5k_led_off.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath5k_led_off.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %led_pin.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %3, i32 0, i32 28
  %7 = ptrtoint ptr %led_pin.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %led_pin.i.i, align 4
  %led_on.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %3, i32 0, i32 29
  %9 = ptrtoint ptr %led_on.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %led_on.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i.i = icmp eq i32 %10, 0
  %lnot.ext.i.i = zext i1 %tobool1.not.i.i to i32
  %call2.i.i = tail call i32 @ath5k_hw_set_gpio(ptr noundef %3, i32 noundef %8, i32 noundef %lnot.ext.i.i) #5
  br label %ath5k_led_off.exit.i

ath5k_led_off.exit.i:                             ; preds = %if.end.i.i, %if.end.i.ath5k_led_off.exit.i_crit_edge
  %11 = ptrtoint ptr %ah.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ah.i, align 4
  br label %ath5k_unregister_led.exit

ath5k_unregister_led.exit:                        ; preds = %ath5k_led_off.exit.i, %entry.ath5k_unregister_led.exit_crit_edge
  %ah.i2 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 42, i32 1
  %12 = ptrtoint ptr %ah.i2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah.i2, align 4
  %tobool.not.i3 = icmp eq ptr %13, null
  br i1 %tobool.not.i3, label %ath5k_unregister_led.exit.ath5k_unregister_led.exit15_crit_edge, label %if.end.i7

ath5k_unregister_led.exit.ath5k_unregister_led.exit15_crit_edge: ; preds = %ath5k_unregister_led.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath5k_unregister_led.exit15

if.end.i7:                                        ; preds = %ath5k_unregister_led.exit
  %led_dev.i4 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 42, i32 2
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i4) #5
  %14 = ptrtoint ptr %ah.i2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah.i2, align 4
  %status.i.i5 = getelementptr inbounds %struct.ath5k_hw, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %status.i.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i.i5, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i6 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i6, label %if.end.i7.ath5k_led_off.exit.i14_crit_edge, label %if.end.i.i13

if.end.i7.ath5k_led_off.exit.i14_crit_edge:       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath5k_led_off.exit.i14

if.end.i.i13:                                     ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #7
  %led_pin.i.i8 = getelementptr inbounds %struct.ath5k_hw, ptr %15, i32 0, i32 28
  %19 = ptrtoint ptr %led_pin.i.i8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %led_pin.i.i8, align 4
  %led_on.i.i9 = getelementptr inbounds %struct.ath5k_hw, ptr %15, i32 0, i32 29
  %21 = ptrtoint ptr %led_on.i.i9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %led_on.i.i9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.i.i10 = icmp eq i32 %22, 0
  %lnot.ext.i.i11 = zext i1 %tobool1.not.i.i10 to i32
  %call2.i.i12 = tail call i32 @ath5k_hw_set_gpio(ptr noundef %15, i32 noundef %20, i32 noundef %lnot.ext.i.i11) #5
  br label %ath5k_led_off.exit.i14

ath5k_led_off.exit.i14:                           ; preds = %if.end.i.i13, %if.end.i7.ath5k_led_off.exit.i14_crit_edge
  %23 = ptrtoint ptr %ah.i2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ah.i2, align 4
  br label %ath5k_unregister_led.exit15

ath5k_unregister_led.exit15:                      ; preds = %ath5k_led_off.exit.i14, %ath5k_unregister_led.exit.ath5k_unregister_led.exit15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_init_leds(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 7
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %pdev2 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #5
  %tobool.not = icmp eq ptr %3, null
  %4 = call ptr @memset(ptr %name, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @pci_match_id(ptr noundef nonnull @ath5k_led_devices, ptr noundef nonnull %3) #5
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 18
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %or.i = or i32 %6, 4
  store i32 %or.i, ptr %status, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %shr = lshr i32 %8, 8
  %led_pin = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 28
  %9 = ptrtoint ptr %led_pin to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %led_pin, align 4
  %10 = load i32, ptr %driver_data, align 4
  %and = and i32 %10, 255
  %led_on = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 29
  %11 = ptrtoint ptr %led_on to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %led_on, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %status8 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 18
  %12 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %status8, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end13.ath5k_led_enable.exit_crit_edge, label %if.then.i

if.end13.ath5k_led_enable.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath5k_led_enable.exit

if.then.i:                                        ; preds = %if.end13
  %led_pin.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 28
  %18 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %led_pin.i, align 4
  %call1.i = tail call i32 @ath5k_hw_set_gpio_output(ptr noundef %ah, i32 noundef %19) #5
  %20 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %status8, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.then.i.ath5k_led_enable.exit_crit_edge, label %if.end.i.i

if.then.i.ath5k_led_enable.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath5k_led_enable.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %led_pin.i, align 4
  %led_on.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 29
  %25 = ptrtoint ptr %led_on.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %led_on.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i.i = icmp eq i32 %26, 0
  %lnot.ext.i.i = zext i1 %tobool1.not.i.i to i32
  %call2.i.i = tail call i32 @ath5k_hw_set_gpio(ptr noundef %ah, i32 noundef %24, i32 noundef %lnot.ext.i.i) #5
  br label %ath5k_led_enable.exit

ath5k_led_enable.exit:                            ; preds = %if.end.i.i, %if.then.i.ath5k_led_enable.exit_crit_edge, %if.end13.ath5k_led_enable.exit_crit_edge
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i51 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i51, label %if.end.i.i52, label %ath5k_led_enable.exit.wiphy_name.exit_crit_edge

ath5k_led_enable.exit.wiphy_name.exit_crit_edge:  ; preds = %ath5k_led_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit

if.end.i.i52:                                     ; preds = %ath5k_led_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i52, %ath5k_led_enable.exit.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i52 ], [ %30, %ath5k_led_enable.exit.wiphy_name.exit_crit_edge ]
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i)
  %rx_led = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 36
  %call.i = tail call ptr @__ieee80211_get_rx_led_name(ptr noundef %1) #5
  %ah1.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 36, i32 1
  %33 = ptrtoint ptr %ah1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ah, ptr %ah1.i, align 4
  %call.i53 = call ptr @strncpy(ptr noundef %rx_led, ptr noundef nonnull %name, i32 noundef 32) #5
  %arrayidx.i = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 36, i32 0, i32 31
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx.i, align 1
  %led_dev.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 36, i32 2
  %35 = ptrtoint ptr %led_dev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rx_led, ptr %led_dev.i, align 4
  %default_trigger.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 36, i32 2, i32 14
  %36 = ptrtoint ptr %default_trigger.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %default_trigger.i, align 4
  %brightness_set.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 36, i32 2, i32 5
  %37 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ath5k_led_brightness_set, ptr %brightness_set.i, align 4
  %dev.i54 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 2
  %38 = ptrtoint ptr %dev.i54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i54, align 8
  %call.i.i = tail call i32 @led_classdev_register_ext(ptr noundef %39, ptr noundef %led_dev.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i55 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i55, label %if.end22, label %do.body.i

do.body.i:                                        ; preds = %wiphy_name.exit
  %call11.i = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %do.body.i.cleanup.sink.split_crit_edge, label %do.body.i.cleanup.sink.split.sink.split_crit_edge

do.body.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

do.body.i.cleanup.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end22:                                         ; preds = %wiphy_name.exit
  %40 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy, align 8
  %init_name.i.i56 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56, i32 3
  %42 = ptrtoint ptr %init_name.i.i56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i56, align 8
  %tobool.not.i.i57 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i57, label %if.end.i.i59, label %if.end22.wiphy_name.exit61_crit_edge

if.end22.wiphy_name.exit61_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit61

if.end.i.i59:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i58 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  %44 = ptrtoint ptr %dev.i58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i58, align 4
  br label %wiphy_name.exit61

wiphy_name.exit61:                                ; preds = %if.end.i.i59, %if.end22.wiphy_name.exit61_crit_edge
  %retval.0.i.i60 = phi ptr [ %45, %if.end.i.i59 ], [ %43, %if.end22.wiphy_name.exit61_crit_edge ]
  %call26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i60)
  %tx_led = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 42
  %call.i62 = tail call ptr @__ieee80211_get_tx_led_name(ptr noundef %1) #5
  %ah1.i63 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 42, i32 1
  %46 = ptrtoint ptr %ah1.i63 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ah, ptr %ah1.i63, align 4
  %call.i64 = call ptr @strncpy(ptr noundef %tx_led, ptr noundef nonnull %name, i32 noundef 32) #5
  %arrayidx.i65 = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 42, i32 0, i32 31
  %47 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx.i65, align 1
  %led_dev.i66 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 42, i32 2
  %48 = ptrtoint ptr %led_dev.i66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %tx_led, ptr %led_dev.i66, align 4
  %default_trigger.i67 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 42, i32 2, i32 14
  %49 = ptrtoint ptr %default_trigger.i67 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i62, ptr %default_trigger.i67, align 4
  %brightness_set.i68 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 42, i32 2, i32 5
  %50 = ptrtoint ptr %brightness_set.i68 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ath5k_led_brightness_set, ptr %brightness_set.i68, align 4
  %51 = ptrtoint ptr %dev.i54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i54, align 8
  %call.i.i70 = tail call i32 @led_classdev_register_ext(ptr noundef %52, ptr noundef %led_dev.i66, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool.not.i71 = icmp eq i32 %call.i.i70, 0
  br i1 %tobool.not.i71, label %wiphy_name.exit61.cleanup_crit_edge, label %do.body.i74

wiphy_name.exit61.cleanup_crit_edge:              ; preds = %wiphy_name.exit61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i74:                                      ; preds = %wiphy_name.exit61
  %call11.i72 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i72)
  %tobool12.not.i73 = icmp eq i32 %call11.i72, 0
  br i1 %tobool12.not.i73, label %do.body.i74.cleanup.sink.split_crit_edge, label %do.body.i74.cleanup.sink.split.sink.split_crit_edge

do.body.i74.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

do.body.i74.cleanup.sink.split_crit_edge:         ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %do.body.i74.cleanup.sink.split.sink.split_crit_edge, %do.body.i.cleanup.sink.split.sink.split_crit_edge
  %ah1.i63.sink.ph = phi ptr [ %ah1.i, %do.body.i.cleanup.sink.split.sink.split_crit_edge ], [ %ah1.i63, %do.body.i74.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %call.i.i, %do.body.i.cleanup.sink.split.sink.split_crit_edge ], [ %call.i.i70, %do.body.i74.cleanup.sink.split.sink.split_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %name) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.body.i74.cleanup.sink.split_crit_edge, %do.body.i.cleanup.sink.split_crit_edge
  %ah1.i63.sink = phi ptr [ %ah1.i, %do.body.i.cleanup.sink.split_crit_edge ], [ %ah1.i63, %do.body.i74.cleanup.sink.split_crit_edge ], [ %ah1.i63.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call.i.i, %do.body.i.cleanup.sink.split_crit_edge ], [ %call.i.i70, %do.body.i74.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %53 = ptrtoint ptr %ah1.i63.sink to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %ah1.i63.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %wiphy_name.exit61.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %wiphy_name.exit61.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath5k_led_brightness_set(ptr nocapture noundef readonly %led_dev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  %ah = getelementptr i8, ptr %led_dev, i32 -4
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %status.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %led_pin.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %led_pin.i, align 4
  %led_on.i = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %led_on.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %led_on.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  %lnot.ext.i = zext i1 %tobool1.not.i to i32
  %call2.i = tail call i32 @ath5k_hw_set_gpio(ptr noundef %1, i32 noundef %6, i32 noundef %lnot.ext.i) #5
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i7

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i7:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %led_pin.i5 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %led_pin.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %led_pin.i5, align 4
  %led_on.i6 = getelementptr inbounds %struct.ath5k_hw, ptr %1, i32 0, i32 29
  %11 = ptrtoint ptr %led_on.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %led_on.i6, align 8
  %call1.i = tail call i32 @ath5k_hw_set_gpio(ptr noundef %1, i32 noundef %10, i32 noundef %12) #5
  br label %if.end

if.end:                                           ; preds = %if.end.i7, %if.else.if.end_crit_edge, %if.end.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_rx_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_tx_led_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/led.c", i32 193, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath5k/led.c", i32 199, i32 31}
!4 = !{ptr @ath5k_led_devices, !5, !"ath5k_led_devices", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath5k/led.c", i32 56, i32 35}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath5k/led.c", i32 142, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
