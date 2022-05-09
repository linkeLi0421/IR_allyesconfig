; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/antenna.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/antenna.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath_hw_antcomb_conf = type { i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.ath_softc = type { ptr, ptr, ptr, [38 x %struct.survey_info], %struct.spinlock, %struct.tasklet_struct, %struct.tasklet_struct, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.ath_chanctx_sched, %struct.ath_offchannel, ptr, %struct.completion, %struct.timespec64, i32, i8, i32, i16, i8, i8, i16, i32, %struct.ath_rx, %struct.ath_tx, %struct.ath_beacon, %struct.cfg80211_chan_def, [2 x %struct.ath_chanctx], ptr, %struct.spinlock, i8, [32 x i8], %struct.led_classdev, %struct.ath9k_debug, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.ath_btcoex, %struct.ath_mci_coex, %struct.work_struct, %struct.ath_descdma, %struct.ath_ant_comb, i8, i8, ptr, i64, i32, %struct.ath_spec_scan_priv, ptr, ptr, i8, i16, i32, i8, i32, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%struct.atomic_t = type { i32 }
%union.anon.129 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath_chanctx_sched = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, %struct.timer_list }
%struct.ath_offchannel = type { %struct.ath_chanctx, %struct.timer_list, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.ath_chanctx = type { %struct.cfg80211_chan_def, %struct.list_head, [4 x %struct.ath_acq], i32, ptr, %struct.ath_beacon_config, %struct.ath9k_hw_cal_data, %struct.timespec64, i64, i32, i32, i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.ath_acq = type { %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.ath_beacon_config = type { ptr, i32, i16, i16, i8, i8, i8, i32, i32 }
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.ath_rx = type { i8, i8, i8, ptr, i32, %struct.list_head, %struct.ath_descdma, [2 x %struct.ath_rx_edma], ptr, ptr, i32 }
%struct.ath_rx_edma = type { %struct.sk_buff_head, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ath_tx = type { i32, %struct.spinlock, %struct.list_head, [10 x %struct.ath_txq], %struct.ath_descdma, [4 x ptr], ptr, [4 x [4 x [32 x i16]]] }
%struct.ath_txq = type { i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, i32, i8, [8 x %struct.list_head], i8, i8, i32, %struct.sk_buff_head }
%struct.ath_beacon = type { i32, i32, i32, [8 x ptr], i32, i32, %struct.ath_descdma, ptr, %struct.list_head, i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath9k_debug = type { ptr, i32, %struct.ath_stats }
%struct.ath_stats = type { %struct.ath_interrupt_stats, [10 x %struct.ath_tx_stats], %struct.ath_rx_stats, %struct.ath_dfs_stats, [2 x %struct.ath_antenna_stats], [14 x i32] }
%struct.ath_interrupt_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [39 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_dfs_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_antenna_stats = type { i32, i32, [4 x i32], [4 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ath_btcoex = type { %struct.spinlock, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath_mci_profile, i8 }
%struct.ath_mci_profile = type { %struct.list_head, [1 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath_mci_coex = type { %struct.ath_mci_buf, %struct.ath_mci_buf }
%struct.ath_mci_buf = type { ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath_descdma = type { ptr, i32, i32 }
%struct.ath_ant_comb = type { i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32 }
%struct.ath_spec_scan_priv = type { ptr, ptr, i32, %struct.ath_spec_scan }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.ath_rx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i32 }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.130, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.131, %union.anon.132, %union.anon.133, %union.anon.134, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ath9k_hw_version = type { i32, i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.ath9k_ops_config = type { i32, i32, i8, i32, i8, i32, i32, i32, i32, i8, i32, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_hw_capabilities = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%union.anon.130 = type { %struct.ar5416_eeprom_def }
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
%struct.ath9k_cal_list = type { ptr, i32, ptr }
%union.anon.131 = type { [3 x i32] }
%union.anon.132 = type { [3 x i32] }
%union.anon.133 = type { [3 x i32] }
%union.anon.134 = type { [3 x i32] }
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
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 32, i64 16, i64 18, i64 19, i64 32, i64 33, i64 35]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 16, i64 18, i64 19, i64 32, i64 33, i64 35, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.15 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 16, i64 18, i64 19, i64 32, i64 33, i64 35, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.16 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 16, i64 18, i64 19, i64 32, i64 33, i64 35, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.17 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 16, i64 18, i64 19, i64 32, i64 33, i64 35, i64 48, i64 49, i64 50]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_ant_comb_scan(ptr noundef %sc, ptr nocapture noundef readonly %rs) local_unnamed_addr #0 align 64 {
entry:
  %div_ant_conf = alloca %struct.ath_hw_antcomb_conf, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %div_ant_conf) #3
  %0 = call ptr @memset(ptr %div_ant_conf, i32 255, i32 20)
  %ant_comb = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52
  %rs_rssi_ctl = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 9
  %1 = ptrtoint ptr %rs_rssi_ctl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rs_rssi_ctl, align 1
  %arrayidx2 = getelementptr %struct.ath_rx_status, ptr %rs, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %arrayidx5 = getelementptr %struct.ath_rx_status, ptr %rs, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6284 = zext i8 %6 to i32
  %7 = lshr i32 %conv6284, 4
  %and = and i32 %7, 3
  %8 = lshr i32 %conv6284, 2
  %and11 = and i32 %8, 3
  %low_rssi_thresh = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 25
  %9 = ptrtoint ptr %low_rssi_thresh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %low_rssi_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv3)
  %cmp.not = icmp sgt i32 %10, %conv3
  %spec.select = select i1 %cmp.not, i32 50, i32 30
  %spec.select286 = select i1 %cmp.not, i32 50, i32 20
  %11 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select286, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp15 = icmp sgt i8 %2, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp17 = icmp sgt i8 %4, 0
  %or.cond = select i1 %cmp15, i1 %cmp17, i1 false
  br i1 %or.cond, label %if.then19, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = sext i8 %2 to i32
  %total_pkt_count = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 1
  %15 = ptrtoint ptr %total_pkt_count to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %total_pkt_count, align 2
  %inc = add i16 %16, 1
  store i16 %inc, ptr %total_pkt_count, align 2
  %main_total_rssi = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 4
  %17 = ptrtoint ptr %main_total_rssi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %main_total_rssi, align 4
  %add = add i32 %18, %conv
  store i32 %add, ptr %main_total_rssi, align 4
  %alt_total_rssi = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 5
  %19 = ptrtoint ptr %alt_total_rssi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alt_total_rssi, align 4
  %add20 = add i32 %20, %conv3
  store i32 %add20, ptr %alt_total_rssi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %and)
  %cmp21 = icmp eq i32 %and11, %and
  %main_recv_cnt = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 7
  %alt_recv_cnt = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 6
  %main_recv_cnt.sink287 = select i1 %cmp21, ptr %main_recv_cnt, ptr %alt_recv_cnt
  %21 = ptrtoint ptr %main_recv_cnt.sink287 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %main_recv_cnt.sink287, align 4
  %inc24 = add i32 %22, 1
  store i32 %inc24, ptr %main_recv_cnt.sink287, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %entry.if.end28_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %and)
  %cmp29 = icmp eq i32 %and11, %and
  br i1 %cmp29, label %do.body, label %do.body44

do.body:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %ant_stats = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 4
  %23 = ptrtoint ptr %ant_stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ant_stats, align 4
  %inc33 = add i32 %24, 1
  store i32 %inc33, ptr %ant_stats, align 4
  %arrayidx39 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 4, i32 0, i32 2, i32 %and
  br label %if.end63

do.body44:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx48 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx48, align 4
  %inc50 = add i32 %26, 1
  store i32 %inc50, ptr %arrayidx48, align 4
  %arrayidx59 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 4, i32 1, i32 2, i32 %and
  br label %if.end63

if.end63:                                         ; preds = %do.body44, %do.body
  %arrayidx59.sink288 = phi ptr [ %arrayidx59, %do.body44 ], [ %arrayidx39, %do.body ]
  %27 = ptrtoint ptr %arrayidx59.sink288 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx59.sink288, align 4
  %inc60 = add i32 %28, 1
  store i32 %inc60, ptr %arrayidx59.sink288, align 4
  %scan.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 2
  %29 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %scan.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end63.ath_ant_short_scan_check.exit_crit_edge, label %lor.lhs.false.i

if.end63.ath_ant_short_scan_check.exit_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_ant_short_scan_check.exit

lor.lhs.false.i:                                  ; preds = %if.end63
  %alt_good.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 17
  %31 = ptrtoint ptr %alt_good.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %alt_good.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool1.not.i = icmp eq i8 %32, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ath_ant_short_scan_check.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ath_ant_short_scan_check.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_ant_short_scan_check.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %scan_start_time.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 24
  %33 = ptrtoint ptr %scan_start_time.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scan_start_time.i, align 4
  %add.i = add i32 %34, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.ath_ant_short_scan_check.exit_crit_edge, label %if.end3.i

if.end.i.ath_ant_short_scan_check.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_ant_short_scan_check.exit

if.end3.i:                                        ; preds = %if.end.i
  %total_pkt_count.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 1
  %36 = ptrtoint ptr %total_pkt_count.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %total_pkt_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %37)
  %cmp4.i = icmp eq i16 %37, 256
  br i1 %cmp4.i, label %if.then6.i, label %if.end3.i.if.end13.i_crit_edge

if.end3.i.if.end13.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end3.i
  %alt_recv_cnt.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 6
  %38 = ptrtoint ptr %alt_recv_cnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %alt_recv_cnt.i, align 4
  %mul.i = mul i32 %39, 100
  %div.i = sdiv i32 %mul.i, 256
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %41)
  %cmp9.i = icmp slt i32 %div.i, %41
  br i1 %cmp9.i, label %if.then6.i.ath_ant_short_scan_check.exit_crit_edge, label %if.then6.i.if.end13.i_crit_edge

if.then6.i.if.end13.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13.i

if.then6.i.ath_ant_short_scan_check.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_ant_short_scan_check.exit

if.end13.i:                                       ; preds = %if.then6.i.if.end13.i_crit_edge, %if.end3.i.if.end13.i_crit_edge
  br label %ath_ant_short_scan_check.exit

ath_ant_short_scan_check.exit:                    ; preds = %if.end13.i, %if.then6.i.ath_ant_short_scan_check.exit_crit_edge, %if.end.i.ath_ant_short_scan_check.exit_crit_edge, %lor.lhs.false.i.ath_ant_short_scan_check.exit_crit_edge, %if.end63.ath_ant_short_scan_check.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.end13.i ], [ false, %lor.lhs.false.i.ath_ant_short_scan_check.exit_crit_edge ], [ false, %if.end63.ath_ant_short_scan_check.exit_crit_edge ], [ true, %if.end.i.ath_ant_short_scan_check.exit_crit_edge ], [ true, %if.then6.i.ath_ant_short_scan_check.exit_crit_edge ]
  %total_pkt_count64 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 1
  %42 = ptrtoint ptr %total_pkt_count64 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %total_pkt_count64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %43)
  %cmp66 = icmp ult i16 %43, 512
  br i1 %cmp66, label %land.lhs.true69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %ath_ant_short_scan_check.exit
  %rs_moreaggr = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 13
  %44 = ptrtoint ptr %rs_moreaggr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rs_moreaggr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  %brmerge = or i1 %retval.0.i, %tobool.not
  br i1 %brmerge, label %lor.lhs.false.if.then75_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.if.then75_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then75

land.lhs.true69:                                  ; preds = %ath_ant_short_scan_check.exit
  br i1 %retval.0.i, label %if.end72, label %land.lhs.true69.cleanup_crit_edge

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end72:                                         ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool74.not = icmp eq i16 %43, 0
  br i1 %tobool74.not, label %if.end72.if.end87_crit_edge, label %if.end72.if.then75_crit_edge

if.end72.if.then75_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then75

if.end72.if.end87_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

if.then75:                                        ; preds = %if.end72.if.then75_crit_edge, %lor.lhs.false.if.then75_crit_edge
  %alt_recv_cnt76 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 6
  %46 = ptrtoint ptr %alt_recv_cnt76 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %alt_recv_cnt76, align 4
  %mul = mul i32 %47, 100
  %conv78 = zext i16 %43 to i32
  %div = sdiv i32 %mul, %conv78
  %main_total_rssi79 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 4
  %48 = ptrtoint ptr %main_total_rssi79 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %main_total_rssi79, align 4
  %div82 = sdiv i32 %49, %conv78
  %alt_total_rssi83 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 5
  %50 = ptrtoint ptr %alt_total_rssi83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %alt_total_rssi83, align 4
  %div86 = sdiv i32 %51, %conv78
  br label %if.end87

if.end87:                                         ; preds = %if.then75, %if.end72.if.end87_crit_edge
  %alt_ratio.0 = phi i32 [ %div, %if.then75 ], [ 0, %if.end72.if.end87_crit_edge ]
  %alt_rssi_avg.0 = phi i32 [ %div86, %if.then75 ], [ 0, %if.end72.if.end87_crit_edge ]
  %main_rssi_avg.0 = phi i32 [ %div82, %if.then75 ], [ 0, %if.end72.if.end87_crit_edge ]
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %52 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sc_ah, align 4
  %antdiv_comb_conf_get.i = getelementptr inbounds %struct.ath_hw, ptr %53, i32 0, i32 63, i32 8
  %54 = ptrtoint ptr %antdiv_comb_conf_get.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %antdiv_comb_conf_get.i, align 4
  call void %55(ptr noundef %53, ptr noundef nonnull %div_ant_conf) #3
  %alt_lna_conf = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 1
  %56 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %alt_lna_conf, align 1
  %conv88 = zext i8 %57 to i32
  %58 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %div_ant_conf, align 4
  %60 = ptrtoint ptr %ant_comb to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ant_comb, align 4
  %inc90 = add i16 %61, 1
  store i16 %inc90, ptr %ant_comb, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %inc90)
  %cmp93 = icmp eq i16 %inc90, 100
  br i1 %cmp93, label %if.then95, label %if.end104

if.then95:                                        ; preds = %if.end87
  %62 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %alt_ratio.0, i32 %63)
  %cmp97 = icmp sgt i32 %alt_ratio.0, %63
  br i1 %cmp97, label %if.then99, label %if.then95.if.end104.thread_crit_edge

if.then95.if.end104.thread_crit_edge:             ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end104.thread

if.then99:                                        ; preds = %if.then95
  %64 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.0.load = load i32, ptr %div_ant_conf, align 4
  %ant_conf.sroa.0.0.extract.shift.i = lshr i32 %.fca.0.load, 24
  %ant_conf.sroa.4.0.extract.shift.i = lshr i32 %.fca.0.load, 16
  %quick_scan_cnt.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 18
  %65 = ptrtoint ptr %quick_scan_cnt.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %quick_scan_cnt.i, align 4
  %trunc.i = trunc i32 %ant_conf.sroa.0.0.extract.shift.i to i8
  %66 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.then99.if.end7.i_crit_edge [
    i8 1, label %if.then.i
    i8 2, label %if.then6.i240
  ]

if.then99.if.end7.i_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_lna2.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 9
  br label %if.end7.sink.split.i

if.then6.i240:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_lna1.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 8
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %if.then6.i240, %if.then.i
  %rssi_lna1.sink.i = phi ptr [ %rssi_lna1.i, %if.then6.i240 ], [ %rssi_lna2.i, %if.then.i ]
  %67 = ptrtoint ptr %rssi_lna1.sink.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %main_rssi_avg.0, ptr %rssi_lna1.sink.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.sink.split.i, %if.then99.if.end7.i_crit_edge
  %shl.i = shl nuw nsw i32 %ant_conf.sroa.0.0.extract.shift.i, 4
  %conv10.i = and i32 %ant_conf.sroa.4.0.extract.shift.i, 255
  %or.i = or i32 %shl.i, %conv10.i
  %68 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %or.i, label %if.end7.i.if.end104.thread_crit_edge [
    i32 16, label %if.end7.i.sw.epilog.sink.split.i_crit_edge
    i32 32, label %sw.bb11.i
    i32 33, label %sw.bb15.i
    i32 18, label %sw.bb19.i
    i32 19, label %sw.bb23.i
    i32 35, label %sw.bb27.i
  ]

if.end7.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

if.end7.i.if.end104.thread_crit_edge:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end104.thread

sw.bb11.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

sw.bb15.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

sw.bb19.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

sw.bb23.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

sw.bb27.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb27.i, %sw.bb23.i, %sw.bb19.i, %sw.bb15.i, %sw.bb11.i, %if.end7.i.sw.epilog.sink.split.i_crit_edge
  %.sink55.i = phi i32 [ 3, %sw.bb27.i ], [ 3, %sw.bb23.i ], [ 2, %sw.bb19.i ], [ 1, %sw.bb15.i ], [ 0, %sw.bb11.i ], [ 0, %if.end7.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink54.i = phi i32 [ 0, %sw.bb27.i ], [ 0, %sw.bb23.i ], [ 0, %sw.bb19.i ], [ 0, %sw.bb15.i ], [ 3, %sw.bb11.i ], [ 3, %if.end7.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1, %sw.bb27.i ], [ 2, %sw.bb23.i ], [ 3, %sw.bb19.i ], [ 3, %sw.bb15.i ], [ 1, %sw.bb11.i ], [ 2, %if.end7.i.sw.epilog.sink.split.i_crit_edge ]
  %main_conf28.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 19
  %69 = ptrtoint ptr %main_conf28.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink55.i, ptr %main_conf28.i, align 4
  %first_quick_scan_conf29.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 20
  %70 = ptrtoint ptr %first_quick_scan_conf29.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.sink54.i, ptr %first_quick_scan_conf29.i, align 4
  %second_quick_scan_conf30.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 21
  %71 = ptrtoint ptr %second_quick_scan_conf30.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink.i, ptr %second_quick_scan_conf30.i, align 4
  br label %if.end104.thread

if.end104.thread:                                 ; preds = %sw.epilog.sink.split.i, %if.end7.i.if.end104.thread_crit_edge, %if.then95.if.end104.thread_crit_edge
  %.sink = phi i8 [ 1, %if.end7.i.if.end104.thread_crit_edge ], [ 1, %sw.epilog.sink.split.i ], [ 0, %if.then95.if.end104.thread_crit_edge ]
  %alt_good = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 17
  %72 = ptrtoint ptr %alt_good to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.sink, ptr %alt_good, align 4
  %73 = ptrtoint ptr %ant_comb to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %ant_comb, align 4
  %74 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %scan.i, align 4
  %scan_not_start = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 3
  %75 = ptrtoint ptr %scan_not_start to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %scan_not_start, align 1
  br label %if.end121

if.end104:                                        ; preds = %if.end87
  %76 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %.pr = load i8, ptr %scan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool106.not = icmp eq i8 %.pr, 0
  br i1 %tobool106.not, label %if.then107, label %if.end104.if.end121_crit_edge

if.end104.if.end121_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end121

if.then107:                                       ; preds = %if.end104
  %77 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %59, label %if.then107.if.end15.i.i_crit_edge [
    i8 1, label %if.end.thread.i.i
    i8 2, label %land.lhs.true9.i.i
  ]

if.then107.if.end15.i.i_crit_edge:                ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.i.i

if.end.thread.i.i:                                ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp3.i.i = icmp ne i8 %57, 2
  br label %if.end15.i.i

land.lhs.true9.i.i:                               ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp12.i.i = icmp ne i8 %57, 1
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %land.lhs.true9.i.i, %if.end.thread.i.i, %if.then107.if.end15.i.i_crit_edge
  %set1.0.off0102.i.i = phi i1 [ true, %land.lhs.true9.i.i ], [ %cmp3.i.i, %if.end.thread.i.i ], [ true, %if.then107.if.end15.i.i_crit_edge ]
  %set2.0.off0.i.i = phi i1 [ %cmp12.i.i, %land.lhs.true9.i.i ], [ true, %if.end.thread.i.i ], [ true, %if.then107.if.end15.i.i_crit_edge ]
  %div_group.i.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 7
  %78 = ptrtoint ptr %div_group.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %div_group.i.i, align 4
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %79, label %if.end15.i.i.if.else7.i_crit_edge [
    i8 0, label %ath_ant_div_comb_alt_check.exit.i
    i8 1, label %if.end15.i.i.sw.bb21.i.i_crit_edge
    i8 2, label %if.end15.i.i.sw.bb21.i.i_crit_edge289
    i8 3, label %sw.bb44.i.i
  ]

if.end15.i.i.sw.bb21.i.i_crit_edge289:            ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb21.i.i

if.end15.i.i.sw.bb21.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb21.i.i

if.end15.i.i.if.else7.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else7.i

sw.bb21.i.i:                                      ; preds = %if.end15.i.i.sw.bb21.i.i_crit_edge, %if.end15.i.i.sw.bb21.i.i_crit_edge289
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %alt_rssi_avg.0)
  %cmp22.i.i = icmp slt i32 %alt_rssi_avg.0, 4
  br i1 %cmp22.i.i, label %sw.bb21.i.i.if.else7.i_crit_edge, label %lor.lhs.false.i.i

sw.bb21.i.i.if.else7.i_crit_edge:                 ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else7.i

lor.lhs.false.i.i:                                ; preds = %sw.bb21.i.i
  %81 = ptrtoint ptr %low_rssi_thresh to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %low_rssi_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %alt_rssi_avg.0)
  %cmp24.i.i = icmp sgt i32 %82, %alt_rssi_avg.0
  br i1 %cmp24.i.i, label %lor.lhs.false.i.i.if.else7.i_crit_edge, label %if.end27.i.i

lor.lhs.false.i.i.if.else7.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else7.i

if.end27.i.i:                                     ; preds = %lor.lhs.false.i.i
  %sub.i.i = add i32 %main_rssi_avg.0, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %alt_rssi_avg.0)
  %cmp30.not.i.i = icmp sgt i32 %sub.i.i, %alt_rssi_avg.0
  %or.cond.i.i = or i1 %cmp30.not.i.i, %set1.0.off0102.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false32.i.i, label %if.end27.i.i.if.then.i241_crit_edge

if.end27.i.i.if.then.i241_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i241

lor.lhs.false32.i.i:                              ; preds = %if.end27.i.i
  %sub36.i.i = add i32 %main_rssi_avg.0, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36.i.i, i32 %alt_rssi_avg.0)
  %cmp37.not.i.i = icmp sgt i32 %sub36.i.i, %alt_rssi_avg.0
  %or.cond95.i.i = or i1 %cmp37.not.i.i, %set2.0.off0.i.i
  br i1 %or.cond95.i.i, label %lor.lhs.false39.i.i, label %lor.lhs.false32.i.i.if.then.i241_crit_edge

lor.lhs.false32.i.i.if.then.i241_crit_edge:       ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i241

lor.lhs.false39.i.i:                              ; preds = %lor.lhs.false32.i.i
  %83 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %alt_ratio.0)
  %cmp40.i.i = icmp slt i32 %84, %alt_ratio.0
  br i1 %cmp40.i.i, label %lor.lhs.false39.i.i.if.then.i241_crit_edge, label %lor.lhs.false39.i.i.if.else7.i_crit_edge

lor.lhs.false39.i.i.if.else7.i_crit_edge:         ; preds = %lor.lhs.false39.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else7.i

lor.lhs.false39.i.i.if.then.i241_crit_edge:       ; preds = %lor.lhs.false39.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i241

sw.bb44.i.i:                                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %alt_rssi_avg.0)
  %cmp45.i.i = icmp slt i32 %alt_rssi_avg.0, 4
  br i1 %cmp45.i.i, label %sw.bb44.i.i.if.else7.i_crit_edge, label %lor.lhs.false47.i.i

sw.bb44.i.i.if.else7.i_crit_edge:                 ; preds = %sw.bb44.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else7.i

lor.lhs.false47.i.i:                              ; preds = %sw.bb44.i.i
  %85 = ptrtoint ptr %low_rssi_thresh to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %low_rssi_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %alt_rssi_avg.0)
  %cmp49.i.i = icmp sgt i32 %86, %alt_rssi_avg.0
  br i1 %cmp49.i.i, label %lor.lhs.false47.i.i.if.else7.i_crit_edge, label %if.end52.i.i

lor.lhs.false47.i.i.if.else7.i_crit_edge:         ; preds = %lor.lhs.false47.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else7.i

if.end52.i.i:                                     ; preds = %lor.lhs.false47.i.i
  %sub56.i.i = add i32 %main_rssi_avg.0, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub56.i.i, i32 %alt_rssi_avg.0)
  %cmp57.not.i.i = icmp sgt i32 %sub56.i.i, %alt_rssi_avg.0
  %or.cond97.i.i = or i1 %cmp57.not.i.i, %set1.0.off0102.i.i
  br i1 %or.cond97.i.i, label %lor.lhs.false59.i.i, label %if.end52.i.i.if.then.i241_crit_edge

if.end52.i.i.if.then.i241_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i241

lor.lhs.false59.i.i:                              ; preds = %if.end52.i.i
  %add.i.i = add i32 %main_rssi_avg.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %alt_rssi_avg.0)
  %cmp63.not.i.i = icmp sgt i32 %add.i.i, %alt_rssi_avg.0
  %or.cond99.i.i = or i1 %cmp63.not.i.i, %set2.0.off0.i.i
  br i1 %or.cond99.i.i, label %lor.lhs.false65.i.i, label %lor.lhs.false59.i.i.if.then.i241_crit_edge

lor.lhs.false59.i.i.if.then.i241_crit_edge:       ; preds = %lor.lhs.false59.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i241

lor.lhs.false65.i.i:                              ; preds = %lor.lhs.false59.i.i
  %87 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %alt_ratio.0)
  %cmp67.i.i = icmp slt i32 %88, %alt_ratio.0
  br i1 %cmp67.i.i, label %lor.lhs.false65.i.i.if.then.i241_crit_edge, label %lor.lhs.false65.i.i.if.else7.i_crit_edge

lor.lhs.false65.i.i.if.else7.i_crit_edge:         ; preds = %lor.lhs.false65.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else7.i

lor.lhs.false65.i.i.if.then.i241_crit_edge:       ; preds = %lor.lhs.false65.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i241

ath_ant_div_comb_alt_check.exit.i:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %alt_ratio.0)
  %cmp17.i.i = icmp sgt i32 %alt_ratio.0, 30
  br i1 %cmp17.i.i, label %ath_ant_div_comb_alt_check.exit.i.if.then.i241_crit_edge, label %ath_ant_div_comb_alt_check.exit.i.if.else7.i_crit_edge

ath_ant_div_comb_alt_check.exit.i.if.else7.i_crit_edge: ; preds = %ath_ant_div_comb_alt_check.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else7.i

ath_ant_div_comb_alt_check.exit.i.if.then.i241_crit_edge: ; preds = %ath_ant_div_comb_alt_check.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i241

if.then.i241:                                     ; preds = %ath_ant_div_comb_alt_check.exit.i.if.then.i241_crit_edge, %lor.lhs.false65.i.i.if.then.i241_crit_edge, %lor.lhs.false59.i.i.if.then.i241_crit_edge, %if.end52.i.i.if.then.i241_crit_edge, %lor.lhs.false39.i.i.if.then.i241_crit_edge, %lor.lhs.false32.i.i.if.then.i241_crit_edge, %if.end27.i.i.if.then.i241_crit_edge
  %89 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %57, label %if.then.i241.div_comb_done_crit_edge [
    i8 1, label %if.then1.i
    i8 2, label %if.then3.i
  ]

if.then.i241.div_comb_done_crit_edge:             ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #5
  br label %div_comb_done

if.then1.i:                                       ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #5
  %90 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %div_ant_conf, align 4
  br label %if.end21.sink.split.i

if.then3.i:                                       ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #5
  %91 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 2, ptr %div_ant_conf, align 4
  br label %if.end21.sink.split.i

if.else7.i:                                       ; preds = %ath_ant_div_comb_alt_check.exit.i.if.else7.i_crit_edge, %lor.lhs.false65.i.i.if.else7.i_crit_edge, %lor.lhs.false47.i.i.if.else7.i_crit_edge, %sw.bb44.i.i.if.else7.i_crit_edge, %lor.lhs.false39.i.i.if.else7.i_crit_edge, %lor.lhs.false.i.i.if.else7.i_crit_edge, %sw.bb21.i.i.if.else7.i_crit_edge, %if.end15.i.i.if.else7.i_crit_edge
  %curr_alt_set.off.i = add nsw i32 %conv88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %curr_alt_set.off.i)
  %switch.i = icmp ult i32 %curr_alt_set.off.i, 2
  br i1 %switch.i, label %land.lhs.true116, label %if.then10.i

if.then10.i:                                      ; preds = %if.else7.i
  %92 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %59, label %if.then10.i.div_comb_done_crit_edge [
    i8 1, label %if.then10.i.if.end21.sink.split.i_crit_edge
    i8 2, label %if.then16.i
  ]

if.then10.i.if.end21.sink.split.i_crit_edge:      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.sink.split.i

if.then10.i.div_comb_done_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %div_comb_done

if.then16.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.then16.i, %if.then10.i.if.end21.sink.split.i_crit_edge, %if.then3.i, %if.then1.i
  %.sink.i242 = phi i8 [ 1, %if.then16.i ], [ 2, %if.then1.i ], [ 1, %if.then3.i ], [ 2, %if.then10.i.if.end21.sink.split.i_crit_edge ]
  %93 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %.sink.i242, ptr %alt_lna_conf, align 1
  br label %div_comb_done

land.lhs.true116:                                 ; preds = %if.else7.i
  %lna1_lna2_delta = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 5
  %94 = ptrtoint ptr %lna1_lna2_delta to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %lna1_lna2_delta, align 4
  %add117 = add i32 %95, %main_rssi_avg.0
  call void @__sanitizer_cov_trace_cmp4(i32 %alt_rssi_avg.0, i32 %add117)
  %cmp118 = icmp slt i32 %alt_rssi_avg.0, %add117
  br i1 %cmp118, label %land.lhs.true116.div_comb_done_crit_edge, label %land.lhs.true116.if.end121_crit_edge

land.lhs.true116.if.end121_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end121

land.lhs.true116.div_comb_done_crit_edge:         ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #5
  br label %div_comb_done

if.end121:                                        ; preds = %land.lhs.true116.if.end121_crit_edge, %if.end104.if.end121_crit_edge, %if.end104.thread
  %scan_not_start122 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 3
  %96 = ptrtoint ptr %scan_not_start122 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %scan_not_start122, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool123.not = icmp eq i8 %97, 0
  br i1 %tobool123.not, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.end121
  %98 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %57, label %if.then124.div_comb_done_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb1.i
    i8 3, label %sw.bb7.i
    i8 0, label %sw.bb10.i
  ]

if.then124.div_comb_done_crit_edge:               ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #5
  br label %div_comb_done

sw.bb.i:                                          ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_lna2.i243 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 9
  %99 = ptrtoint ptr %rssi_lna2.i243 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %alt_rssi_avg.0, ptr %rssi_lna2.i243, align 4
  %rssi_lna1.i244 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 8
  %100 = ptrtoint ptr %rssi_lna1.i244 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %main_rssi_avg.0, ptr %rssi_lna1.i244, align 4
  %101 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %scan.i, align 4
  %102 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %div_ant_conf, align 4
  %103 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 3, ptr %alt_lna_conf, align 1
  br label %div_comb_done

sw.bb1.i:                                         ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_lna12.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 8
  %104 = ptrtoint ptr %rssi_lna12.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %alt_rssi_avg.0, ptr %rssi_lna12.i, align 4
  %rssi_lna23.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 9
  %105 = ptrtoint ptr %rssi_lna23.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %main_rssi_avg.0, ptr %rssi_lna23.i, align 4
  %106 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %scan.i, align 4
  %107 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %div_ant_conf, align 4
  %108 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 3, ptr %alt_lna_conf, align 1
  br label %div_comb_done

sw.bb7.i:                                         ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_add.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 10
  %109 = ptrtoint ptr %rssi_add.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %alt_rssi_avg.0, ptr %rssi_add.i, align 4
  %110 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %scan.i, align 4
  %111 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %alt_lna_conf, align 1
  br label %div_comb_done

sw.bb10.i:                                        ; preds = %if.then124
  %rssi_sub.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 11
  %112 = ptrtoint ptr %rssi_sub.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %alt_rssi_avg.0, ptr %rssi_sub.i, align 4
  %113 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %scan.i, align 4
  %rssi_lna212.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 9
  %114 = ptrtoint ptr %rssi_lna212.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rssi_lna212.i, align 4
  %rssi_lna113.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 8
  %116 = ptrtoint ptr %rssi_lna113.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rssi_lna113.i, align 4
  %lna1_lna2_switch_delta.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 6
  %118 = ptrtoint ptr %lna1_lna2_switch_delta.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %lna1_lna2_switch_delta.i, align 4
  %add.i246 = add i32 %119, %117
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %add.i246)
  %cmp.i247 = icmp sgt i32 %115, %add.i246
  %rssi_add14.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 10
  %120 = ptrtoint ptr %rssi_add14.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rssi_add14.i, align 4
  br i1 %cmp.i247, label %if.then.i248, label %if.else33.i

if.then.i248:                                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %117)
  %cmp16.i = icmp sgt i32 %121, %117
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %alt_rssi_avg.0)
  %cmp19.i = icmp sgt i32 %121, %alt_rssi_avg.0
  %or.cond.i = and i1 %cmp16.i, %cmp19.i
  br i1 %or.cond.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.then.i248
  call void @__sanitizer_cov_trace_pc() #5
  %122 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %div_ant_conf, align 4
  %123 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 3, ptr %alt_lna_conf, align 1
  br label %div_comb_done

if.else.i:                                        ; preds = %if.then.i248
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %alt_rssi_avg.0)
  %cmp25.i = icmp slt i32 %117, %alt_rssi_avg.0
  %124 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %div_ant_conf, align 4
  br i1 %cmp25.i, label %if.then26.i, label %if.else29.i

if.then26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %125 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %alt_lna_conf, align 1
  br label %div_comb_done

if.else29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %126 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 2, ptr %alt_lna_conf, align 1
  br label %div_comb_done

if.else33.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %115)
  %cmp36.i = icmp sgt i32 %121, %115
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %alt_rssi_avg.0)
  %cmp40.i = icmp sgt i32 %121, %alt_rssi_avg.0
  %or.cond103.i = and i1 %cmp36.i, %cmp40.i
  br i1 %or.cond103.i, label %if.then41.i, label %if.else44.i

if.then41.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #5
  %127 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 2, ptr %div_ant_conf, align 4
  %128 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 3, ptr %alt_lna_conf, align 1
  br label %div_comb_done

if.else44.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %alt_rssi_avg.0)
  %cmp47.i = icmp slt i32 %117, %alt_rssi_avg.0
  %129 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 2, ptr %div_ant_conf, align 4
  br i1 %cmp47.i, label %if.then48.i, label %if.else51.i

if.then48.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #5
  %130 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %alt_lna_conf, align 1
  br label %div_comb_done

if.else51.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #5
  %131 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %alt_lna_conf, align 1
  br label %div_comb_done

if.else125:                                       ; preds = %if.end121
  %alt_good126 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 17
  %132 = ptrtoint ptr %alt_good126 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %alt_good126, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool127.not = icmp eq i8 %133, 0
  br i1 %tobool127.not, label %if.then128, label %if.end143

if.then128:                                       ; preds = %if.else125
  %134 = ptrtoint ptr %scan_not_start122 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %scan_not_start122, align 1
  %135 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %59, label %if.then128.div_comb_done_crit_edge [
    i8 1, label %if.then132
    i8 2, label %if.then138
  ]

if.then128.div_comb_done_crit_edge:               ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #5
  br label %div_comb_done

if.then132:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #5
  %136 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %div_ant_conf, align 4
  %137 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 2, ptr %alt_lna_conf, align 1
  br label %div_comb_done

if.then138:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #5
  %138 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 2, ptr %div_ant_conf, align 4
  %139 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %alt_lna_conf, align 1
  br label %div_comb_done

if.end143:                                        ; preds = %if.else125
  %quick_scan_cnt.i249 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 18
  %140 = ptrtoint ptr %quick_scan_cnt.i249 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %quick_scan_cnt.i249, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %141, label %if.end143.ath_select_ant_div_from_quick_scan.exit_crit_edge [
    i32 0, label %sw.bb.i251
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb37.i
  ]

if.end143.ath_select_ant_div_from_quick_scan.exit_crit_edge: ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_select_ant_div_from_quick_scan.exit

sw.bb.i251:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #5
  %main_conf.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 19
  %143 = ptrtoint ptr %main_conf.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %main_conf.i, align 4
  %conv.i = trunc i32 %144 to i8
  %145 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv.i, ptr %div_ant_conf, align 4
  %first_quick_scan_conf.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 20
  %146 = ptrtoint ptr %first_quick_scan_conf.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %first_quick_scan_conf.i, align 4
  %conv1.i = trunc i32 %147 to i8
  %148 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv1.i, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

sw.bb2.i:                                         ; preds = %if.end143
  %main_conf3.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 19
  %149 = ptrtoint ptr %main_conf3.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %main_conf3.i, align 4
  %conv4.i = trunc i32 %150 to i8
  %151 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv4.i, ptr %div_ant_conf, align 4
  %second_quick_scan_conf.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 21
  %152 = ptrtoint ptr %second_quick_scan_conf.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %second_quick_scan_conf.i, align 4
  %conv6.i = trunc i32 %153 to i8
  %154 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv6.i, ptr %alt_lna_conf, align 1
  %rssi_first.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 12
  %155 = ptrtoint ptr %rssi_first.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %main_rssi_avg.0, ptr %rssi_first.i, align 4
  %rssi_second.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 13
  %156 = ptrtoint ptr %rssi_second.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %alt_rssi_avg.0, ptr %rssi_second.i, align 4
  %157 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %150, label %if.else26.i [
    i32 2, label %if.then.i253
    i32 1, label %if.then17.i
  ]

if.then.i253:                                     ; preds = %sw.bb2.i
  %158 = ptrtoint ptr %total_pkt_count64 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %total_pkt_count64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %159)
  %cmp.i.i = icmp ult i16 %159, 51
  br i1 %cmp.i.i, label %if.then.i253.if.else.i257_crit_edge, label %if.end.i.i

if.then.i253.if.else.i257_crit_edge:              ; preds = %if.then.i253
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i257

if.end.i.i:                                       ; preds = %if.then.i253
  %add.i.i254 = add i32 %main_rssi_avg.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i254, i32 %alt_rssi_avg.0)
  %cmp1.i.i = icmp slt i32 %add.i.i254, %alt_rssi_avg.0
  br i1 %cmp1.i.i, label %if.end.i.i.if.then11.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.then11.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %160 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %alt_ratio.0)
  %cmp4.not.i.i = icmp sgt i32 %161, %alt_ratio.0
  br i1 %cmp4.not.i.i, label %if.end3.i.i.if.else.i257_crit_edge, label %land.lhs.true.i.i

if.end3.i.i.if.else.i257_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i257

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %162 = ptrtoint ptr %low_rssi_thresh to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %low_rssi_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %alt_rssi_avg.0)
  %cmp5.not.i.i = icmp sle i32 %163, %alt_rssi_avg.0
  %add7.i.i = add i32 %main_rssi_avg.0, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i, i32 %alt_rssi_avg.0)
  %cmp8.i.i = icmp slt i32 %add7.i.i, %alt_rssi_avg.0
  %or.cond.i.i256 = and i1 %cmp8.i.i, %cmp5.not.i.i
  br i1 %or.cond.i.i256, label %land.lhs.true.i.i.if.then11.i_crit_edge, label %land.lhs.true.i.i.if.else.i257_crit_edge

land.lhs.true.i.i.if.else.i257_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i257

land.lhs.true.i.i.if.then11.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11.i

if.then11.i:                                      ; preds = %land.lhs.true.i.i.if.then11.i_crit_edge, %if.end.i.i.if.then11.i_crit_edge
  %first_ratio.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 22
  %164 = ptrtoint ptr %first_ratio.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %first_ratio.i, align 4
  br label %ath_select_ant_div_from_quick_scan.exit

if.else.i257:                                     ; preds = %land.lhs.true.i.i.if.else.i257_crit_edge, %if.end3.i.i.if.else.i257_crit_edge, %if.then.i253.if.else.i257_crit_edge
  %first_ratio12.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 22
  %165 = ptrtoint ptr %first_ratio12.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %first_ratio12.i, align 4
  br label %ath_select_ant_div_from_quick_scan.exit

if.then17.i:                                      ; preds = %sw.bb2.i
  %166 = ptrtoint ptr %total_pkt_count64 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %total_pkt_count64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %167)
  %cmp.i183.i = icmp ult i16 %167, 51
  br i1 %cmp.i183.i, label %if.then17.i.if.else23.i_crit_edge, label %if.end.i186.i

if.then17.i.if.else23.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else23.i

if.end.i186.i:                                    ; preds = %if.then17.i
  %add.i184.i = add i32 %main_rssi_avg.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i184.i, i32 %alt_rssi_avg.0)
  %cmp1.i185.i = icmp slt i32 %add.i184.i, %alt_rssi_avg.0
  br i1 %cmp1.i185.i, label %if.end.i186.i.if.then21.i_crit_edge, label %if.end3.i189.i

if.end.i186.i.if.then21.i_crit_edge:              ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21.i

if.end3.i189.i:                                   ; preds = %if.end.i186.i
  %168 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %alt_ratio.0)
  %cmp4.not.i188.i = icmp sgt i32 %169, %alt_ratio.0
  br i1 %cmp4.not.i188.i, label %if.end3.i189.i.if.else23.i_crit_edge, label %land.lhs.true.i195.i

if.end3.i189.i.if.else23.i_crit_edge:             ; preds = %if.end3.i189.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else23.i

land.lhs.true.i195.i:                             ; preds = %if.end3.i189.i
  %170 = ptrtoint ptr %low_rssi_thresh to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %low_rssi_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %alt_rssi_avg.0)
  %cmp5.not.i191.i = icmp sle i32 %171, %alt_rssi_avg.0
  %add7.i192.i = add i32 %main_rssi_avg.0, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i192.i, i32 %alt_rssi_avg.0)
  %cmp8.i193.i = icmp slt i32 %add7.i192.i, %alt_rssi_avg.0
  %or.cond.i194.i = and i1 %cmp8.i193.i, %cmp5.not.i191.i
  br i1 %or.cond.i194.i, label %land.lhs.true.i195.i.if.then21.i_crit_edge, label %land.lhs.true.i195.i.if.else23.i_crit_edge

land.lhs.true.i195.i.if.else23.i_crit_edge:       ; preds = %land.lhs.true.i195.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else23.i

land.lhs.true.i195.i.if.then21.i_crit_edge:       ; preds = %land.lhs.true.i195.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21.i

if.then21.i:                                      ; preds = %land.lhs.true.i195.i.if.then21.i_crit_edge, %if.end.i186.i.if.then21.i_crit_edge
  %first_ratio22.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 22
  %172 = ptrtoint ptr %first_ratio22.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %first_ratio22.i, align 4
  br label %ath_select_ant_div_from_quick_scan.exit

if.else23.i:                                      ; preds = %land.lhs.true.i195.i.if.else23.i_crit_edge, %if.end3.i189.i.if.else23.i_crit_edge, %if.then17.i.if.else23.i_crit_edge
  %first_ratio24.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 22
  %173 = ptrtoint ptr %first_ratio24.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %first_ratio24.i, align 4
  br label %ath_select_ant_div_from_quick_scan.exit

if.else26.i:                                      ; preds = %sw.bb2.i
  %174 = ptrtoint ptr %total_pkt_count64 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %total_pkt_count64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %175)
  %cmp.i199.i = icmp ult i16 %175, 51
  br i1 %cmp.i199.i, label %if.else26.i.if.else32.i_crit_edge, label %if.end.i201.i

if.else26.i.if.else32.i_crit_edge:                ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else32.i

if.end.i201.i:                                    ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_cmp4(i32 %main_rssi_avg.0, i32 %alt_rssi_avg.0)
  %cmp1.i200.i = icmp slt i32 %main_rssi_avg.0, %alt_rssi_avg.0
  br i1 %cmp1.i200.i, label %if.end.i201.i.if.then30.i_crit_edge, label %if.end3.i204.i

if.end.i201.i.if.then30.i_crit_edge:              ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then30.i

if.end3.i204.i:                                   ; preds = %if.end.i201.i
  %176 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %alt_ratio.0)
  %cmp4.not.i203.i = icmp sgt i32 %177, %alt_ratio.0
  br i1 %cmp4.not.i203.i, label %if.end3.i204.i.if.else32.i_crit_edge, label %land.lhs.true.i210.i

if.end3.i204.i.if.else32.i_crit_edge:             ; preds = %if.end3.i204.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else32.i

land.lhs.true.i210.i:                             ; preds = %if.end3.i204.i
  %178 = ptrtoint ptr %low_rssi_thresh to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %low_rssi_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %alt_rssi_avg.0)
  %cmp5.not.i206.i = icmp sle i32 %179, %alt_rssi_avg.0
  %add7.i207.i = add i32 %main_rssi_avg.0, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i207.i, i32 %alt_rssi_avg.0)
  %cmp8.i208.i = icmp slt i32 %add7.i207.i, %alt_rssi_avg.0
  %or.cond.i209.i = and i1 %cmp8.i208.i, %cmp5.not.i206.i
  br i1 %or.cond.i209.i, label %land.lhs.true.i210.i.if.then30.i_crit_edge, label %land.lhs.true.i210.i.if.else32.i_crit_edge

land.lhs.true.i210.i.if.else32.i_crit_edge:       ; preds = %land.lhs.true.i210.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else32.i

land.lhs.true.i210.i.if.then30.i_crit_edge:       ; preds = %land.lhs.true.i210.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true.i210.i.if.then30.i_crit_edge, %if.end.i201.i.if.then30.i_crit_edge
  %first_ratio31.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 22
  %180 = ptrtoint ptr %first_ratio31.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %first_ratio31.i, align 4
  br label %ath_select_ant_div_from_quick_scan.exit

if.else32.i:                                      ; preds = %land.lhs.true.i210.i.if.else32.i_crit_edge, %if.end3.i204.i.if.else32.i_crit_edge, %if.else26.i.if.else32.i_crit_edge
  %first_ratio33.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 22
  %181 = ptrtoint ptr %first_ratio33.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %first_ratio33.i, align 4
  br label %ath_select_ant_div_from_quick_scan.exit

sw.bb37.i:                                        ; preds = %if.end143
  %182 = ptrtoint ptr %alt_good126 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %alt_good126, align 4
  %183 = ptrtoint ptr %scan_not_start122 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %scan_not_start122, align 1
  %184 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %scan.i, align 4
  %rssi_first38.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 12
  %185 = ptrtoint ptr %rssi_first38.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %main_rssi_avg.0, ptr %rssi_first38.i, align 4
  %rssi_third.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 14
  %186 = ptrtoint ptr %rssi_third.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %alt_rssi_avg.0, ptr %rssi_third.i, align 4
  %second_quick_scan_conf39.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 21
  %187 = ptrtoint ptr %second_quick_scan_conf39.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %second_quick_scan_conf39.i, align 4
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %188, label %sw.bb37.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb40.i
    i32 1, label %sw.bb41.i
    i32 3, label %sw.bb42.i
  ]

sw.bb37.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_lna1.i260 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 8
  %190 = ptrtoint ptr %rssi_lna1.i260 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %alt_rssi_avg.0, ptr %rssi_lna1.i260, align 4
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_lna2.i261 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 9
  %191 = ptrtoint ptr %rssi_lna2.i261 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %alt_rssi_avg.0, ptr %rssi_lna2.i261, align 4
  br label %sw.epilog.i

sw.bb42.i:                                        ; preds = %sw.bb37.i
  %main_conf43.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 19
  %192 = ptrtoint ptr %main_conf43.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %main_conf43.i, align 4
  %194 = zext i32 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %193, label %sw.bb42.i.sw.epilog.i_crit_edge [
    i32 1, label %if.then46.i
    i32 2, label %if.then52.i
  ]

sw.bb42.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

if.then46.i:                                      ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_lna247.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 9
  %195 = ptrtoint ptr %rssi_lna247.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %main_rssi_avg.0, ptr %rssi_lna247.i, align 4
  br label %sw.epilog.i

if.then52.i:                                      ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #5
  %rssi_lna153.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 8
  %196 = ptrtoint ptr %rssi_lna153.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %main_rssi_avg.0, ptr %rssi_lna153.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then52.i, %if.then46.i, %sw.bb42.i.sw.epilog.i_crit_edge, %sw.bb41.i, %sw.bb40.i, %sw.bb37.i.sw.epilog.i_crit_edge
  %rssi_lna256.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 9
  %197 = ptrtoint ptr %rssi_lna256.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %rssi_lna256.i, align 4
  %rssi_lna157.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 8
  %199 = ptrtoint ptr %rssi_lna157.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %rssi_lna157.i, align 4
  %lna1_lna2_switch_delta.i262 = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 6
  %201 = ptrtoint ptr %lna1_lna2_switch_delta.i262 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %lna1_lna2_switch_delta.i262, align 4
  %add.i263 = add i32 %202, %200
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %add.i263)
  %cmp58.i = icmp sgt i32 %198, %add.i263
  %..i = select i1 %cmp58.i, i8 1, i8 2
  %203 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %..i, ptr %div_ant_conf, align 4
  %main_conf65.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 19
  %204 = ptrtoint ptr %main_conf65.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %main_conf65.i, align 4
  %206 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %205, label %if.else89.i [
    i32 2, label %if.then68.i
    i32 1, label %if.then80.i
  ]

if.then68.i:                                      ; preds = %sw.epilog.i
  %207 = ptrtoint ptr %total_pkt_count64 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %total_pkt_count64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %208)
  %cmp.i214.i = icmp ult i16 %208, 51
  br i1 %cmp.i214.i, label %if.then68.i.if.else73.i_crit_edge, label %if.end.i217.i

if.then68.i.if.else73.i_crit_edge:                ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else73.i

if.end.i217.i:                                    ; preds = %if.then68.i
  %add.i215.i = add i32 %main_rssi_avg.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i215.i, i32 %alt_rssi_avg.0)
  %cmp1.i216.i = icmp slt i32 %add.i215.i, %alt_rssi_avg.0
  br i1 %cmp1.i216.i, label %if.end.i217.i.if.end99.i_crit_edge, label %if.end3.i220.i

if.end.i217.i.if.end99.i_crit_edge:               ; preds = %if.end.i217.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end99.i

if.end3.i220.i:                                   ; preds = %if.end.i217.i
  %209 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %alt_ratio.0)
  %cmp4.not.i219.i = icmp sgt i32 %210, %alt_ratio.0
  br i1 %cmp4.not.i219.i, label %if.end3.i220.i.if.else73.i_crit_edge, label %land.lhs.true.i226.i

if.end3.i220.i.if.else73.i_crit_edge:             ; preds = %if.end3.i220.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else73.i

land.lhs.true.i226.i:                             ; preds = %if.end3.i220.i
  %211 = ptrtoint ptr %low_rssi_thresh to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %low_rssi_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %alt_rssi_avg.0)
  %cmp5.not.i222.i = icmp sle i32 %212, %alt_rssi_avg.0
  %add7.i223.i = add i32 %main_rssi_avg.0, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i223.i, i32 %alt_rssi_avg.0)
  %cmp8.i224.i = icmp slt i32 %add7.i223.i, %alt_rssi_avg.0
  %or.cond.i225.i = and i1 %cmp8.i224.i, %cmp5.not.i222.i
  br i1 %or.cond.i225.i, label %land.lhs.true.i226.i.if.end99.i_crit_edge, label %land.lhs.true.i226.i.if.else73.i_crit_edge

land.lhs.true.i226.i.if.else73.i_crit_edge:       ; preds = %land.lhs.true.i226.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else73.i

land.lhs.true.i226.i.if.end99.i_crit_edge:        ; preds = %land.lhs.true.i226.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end99.i

if.else73.i:                                      ; preds = %land.lhs.true.i226.i.if.else73.i_crit_edge, %if.end3.i220.i.if.else73.i_crit_edge, %if.then68.i.if.else73.i_crit_edge
  br label %if.end99.i

if.then80.i:                                      ; preds = %sw.epilog.i
  %213 = ptrtoint ptr %total_pkt_count64 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %total_pkt_count64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %214)
  %cmp.i230.i = icmp ult i16 %214, 51
  br i1 %cmp.i230.i, label %if.then80.i.if.else86.i_crit_edge, label %if.end.i233.i

if.then80.i.if.else86.i_crit_edge:                ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else86.i

if.end.i233.i:                                    ; preds = %if.then80.i
  %add.i231.i = add i32 %main_rssi_avg.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i231.i, i32 %alt_rssi_avg.0)
  %cmp1.i232.i = icmp slt i32 %add.i231.i, %alt_rssi_avg.0
  br i1 %cmp1.i232.i, label %if.end.i233.i.if.end99.i_crit_edge, label %if.end3.i236.i

if.end.i233.i.if.end99.i_crit_edge:               ; preds = %if.end.i233.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end99.i

if.end3.i236.i:                                   ; preds = %if.end.i233.i
  %215 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %alt_ratio.0)
  %cmp4.not.i235.i = icmp sgt i32 %216, %alt_ratio.0
  br i1 %cmp4.not.i235.i, label %if.end3.i236.i.if.else86.i_crit_edge, label %land.lhs.true.i242.i

if.end3.i236.i.if.else86.i_crit_edge:             ; preds = %if.end3.i236.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else86.i

land.lhs.true.i242.i:                             ; preds = %if.end3.i236.i
  %217 = ptrtoint ptr %low_rssi_thresh to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %low_rssi_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %alt_rssi_avg.0)
  %cmp5.not.i238.i = icmp sle i32 %218, %alt_rssi_avg.0
  %add7.i239.i = add i32 %main_rssi_avg.0, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i239.i, i32 %alt_rssi_avg.0)
  %cmp8.i240.i = icmp slt i32 %add7.i239.i, %alt_rssi_avg.0
  %or.cond.i241.i = and i1 %cmp8.i240.i, %cmp5.not.i238.i
  br i1 %or.cond.i241.i, label %land.lhs.true.i242.i.if.end99.i_crit_edge, label %land.lhs.true.i242.i.if.else86.i_crit_edge

land.lhs.true.i242.i.if.else86.i_crit_edge:       ; preds = %land.lhs.true.i242.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else86.i

land.lhs.true.i242.i.if.end99.i_crit_edge:        ; preds = %land.lhs.true.i242.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end99.i

if.else86.i:                                      ; preds = %land.lhs.true.i242.i.if.else86.i_crit_edge, %if.end3.i236.i.if.else86.i_crit_edge, %if.then80.i.if.else86.i_crit_edge
  br label %if.end99.i

if.else89.i:                                      ; preds = %sw.epilog.i
  %219 = ptrtoint ptr %total_pkt_count64 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %total_pkt_count64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %220)
  %cmp.i246.i = icmp ult i16 %220, 51
  br i1 %cmp.i246.i, label %if.else89.i.if.else95.i_crit_edge, label %if.end.i248.i

if.else89.i.if.else95.i_crit_edge:                ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else95.i

if.end.i248.i:                                    ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_cmp4(i32 %main_rssi_avg.0, i32 %alt_rssi_avg.0)
  %cmp1.i247.i = icmp slt i32 %main_rssi_avg.0, %alt_rssi_avg.0
  br i1 %cmp1.i247.i, label %if.end.i248.i.if.end99.i_crit_edge, label %if.end3.i251.i

if.end.i248.i.if.end99.i_crit_edge:               ; preds = %if.end.i248.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end99.i

if.end3.i251.i:                                   ; preds = %if.end.i248.i
  %221 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %alt_ratio.0)
  %cmp4.not.i250.i = icmp sgt i32 %222, %alt_ratio.0
  br i1 %cmp4.not.i250.i, label %if.end3.i251.i.if.else95.i_crit_edge, label %land.lhs.true.i257.i

if.end3.i251.i.if.else95.i_crit_edge:             ; preds = %if.end3.i251.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else95.i

land.lhs.true.i257.i:                             ; preds = %if.end3.i251.i
  %223 = ptrtoint ptr %low_rssi_thresh to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %low_rssi_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %alt_rssi_avg.0)
  %cmp5.not.i253.i = icmp sle i32 %224, %alt_rssi_avg.0
  %add7.i254.i = add i32 %main_rssi_avg.0, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i254.i, i32 %alt_rssi_avg.0)
  %cmp8.i255.i = icmp slt i32 %add7.i254.i, %alt_rssi_avg.0
  %or.cond.i256.i = and i1 %cmp8.i255.i, %cmp5.not.i253.i
  br i1 %or.cond.i256.i, label %land.lhs.true.i257.i.if.end99.i_crit_edge, label %land.lhs.true.i257.i.if.else95.i_crit_edge

land.lhs.true.i257.i.if.else95.i_crit_edge:       ; preds = %land.lhs.true.i257.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else95.i

land.lhs.true.i257.i.if.end99.i_crit_edge:        ; preds = %land.lhs.true.i257.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end99.i

if.else95.i:                                      ; preds = %land.lhs.true.i257.i.if.else95.i_crit_edge, %if.end3.i251.i.if.else95.i_crit_edge, %if.else89.i.if.else95.i_crit_edge
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else95.i, %land.lhs.true.i257.i.if.end99.i_crit_edge, %if.end.i248.i.if.end99.i_crit_edge, %if.else86.i, %land.lhs.true.i242.i.if.end99.i_crit_edge, %if.end.i233.i.if.end99.i_crit_edge, %if.else73.i, %land.lhs.true.i226.i.if.end99.i_crit_edge, %if.end.i217.i.if.end99.i_crit_edge
  %tobool67.not.i.i = phi i1 [ false, %land.lhs.true.i257.i.if.end99.i_crit_edge ], [ false, %if.end.i248.i.if.end99.i_crit_edge ], [ false, %land.lhs.true.i242.i.if.end99.i_crit_edge ], [ false, %if.end.i233.i.if.end99.i_crit_edge ], [ false, %land.lhs.true.i226.i.if.end99.i_crit_edge ], [ false, %if.end.i217.i.if.end99.i_crit_edge ], [ true, %if.else86.i ], [ true, %if.else95.i ], [ true, %if.else73.i ]
  %.sink.i264 = phi i8 [ 1, %land.lhs.true.i257.i.if.end99.i_crit_edge ], [ 1, %if.end.i248.i.if.end99.i_crit_edge ], [ 1, %land.lhs.true.i242.i.if.end99.i_crit_edge ], [ 1, %if.end.i233.i.if.end99.i_crit_edge ], [ 1, %land.lhs.true.i226.i.if.end99.i_crit_edge ], [ 1, %if.end.i217.i.if.end99.i_crit_edge ], [ 0, %if.else86.i ], [ 0, %if.else95.i ], [ 0, %if.else73.i ]
  %second_ratio87.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 23
  %225 = ptrtoint ptr %second_ratio87.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %.sink.i264, ptr %second_ratio87.i, align 1
  %first_ratio.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 22
  %226 = ptrtoint ptr %first_ratio.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %first_ratio.i.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool.not.i.i = icmp eq i8 %227, 0
  br i1 %tobool.not.i.i, label %if.else65.i.i, label %land.lhs.true.i261.i

land.lhs.true.i261.i:                             ; preds = %if.end99.i
  br i1 %tobool67.not.i.i, label %if.then42.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i261.i
  %rssi_second.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 13
  %228 = ptrtoint ptr %rssi_second.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %rssi_second.i.i, align 4
  %230 = ptrtoint ptr %rssi_third.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %rssi_third.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %231)
  %cmp.i262.i = icmp sgt i32 %229, %231
  br i1 %cmp.i262.i, label %if.then2.i.i, label %if.else16.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  %first_quick_scan_conf.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 20
  %232 = ptrtoint ptr %first_quick_scan_conf.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %first_quick_scan_conf.i.i, align 4
  %.off.i.i = add i32 %233, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %if.then6.i.i, label %if.else11.i.i

if.then6.i.i:                                     ; preds = %if.then2.i.i
  br i1 %cmp58.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %234 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 2, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %235 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 1, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else11.i.i:                                    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv13.i.i = trunc i32 %233 to i8
  %236 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv13.i.i, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else16.i.i:                                    ; preds = %if.then.i.i
  %237 = ptrtoint ptr %second_quick_scan_conf39.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %second_quick_scan_conf39.i, align 4
  %.off159.i.i = add i32 %238, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off159.i.i)
  %switch160.i.i = icmp ult i32 %.off159.i.i, 2
  br i1 %switch160.i.i, label %if.then23.i.i, label %if.else33.i.i

if.then23.i.i:                                    ; preds = %if.else16.i.i
  br i1 %cmp58.i, label %if.then28.i.i, label %if.else30.i.i

if.then28.i.i:                                    ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %239 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 2, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else30.i.i:                                    ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %240 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 1, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else33.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv35.i.i = trunc i32 %238 to i8
  %241 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv35.i.i, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.then42.i.i:                                    ; preds = %land.lhs.true.i261.i
  %first_quick_scan_conf43.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 20
  %242 = ptrtoint ptr %first_quick_scan_conf43.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %first_quick_scan_conf43.i.i, align 4
  %.off161.i.i = add i32 %243, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off161.i.i)
  %switch162.i.i = icmp ult i32 %.off161.i.i, 2
  br i1 %switch162.i.i, label %if.then50.i.i, label %if.else60.i.i

if.then50.i.i:                                    ; preds = %if.then42.i.i
  br i1 %cmp58.i, label %if.then55.i.i, label %if.else57.i.i

if.then55.i.i:                                    ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %244 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 2, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else57.i.i:                                    ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %245 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else60.i.i:                                    ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv62.i.i = trunc i32 %243 to i8
  %246 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %conv62.i.i, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else65.i.i:                                    ; preds = %if.end99.i
  br i1 %tobool67.not.i.i, label %if.else91.i.i, label %if.then68.i.i

if.then68.i.i:                                    ; preds = %if.else65.i.i
  %247 = ptrtoint ptr %second_quick_scan_conf39.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %second_quick_scan_conf39.i, align 4
  %.off163.i.i = add i32 %248, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off163.i.i)
  %switch164.i.i = icmp ult i32 %.off163.i.i, 2
  br i1 %switch164.i.i, label %if.then76.i.i, label %if.else86.i.i

if.then76.i.i:                                    ; preds = %if.then68.i.i
  br i1 %cmp58.i, label %if.then81.i.i, label %if.else83.i.i

if.then81.i.i:                                    ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %249 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 2, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else83.i.i:                                    ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %250 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 1, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else86.i.i:                                    ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv88.i.i = trunc i32 %248 to i8
  %251 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %conv88.i.i, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else91.i.i:                                    ; preds = %if.else65.i.i
  %.off165.i.i = add i32 %205, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off165.i.i)
  %switch166.i.i = icmp ult i32 %.off165.i.i, 2
  br i1 %switch166.i.i, label %if.then98.i.i, label %if.else108.i.i

if.then98.i.i:                                    ; preds = %if.else91.i.i
  br i1 %cmp58.i, label %if.then103.i.i, label %if.else105.i.i

if.then103.i.i:                                   ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %252 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 2, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else105.i.i:                                   ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %253 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 1, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

if.else108.i.i:                                   ; preds = %if.else91.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv110.i.i = trunc i32 %205 to i8
  %254 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %conv110.i.i, ptr %alt_lna_conf, align 1
  br label %ath_select_ant_div_from_quick_scan.exit

ath_select_ant_div_from_quick_scan.exit:          ; preds = %if.else108.i.i, %if.else105.i.i, %if.then103.i.i, %if.else86.i.i, %if.else83.i.i, %if.then81.i.i, %if.else60.i.i, %if.else57.i.i, %if.then55.i.i, %if.else33.i.i, %if.else30.i.i, %if.then28.i.i, %if.else11.i.i, %if.else.i.i, %if.then9.i.i, %if.else32.i, %if.then30.i, %if.else23.i, %if.then21.i, %if.else.i257, %if.then11.i, %sw.bb.i251, %if.end143.ath_select_ant_div_from_quick_scan.exit_crit_edge
  %255 = ptrtoint ptr %quick_scan_cnt.i249 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %quick_scan_cnt.i249, align 4
  %inc144 = add i32 %256, 1
  store i32 %inc144, ptr %quick_scan_cnt.i249, align 4
  br label %div_comb_done

div_comb_done:                                    ; preds = %ath_select_ant_div_from_quick_scan.exit, %if.then138, %if.then132, %if.then128.div_comb_done_crit_edge, %if.else51.i, %if.then48.i, %if.then41.i, %if.else29.i, %if.then26.i, %if.then20.i, %sw.bb7.i, %sw.bb1.i, %sw.bb.i, %if.then124.div_comb_done_crit_edge, %land.lhs.true116.div_comb_done_crit_edge, %if.end21.sink.split.i, %if.then10.i.div_comb_done_crit_edge, %if.then.i241.div_comb_done_crit_edge
  %main_gaintb.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 3
  %257 = ptrtoint ptr %main_gaintb.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %main_gaintb.i, align 1
  %alt_gaintb.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 4
  %258 = ptrtoint ptr %alt_gaintb.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %alt_gaintb.i, align 4
  %div_group.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 7
  %259 = ptrtoint ptr %div_group.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %div_group.i, align 4
  %261 = zext i8 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %260, label %div_comb_done.ath_ant_div_conf_fast_divbias.exit_crit_edge [
    i8 0, label %if.then.i269
    i8 1, label %if.then30.i272
    i8 2, label %if.then100.i
    i8 3, label %if.then184.i
  ]

div_comb_done.ath_ant_div_conf_fast_divbias.exit_crit_edge: ; preds = %div_comb_done
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_ant_div_conf_fast_divbias.exit

if.then.i269:                                     ; preds = %div_comb_done
  %262 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %div_ant_conf, align 4
  %conv2.i = zext i8 %263 to i32
  %shl.i266 = shl nuw nsw i32 %conv2.i, 4
  %264 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %alt_lna_conf, align 1
  %conv3.i = zext i8 %265 to i32
  %or.i268 = or i32 %shl.i266, %conv3.i
  %266 = zext i32 %or.i268 to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %or.i268, label %if.then.i269.ath_ant_div_conf_fast_divbias.exit_crit_edge [
    i32 1, label %sw.bb.i270
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb6.i
    i32 16, label %sw.bb8.i
    i32 18, label %sw.bb10.i271
    i32 19, label %sw.bb12.i
    i32 32, label %sw.bb14.i
    i32 33, label %sw.bb16.i
    i32 35, label %sw.bb18.i
    i32 48, label %sw.bb20.i
    i32 49, label %sw.bb22.i
    i32 50, label %sw.bb24.i
  ]

if.then.i269.ath_ant_div_conf_fast_divbias.exit_crit_edge: ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb.i270:                                       ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %267 = ptrtoint ptr %fast_div_bias.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 59, ptr %fast_div_bias.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb4.i:                                         ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias5.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %268 = ptrtoint ptr %fast_div_bias5.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 61, ptr %fast_div_bias5.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb6.i:                                         ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias7.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %269 = ptrtoint ptr %fast_div_bias7.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 1, ptr %fast_div_bias7.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb8.i:                                         ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias9.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %270 = ptrtoint ptr %fast_div_bias9.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 7, ptr %fast_div_bias9.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb10.i271:                                     ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias11.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %271 = ptrtoint ptr %fast_div_bias11.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 2, ptr %fast_div_bias11.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb12.i:                                        ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias13.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %272 = ptrtoint ptr %fast_div_bias13.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 7, ptr %fast_div_bias13.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb14.i:                                        ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias15.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %273 = ptrtoint ptr %fast_div_bias15.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 6, ptr %fast_div_bias15.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb16.i:                                        ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias17.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %274 = ptrtoint ptr %fast_div_bias17.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 0, ptr %fast_div_bias17.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb18.i:                                        ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias19.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %275 = ptrtoint ptr %fast_div_bias19.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 6, ptr %fast_div_bias19.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb20.i:                                        ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias21.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %276 = ptrtoint ptr %fast_div_bias21.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 1, ptr %fast_div_bias21.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb22.i:                                        ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias23.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %277 = ptrtoint ptr %fast_div_bias23.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 59, ptr %fast_div_bias23.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb24.i:                                        ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias25.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %278 = ptrtoint ptr %fast_div_bias25.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 61, ptr %fast_div_bias25.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

if.then30.i272:                                   ; preds = %div_comb_done
  %279 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %div_ant_conf, align 4
  %conv32.i = zext i8 %280 to i32
  %shl33.i = shl nuw nsw i32 %conv32.i, 4
  %281 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %alt_lna_conf, align 1
  %conv35.i = zext i8 %282 to i32
  %or36.i = or i32 %shl33.i, %conv35.i
  %283 = zext i32 %or36.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %283, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %or36.i, label %if.then30.i272.ath_ant_div_conf_fast_divbias.exit_crit_edge [
    i32 1, label %sw.bb37.i273
    i32 2, label %sw.bb39.i
    i32 3, label %sw.bb41.i274
    i32 16, label %sw.bb43.i
    i32 18, label %sw.bb50.i
    i32 19, label %sw.bb52.i
    i32 32, label %sw.bb63.i
    i32 33, label %sw.bb74.i
    i32 35, label %sw.bb76.i
    i32 48, label %sw.bb87.i
    i32 49, label %sw.bb89.i
    i32 50, label %sw.bb91.i
  ]

if.then30.i272.ath_ant_div_conf_fast_divbias.exit_crit_edge: ; preds = %if.then30.i272
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb37.i273:                                     ; preds = %if.then30.i272
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias38.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %284 = ptrtoint ptr %fast_div_bias38.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 1, ptr %fast_div_bias38.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb39.i:                                        ; preds = %if.then30.i272
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias40.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %285 = ptrtoint ptr %fast_div_bias40.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 1, ptr %fast_div_bias40.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb41.i274:                                     ; preds = %if.then30.i272
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias42.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %286 = ptrtoint ptr %fast_div_bias42.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 1, ptr %fast_div_bias42.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb43.i:                                        ; preds = %if.then30.i272
  %287 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %scan.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool.not.i276 = icmp eq i8 %288, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %alt_ratio.0)
  %cmp44.i = icmp sgt i32 %alt_ratio.0, 30
  %or.cond.i277 = and i1 %cmp44.i, %tobool.not.i276
  %fast_div_bias47.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  br i1 %or.cond.i277, label %if.then46.i278, label %if.else48.i

if.then46.i278:                                   ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #5
  %289 = ptrtoint ptr %fast_div_bias47.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 63, ptr %fast_div_bias47.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

if.else48.i:                                      ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #5
  %290 = ptrtoint ptr %fast_div_bias47.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 1, ptr %fast_div_bias47.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb50.i:                                        ; preds = %if.then30.i272
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias51.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %291 = ptrtoint ptr %fast_div_bias51.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 1, ptr %fast_div_bias51.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb52.i:                                        ; preds = %if.then30.i272
  %292 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %scan.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool54.not.i = icmp eq i8 %293, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %alt_ratio.0)
  %cmp56.i = icmp sgt i32 %alt_ratio.0, 30
  %or.cond311.i = and i1 %cmp56.i, %tobool54.not.i
  %fast_div_bias59.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  br i1 %or.cond311.i, label %if.then58.i, label %if.else60.i

if.then58.i:                                      ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #5
  %294 = ptrtoint ptr %fast_div_bias59.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 63, ptr %fast_div_bias59.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

if.else60.i:                                      ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #5
  %295 = ptrtoint ptr %fast_div_bias59.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 1, ptr %fast_div_bias59.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb63.i:                                        ; preds = %if.then30.i272
  %296 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %scan.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool65.not.i = icmp eq i8 %297, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %alt_ratio.0)
  %cmp67.i = icmp sgt i32 %alt_ratio.0, 30
  %or.cond312.i = and i1 %cmp67.i, %tobool65.not.i
  %fast_div_bias70.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  br i1 %or.cond312.i, label %if.then69.i, label %if.else71.i

if.then69.i:                                      ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #5
  %298 = ptrtoint ptr %fast_div_bias70.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 63, ptr %fast_div_bias70.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

if.else71.i:                                      ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #5
  %299 = ptrtoint ptr %fast_div_bias70.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 1, ptr %fast_div_bias70.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb74.i:                                        ; preds = %if.then30.i272
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias75.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %300 = ptrtoint ptr %fast_div_bias75.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 1, ptr %fast_div_bias75.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb76.i:                                        ; preds = %if.then30.i272
  %301 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %scan.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool78.not.i = icmp eq i8 %302, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %alt_ratio.0)
  %cmp80.i = icmp sgt i32 %alt_ratio.0, 30
  %or.cond313.i = and i1 %cmp80.i, %tobool78.not.i
  %fast_div_bias83.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  br i1 %or.cond313.i, label %if.then82.i, label %if.else84.i

if.then82.i:                                      ; preds = %sw.bb76.i
  call void @__sanitizer_cov_trace_pc() #5
  %303 = ptrtoint ptr %fast_div_bias83.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 63, ptr %fast_div_bias83.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

if.else84.i:                                      ; preds = %sw.bb76.i
  call void @__sanitizer_cov_trace_pc() #5
  %304 = ptrtoint ptr %fast_div_bias83.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 1, ptr %fast_div_bias83.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb87.i:                                        ; preds = %if.then30.i272
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias88.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %305 = ptrtoint ptr %fast_div_bias88.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 1, ptr %fast_div_bias88.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb89.i:                                        ; preds = %if.then30.i272
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias90.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %306 = ptrtoint ptr %fast_div_bias90.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 1, ptr %fast_div_bias90.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb91.i:                                        ; preds = %if.then30.i272
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias92.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %307 = ptrtoint ptr %fast_div_bias92.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 1, ptr %fast_div_bias92.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

if.then100.i:                                     ; preds = %div_comb_done
  %308 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %div_ant_conf, align 4
  %conv102.i = zext i8 %309 to i32
  %shl103.i = shl nuw nsw i32 %conv102.i, 4
  %310 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %alt_lna_conf, align 1
  %conv105.i = zext i8 %311 to i32
  %or106.i = or i32 %shl103.i, %conv105.i
  %312 = zext i32 %or106.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %312, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %or106.i, label %if.then100.i.sw.epilog171.i_crit_edge [
    i32 1, label %if.then100.i.sw.epilog171.sink.split.i_crit_edge
    i32 2, label %if.then100.i.sw.epilog171.sink.split.i_crit_edge290
    i32 3, label %if.then100.i.sw.epilog171.sink.split.i_crit_edge291
    i32 16, label %sw.bb113.i
    i32 18, label %if.then100.i.sw.epilog171.sink.split.i_crit_edge292
    i32 19, label %sw.bb126.i
    i32 32, label %sw.bb138.i
    i32 33, label %if.then100.i.sw.epilog171.sink.split.i_crit_edge293
    i32 35, label %sw.bb152.i
    i32 48, label %if.then100.i.sw.epilog171.sink.split.i_crit_edge294
    i32 49, label %if.then100.i.sw.epilog171.sink.split.i_crit_edge295
    i32 50, label %if.then100.i.sw.epilog171.sink.split.i_crit_edge296
  ]

if.then100.i.sw.epilog171.sink.split.i_crit_edge296: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.then100.i.sw.epilog171.sink.split.i_crit_edge295: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.then100.i.sw.epilog171.sink.split.i_crit_edge294: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.then100.i.sw.epilog171.sink.split.i_crit_edge293: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.then100.i.sw.epilog171.sink.split.i_crit_edge292: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.then100.i.sw.epilog171.sink.split.i_crit_edge291: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.then100.i.sw.epilog171.sink.split.i_crit_edge290: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.then100.i.sw.epilog171.sink.split.i_crit_edge: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.then100.i.sw.epilog171.i_crit_edge:            ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.i

sw.bb113.i:                                       ; preds = %if.then100.i
  %313 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %scan.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool115.not.i = icmp eq i8 %314, 0
  br i1 %tobool115.not.i, label %land.lhs.true116.i, label %sw.bb113.i.if.else121.i_crit_edge

sw.bb113.i.if.else121.i_crit_edge:                ; preds = %sw.bb113.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else121.i

land.lhs.true116.i:                               ; preds = %sw.bb113.i
  %315 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %316, i32 %alt_ratio.0)
  %cmp117.i = icmp slt i32 %316, %alt_ratio.0
  br i1 %cmp117.i, label %land.lhs.true116.i.sw.epilog171.sink.split.i_crit_edge, label %land.lhs.true116.i.if.else121.i_crit_edge

land.lhs.true116.i.if.else121.i_crit_edge:        ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else121.i

land.lhs.true116.i.sw.epilog171.sink.split.i_crit_edge: ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.else121.i:                                     ; preds = %land.lhs.true116.i.if.else121.i_crit_edge, %sw.bb113.i.if.else121.i_crit_edge
  br label %sw.epilog171.sink.split.i

sw.bb126.i:                                       ; preds = %if.then100.i
  %317 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %scan.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool128.not.i = icmp eq i8 %318, 0
  br i1 %tobool128.not.i, label %land.lhs.true129.i, label %sw.bb126.i.if.else135.i_crit_edge

sw.bb126.i.if.else135.i_crit_edge:                ; preds = %sw.bb126.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else135.i

land.lhs.true129.i:                               ; preds = %sw.bb126.i
  %319 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %320, i32 %alt_ratio.0)
  %cmp131.i = icmp slt i32 %320, %alt_ratio.0
  br i1 %cmp131.i, label %land.lhs.true129.i.sw.epilog171.sink.split.i_crit_edge, label %land.lhs.true129.i.if.else135.i_crit_edge

land.lhs.true129.i.if.else135.i_crit_edge:        ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else135.i

land.lhs.true129.i.sw.epilog171.sink.split.i_crit_edge: ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.else135.i:                                     ; preds = %land.lhs.true129.i.if.else135.i_crit_edge, %sw.bb126.i.if.else135.i_crit_edge
  br label %sw.epilog171.sink.split.i

sw.bb138.i:                                       ; preds = %if.then100.i
  %321 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %scan.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool140.not.i = icmp eq i8 %322, 0
  br i1 %tobool140.not.i, label %land.lhs.true141.i, label %sw.bb138.i.if.else147.i_crit_edge

sw.bb138.i.if.else147.i_crit_edge:                ; preds = %sw.bb138.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else147.i

land.lhs.true141.i:                               ; preds = %sw.bb138.i
  %323 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %324, i32 %alt_ratio.0)
  %cmp143.i = icmp slt i32 %324, %alt_ratio.0
  br i1 %cmp143.i, label %land.lhs.true141.i.sw.epilog171.sink.split.i_crit_edge, label %land.lhs.true141.i.if.else147.i_crit_edge

land.lhs.true141.i.if.else147.i_crit_edge:        ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else147.i

land.lhs.true141.i.sw.epilog171.sink.split.i_crit_edge: ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.else147.i:                                     ; preds = %land.lhs.true141.i.if.else147.i_crit_edge, %sw.bb138.i.if.else147.i_crit_edge
  br label %sw.epilog171.sink.split.i

sw.bb152.i:                                       ; preds = %if.then100.i
  %325 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %scan.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %326)
  %tobool154.not.i = icmp eq i8 %326, 0
  br i1 %tobool154.not.i, label %land.lhs.true155.i, label %sw.bb152.i.if.else161.i_crit_edge

sw.bb152.i.if.else161.i_crit_edge:                ; preds = %sw.bb152.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else161.i

land.lhs.true155.i:                               ; preds = %sw.bb152.i
  %327 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %328, i32 %alt_ratio.0)
  %cmp157.i = icmp slt i32 %328, %alt_ratio.0
  br i1 %cmp157.i, label %land.lhs.true155.i.sw.epilog171.sink.split.i_crit_edge, label %land.lhs.true155.i.if.else161.i_crit_edge

land.lhs.true155.i.if.else161.i_crit_edge:        ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else161.i

land.lhs.true155.i.sw.epilog171.sink.split.i_crit_edge: ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog171.sink.split.i

if.else161.i:                                     ; preds = %land.lhs.true155.i.if.else161.i_crit_edge, %sw.bb152.i.if.else161.i_crit_edge
  br label %sw.epilog171.sink.split.i

sw.epilog171.sink.split.i:                        ; preds = %if.else161.i, %land.lhs.true155.i.sw.epilog171.sink.split.i_crit_edge, %if.else147.i, %land.lhs.true141.i.sw.epilog171.sink.split.i_crit_edge, %if.else135.i, %land.lhs.true129.i.sw.epilog171.sink.split.i_crit_edge, %if.else121.i, %land.lhs.true116.i.sw.epilog171.sink.split.i_crit_edge, %if.then100.i.sw.epilog171.sink.split.i_crit_edge, %if.then100.i.sw.epilog171.sink.split.i_crit_edge290, %if.then100.i.sw.epilog171.sink.split.i_crit_edge291, %if.then100.i.sw.epilog171.sink.split.i_crit_edge292, %if.then100.i.sw.epilog171.sink.split.i_crit_edge293, %if.then100.i.sw.epilog171.sink.split.i_crit_edge294, %if.then100.i.sw.epilog171.sink.split.i_crit_edge295, %if.then100.i.sw.epilog171.sink.split.i_crit_edge296
  %.sink.i280 = phi i8 [ 2, %if.else161.i ], [ 2, %if.else147.i ], [ 2, %if.else135.i ], [ 2, %if.else121.i ], [ 1, %if.then100.i.sw.epilog171.sink.split.i_crit_edge ], [ 1, %if.then100.i.sw.epilog171.sink.split.i_crit_edge290 ], [ 1, %if.then100.i.sw.epilog171.sink.split.i_crit_edge291 ], [ 1, %land.lhs.true116.i.sw.epilog171.sink.split.i_crit_edge ], [ 1, %if.then100.i.sw.epilog171.sink.split.i_crit_edge292 ], [ 1, %land.lhs.true129.i.sw.epilog171.sink.split.i_crit_edge ], [ 1, %land.lhs.true141.i.sw.epilog171.sink.split.i_crit_edge ], [ 1, %if.then100.i.sw.epilog171.sink.split.i_crit_edge293 ], [ 1, %land.lhs.true155.i.sw.epilog171.sink.split.i_crit_edge ], [ 1, %if.then100.i.sw.epilog171.sink.split.i_crit_edge294 ], [ 1, %if.then100.i.sw.epilog171.sink.split.i_crit_edge295 ], [ 1, %if.then100.i.sw.epilog171.sink.split.i_crit_edge296 ]
  %fast_div_bias160.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %329 = ptrtoint ptr %fast_div_bias160.i to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %.sink.i280, ptr %fast_div_bias160.i, align 2
  br label %sw.epilog171.i

sw.epilog171.i:                                   ; preds = %sw.epilog171.sink.split.i, %if.then100.i.sw.epilog171.i_crit_edge
  %fast_div_bias172.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 26
  %330 = ptrtoint ptr %fast_div_bias172.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %fast_div_bias172.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %tobool173.not.i = icmp eq i32 %331, 0
  br i1 %tobool173.not.i, label %sw.epilog171.i.ath_ant_div_conf_fast_divbias.exit_crit_edge, label %if.then174.i

sw.epilog171.i.ath_ant_div_conf_fast_divbias.exit_crit_edge: ; preds = %sw.epilog171.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_ant_div_conf_fast_divbias.exit

if.then174.i:                                     ; preds = %sw.epilog171.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv176.i = trunc i32 %331 to i8
  %fast_div_bias177.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %332 = ptrtoint ptr %fast_div_bias177.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %conv176.i, ptr %fast_div_bias177.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

if.then184.i:                                     ; preds = %div_comb_done
  %333 = ptrtoint ptr %div_ant_conf to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %div_ant_conf, align 4
  %conv186.i = zext i8 %334 to i32
  %shl187.i = shl nuw nsw i32 %conv186.i, 4
  %335 = ptrtoint ptr %alt_lna_conf to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %alt_lna_conf, align 1
  %conv189.i = zext i8 %336 to i32
  %or190.i = or i32 %shl187.i, %conv189.i
  %337 = zext i32 %or190.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %337, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %or190.i, label %if.then184.i.ath_ant_div_conf_fast_divbias.exit_crit_edge [
    i32 1, label %sw.bb191.i
    i32 2, label %sw.bb193.i
    i32 3, label %sw.bb195.i
    i32 16, label %sw.bb197.i
    i32 18, label %sw.bb199.i
    i32 19, label %sw.bb201.i
    i32 32, label %sw.bb203.i
    i32 33, label %sw.bb205.i
    i32 35, label %sw.bb207.i
    i32 48, label %sw.bb209.i
    i32 49, label %sw.bb211.i
    i32 50, label %sw.bb213.i
  ]

if.then184.i.ath_ant_div_conf_fast_divbias.exit_crit_edge: ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb191.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias192.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %338 = ptrtoint ptr %fast_div_bias192.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 1, ptr %fast_div_bias192.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb193.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias194.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %339 = ptrtoint ptr %fast_div_bias194.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 57, ptr %fast_div_bias194.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb195.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias196.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %340 = ptrtoint ptr %fast_div_bias196.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 1, ptr %fast_div_bias196.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb197.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias198.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %341 = ptrtoint ptr %fast_div_bias198.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 2, ptr %fast_div_bias198.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb199.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias200.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %342 = ptrtoint ptr %fast_div_bias200.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 63, ptr %fast_div_bias200.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb201.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias202.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %343 = ptrtoint ptr %fast_div_bias202.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 2, ptr %fast_div_bias202.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb203.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias204.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %344 = ptrtoint ptr %fast_div_bias204.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 3, ptr %fast_div_bias204.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb205.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias206.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %345 = ptrtoint ptr %fast_div_bias206.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 3, ptr %fast_div_bias206.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb207.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias208.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %346 = ptrtoint ptr %fast_div_bias208.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 3, ptr %fast_div_bias208.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb209.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias210.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %347 = ptrtoint ptr %fast_div_bias210.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 1, ptr %fast_div_bias210.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb211.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias212.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %348 = ptrtoint ptr %fast_div_bias212.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 6, ptr %fast_div_bias212.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

sw.bb213.i:                                       ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #5
  %fast_div_bias214.i = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %div_ant_conf, i32 0, i32 2
  %349 = ptrtoint ptr %fast_div_bias214.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 1, ptr %fast_div_bias214.i, align 2
  br label %ath_ant_div_conf_fast_divbias.exit

ath_ant_div_conf_fast_divbias.exit:               ; preds = %sw.bb213.i, %sw.bb211.i, %sw.bb209.i, %sw.bb207.i, %sw.bb205.i, %sw.bb203.i, %sw.bb201.i, %sw.bb199.i, %sw.bb197.i, %sw.bb195.i, %sw.bb193.i, %sw.bb191.i, %if.then184.i.ath_ant_div_conf_fast_divbias.exit_crit_edge, %if.then174.i, %sw.epilog171.i.ath_ant_div_conf_fast_divbias.exit_crit_edge, %sw.bb91.i, %sw.bb89.i, %sw.bb87.i, %if.else84.i, %if.then82.i, %sw.bb74.i, %if.else71.i, %if.then69.i, %if.else60.i, %if.then58.i, %sw.bb50.i, %if.else48.i, %if.then46.i278, %sw.bb41.i274, %sw.bb39.i, %sw.bb37.i273, %if.then30.i272.ath_ant_div_conf_fast_divbias.exit_crit_edge, %sw.bb24.i, %sw.bb22.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i271, %sw.bb8.i, %sw.bb6.i, %sw.bb4.i, %sw.bb.i270, %if.then.i269.ath_ant_div_conf_fast_divbias.exit_crit_edge, %div_comb_done.ath_ant_div_conf_fast_divbias.exit_crit_edge
  %350 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %sc_ah, align 4
  %antdiv_comb_conf_set.i = getelementptr inbounds %struct.ath_hw, ptr %351, i32 0, i32 63, i32 9
  %352 = ptrtoint ptr %antdiv_comb_conf_set.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %antdiv_comb_conf_set.i, align 4
  call void %353(ptr noundef %351, ptr noundef nonnull %div_ant_conf) #3
  call void @ath9k_debug_stat_ant(ptr noundef %sc, ptr noundef nonnull %div_ant_conf, i32 noundef %main_rssi_avg.0, i32 noundef %alt_rssi_avg.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %354 = load volatile i32, ptr @jiffies, align 128
  %scan_start_time = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 24
  %355 = ptrtoint ptr %scan_start_time to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %scan_start_time, align 4
  %356 = ptrtoint ptr %total_pkt_count64 to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 0, ptr %total_pkt_count64, align 2
  %main_total_rssi148 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 52, i32 4
  %357 = call ptr @memset(ptr %main_total_rssi148, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %ath_ant_div_conf_fast_divbias.exit, %land.lhs.true69.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %div_ant_conf) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_debug_stat_ant(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
