; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/attach.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/attach.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.129, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.129 = type { ptr }

@ath5k_hw_init.zero_mac = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't identify radio revision.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Device not yet supported.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to init EEPROM\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to get device capabilities\0A\00", [61 x i8] zeroinitializer }, align 32
@ath5k_hw_post.regs = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 -32768, i16 -26592], [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"POST Failed !!!\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 224, i64 240]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 8, i64 10, i64 11]
@___asan_gen_.9 = private unnamed_addr constant [9 x i8] c"zero_mac\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 106, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 235, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 244, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 266, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 307, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 42, i32 19 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [43 x i8] c"../drivers/net/wireless/ath/ath5k/attach.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 62, i32 5 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @ath5k_hw_init.zero_mac, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ath5k_hw_post.regs, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_hw_init.zero_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_hw_post.regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_init(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %ah_bwmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 80
  %2 = ptrtoint ptr %ah_bwmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ah_bwmode, align 1
  %txp_tpc = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 108, i32 5
  %3 = ptrtoint ptr %txp_tpc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %txp_tpc, align 1
  %ah_imr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 64
  %4 = ptrtoint ptr %ah_imr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ah_imr, align 8
  %ah_retry_short = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 76
  %5 = ptrtoint ptr %ah_retry_short to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 7, ptr %ah_retry_short, align 1
  %ah_retry_long = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 75
  %6 = ptrtoint ptr %ah_retry_long to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %ah_retry_long, align 8
  %ah_ant_mode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 83
  %7 = ptrtoint ptr %ah_ant_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ah_ant_mode, align 4
  %ah_noise_floor = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 111
  %8 = ptrtoint ptr %ah_noise_floor to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -95, ptr %ah_noise_floor, align 8
  %ani_state = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 60
  %9 = ptrtoint ptr %ani_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %ani_state, align 8
  %channels = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 9
  %ah_current_channel = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 65
  %10 = ptrtoint ptr %ah_current_channel to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %channels, ptr %ah_current_channel, align 4
  %call2 = tail call i32 @ath5k_hw_read_srev(ptr noundef %ah) #3
  %ah_mac_srev = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 70
  %11 = ptrtoint ptr %ah_mac_srev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ah_mac_srev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp ult i32 %12, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %13 = ptrtoint ptr %ah_version to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ah_version, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %12)
  %cmp3 = icmp ult i32 %12, 80
  %ah_version5 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %ah_version5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %ah_version5, align 4
  br label %if.end8

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %ah_version5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %ah_version5, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then4, %if.then
  %16 = trunc i32 %12 to i16
  %17 = lshr i16 %16, 4
  %conv = and i16 %17, 15
  %ah_mac_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 71
  %18 = ptrtoint ptr %ah_mac_version to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %ah_mac_version, align 8
  %call9 = tail call i32 @ath5k_hw_init_desc_functions(ptr noundef %ah) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i32 @ath5k_hw_nic_wakeup(ptr noundef %ah, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 38936
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !26
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  %conv18 = trunc i32 %22 to i16
  %ah_phy_revision = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 72
  %23 = ptrtoint ptr %ah_phy_revision to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv18, ptr %ah_phy_revision, align 2
  %call19 = tail call zeroext i16 @ath5k_hw_radio_revision(ptr noundef %ah, i32 noundef 1) #3
  %ah_radio_5ghz_revision = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 73
  %24 = ptrtoint ptr %ah_radio_5ghz_revision to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %call19, ptr %ah_radio_5ghz_revision, align 4
  %25 = and i16 %call19, 240
  %and22 = zext i16 %25 to i32
  %26 = add nsw i32 %and22, -16
  %27 = lshr exact i32 %26, 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %if.end15.sw.bb24_crit_edge
    i32 3, label %if.end15.sw.bb24_crit_edge418
    i32 4, label %sw.bb29
    i32 5, label %sw.bb32
    i32 6, label %sw.bb35
    i32 7, label %sw.bb38
    i32 9, label %sw.bb41
  ]

if.end15.sw.bb24_crit_edge418:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb24

if.end15.sw.bb24_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb24

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %29 = ptrtoint ptr %ah_radio to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %ah_radio, align 8
  %ah_single_chip = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %30 = ptrtoint ptr %ah_single_chip to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ah_single_chip, align 1
  %call23 = tail call zeroext i16 @ath5k_hw_radio_revision(ptr noundef %ah, i32 noundef 0) #3
  %ah_radio_2ghz_revision = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 74
  %31 = ptrtoint ptr %ah_radio_2ghz_revision to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %call23, ptr %ah_radio_2ghz_revision, align 2
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end15.sw.bb24_crit_edge, %if.end15.sw.bb24_crit_edge418
  %ah_radio25 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %32 = ptrtoint ptr %ah_radio25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %ah_radio25, align 8
  %ah_single_chip26 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %33 = ptrtoint ptr %ah_single_chip26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %ah_single_chip26, align 1
  %call27 = tail call zeroext i16 @ath5k_hw_radio_revision(ptr noundef %ah, i32 noundef 0) #3
  %ah_radio_2ghz_revision28 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 74
  %34 = ptrtoint ptr %ah_radio_2ghz_revision28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %call27, ptr %ah_radio_2ghz_revision28, align 2
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio30 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %35 = ptrtoint ptr %ah_radio30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %ah_radio30, align 8
  %ah_single_chip31 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %36 = ptrtoint ptr %ah_single_chip31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %ah_single_chip31, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio33 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %37 = ptrtoint ptr %ah_radio33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %ah_radio33, align 8
  %ah_single_chip34 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %38 = ptrtoint ptr %ah_single_chip34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %ah_single_chip34, align 1
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio36 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %39 = ptrtoint ptr %ah_radio36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %ah_radio36, align 8
  %ah_single_chip37 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %40 = ptrtoint ptr %ah_single_chip37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %ah_single_chip37, align 1
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio39 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %41 = ptrtoint ptr %ah_radio39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 6, ptr %ah_radio39, align 8
  %ah_single_chip40 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %42 = ptrtoint ptr %ah_single_chip40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %ah_single_chip40, align 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end15
  %43 = ptrtoint ptr %ah_mac_version to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ah_mac_version, align 8
  %45 = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %44, label %if.else53 [
    i16 224, label %sw.bb41.if.then50_crit_edge
    i16 240, label %sw.bb41.if.then50_crit_edge419
  ]

sw.bb41.if.then50_crit_edge419:                   ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then50

sw.bb41.if.then50_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then50

if.then50:                                        ; preds = %sw.bb41.if.then50_crit_edge, %sw.bb41.if.then50_crit_edge419
  %ah_radio51 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %46 = ptrtoint ptr %ah_radio51 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 7, ptr %ah_radio51, align 8
  %ah_single_chip52 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %47 = ptrtoint ptr %ah_single_chip52 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %ah_single_chip52, align 1
  br label %sw.epilog

if.else53:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio54 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %48 = ptrtoint ptr %ah_radio54 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %ah_radio54, align 8
  %ah_single_chip55 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %49 = ptrtoint ptr %ah_single_chip55 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %ah_single_chip55, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end15
  %ah_version57 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %50 = ptrtoint ptr %ah_version57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ah_version57, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %51, label %if.else72 [
    i32 0, label %if.then60
    i32 1, label %if.then67
  ]

if.then60:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio61 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %53 = ptrtoint ptr %ah_radio61 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %ah_radio61, align 8
  %ah_single_chip62 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %54 = ptrtoint ptr %ah_single_chip62 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %ah_single_chip62, align 1
  br label %sw.epilog

if.then67:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio68 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %55 = ptrtoint ptr %ah_radio68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %ah_radio68, align 8
  %ah_single_chip69 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %56 = ptrtoint ptr %ah_single_chip69 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %ah_single_chip69, align 1
  %call70 = tail call zeroext i16 @ath5k_hw_radio_revision(ptr noundef %ah, i32 noundef 0) #3
  %ah_radio_2ghz_revision71 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 74
  %57 = ptrtoint ptr %ah_radio_2ghz_revision71 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %call70, ptr %ah_radio_2ghz_revision71, align 2
  br label %sw.epilog

if.else72:                                        ; preds = %sw.default
  %58 = ptrtoint ptr %ah_mac_version to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ah_mac_version, align 8
  %60 = and i16 %59, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %60)
  %switch = icmp eq i16 %60, 14
  br i1 %switch, label %if.else72.if.then87_crit_edge, label %lor.lhs.false82

if.else72.if.then87_crit_edge:                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then87

lor.lhs.false82:                                  ; preds = %if.else72
  %61 = ptrtoint ptr %ah_phy_revision to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ah_phy_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %62)
  %cmp85 = icmp eq i16 %62, 112
  br i1 %cmp85, label %lor.lhs.false82.if.then87_crit_edge, label %if.else91

lor.lhs.false82.if.then87_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then87

if.then87:                                        ; preds = %lor.lhs.false82.if.then87_crit_edge, %if.else72.if.then87_crit_edge
  %ah_radio88 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %63 = ptrtoint ptr %ah_radio88 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 7, ptr %ah_radio88, align 8
  %ah_single_chip89 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %64 = ptrtoint ptr %ah_single_chip89 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %ah_single_chip89, align 1
  %65 = ptrtoint ptr %ah_radio_5ghz_revision to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 162, ptr %ah_radio_5ghz_revision, align 4
  br label %sw.epilog

if.else91:                                        ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_const_cmp4(i32 89, i32 %12)
  %cmp92 = icmp eq i32 %12, 89
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %62)
  %cmp96 = icmp eq i16 %62, 67
  %or.cond = select i1 %cmp92, i1 %cmp96, i1 false
  br i1 %or.cond, label %sw.epilog.thread, label %if.else102

sw.epilog.thread:                                 ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio99 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %66 = ptrtoint ptr %ah_radio99 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %ah_radio99, align 8
  %ah_single_chip100 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %67 = ptrtoint ptr %ah_single_chip100 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %ah_single_chip100, align 1
  %68 = ptrtoint ptr %ah_radio_5ghz_revision to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 54, ptr %ah_radio_5ghz_revision, align 4
  br label %for.body.i.preheader

if.else102:                                       ; preds = %if.else91
  %69 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %59, label %lor.lhs.false121 [
    i16 11, label %if.else102.if.then112_crit_edge
    i16 8, label %if.else102.if.then112_crit_edge420
    i16 10, label %if.else102.if.then126_crit_edge
  ]

if.else102.if.then126_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then126

if.else102.if.then112_crit_edge420:               ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then112

if.else102.if.then112_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then112

if.then112:                                       ; preds = %if.else102.if.then112_crit_edge, %if.else102.if.then112_crit_edge420
  %ah_radio113 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %70 = ptrtoint ptr %ah_radio113 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %ah_radio113, align 8
  %ah_single_chip114 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %71 = ptrtoint ptr %ah_single_chip114 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %ah_single_chip114, align 1
  %72 = ptrtoint ptr %ah_radio_5ghz_revision to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 112, ptr %ah_radio_5ghz_revision, align 4
  br label %sw.epilog

lor.lhs.false121:                                 ; preds = %if.else102
  call void @__sanitizer_cov_trace_const_cmp2(i16 97, i16 %62)
  %cmp124 = icmp eq i16 %62, 97
  br i1 %cmp124, label %lor.lhs.false121.if.then126_crit_edge, label %if.else130

lor.lhs.false121.if.then126_crit_edge:            ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then126

if.then126:                                       ; preds = %lor.lhs.false121.if.then126_crit_edge, %if.else102.if.then126_crit_edge
  %ah_radio127 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %73 = ptrtoint ptr %ah_radio127 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4, ptr %ah_radio127, align 8
  %ah_single_chip128 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %74 = ptrtoint ptr %ah_single_chip128 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %ah_single_chip128, align 1
  %75 = ptrtoint ptr %ah_radio_5ghz_revision to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 96, ptr %ah_radio_5ghz_revision, align 4
  br label %sw.epilog

if.else130:                                       ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %59)
  %cmp133 = icmp eq i16 %59, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 69, i16 %62)
  %cmp138 = icmp eq i16 %62, 69
  %or.cond379 = select i1 %cmp133, i1 true, i1 %cmp138
  br i1 %or.cond379, label %if.then140, label %do.body

if.then140:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #5
  %ah_radio141 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %76 = ptrtoint ptr %ah_radio141 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3, ptr %ah_radio141, align 8
  %ah_single_chip142 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 67
  %77 = ptrtoint ptr %ah_single_chip142 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %ah_single_chip142, align 1
  %78 = ptrtoint ptr %ah_radio_5ghz_revision to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 80, ptr %ah_radio_5ghz_revision, align 4
  br label %sw.epilog

do.body:                                          ; preds = %if.else130
  %call145 = tail call i32 @net_ratelimit() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %do.body.cleanup_crit_edge, label %if.then147

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then147:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  br label %cleanup

sw.epilog:                                        ; preds = %if.then140, %if.then126, %if.then112, %if.then87, %if.then67, %if.then60, %if.else53, %if.then50, %sw.bb38, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb24, %sw.bb
  %79 = and i32 %12, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %79)
  %80 = icmp eq i32 %79, 192
  br i1 %80, label %do.body162, label %sw.epilog.for.body.i.preheader_crit_edge

sw.epilog.for.body.i.preheader_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %sw.epilog.for.body.i.preheader_crit_edge, %sw.epilog.thread
  br label %for.body.i

do.body162:                                       ; preds = %sw.epilog
  %call163 = tail call i32 @net_ratelimit() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %do.body162.cleanup_crit_edge, label %if.then165

do.body162.cleanup_crit_edge:                     ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then165:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3
  br label %cleanup

for.body.i:                                       ; preds = %if.end23.3.i.for.body.i_crit_edge, %for.body.i.preheader
  %c.088.i = phi i32 [ %inc28.i, %if.end23.3.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [2 x i16], ptr @ath5k_hw_post.regs, i32 0, i32 %c.088.i
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.i, align 2
  %83 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iobase.i, align 4
  %conv.i.i = zext i16 %82 to i32
  %add.ptr.i.i = getelementptr i8, ptr %84, i32 %conv.i.i
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end8.i.for.body3.i_crit_edge, %for.body.i
  %i.086.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %if.end8.i.for.body3.i_crit_edge ]
  %shl.i = shl i32 %i.086.i, 16
  %or.i = or i32 %shl.i, %i.086.i
  %86 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %87, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %88) #3, !srcloc !29
  %89 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %90, i32 %conv.i.i
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i) #3, !srcloc !26
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %or.i)
  %cmp5.not.i = icmp eq i32 %92, %or.i
  br i1 %cmp5.not.i, label %if.end8.i, label %do.body.i

do.body.i:                                        ; preds = %for.body3.i
  %call6.i = tail call i32 @net_ratelimit() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8.i:                                        ; preds = %for.body3.i
  %93 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %94, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 252197120) #3, !srcloc !29
  %inc.i = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body11.preheader.i, label %if.end8.i.for.body3.i_crit_edge

if.end8.i.for.body3.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3.i

for.body11.preheader.i:                           ; preds = %if.end8.i
  %95 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %96, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 1431655765) #3, !srcloc !29
  %97 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %98, i32 %conv.i.i
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %99)
  %cmp14.not.i = icmp eq i32 %99, 1431655765
  br i1 %cmp14.not.i, label %if.end23.i, label %for.body11.preheader.i.do.body16.i_crit_edge

for.body11.preheader.i.do.body16.i_crit_edge:     ; preds = %for.body11.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16.i

do.body16.i:                                      ; preds = %if.end23.2.i.do.body16.i_crit_edge, %if.end23.1.i.do.body16.i_crit_edge, %if.end23.i.do.body16.i_crit_edge, %for.body11.preheader.i.do.body16.i_crit_edge
  %call17.i = tail call i32 @net_ratelimit() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.body16.i.cleanup_crit_edge, label %do.body16.i.cleanup.sink.split.i_crit_edge

do.body16.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

do.body16.i.cleanup_crit_edge:                    ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23.i:                                       ; preds = %for.body11.preheader.i
  %100 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %101, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 252197632) #3, !srcloc !29
  %102 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i76.1.i = getelementptr i8, ptr %103, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.1.i, i32 -1431655766) #3, !srcloc !29
  %104 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i79.1.i = getelementptr i8, ptr %105, i32 %conv.i.i
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.1.i) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431655766, i32 %106)
  %cmp14.not.1.i = icmp eq i32 %106, -1431655766
  br i1 %cmp14.not.1.i, label %if.end23.1.i, label %if.end23.i.do.body16.i_crit_edge

if.end23.i.do.body16.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16.i

if.end23.1.i:                                     ; preds = %if.end23.i
  %107 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i82.1.i = getelementptr i8, ptr %108, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.1.i, i32 252197632) #3, !srcloc !29
  %109 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i76.2.i = getelementptr i8, ptr %110, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.2.i, i32 1717986918) #3, !srcloc !29
  %111 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i79.2.i = getelementptr i8, ptr %112, i32 %conv.i.i
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.2.i) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1717986918, i32 %113)
  %cmp14.not.2.i = icmp eq i32 %113, 1717986918
  br i1 %cmp14.not.2.i, label %if.end23.2.i, label %if.end23.1.i.do.body16.i_crit_edge

if.end23.1.i.do.body16.i_crit_edge:               ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16.i

if.end23.2.i:                                     ; preds = %if.end23.1.i
  %114 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i82.2.i = getelementptr i8, ptr %115, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.2.i, i32 252197632) #3, !srcloc !29
  %116 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i76.3.i = getelementptr i8, ptr %117, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.3.i, i32 -1717986919) #3, !srcloc !29
  %118 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i79.3.i = getelementptr i8, ptr %119, i32 %conv.i.i
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.3.i) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1717986919, i32 %120)
  %cmp14.not.3.i = icmp eq i32 %120, -1717986919
  br i1 %cmp14.not.3.i, label %if.end23.3.i, label %if.end23.2.i.do.body16.i_crit_edge

if.end23.2.i.do.body16.i_crit_edge:               ; preds = %if.end23.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16.i

if.end23.3.i:                                     ; preds = %if.end23.2.i
  %121 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i82.3.i = getelementptr i8, ptr %122, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.3.i, i32 252197632) #3, !srcloc !29
  %123 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %124, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 %85) #3, !srcloc !29
  %inc28.i = add nuw nsw i32 %c.088.i, 1
  %exitcond90.not.i = icmp eq i32 %inc28.i, 2
  br i1 %exitcond90.not.i, label %if.end173, label %if.end23.3.i.for.body.i_crit_edge

if.end23.3.i.for.body.i_crit_edge:                ; preds = %if.end23.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

cleanup.sink.split.i:                             ; preds = %do.body16.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #3
  br label %cleanup

if.end173:                                        ; preds = %if.end23.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %12)
  %cmp174 = icmp ugt i32 %12, 88
  br i1 %cmp174, label %if.then176, label %if.end173.if.end178_crit_edge

if.end173.if.end178_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end178

if.then176:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #5
  %125 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i383 = getelementptr i8, ptr %126, i32 16400
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i383) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  %128 = or i32 %127, 1048576
  %129 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i385 = getelementptr i8, ptr %130, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i385, i32 %128) #3, !srcloc !29
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %if.end173.if.end178_crit_edge
  %call179 = tail call i32 @ath5k_eeprom_init(ptr noundef %ah) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end189, label %do.body182

do.body182:                                       ; preds = %if.end178
  %call183 = tail call i32 @net_ratelimit() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %do.body182.cleanup_crit_edge, label %if.then185

do.body182.cleanup_crit_edge:                     ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then185:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #3
  br label %cleanup

if.end189:                                        ; preds = %if.end178
  %ah_version190 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %131 = ptrtoint ptr %ah_version190 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ah_version190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp191 = icmp ne i32 %132, 2
  %tobool194.not = icmp eq ptr %1, null
  %or.cond381 = select i1 %cmp191, i1 true, i1 %tobool194.not
  br i1 %or.cond381, label %if.end189.if.end203_crit_edge, label %land.lhs.true195

if.end189.if.end203_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end203

land.lhs.true195:                                 ; preds = %if.end189
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 19
  %133 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.i.not = icmp eq i8 %134, 0
  br i1 %tobool.i.not, label %land.lhs.true195.if.end203_crit_edge, label %if.then198

land.lhs.true195.if.end203_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end203

if.then198:                                       ; preds = %land.lhs.true195
  %135 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i387 = getelementptr i8, ptr %136, i32 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i387, i32 16533650) #3, !srcloc !29
  %137 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i389 = getelementptr i8, ptr %138, i32 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i389, i32 608801316) #3, !srcloc !29
  %139 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i391 = getelementptr i8, ptr %140, i32 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391, i32 956301352) #3, !srcloc !29
  %141 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i393 = getelementptr i8, ptr %142, i32 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i393, i32 604509779) #3, !srcloc !29
  %ee_serdes = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 9
  %143 = ptrtoint ptr %ee_serdes to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ee_serdes, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool199.not = icmp eq i8 %144, 0
  %145 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i397 = getelementptr i8, ptr %146, i32 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  br i1 %tobool199.not, label %if.else201, label %if.then200

if.then200:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i397, i32 2030409957) #3, !srcloc !29
  br label %if.end202

if.else201:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i397, i32 2030403830) #3, !srcloc !29
  br label %if.end202

if.end202:                                        ; preds = %if.else201, %if.then200
  %147 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i399 = getelementptr i8, ptr %148, i32 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399, i32 -1106688) #3, !srcloc !29
  %149 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i401 = getelementptr i8, ptr %150, i32 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i401, i32 1086237210) #3, !srcloc !29
  %151 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i403 = getelementptr i8, ptr %152, i32 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i403, i32 1414860990) #3, !srcloc !29
  %153 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i405 = getelementptr i8, ptr %154, i32 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i405, i32 120589824) #3, !srcloc !29
  %155 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i407 = getelementptr i8, ptr %156, i32 16516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i407, i32 0) #3, !srcloc !29
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #3
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %land.lhs.true195.if.end203_crit_edge, %if.end189.if.end203_crit_edge
  %call204 = tail call i32 @ath5k_hw_set_capabilities(ptr noundef %ah) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end214, label %do.body207

do.body207:                                       ; preds = %if.end203
  %call208 = tail call i32 @net_ratelimit() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %do.body207.cleanup_crit_edge, label %if.then210

do.body207.cleanup_crit_edge:                     ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then210:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #3
  br label %cleanup

if.end214:                                        ; preds = %if.end203
  %157 = ptrtoint ptr %ah_version190 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ah_version190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp216 = icmp eq i32 %158, 0
  %cond = select i1 %cmp216, i32 64, i32 128
  %keymax = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 13
  %159 = ptrtoint ptr %keymax to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %cond, ptr %keymax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %12)
  %cmp218 = icmp ugt i32 %12, 83
  br i1 %cmp218, label %land.lhs.true220, label %if.end214.if.end239_crit_edge

if.end214.if.end239_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end239

land.lhs.true220:                                 ; preds = %if.end214
  %ee_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 3
  %160 = ptrtoint ptr %ee_version to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %ee_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %161)
  %cmp222 = icmp ult i16 %161, 20480
  br i1 %cmp222, label %land.lhs.true220.if.then229_crit_edge, label %lor.lhs.false224

land.lhs.true220.if.then229_crit_edge:            ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then229

lor.lhs.false224:                                 ; preds = %land.lhs.true220
  %ee_misc5 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 2, i32 15
  %162 = ptrtoint ptr %ee_misc5 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %ee_misc5, align 2
  %164 = and i16 %163, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool228.not = icmp eq i16 %164, 0
  br i1 %tobool228.not, label %lor.lhs.false224.if.then229_crit_edge, label %lor.lhs.false224.if.end231_crit_edge

lor.lhs.false224.if.end231_crit_edge:             ; preds = %lor.lhs.false224
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end231

lor.lhs.false224.if.then229_crit_edge:            ; preds = %lor.lhs.false224
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then229

if.then229:                                       ; preds = %lor.lhs.false224.if.then229_crit_edge, %land.lhs.true220.if.then229_crit_edge
  %crypt_caps = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 17
  %165 = ptrtoint ptr %crypt_caps to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %crypt_caps, align 4
  %or230 = or i32 %166, 1
  store i32 %or230, ptr %crypt_caps, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %lor.lhs.false224.if.end231_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %12)
  %cmp232 = icmp ugt i32 %12, 111
  br i1 %cmp232, label %if.then234, label %if.end231.if.end239_crit_edge

if.end231.if.end239_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end239

if.then234:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #5
  %crypt_caps235 = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 17
  %167 = ptrtoint ptr %crypt_caps235 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %crypt_caps235, align 4
  %or236 = or i32 %168, 2
  store i32 %or236, ptr %crypt_caps235, align 4
  %169 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i409 = getelementptr i8, ptr %170, i32 33056
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i409) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  %172 = or i32 %171, 67108864
  %173 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i411 = getelementptr i8, ptr %174, i32 33056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i411, i32 %172) #3, !srcloc !29
  br label %if.end239

if.end239:                                        ; preds = %if.then234, %if.end231.if.end239_crit_edge, %if.end214.if.end239_crit_edge
  %call240 = tail call i32 @ath5k_hw_set_lladdr(ptr noundef %ah, ptr noundef nonnull @ath5k_hw_init.zero_mac) #3
  %curbssid = getelementptr inbounds %struct.ath_common, ptr %ah, i32 0, i32 10
  %175 = call ptr @memset(ptr %curbssid, i32 255, i32 6)
  tail call void @ath5k_hw_set_bssid(ptr noundef %ah) #3
  %opmode = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 12
  %176 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %opmode, align 8
  %call241 = tail call i32 @ath5k_hw_set_opmode(ptr noundef %ah, i32 noundef %177) #3
  %call242 = tail call i32 @ath5k_hw_rfgain_opt_init(ptr noundef %ah) #3
  tail call void @ath5k_hw_init_nfcal_hist(ptr noundef %ah) #3
  tail call void @ath5k_hw_set_ledstate(ptr noundef %ah, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end239, %if.then210, %do.body207.cleanup_crit_edge, %if.then185, %do.body182.cleanup_crit_edge, %cleanup.sink.split.i, %do.body16.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.then165, %do.body162.cleanup_crit_edge, %if.then147, %do.body.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end239 ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call179, %if.then185 ], [ %call179, %do.body182.cleanup_crit_edge ], [ %call204, %if.then210 ], [ %call204, %do.body207.cleanup_crit_edge ], [ -19, %if.then147 ], [ -19, %do.body.cleanup_crit_edge ], [ -19, %if.then165 ], [ -19, %do.body162.cleanup_crit_edge ], [ -11, %do.body.i.cleanup_crit_edge ], [ -11, %do.body16.i.cleanup_crit_edge ], [ -11, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_read_srev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_init_desc_functions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_nic_wakeup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ath5k_hw_radio_revision(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_eeprom_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_capabilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_lladdr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_bssid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_set_opmode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath5k_hw_rfgain_opt_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_init_nfcal_hist(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_hw_set_ledstate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_deinit(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 18
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %or.i = or i32 %1, 1
  store i32 %or.i, ptr %status, align 4
  %ah_rf_banks = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 103
  %2 = ptrtoint ptr %ah_rf_banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah_rf_banks, align 4
  tail call void @kfree(ptr noundef %3) #3
  tail call void @ath5k_eeprom_detach(ptr noundef %ah) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath5k_eeprom_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @ath5k_hw_init.zero_mac, !1, !"zero_mac", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/attach.c", i32 106, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath5k/attach.c", i32 235, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath5k/attach.c", i32 244, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath5k/attach.c", i32 266, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath5k/attach.c", i32 307, i32 3}
!11 = distinct !{null, !12, !"static_pattern", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath5k/attach.c", i32 38, i32 19}
!13 = !{ptr @ath5k_hw_post.regs, !14, !"regs", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath5k/attach.c", i32 42, i32 19}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath5k/attach.c", i32 62, i32 5}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 4988505}
!27 = !{i64 2152528854}
!28 = !{i64 2152530209}
!29 = !{i64 4988087}
!30 = !{i8 0, i8 2}
