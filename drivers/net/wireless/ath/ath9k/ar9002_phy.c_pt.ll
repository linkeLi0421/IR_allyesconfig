; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9002_phy.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9002_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.125, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.126, %union.anon.127, %union.anon.128, %union.anon.129, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ath9k_hw_version = type { i32, i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.ath9k_ops_config = type { i32, i32, i8, i32, i8, i32, i32, i32, i32, i8, i32, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_hw_capabilities = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%union.anon.125 = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.base_eep_header, [64 x i8], [2 x %struct.modal_eep_header], [8 x i8], [4 x i8], [3 x [8 x %struct.cal_data_per_freq]], [3 x [4 x %struct.cal_data_per_freq]], [8 x %struct.cal_target_power_leg], [8 x %struct.cal_target_power_ht], [8 x %struct.cal_target_power_ht], [3 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_ht], [4 x %struct.cal_target_power_ht], [24 x i8], [24 x %struct.cal_ctl_data], i8 }
%struct.base_eep_header = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [21 x i8] }>
%struct.modal_eep_header = type { [3 x i32], i32, [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, [3 x i8], i8, i8, i8, i8, [3 x i8], i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, i8, i8, [3 x i16], [6 x i8], [5 x %struct.spur_chan] }
%struct.spur_chan = type { i16, i8, i8 }
%struct.cal_data_per_freq = type { [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.cal_target_power_leg = type { i8, [4 x i8] }
%struct.cal_target_power_ht = type { i8, [8 x i8] }
%struct.cal_ctl_data = type { [3 x [8 x %struct.cal_ctl_edges]] }
%struct.cal_ctl_edges = type { i8, i8 }
%struct.ath_nf_limits = type { i16, i16, i16, [3 x i16], [3 x i16] }
%struct.ath9k_pacal_info = type { i32, i8, i8 }
%struct.ar5416Stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath9k_mib_stats }
%struct.ath9k_mib_stats = type { i32, i32, i32, i32, i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ath9k_cal_list = type { ptr, i32, ptr }
%union.anon.126 = type { [3 x i32] }
%union.anon.127 = type { [3 x i32] }
%union.anon.128 = type { [3 x i32] }
%union.anon.129 = type { [3 x i32] }
%struct.ath_hw_private_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ar5416AniState = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.ath9k_ani_default }
%struct.ath9k_ani_default = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ath_btcoex_hw = type { i32, %struct.ath9k_hw_mci, %struct.ath9k_hw_aic, i8, i8, i8, i8, i32, i32, i32, i32, [4 x i32], [4 x i32], [5 x i8] }
%struct.ath9k_hw_mci = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ath9k_hw_aic = type { i8, i8, i8, [79 x i32], i32 }
%struct.ath_hw_radar_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.ar5416IniArray = type { ptr, i32, i32 }
%struct.ath_gen_timer_table = type { [16 x ptr], i16, i8 }
%struct.ath9k_hw_wow = type { i32, i32, i8 }
%struct.ath_dynack = type { i8, i32, i32, %struct.list_head, %struct.spinlock, %struct.ath_dyn_rxbuf, %struct.ath_dyn_txbuf }
%struct.list_head = type { ptr, ptr }
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
%struct.chan_centers = type { i16, i16, i16 }
%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_hw_antcomb_conf = type { i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spectral scan wait failed\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 192, i64 320, i64 384]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [47 x i8] c"../drivers/net/wireless/ath/ath9k/ar9002_phy.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 550, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ar9002_hw_attach_phy_ops(ptr nocapture noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %set_rf_regs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 9
  %0 = ptrtoint ptr %set_rf_regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %set_rf_regs, align 4
  %rf_set_freq = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 7
  %1 = ptrtoint ptr %rf_set_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ar9002_hw_set_channel, ptr %rf_set_freq, align 4
  %spur_mitigate_freq = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 8
  %2 = ptrtoint ptr %spur_mitigate_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ar9002_hw_spur_mitigate, ptr %spur_mitigate_freq, align 4
  %olc_init = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 13
  %3 = ptrtoint ptr %olc_init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ar9002_olc_init, ptr %olc_init, align 4
  %compute_pll_control = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 20
  %4 = ptrtoint ptr %compute_pll_control to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ar9002_hw_compute_pll_control, ptr %compute_pll_control, align 4
  %do_getnf = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 22
  %5 = ptrtoint ptr %do_getnf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ar9002_hw_do_getnf, ptr %do_getnf, align 4
  %antdiv_comb_conf_get = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 8
  %6 = ptrtoint ptr %antdiv_comb_conf_get to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ar9002_hw_antdiv_comb_conf_get, ptr %antdiv_comb_conf_get, align 4
  %antdiv_comb_conf_set = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 9
  %7 = ptrtoint ptr %antdiv_comb_conf_set to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ar9002_hw_antdiv_comb_conf_set, ptr %antdiv_comb_conf_set, align 4
  %spectral_scan_config = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 10
  %8 = ptrtoint ptr %spectral_scan_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ar9002_hw_spectral_scan_config, ptr %spectral_scan_config, align 4
  %spectral_scan_trigger = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 11
  %9 = ptrtoint ptr %spectral_scan_trigger to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ar9002_hw_spectral_scan_trigger, ptr %spectral_scan_trigger, align 4
  %spectral_scan_wait = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 12
  %10 = ptrtoint ptr %spectral_scan_wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ar9002_hw_spectral_scan_wait, ptr %spectral_scan_wait, align 4
  %set_bt_ant_diversity = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 16
  %11 = ptrtoint ptr %set_bt_ant_diversity to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ar9002_hw_set_bt_ant_diversity, ptr %set_bt_ant_diversity, align 4
  %tx99_start = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 13
  %12 = ptrtoint ptr %tx99_start to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ar9002_hw_tx99_start, ptr %tx99_start, align 4
  %tx99_stop = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 14
  %13 = ptrtoint ptr %tx99_stop to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ar9002_hw_tx99_stop, ptr %tx99_stop, align 4
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %macVersion.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.else24.i [
    i32 192, label %if.then.i
    i32 384, label %if.then6.i
    i32 320, label %if.then17.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nf_2g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  %17 = ptrtoint ptr %nf_2g.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -108, ptr %nf_2g.i, align 4
  %min.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 1
  %18 = ptrtoint ptr %min.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -127, ptr %min.i, align 2
  %nominal.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 2
  %19 = ptrtoint ptr %nominal.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -118, ptr %nominal.i, align 4
  br label %ar9002_hw_set_nf_limits.exit

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nf_2g7.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  %20 = ptrtoint ptr %nf_2g7.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -97, ptr %nf_2g7.i, align 4
  %min10.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %min10.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -127, ptr %min10.i, align 2
  %nominal12.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 2
  %22 = ptrtoint ptr %nominal12.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -112, ptr %nominal12.i, align 4
  br label %ar9002_hw_set_nf_limits.exit

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nf_2g18.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  %23 = ptrtoint ptr %nf_2g18.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -116, ptr %nf_2g18.i, align 4
  %min21.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %min21.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -127, ptr %min21.i, align 2
  %nominal23.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 2
  %25 = ptrtoint ptr %nominal23.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -118, ptr %nominal23.i, align 4
  br label %ar9002_hw_set_nf_limits.exit

if.else24.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nf_2g25.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  %26 = ptrtoint ptr %nf_2g25.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -97, ptr %nf_2g25.i, align 4
  %min28.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 1
  %27 = ptrtoint ptr %min28.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -127, ptr %min28.i, align 2
  %nominal30.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 2
  %28 = ptrtoint ptr %nominal30.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -112, ptr %nominal30.i, align 4
  %nf_5g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20
  %29 = ptrtoint ptr %nf_5g.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -102, ptr %nf_5g.i, align 2
  %min33.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 1
  %30 = ptrtoint ptr %min33.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -122, ptr %min33.i, align 2
  %nominal35.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 2
  %31 = ptrtoint ptr %nominal35.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -112, ptr %nominal35.i, align 2
  br label %ar9002_hw_set_nf_limits.exit

ar9002_hw_set_nf_limits.exit:                     ; preds = %if.else24.i, %if.then17.i, %if.then6.i, %if.then.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9002_hw_set_channel(ptr noundef %ah, ptr noundef %chan) #2 align 64 {
entry:
  %centers = alloca %struct.chan_centers, align 2
  %regWrites = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #5
  %0 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %centers, align 2, !annotation !12
  %1 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !12
  %3 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !12
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #5
  %5 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %centers, align 2
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ah, align 4
  %call = call i32 %8(ptr noundef %ah, i32 noundef 39028) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 4800, i16 %6)
  %cmp = icmp ult i16 %6, 4800
  br i1 %cmp, label %if.then, label %if.else22

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regWrites) #5
  %9 = ptrtoint ptr %regWrites to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %regWrites, align 4
  %mul = shl nuw i32 %conv, 16
  %div = udiv i32 %mul, 15
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %11)
  %cmp2 = icmp ugt i32 %11, 383
  br i1 %cmp2, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 2484, i16 %6)
  %cmp5 = icmp eq i16 %6, 2484
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %iniCckfirJapan2484 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 97
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniCckfirJapan2484, i32 noundef 1, ptr noundef nonnull %regWrites) #5
  br label %if.end21

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %iniCckfirNormal = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 96
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniCckfirNormal, i32 noundef 1, ptr noundef nonnull %regWrites) #5
  br label %if.end21

if.else8:                                         ; preds = %if.then
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %call11 = call i32 %13(ptr noundef %ah, i32 noundef 41476) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2484, i16 %6)
  %cmp12 = icmp eq i16 %6, 2484
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call11, 16
  call void %15(ptr noundef %ah, i32 noundef %or, i32 noundef 41476) #5
  br label %if.end21

if.else16:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  %and19 = and i32 %call11, -17
  call void %15(ptr noundef %ah, i32 noundef %and19, i32 noundef 41476) #5
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then14, %if.else, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regWrites) #5
  br label %if.end59

if.else22:                                        ; preds = %entry
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %16 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eep_ops, align 4
  %get_eeprom = getelementptr inbounds %struct.eeprom_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %get_eeprom to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_eeprom, align 4
  %call23 = call i32 %19(ptr noundef %ah, i32 noundef 21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cond = icmp eq i32 %call23, 0
  br i1 %cond, label %sw.bb, label %if.else22.sw.epilog_crit_edge

if.else22.sw.epilog_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else22
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %20 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %channelFlags, align 2
  %22 = and i16 %21, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %if.else31, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else31:                                        ; preds = %sw.bb
  %rem122 = urem i16 %6, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem122)
  %cmp32 = icmp eq i16 %rem122, 0
  br i1 %cmp32, label %if.else31.if.then50_crit_edge, label %if.end42

if.else31.if.then50_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

if.end42:                                         ; preds = %if.else31
  %rem36123 = urem i16 %6, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem36123)
  %cmp37 = icmp eq i16 %rem36123, 0
  br i1 %cmp37, label %if.end42.if.then50_crit_edge, label %if.end42.sw.epilog_crit_edge

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end42.if.then50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

sw.epilog:                                        ; preds = %if.end42.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.else22.sw.epilog_crit_edge
  %mul47 = shl nuw nsw i32 %conv, 15
  %div48 = udiv i32 %mul47, 15
  call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30824, i32 noundef -134217728, i32 noundef 27, i32 noundef 1) #5
  br label %if.end59

if.then50:                                        ; preds = %if.end42.if.then50_crit_edge, %if.else31.if.then50_crit_edge
  %aModeRefSel.1.ph = phi i16 [ 2, %if.end42.if.then50_crit_edge ], [ 3, %if.else31.if.then50_crit_edge ]
  %conv51 = zext i16 %aModeRefSel.1.ph to i32
  %shr = lshr i32 24, %conv51
  %mul52 = mul nuw nsw i32 %shr, %conv
  %div53 = udiv i32 %mul52, 60
  %and55 = shl nuw nsw i32 %div53, 1
  %mul56 = and i32 %and55, 130048
  %and54 = shl nuw nsw i32 %div53, 17
  %shl = and i32 %and54, 66977792
  %or57 = or i32 %shl, %mul56
  br label %if.end59

if.end59:                                         ; preds = %if.then50, %sw.epilog, %if.end21
  %bMode.0 = phi i32 [ 536870912, %if.end21 ], [ 0, %sw.epilog ], [ 0, %if.then50 ]
  %fracMode.1 = phi i32 [ 268435456, %if.end21 ], [ 268435456, %sw.epilog ], [ 0, %if.then50 ]
  %aModeRefSel.2 = phi i16 [ 0, %if.end21 ], [ 0, %sw.epilog ], [ %aModeRefSel.1.ph, %if.then50 ]
  %channelSel.1 = phi i32 [ %div, %if.end21 ], [ %div48, %sw.epilog ], [ %or57, %if.then50 ]
  %and = and i32 %call, -1073741824
  %or62 = or i32 %bMode.0, %and
  %or65 = or i32 %or62, %fracMode.1
  %conv66 = zext i16 %aModeRefSel.2 to i32
  %shl67 = shl nuw nsw i32 %conv66, 26
  %or68 = or i32 %or65, %channelSel.1
  %or69 = or i32 %or68, %shl67
  %write71 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %24 = ptrtoint ptr %write71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write71, align 4
  call void %25(ptr noundef %ah, i32 noundef %or69, i32 noundef 39028) #5
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %26 = ptrtoint ptr %curchan to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %chan, ptr %curchan, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_spur_mitigate(ptr noundef %ah, ptr noundef %chan) #2 align 64 {
entry:
  %centers = alloca %struct.chan_centers, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #5
  %0 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %centers, align 2, !annotation !12
  %1 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !12
  %3 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !12
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %5 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %channelFlags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #5
  %8 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %centers, align 2
  %conv3 = zext i16 %9 to i32
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %cur_bb_spur.0.v = select i1 %tobool.not, i32 2300, i32 4900
  %cur_bb_spur.0 = sub nsw i32 %cur_bb_spur.0.v, %conv3
  %10 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel = getelementptr inbounds %struct.eeprom_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %get_spur_channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_spur_channel, align 4
  %call = call zeroext i16 %13(ptr noundef %ah, i16 noundef zeroext 0, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call)
  %cmp8 = icmp eq i16 %call, -32768
  br i1 %cmp8, label %entry.if.then37_crit_edge, label %if.end

entry.if.then37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.end:                                           ; preds = %entry
  %div180 = udiv i16 %call, 10
  %div.zext = zext i16 %div180 to i32
  %sub = add nsw i32 %cur_bb_spur.0, %div.zext
  %14 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %channelFlags, align 2
  %16 = and i16 %15, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool18.not = icmp eq i16 %16, 0
  br i1 %tobool18.not, label %if.else26, label %if.then19

if.then19:                                        ; preds = %if.end
  %17 = add nsw i32 %sub, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %17)
  %18 = icmp ult i32 %17, 37
  br i1 %18, label %if.then19.if.else39_crit_edge, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19.if.else39_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

if.else26:                                        ; preds = %if.end
  %19 = add nsw i32 %sub, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %19)
  %20 = icmp ult i32 %19, 19
  br i1 %20, label %if.else26.if.else39_crit_edge, label %if.else26.for.inc_crit_edge

if.else26.for.inc_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else26.if.else39_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

for.inc:                                          ; preds = %if.else26.for.inc_crit_edge, %if.then19.for.inc_crit_edge
  %21 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel.1 = getelementptr inbounds %struct.eeprom_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %get_spur_channel.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_spur_channel.1, align 4
  %call.1 = call zeroext i16 %24(ptr noundef %ah, i16 noundef zeroext 1, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call.1)
  %cmp8.1 = icmp eq i16 %call.1, -32768
  br i1 %cmp8.1, label %for.inc.if.then37_crit_edge, label %if.end.1

for.inc.if.then37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.end.1:                                         ; preds = %for.inc
  %div180.1 = udiv i16 %call.1, 10
  %div.zext.1 = zext i16 %div180.1 to i32
  %sub.1 = add nsw i32 %cur_bb_spur.0, %div.zext.1
  %25 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %channelFlags, align 2
  %27 = and i16 %26, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool18.not.1 = icmp eq i16 %27, 0
  br i1 %tobool18.not.1, label %if.else26.1, label %if.then19.1

if.then19.1:                                      ; preds = %if.end.1
  %28 = add nsw i32 %sub.1, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %28)
  %29 = icmp ult i32 %28, 37
  br i1 %29, label %if.then19.1.if.else39_crit_edge, label %if.then19.1.for.inc.1_crit_edge

if.then19.1.for.inc.1_crit_edge:                  ; preds = %if.then19.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then19.1.if.else39_crit_edge:                  ; preds = %if.then19.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

if.else26.1:                                      ; preds = %if.end.1
  %30 = add nsw i32 %sub.1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %30)
  %31 = icmp ult i32 %30, 19
  br i1 %31, label %if.else26.1.if.else39_crit_edge, label %if.else26.1.for.inc.1_crit_edge

if.else26.1.for.inc.1_crit_edge:                  ; preds = %if.else26.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.else26.1.if.else39_crit_edge:                  ; preds = %if.else26.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

for.inc.1:                                        ; preds = %if.else26.1.for.inc.1_crit_edge, %if.then19.1.for.inc.1_crit_edge
  %32 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel.2 = getelementptr inbounds %struct.eeprom_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %get_spur_channel.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_spur_channel.2, align 4
  %call.2 = call zeroext i16 %35(ptr noundef %ah, i16 noundef zeroext 2, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call.2)
  %cmp8.2 = icmp eq i16 %call.2, -32768
  br i1 %cmp8.2, label %for.inc.1.if.then37_crit_edge, label %if.end.2

for.inc.1.if.then37_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.end.2:                                         ; preds = %for.inc.1
  %div180.2 = udiv i16 %call.2, 10
  %div.zext.2 = zext i16 %div180.2 to i32
  %sub.2 = add nsw i32 %cur_bb_spur.0, %div.zext.2
  %36 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %channelFlags, align 2
  %38 = and i16 %37, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool18.not.2 = icmp eq i16 %38, 0
  br i1 %tobool18.not.2, label %if.else26.2, label %if.then19.2

if.then19.2:                                      ; preds = %if.end.2
  %39 = add nsw i32 %sub.2, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %39)
  %40 = icmp ult i32 %39, 37
  br i1 %40, label %if.then19.2.if.else39_crit_edge, label %if.then19.2.for.inc.2_crit_edge

if.then19.2.for.inc.2_crit_edge:                  ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then19.2.if.else39_crit_edge:                  ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

if.else26.2:                                      ; preds = %if.end.2
  %41 = add nsw i32 %sub.2, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %41)
  %42 = icmp ult i32 %41, 19
  br i1 %42, label %if.else26.2.if.else39_crit_edge, label %if.else26.2.for.inc.2_crit_edge

if.else26.2.for.inc.2_crit_edge:                  ; preds = %if.else26.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.else26.2.if.else39_crit_edge:                  ; preds = %if.else26.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

for.inc.2:                                        ; preds = %if.else26.2.for.inc.2_crit_edge, %if.then19.2.for.inc.2_crit_edge
  %43 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel.3 = getelementptr inbounds %struct.eeprom_ops, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %get_spur_channel.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_spur_channel.3, align 4
  %call.3 = call zeroext i16 %46(ptr noundef %ah, i16 noundef zeroext 3, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call.3)
  %cmp8.3 = icmp eq i16 %call.3, -32768
  br i1 %cmp8.3, label %for.inc.2.if.then37_crit_edge, label %if.end.3

for.inc.2.if.then37_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.end.3:                                         ; preds = %for.inc.2
  %div180.3 = udiv i16 %call.3, 10
  %div.zext.3 = zext i16 %div180.3 to i32
  %sub.3 = add nsw i32 %cur_bb_spur.0, %div.zext.3
  %47 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %channelFlags, align 2
  %49 = and i16 %48, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool18.not.3 = icmp eq i16 %49, 0
  br i1 %tobool18.not.3, label %if.else26.3, label %if.then19.3

if.then19.3:                                      ; preds = %if.end.3
  %50 = add nsw i32 %sub.3, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %50)
  %51 = icmp ult i32 %50, 37
  br i1 %51, label %if.then19.3.if.else39_crit_edge, label %if.then19.3.for.inc.3_crit_edge

if.then19.3.for.inc.3_crit_edge:                  ; preds = %if.then19.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then19.3.if.else39_crit_edge:                  ; preds = %if.then19.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

if.else26.3:                                      ; preds = %if.end.3
  %52 = add nsw i32 %sub.3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %52)
  %53 = icmp ult i32 %52, 19
  br i1 %53, label %if.else26.3.if.else39_crit_edge, label %if.else26.3.for.inc.3_crit_edge

if.else26.3.for.inc.3_crit_edge:                  ; preds = %if.else26.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.else26.3.if.else39_crit_edge:                  ; preds = %if.else26.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

for.inc.3:                                        ; preds = %if.else26.3.for.inc.3_crit_edge, %if.then19.3.for.inc.3_crit_edge
  %54 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel.4 = getelementptr inbounds %struct.eeprom_ops, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %get_spur_channel.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_spur_channel.4, align 4
  %call.4 = call zeroext i16 %57(ptr noundef %ah, i16 noundef zeroext 4, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call.4)
  %cmp8.4 = icmp eq i16 %call.4, -32768
  br i1 %cmp8.4, label %for.inc.3.if.then37_crit_edge, label %if.end.4

for.inc.3.if.then37_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.end.4:                                         ; preds = %for.inc.3
  %div180.4 = udiv i16 %call.4, 10
  %div.zext.4 = zext i16 %div180.4 to i32
  %sub.4 = add nsw i32 %cur_bb_spur.0, %div.zext.4
  %58 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %channelFlags, align 2
  %60 = and i16 %59, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool18.not.4 = icmp eq i16 %60, 0
  br i1 %tobool18.not.4, label %if.else26.4, label %if.then19.4

if.then19.4:                                      ; preds = %if.end.4
  %61 = add nsw i32 %sub.4, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %61)
  %62 = icmp ult i32 %61, 37
  br i1 %62, label %if.then19.4.if.else39_crit_edge, label %if.then19.4.if.then37_crit_edge

if.then19.4.if.then37_crit_edge:                  ; preds = %if.then19.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.then19.4.if.else39_crit_edge:                  ; preds = %if.then19.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

if.else26.4:                                      ; preds = %if.end.4
  %63 = add nsw i32 %sub.4, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %63)
  %64 = icmp ult i32 %63, 19
  br i1 %64, label %if.else26.4.if.else39_crit_edge, label %if.else26.4.if.then37_crit_edge

if.else26.4.if.then37_crit_edge:                  ; preds = %if.else26.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.else26.4.if.else39_crit_edge:                  ; preds = %if.else26.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else39

if.then37:                                        ; preds = %if.else26.4.if.then37_crit_edge, %if.then19.4.if.then37_crit_edge, %for.inc.3.if.then37_crit_edge, %for.inc.2.if.then37_crit_edge, %for.inc.1.if.then37_crit_edge, %for.inc.if.then37_crit_edge, %entry.if.then37_crit_edge
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %65 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmw, align 4
  %call38 = call i32 %66(ptr noundef %ah, i32 noundef 41516, i32 noundef 0, i32 noundef 64) #5
  br label %cleanup

if.else39:                                        ; preds = %if.else26.4.if.else39_crit_edge, %if.then19.4.if.else39_crit_edge, %if.else26.3.if.else39_crit_edge, %if.then19.3.if.else39_crit_edge, %if.else26.2.if.else39_crit_edge, %if.then19.2.if.else39_crit_edge, %if.else26.1.if.else39_crit_edge, %if.then19.1.if.else39_crit_edge, %if.else26.if.else39_crit_edge, %if.then19.if.else39_crit_edge
  %sub.lcssa = phi i32 [ %sub, %if.then19.if.else39_crit_edge ], [ %sub, %if.else26.if.else39_crit_edge ], [ %sub.1, %if.then19.1.if.else39_crit_edge ], [ %sub.1, %if.else26.1.if.else39_crit_edge ], [ %sub.2, %if.then19.2.if.else39_crit_edge ], [ %sub.2, %if.else26.2.if.else39_crit_edge ], [ %sub.3, %if.then19.3.if.else39_crit_edge ], [ %sub.3, %if.else26.3.if.else39_crit_edge ], [ %sub.4, %if.then19.4.if.else39_crit_edge ], [ %sub.4, %if.else26.4.if.else39_crit_edge ]
  %rmw41 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %67 = ptrtoint ptr %rmw41 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmw41, align 4
  %call42 = call i32 %68(ptr noundef %ah, i32 noundef 41516, i32 noundef 0, i32 noundef 64) #5
  %mul = mul nsw i32 %sub.lcssa, 320
  %69 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ah, align 4
  %call45 = call i32 %70(ptr noundef %ah, i32 noundef 39200) #5
  %enable_write_buffer = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %71 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %enable_write_buffer, align 4
  %tobool47.not = icmp eq ptr %72, null
  br i1 %tobool47.not, label %if.else39.do.end_crit_edge, label %if.then48

if.else39.do.end_crit_edge:                       ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then48:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #7
  call void %72(ptr noundef %ah) #5
  br label %do.end

do.end:                                           ; preds = %if.then48, %if.else39.do.end_crit_edge
  %or = or i32 %call45, -268435456
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %73 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write, align 4
  call void %74(ptr noundef %ah, i32 noundef %or, i32 noundef 39200) #5
  %75 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write, align 4
  call void %76(ptr noundef %ah, i32 noundef 67108648, i32 noundef 39244) #5
  %77 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %channelFlags, align 2
  %79 = and i16 %78, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool58.not = icmp eq i16 %79, 0
  br i1 %tobool58.not, label %do.end.if.end68_crit_edge, label %if.then59

do.end.if.end68_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then59:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.lcssa)
  %cmp60 = icmp slt i32 %sub.lcssa, 0
  br i1 %cmp60, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  %add63 = add nsw i32 %sub.lcssa, 10
  br label %if.end68

if.else64:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  %sub65 = add nsw i32 %sub.lcssa, -10
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.then62, %do.end.if.end68_crit_edge
  %spur_delta_phase.0.in.in.v = phi i32 [ 19, %do.end.if.end68_crit_edge ], [ 18, %if.then62 ], [ 18, %if.else64 ]
  %bb_spur_off.0 = phi i32 [ %sub.lcssa, %do.end.if.end68_crit_edge ], [ %add63, %if.then62 ], [ %sub65, %if.else64 ]
  %spur_subchannel_sd.0 = phi i32 [ 0, %do.end.if.end68_crit_edge ], [ 268435456, %if.then62 ], [ 0, %if.else64 ]
  %spur_delta_phase.0.in.in = shl nsw i32 %sub.lcssa, %spur_delta_phase.0.in.in.v
  %spur_delta_phase.0.in = sdiv i32 %spur_delta_phase.0.in.in, 10
  %spur_delta_phase.0 = and i32 %spur_delta_phase.0.in, 1048575
  %80 = and i16 %78, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool85.not = icmp eq i16 %80, 0
  %cond = select i1 %tobool85.not, i32 44, i32 40
  %mul89 = shl nsw i32 %bb_spur_off.0, 11
  %div90 = sdiv i32 %mul89, %cond
  %and91 = shl i32 %div90, 20
  %shl = and i32 %and91, 1072693248
  %or93 = or i32 %spur_delta_phase.0, %shl
  %or96 = or i32 %or93, 1073741824
  %81 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write, align 4
  call void %82(ptr noundef %ah, i32 noundef %or96, i32 noundef 39328) #5
  %83 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write, align 4
  call void %84(ptr noundef %ah, i32 noundef %spur_subchannel_sd.0, i32 noundef 39360) #5
  call void @ar5008_hw_cmn_spur_mitigate(ptr noundef %ah, ptr noundef %chan, i32 noundef %mul) #5
  %write_flush = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  %85 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_flush, align 4
  %tobool104.not = icmp eq ptr %86, null
  br i1 %tobool104.not, label %if.end68.cleanup_crit_edge, label %if.then105

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then105:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  call void %86(ptr noundef %ah) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.end68.cleanup_crit_edge, %if.then37
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_olc_init(ptr noundef %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %cmp = icmp ugt i32 %1, 127
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %2 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eep_ops, align 4
  %get_eeprom = getelementptr inbounds %struct.eeprom_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %get_eeprom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_eeprom, align 4
  %call = tail call i32 %5(ptr noundef %ah, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %6 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %7)
  %cmp3 = icmp ugt i32 %7, 383
  br i1 %cmp3, label %land.lhs.true4, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %land.lhs.true4.for.body.preheader_crit_edge, %if.end.for.body.preheader_crit_edge
  br label %for.body

land.lhs.true4:                                   ; preds = %if.end
  %8 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eep_ops, align 4
  %get_eeprom6 = getelementptr inbounds %struct.eeprom_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %get_eeprom6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_eeprom6, align 4
  %call7 = tail call i32 %11(ptr noundef %ah, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true4.for.body.preheader_crit_edge, label %if.then9

land.lhs.true4.for.body.preheader_crit_edge:      ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

if.then9:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %12 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw, align 4
  %call10 = tail call i32 %13(ptr noundef %ah, i32 noundef 41596, i32 noundef -2147483648, i32 noundef 0) #5
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30872, i32 noundef 49152, i32 noundef 14, i32 noundef 2) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 21474800) #5
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %15 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ah, align 4
  %mul = shl nuw nsw i32 %i.030, 2
  %add = add nuw nsw i32 %mul, 41728
  %call13 = tail call i32 %16(ptr noundef %ah, i32 noundef %add) #5
  %and = lshr i32 %call13, 12
  %shr = and i32 %and, 127
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 77, i32 %i.030
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %PDADCdelta = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 79
  %18 = ptrtoint ptr %PDADCdelta to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %PDADCdelta, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ar9002_hw_compute_pll_control(ptr nocapture noundef readonly %ah, ptr noundef readonly %chan) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %land.lhs.true

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true:                                    ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.land.lhs.true17_crit_edge, label %land.lhs.true7

land.lhs.true.land.lhs.true17_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true17

land.lhs.true7:                                   ; preds = %land.lhs.true
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps, align 4
  %and8 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then, label %land.lhs.true7.land.lhs.true17_crit_edge

land.lhs.true7.land.lhs.true17_crit_edge:         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true17

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %6)
  %cmp = icmp eq i32 %6, 128
  %. = select i1 %cmp, i32 10240, i32 5120
  %.45 = select i1 %cmp, i32 80, i32 40
  br label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then, %land.lhs.true7.land.lhs.true17_crit_edge, %land.lhs.true.land.lhs.true17_crit_edge
  %ref_div.0.ph = phi i32 [ %., %if.then ], [ 5120, %land.lhs.true.land.lhs.true17_crit_edge ], [ 5120, %land.lhs.true7.land.lhs.true17_crit_edge ]
  %pll_div.0.ph = phi i32 [ %.45, %if.then ], [ 44, %land.lhs.true.land.lhs.true17_crit_edge ], [ 44, %land.lhs.true7.land.lhs.true17_crit_edge ]
  %or48 = or i32 %pll_div.0.ph, %ref_div.0.ph
  %7 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %channelFlags, align 2
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool21.not = icmp eq i16 %9, 0
  br i1 %tobool21.not, label %land.lhs.true26.critedge, label %if.then22

if.then22:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  %or23 = or i32 %or48, 16384
  br label %if.end34

land.lhs.true26.critedge:                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  %10 = shl i16 %8, 13
  %11 = and i16 %10, -32768
  %12 = zext i16 %11 to i32
  %13 = or i32 %or48, %12
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true26.critedge, %if.then22, %entry.if.end34_crit_edge
  %pll.0 = phi i32 [ %or23, %if.then22 ], [ %13, %land.lhs.true26.critedge ], [ 5164, %entry.if.end34_crit_edge ]
  ret i32 %pll.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_do_getnf(ptr noundef %ah, ptr nocapture noundef writeonly %nfarray) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39012) #5
  %2 = shl i32 %call, 3
  %conv = ashr i32 %2, 23
  %conv3 = trunc i32 %conv to i16
  %3 = ptrtoint ptr %nfarray to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv3, ptr %nfarray, align 2
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %call6 = tail call i32 %5(ptr noundef %ah, i32 noundef 39356) #5
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %6 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curchan, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %channelFlags, align 2
  %10 = and i16 %9, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = shl i32 %call6, 7
  %conv9 = ashr i32 %11, 23
  %conv14 = trunc i32 %conv9 to i16
  %arrayidx15 = getelementptr i16, ptr %nfarray, i32 3
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv14, ptr %arrayidx15, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %13 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rxchainmask, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %16 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ah, align 4
  %call23 = tail call i32 %17(ptr noundef %ah, i32 noundef 43108) #5
  %18 = shl i32 %call23, 3
  %conv26 = ashr i32 %18, 23
  %conv29 = trunc i32 %conv26 to i16
  %arrayidx30 = getelementptr i16, ptr %nfarray, i32 1
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv29, ptr %arrayidx30, align 2
  %20 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ah, align 4
  %call33 = tail call i32 %21(ptr noundef %ah, i32 noundef 43452) #5
  %22 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %curchan, align 4
  %channelFlags38 = getelementptr inbounds %struct.ath9k_channel, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %channelFlags38 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %channelFlags38, align 2
  %26 = and i16 %25, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool41.not = icmp eq i16 %26, 0
  br i1 %tobool41.not, label %if.end20.cleanup_crit_edge, label %if.then42

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %27 = shl i32 %call33, 7
  %conv36 = ashr i32 %27, 23
  %conv45 = trunc i32 %conv36 to i16
  %arrayidx46 = getelementptr i16, ptr %nfarray, i32 4
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv45, ptr %arrayidx46, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_antdiv_comb_conf_get(ptr noundef %ah, ptr nocapture noundef writeonly %antconf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39340) #5
  %and = lshr i32 %call, 27
  %2 = trunc i32 %and to i8
  %conv = and i8 %2, 3
  %3 = ptrtoint ptr %antconf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %antconf, align 4
  %and1 = lshr i32 %call, 25
  %4 = trunc i32 %and1 to i8
  %conv3 = and i8 %4, 3
  %alt_lna_conf = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 1
  %5 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3, ptr %alt_lna_conf, align 1
  %and4 = lshr i32 %call, 9
  %6 = trunc i32 %and4 to i8
  %conv6 = and i8 %6, 63
  %fast_div_bias = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 2
  %7 = ptrtoint ptr %fast_div_bias to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %fast_div_bias, align 2
  %lna1_lna2_switch_delta = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 6
  %8 = ptrtoint ptr %lna1_lna2_switch_delta to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %lna1_lna2_switch_delta, align 4
  %lna1_lna2_delta = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 5
  %9 = ptrtoint ptr %lna1_lna2_delta to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -3, ptr %lna1_lna2_delta, align 4
  %div_group = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 7
  %10 = ptrtoint ptr %div_group to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %div_group, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_antdiv_comb_conf_set(ptr noundef %ah, ptr nocapture noundef readonly %antconf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39340) #5
  %and = and i32 %call, -503348737
  %2 = ptrtoint ptr %antconf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %antconf, align 4
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 27
  %and1 = and i32 %shl, 402653184
  %or = or i32 %and1, %and
  %alt_lna_conf = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 1
  %4 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alt_lna_conf, align 1
  %conv2 = zext i8 %5 to i32
  %shl3 = shl i32 %conv2, 25
  %and4 = and i32 %shl3, 100663296
  %or5 = or i32 %or, %and4
  %fast_div_bias = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 2
  %6 = ptrtoint ptr %fast_div_bias to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fast_div_bias, align 2
  %conv6 = zext i8 %7 to i32
  %shl7 = shl nuw nsw i32 %conv6, 9
  %and8 = and i32 %shl7, 32256
  %or9 = or i32 %or5, %and8
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  tail call void %9(ptr noundef %ah, i32 noundef %or9, i32 noundef 39340) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_spectral_scan_config(ptr noundef %ah, ptr nocapture noundef readonly %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %param, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %ah, i32 noundef 39184, i32 noundef 0, i32 noundef 1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 %3(ptr noundef %ah, i32 noundef 39252, i32 noundef -2147483648, i32 noundef 0) #5
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %call6 = tail call i32 %5(ptr noundef %ah, i32 noundef 39184, i32 noundef 1, i32 noundef 0) #5
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %7)
  %cmp = icmp eq i32 %7, 128
  %. = select i1 %cmp, i32 16777216, i32 268435456
  %short_repeat = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 1
  %8 = ptrtoint ptr %short_repeat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %short_repeat, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  br i1 %tobool9.not, label %if.else14, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 %11(ptr noundef %ah, i32 noundef 39184, i32 noundef %., i32 noundef 0) #5
  br label %if.end18

if.else14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 %11(ptr noundef %ah, i32 noundef 39184, i32 noundef 0, i32 noundef %.) #5
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then10
  %endless = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 2
  %12 = ptrtoint ptr %endless to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %endless, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool20.not = icmp eq i8 %13, 0
  br i1 %tobool20.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %15)
  %cmp24 = icmp eq i32 %15, 128
  %.102 = select i1 %cmp24, i32 8388608, i32 0
  br label %if.end36

if.else28:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %count19 = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 3
  %16 = ptrtoint ptr %count19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %count19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool29.not = icmp sgt i8 %17, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool32.not = icmp eq i8 %17, 0
  %spec.store.select = select i1 %tobool32.not, i8 1, i8 %17
  %phi.cast = zext i8 %spec.store.select to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 16
  %count.0.ph = select i1 %tobool29.not, i32 %phi.bo, i32 8323072
  %18 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %macVersion, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else28, %if.then21
  %19 = phi i32 [ %.pr, %if.else28 ], [ %15, %if.then21 ]
  %count.0 = phi i32 [ %count.0.ph, %if.else28 ], [ %.102, %if.then21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %19)
  %cmp39 = icmp eq i32 %19, 128
  %20 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw, align 4
  br i1 %cmp39, label %if.then41, label %if.else47

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %and45 = and i32 %count.0, 16711680
  %call46 = tail call i32 %21(ptr noundef %ah, i32 noundef 39184, i32 noundef %and45, i32 noundef 16711680) #5
  br label %if.end57

if.else47:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %and52 = and i32 %count.0, 268369920
  %call53 = tail call i32 %21(ptr noundef %ah, i32 noundef 39184, i32 noundef %and52, i32 noundef 268369920) #5
  %22 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw, align 4
  %call56 = tail call i32 %23(ptr noundef %ah, i32 noundef 39184, i32 noundef 1073741824, i32 noundef 0) #5
  br label %if.end57

if.end57:                                         ; preds = %if.else47, %if.then41
  %24 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw, align 4
  %period = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 4
  %26 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %period, align 1
  %conv60 = zext i8 %27 to i32
  %shl61 = shl nuw nsw i32 %conv60, 8
  %call63 = tail call i32 %25(ptr noundef %ah, i32 noundef 39184, i32 noundef %shl61, i32 noundef 65280) #5
  %28 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw, align 4
  %fft_period = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 5
  %30 = ptrtoint ptr %fft_period to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fft_period, align 1
  %conv66 = zext i8 %31 to i32
  %shl67 = shl nuw nsw i32 %conv66, 4
  %and68 = and i32 %shl67, 240
  %call69 = tail call i32 %29(ptr noundef %ah, i32 noundef 39184, i32 noundef %and68, i32 noundef 240) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_spectral_scan_trigger(ptr noundef %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39184, i32 noundef 1, i32 noundef 0) #5
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call3 = tail call i32 %3(ptr noundef %ah, i32 noundef 39184, i32 noundef 2, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_spectral_scan_wait(ptr noundef %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef 39184, i32 noundef 2, i32 noundef 0, i32 noundef 100000) #5
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_set_bt_ant_diversity(ptr noundef %ah, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_coex_mode2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 72, i32 9
  %0 = ptrtoint ptr %bt_coex_mode2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bt_coex_mode2, align 4
  %and = and i32 %1, -1048577
  %masksel = select i1 %enable, i32 0, i32 1048576
  %or.sink91 = or i32 %and, %masksel
  %.sink = select i1 %enable, i32 1717986918, i32 0
  %antdiv_ctrl1.0 = select i1 %enable, i32 11, i32 4
  store i32 %or.sink91, ptr %bt_coex_mode2, align 4
  %write7 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %2 = ptrtoint ptr %write7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write7, align 4
  tail call void %3(ptr noundef %ah, i32 noundef %or.sink91, i32 noundef 33148) #5
  %4 = ptrtoint ptr %write7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write7, align 4
  tail call void %5(ptr noundef %ah, i32 noundef %.sink, i32 noundef 39268) #5
  %rmw12 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %6 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw12, align 4
  %call13 = tail call i32 %7(ptr noundef %ah, i32 noundef 39264, i32 noundef 0, i32 noundef -268435456) #5
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call15 = tail call i32 %9(ptr noundef %ah, i32 noundef 39340) #5
  %and17 = and i32 %call15, -2130738689
  %shl = shl nuw nsw i32 %antdiv_ctrl1.0, 24
  %and18 = and i32 %shl, 16777216
  %10 = shl nuw i32 %antdiv_ctrl1.0, 28
  %and31 = and i32 %10, 536870912
  %and36 = and i32 %10, 1073741824
  %or19 = or i32 %and18, %and31
  %or27 = or i32 %or19, %and36
  %or32 = or i32 %or27, %and17
  %or37 = or i32 %or32, 301989888
  %write39 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %11 = ptrtoint ptr %write39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write39, align 4
  tail call void %12(ptr noundef %ah, i32 noundef %or37, i32 noundef 39340) #5
  %13 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ah, align 4
  %call42 = tail call i32 %14(ptr noundef %ah, i32 noundef 41480) #5
  %and43 = and i32 %call42, -8193
  %15 = shl nuw nsw i32 %antdiv_ctrl1.0, 10
  %shl46 = and i32 %15, 8192
  %or48 = or i32 %and43, %shl46
  %16 = ptrtoint ptr %write39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write39, align 4
  tail call void %17(ptr noundef %ah, i32 noundef %or48, i32 noundef 41480) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_tx99_start(ptr noundef %ah, i32 noundef %qnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39012, i32 noundef 520192, i32 noundef 0) #5
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call3 = tail call i32 %3(ptr noundef %ah, i32 noundef 39204, i32 noundef 8323326, i32 noundef 0) #5
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %call6 = tail call i32 %5(ptr noundef %ah, i32 noundef 32840, i32 noundef 0, i32 noundef 32) #5
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  tail call void %7(ptr noundef %ah, i32 noundef 32, i32 noundef 8) #5
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %shl = shl i32 %qnum, 2
  %add = add i32 %shl, 4160
  tail call void %9(ptr noundef %ah, i32 noundef 0, i32 noundef %add) #5
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  tail call void %11(ptr noundef %ah, i32 noundef 20, i32 noundef 4144) #5
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  tail call void %13(ptr noundef %ah, i32 noundef 20, i32 noundef 4272) #5
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %or = or i32 %qnum, 16
  tail call void %15(ptr noundef %ah, i32 noundef %or, i32 noundef 4656) #5
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  tail call void %17(ptr noundef %ah, i32 noundef 1024, i32 noundef 32788) #5
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  %add21 = add i32 %shl, 4224
  tail call void %19(ptr noundef %ah, i32 noundef -1, i32 noundef %add21) #5
  %20 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw, align 4
  %add25 = add i32 %shl, 2496
  %call26 = tail call i32 %21(ptr noundef %ah, i32 noundef %add25, i32 noundef 2048, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_tx99_stop(ptr noundef %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 32840, i32 noundef 32, i32 noundef 0) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_channel_centers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_write_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_analog_shift_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar5008_hw_cmn_spur_mitigate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_phy.c", i32 550, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
