; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9003_phy.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9003_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ar9003_hw_bb_watchdog_check\22, \22a\22\09"
module asm "\09.weak\09__crc_ar9003_hw_bb_watchdog_check\09\09\09\09"
module asm "\09.long\09__crc_ar9003_hw_bb_watchdog_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ar9003_hw_bb_watchdog_check:\09\09\09\09\09"
module asm "\09.asciz \09\22ar9003_hw_bb_watchdog_check\22\09\09\09\09\09"
module asm "__kstrtabns_ar9003_hw_bb_watchdog_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ar9003_hw_bb_watchdog_dbg_info\22, \22a\22\09"
module asm "\09.weak\09__crc_ar9003_hw_bb_watchdog_dbg_info\09\09\09\09"
module asm "\09.long\09__crc_ar9003_hw_bb_watchdog_dbg_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ar9003_hw_bb_watchdog_dbg_info:\09\09\09\09\09"
module asm "\09.asciz \09\22ar9003_hw_bb_watchdog_dbg_info\22\09\09\09\09\09"
module asm "__kstrtabns_ar9003_hw_bb_watchdog_dbg_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ar9003_hw_disable_phy_restart\22, \22a\22\09"
module asm "\09.weak\09__crc_ar9003_hw_disable_phy_restart\09\09\09\09"
module asm "\09.long\09__crc_ar9003_hw_disable_phy_restart\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ar9003_hw_disable_phy_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22ar9003_hw_disable_phy_restart\22\09\09\09\09\09"
module asm "__kstrtabns_ar9003_hw_disable_phy_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ath_hw_antcomb_conf = type { i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ar9003_hw_attach_phy_ops.ar9300_cca_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 40476, i32 44572, i32 48668, i32 38960, i32 43056, i32 47152], [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_ar9003_hw_bb_watchdog_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_ar9003_hw_bb_watchdog_check = external dso_local constant [0 x i8], align 1
@__ksymtab_ar9003_hw_bb_watchdog_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ar9003_hw_bb_watchdog_check to i32), ptr @__kstrtab_ar9003_hw_bb_watchdog_check, ptr @__kstrtabns_ar9003_hw_bb_watchdog_check }, section "___ksymtab+ar9003_hw_bb_watchdog_check", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disabled BB Watchdog\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Enabled BB Watchdog timeout (%u ms)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0A==== BB update: BB status=0x%08x ====\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"** BB state: wd=%u det=%u rdar=%u rOFDM=%d rCCK=%u tOFDM=%u tCCK=%u agc=%u src=%u **\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"** BB WD cntl: cntl1=0x%08x cntl2=0x%08x **\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"** BB mode: BB_gen_controls=0x%08x **\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"** BB busy times: rx_clear=%d%%, rx_frame=%d%%, tx_frame=%d%% **\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"==== BB update: done ====\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_ar9003_hw_bb_watchdog_dbg_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_ar9003_hw_bb_watchdog_dbg_info = external dso_local constant [0 x i8], align 1
@__ksymtab_ar9003_hw_bb_watchdog_dbg_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ar9003_hw_bb_watchdog_dbg_info to i32), ptr @__kstrtab_ar9003_hw_bb_watchdog_dbg_info, ptr @__kstrtabns_ar9003_hw_bb_watchdog_dbg_info }, section "___ksymtab+ar9003_hw_bb_watchdog_dbg_info", align 4
@__kstrtab_ar9003_hw_disable_phy_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_ar9003_hw_disable_phy_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_ar9003_hw_disable_phy_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ar9003_hw_disable_phy_restart to i32), ptr @__kstrtab_ar9003_hw_disable_phy_restart, ptr @__kstrtabns_ar9003_hw_disable_phy_restart }, section "___ksymtab+ar9003_hw_disable_phy_restart", align 4
@mcs2pwr_ht40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\16\17\17\17\18\19\1A\1B\16\17\17\17\1C\1D\1E\1F\16\17\17\17 !\22#", [40 x i8] zeroinitializer }, align 32
@mcs2pwr_ht20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\08\09\09\09\0A\0B\0C\0D\08\09\09\09\0E\0F\10\11\08\09\09\09\12\13\14\15", [40 x i8] zeroinitializer }, align 32
@ar9003_hw_spur_mitigate_mrc_cck.spur_freq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2420, i32 2440, i32 2464, i32 2480], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"** ch %d: ofdm weak signal: %s=>%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ATH9K_ANI_FIRSTEP_LEVEL: level out of range (%u > %zu)\0A\00", [40 x i8] zeroinitializer }, align 32
@firstep_table = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -4, i32 -2, i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12], [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"** ch %d: level %d=>%d[def:%d] firstep[level]=%d ini=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"** ch %d: level %d=>%d[def:%d] firstep_low[level]=%d ini=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ATH9K_ANI_SPUR_IMMUNITY_LEVEL: level out of range (%u > %zu)\0A\00", [34 x i8] zeroinitializer }, align 32
@cycpwrThr1_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -6, i32 -4, i32 -2, i32 0, i32 2, i32 4, i32 6, i32 8], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1[level]=%d ini=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1Ext[level]=%d ini=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"** ch %d: MRC CCK: %s=>%s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid cmd %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"ANI parameters: SI=%d, ofdmWS=%s FS=%d MRCcck=%s listenTime=%d ofdmErrs=%d cckErrs=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ver %d.%d opmode %u chan %d Mhz\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spectral scan wait failed\0A\00", [37 x i8] zeroinitializer }, align 32
@ar9003_hw_tx99_set_txpower.p_pwr_array = internal global { [36 x i8], [60 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 640, i64 704]
@__sancov_gen_cov_switch_values.24 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 4, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 512, i64 576, i64 768, i64 1024, i64 1536]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 512, i64 576, i64 640, i64 768, i64 1024, i64 1536]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 512, i64 576, i64 768, i64 1024, i64 1536]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 512, i64 576, i64 768, i64 1024, i64 1536]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 512, i64 576, i64 640, i64 768, i64 1024, i64 1536]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 512, i64 576, i64 768, i64 1024, i64 1536]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 448, i64 1024]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 1536]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 1280, i64 1536]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 704]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 448, i64 768]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 576, i64 704]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 576, i64 704]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 576, i64 704]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 67108874, i64 67109897, i64 67110201, i64 67111689, i64 318767114]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 768, i64 1280, i64 1536]
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"ar9300_cca_regs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1934, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 2066, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 2102, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 2131, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 2133, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 2145, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 2148, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 2153, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 2157, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"mcs2pwr_ht40\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 97, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"mcs2pwr_ht20\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 70, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"spur_freq\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 241, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1161, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1179, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"firstep_table\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 37, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1216, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1224, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1244, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"cycpwrThr1_table\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 41, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1280, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1288, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1319, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1332, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1336, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1412, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1800, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"p_pwr_array\00", align 1
@___asan_gen_.139 = private constant [47 x i8] c"../drivers/net/wireless/ath/ath9k/ar9003_phy.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1826, i32 12 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_ar9003_hw_bb_watchdog_check, ptr @__ksymtab_ar9003_hw_bb_watchdog_dbg_info, ptr @__ksymtab_ar9003_hw_disable_phy_restart, ptr @ar9003_hw_attach_phy_ops.ar9300_cca_regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mcs2pwr_ht40, ptr @mcs2pwr_ht20, ptr @ar9003_hw_spur_mitigate_mrc_cck.spur_freq, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @firstep_table, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @cycpwrThr1_table, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @ar9003_hw_tx99_set_txpower.p_pwr_array], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9003_hw_attach_phy_ops.ar9300_cca_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs2pwr_ht40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs2pwr_ht20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9003_hw_spur_mitigate_mrc_cck.spur_freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firstep_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cycpwrThr1_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9003_hw_tx99_set_txpower.p_pwr_array to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_set_chain_masks(ptr noundef %ah, i8 noundef zeroext %rx, i8 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %tx_chainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_chainmask, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp eq i8 %1, 5
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_chainmask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp4 = icmp eq i8 %3, 5
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %5(ptr noundef %ah, i32 noundef 41804, i32 noundef 64, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %conv7 = zext i8 %rx to i32
  tail call void %7(ptr noundef %ah, i32 noundef %conv7, i32 noundef 41632) #8
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  tail call void %9(ptr noundef %ah, i32 noundef %conv7, i32 noundef 41664) #8
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps, align 4
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %tx)
  %cmp13 = icmp eq i8 %tx, 7
  %spec.store.select = select i1 %cmp13, i8 3, i8 %tx
  %tx.addr.0 = select i1 %tobool.not, i8 %tx, i8 %spec.store.select
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %conv19 = zext i8 %tx.addr.0 to i32
  tail call void %13(ptr noundef %ah, i32 noundef %conv19, i32 noundef 33580) #8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_init_rate_txpower(ptr noundef %ah, ptr noundef readonly %rate_array, ptr nocapture noundef readonly %chan) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %rate_array to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rate_array, align 1
  %arrayidx2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 0
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx2.i, align 1
  %6 = load i8, ptr %rate_array, align 1
  %arrayidx2.1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 1
  %7 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx2.1.i, align 1
  %8 = load i8, ptr %rate_array, align 1
  %arrayidx2.2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 2
  %9 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx2.2.i, align 1
  %10 = load i8, ptr %rate_array, align 1
  %arrayidx2.3.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 3
  %11 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx2.3.i, align 1
  %12 = load i8, ptr %rate_array, align 1
  %arrayidx2.4.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 4
  %13 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx2.4.i, align 1
  %arrayidx1.5.i = getelementptr i8, ptr %rate_array, i32 1
  %14 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.5.i, align 1
  %arrayidx2.5.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 5
  %16 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx2.5.i, align 1
  %arrayidx1.6.i = getelementptr i8, ptr %rate_array, i32 2
  %17 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.6.i, align 1
  %arrayidx2.6.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 6
  %19 = ptrtoint ptr %arrayidx2.6.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx2.6.i, align 1
  %arrayidx1.7.i = getelementptr i8, ptr %rate_array, i32 3
  %20 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.7.i, align 1
  %arrayidx2.7.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 7
  %22 = ptrtoint ptr %arrayidx2.7.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx2.7.i, align 1
  %23 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %channelFlags, align 2
  %25 = and i16 %24, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %25)
  %26 = icmp ne i16 %25, 8
  %27 = and i16 %24, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool12.not = icmp eq i16 %27, 0
  %or.cond79 = and i1 %26, %tobool12.not
  br i1 %or.cond79, label %if.then.if.end41_crit_edge, label %if.then13

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool17 = icmp ne i16 %27, 0
  tail call fastcc void @ar9003_hw_init_txpower_ht(ptr noundef %ah, ptr noundef %rate_array, i32 noundef 8, i32 noundef 16, i32 noundef 24, i1 noundef zeroext %tobool17)
  %arrayidx.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 139, i32 8
  %arrayidx1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 8
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %arrayidx1.i, align 1
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 139, i32 16
  %arrayidx5.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 16
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %arrayidx5.i, align 1
  %33 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %arrayidx3.i, align 1
  %arrayidx7.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 139, i32 24
  %arrayidx9.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 24
  br label %if.end41.sink.split

if.else:                                          ; preds = %entry
  %arrayidx.i61 = getelementptr i8, ptr %rate_array, i32 4
  %34 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i61, align 1
  %tx_power.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 138
  %36 = ptrtoint ptr %tx_power.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tx_power.i, align 1
  %37 = load i8, ptr %arrayidx.i61, align 1
  %arrayidx4.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 1
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx4.i, align 1
  %39 = load i8, ptr %arrayidx.i61, align 1
  %arrayidx6.i = getelementptr i8, ptr %rate_array, i32 5
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx6.i, align 1
  %42 = tail call i8 @llvm.umin.i8(i8 %39, i8 %41) #8
  %arrayidx13.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 2
  %43 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx13.i, align 1
  %arrayidx14.i = getelementptr i8, ptr %rate_array, i32 6
  %44 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx14.i, align 1
  %arrayidx15.i = getelementptr i8, ptr %rate_array, i32 7
  %46 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx15.i, align 1
  %48 = tail call i8 @llvm.umin.i8(i8 %45, i8 %47) #8
  %arrayidx29.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 3
  %49 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx29.i, align 1
  %50 = ptrtoint ptr %rate_array to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rate_array, align 1
  %arrayidx2.i62 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 4
  %52 = ptrtoint ptr %arrayidx2.i62 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx2.i62, align 1
  %53 = load i8, ptr %rate_array, align 1
  %arrayidx2.1.i63 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 5
  %54 = ptrtoint ptr %arrayidx2.1.i63 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx2.1.i63, align 1
  %55 = load i8, ptr %rate_array, align 1
  %arrayidx2.2.i64 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 6
  %56 = ptrtoint ptr %arrayidx2.2.i64 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx2.2.i64, align 1
  %57 = load i8, ptr %rate_array, align 1
  %arrayidx2.3.i65 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 7
  %58 = ptrtoint ptr %arrayidx2.3.i65 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx2.3.i65, align 1
  %59 = load i8, ptr %rate_array, align 1
  %arrayidx2.4.i66 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 8
  %60 = ptrtoint ptr %arrayidx2.4.i66 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx2.4.i66, align 1
  %arrayidx1.5.i67 = getelementptr i8, ptr %rate_array, i32 1
  %61 = ptrtoint ptr %arrayidx1.5.i67 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx1.5.i67, align 1
  %arrayidx2.5.i68 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 9
  %63 = ptrtoint ptr %arrayidx2.5.i68 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx2.5.i68, align 1
  %arrayidx1.6.i69 = getelementptr i8, ptr %rate_array, i32 2
  %64 = ptrtoint ptr %arrayidx1.6.i69 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx1.6.i69, align 1
  %arrayidx2.6.i70 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 10
  %66 = ptrtoint ptr %arrayidx2.6.i70 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx2.6.i70, align 1
  %arrayidx1.7.i71 = getelementptr i8, ptr %rate_array, i32 3
  %67 = ptrtoint ptr %arrayidx1.7.i71 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx1.7.i71, align 1
  %arrayidx2.7.i72 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 11
  %69 = ptrtoint ptr %arrayidx2.7.i72 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx2.7.i72, align 1
  %70 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %channelFlags, align 2
  %72 = and i16 %71, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %72)
  %73 = icmp ne i16 %72, 8
  %74 = and i16 %71, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool32.not = icmp eq i16 %74, 0
  %or.cond80 = and i1 %73, %tobool32.not
  br i1 %or.cond80, label %if.else.if.end41_crit_edge, label %if.then33

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool37 = icmp ne i16 %74, 0
  tail call fastcc void @ar9003_hw_init_txpower_ht(ptr noundef %ah, ptr noundef %rate_array, i32 noundef 12, i32 noundef 20, i32 noundef 28, i1 noundef zeroext %tobool37)
  %arrayidx.i73 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 139, i32 12
  %arrayidx1.i74 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 12
  %75 = ptrtoint ptr %arrayidx1.i74 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %arrayidx1.i74, align 1
  %77 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %76, ptr %arrayidx.i73, align 1
  %arrayidx3.i75 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 139, i32 20
  %arrayidx5.i76 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 20
  %78 = ptrtoint ptr %arrayidx5.i76 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %arrayidx5.i76, align 1
  %80 = ptrtoint ptr %arrayidx3.i75 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %79, ptr %arrayidx3.i75, align 1
  %arrayidx7.i77 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 139, i32 28
  %arrayidx9.i78 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 28
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.then33, %if.then13
  %arrayidx9.i78.sink = phi ptr [ %arrayidx9.i78, %if.then33 ], [ %arrayidx9.i, %if.then13 ]
  %arrayidx7.i77.sink = phi ptr [ %arrayidx7.i77, %if.then33 ], [ %arrayidx7.i, %if.then13 ]
  %81 = ptrtoint ptr %arrayidx9.i78.sink to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %arrayidx9.i78.sink, align 1
  %83 = ptrtoint ptr %arrayidx7.i77.sink to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %82, ptr %arrayidx7.i77.sink, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else.if.end41_crit_edge, %if.then.if.end41_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar9003_hw_init_txpower_ht(ptr nocapture noundef writeonly %ah, ptr nocapture noundef readonly %rate_array, i32 noundef %ss_offset, i32 noundef %ds_offset, i32 noundef %ts_offset, i1 noundef zeroext %is_40) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %is_40, ptr @mcs2pwr_ht40, ptr @mcs2pwr_ht20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483640, i32 %ss_offset)
  %cmp56 = icmp slt i32 %ss_offset, 2147483640
  br i1 %cmp56, label %for.body.preheader, label %entry.for.cond4.preheader_crit_edge

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cond, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %rate_array, i32 %conv
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %ss_offset
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %arrayidx2, align 1
  %inc3 = add nsw i32 %ss_offset, 1
  %conv.1 = select i1 %is_40, i32 23, i32 9
  %arrayidx1.1 = getelementptr i8, ptr %rate_array, i32 %conv.1
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1.1, align 1
  %arrayidx2.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc3
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx2.1, align 1
  %inc3.1 = add nsw i32 %ss_offset, 2
  %conv.2 = select i1 %is_40, i32 23, i32 9
  %arrayidx1.2 = getelementptr i8, ptr %rate_array, i32 %conv.2
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.2, align 1
  %arrayidx2.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc3.1
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx2.2, align 1
  %inc3.2 = add nsw i32 %ss_offset, 3
  %conv.3 = select i1 %is_40, i32 23, i32 9
  %arrayidx1.3 = getelementptr i8, ptr %rate_array, i32 %conv.3
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.3, align 1
  %arrayidx2.3 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc3.2
  %13 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx2.3, align 1
  %inc3.3 = add nsw i32 %ss_offset, 4
  %conv.4 = select i1 %is_40, i32 24, i32 10
  %arrayidx1.4 = getelementptr i8, ptr %rate_array, i32 %conv.4
  %14 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.4, align 1
  %arrayidx2.4 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc3.3
  %16 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx2.4, align 1
  %inc3.4 = add nsw i32 %ss_offset, 5
  %conv.5 = select i1 %is_40, i32 25, i32 11
  %arrayidx1.5 = getelementptr i8, ptr %rate_array, i32 %conv.5
  %17 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.5, align 1
  %arrayidx2.5 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc3.4
  %19 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx2.5, align 1
  %inc3.5 = add nsw i32 %ss_offset, 6
  %conv.6 = select i1 %is_40, i32 26, i32 12
  %arrayidx1.6 = getelementptr i8, ptr %rate_array, i32 %conv.6
  %20 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.6, align 1
  %arrayidx2.6 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc3.5
  %22 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx2.6, align 1
  %inc3.6 = add nsw i32 %ss_offset, 7
  %conv.7 = select i1 %is_40, i32 27, i32 13
  %arrayidx1.7 = getelementptr i8, ptr %rate_array, i32 %conv.7
  %23 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx1.7, align 1
  %arrayidx2.7 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc3.6
  %25 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx2.7, align 1
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body.preheader, %entry.for.cond4.preheader_crit_edge
  %mcs_idx.0.lcssa = phi i32 [ 0, %entry.for.cond4.preheader_crit_edge ], [ 8, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483640, i32 %ds_offset)
  %cmp659 = icmp slt i32 %ds_offset, 2147483640
  br i1 %cmp659, label %for.body8.preheader, label %for.cond4.preheader.for.cond18.preheader_crit_edge

for.cond4.preheader.for.cond18.preheader_crit_edge: ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond18.preheader

for.body8.preheader:                              ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9 = getelementptr i8, ptr %cond, i32 %mcs_idx.0.lcssa
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %27 to i32
  %arrayidx11 = getelementptr i8, ptr %rate_array, i32 %conv10
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx11, align 1
  %arrayidx13 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %ds_offset
  %30 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx13, align 1
  %inc14 = or i32 %mcs_idx.0.lcssa, 1
  %inc16 = add nsw i32 %ds_offset, 1
  %arrayidx9.1 = getelementptr i8, ptr %cond, i32 %inc14
  %31 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx9.1, align 1
  %conv10.1 = zext i8 %32 to i32
  %arrayidx11.1 = getelementptr i8, ptr %rate_array, i32 %conv10.1
  %33 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx11.1, align 1
  %arrayidx13.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc16
  %35 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx13.1, align 1
  %inc14.1 = or i32 %mcs_idx.0.lcssa, 2
  %inc16.1 = add nsw i32 %ds_offset, 2
  %arrayidx9.2 = getelementptr i8, ptr %cond, i32 %inc14.1
  %36 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx9.2, align 1
  %conv10.2 = zext i8 %37 to i32
  %arrayidx11.2 = getelementptr i8, ptr %rate_array, i32 %conv10.2
  %38 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx11.2, align 1
  %arrayidx13.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc16.1
  %40 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx13.2, align 1
  %inc14.2 = or i32 %mcs_idx.0.lcssa, 3
  %inc16.2 = add nsw i32 %ds_offset, 3
  %arrayidx9.3 = getelementptr i8, ptr %cond, i32 %inc14.2
  %41 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx9.3, align 1
  %conv10.3 = zext i8 %42 to i32
  %arrayidx11.3 = getelementptr i8, ptr %rate_array, i32 %conv10.3
  %43 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx11.3, align 1
  %arrayidx13.3 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc16.2
  %45 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx13.3, align 1
  %inc14.3 = or i32 %mcs_idx.0.lcssa, 4
  %inc16.3 = add nsw i32 %ds_offset, 4
  %arrayidx9.4 = getelementptr i8, ptr %cond, i32 %inc14.3
  %46 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx9.4, align 1
  %conv10.4 = zext i8 %47 to i32
  %arrayidx11.4 = getelementptr i8, ptr %rate_array, i32 %conv10.4
  %48 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx11.4, align 1
  %arrayidx13.4 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc16.3
  %50 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx13.4, align 1
  %inc14.4 = or i32 %mcs_idx.0.lcssa, 5
  %inc16.4 = add nsw i32 %ds_offset, 5
  %arrayidx9.5 = getelementptr i8, ptr %cond, i32 %inc14.4
  %51 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx9.5, align 1
  %conv10.5 = zext i8 %52 to i32
  %arrayidx11.5 = getelementptr i8, ptr %rate_array, i32 %conv10.5
  %53 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx11.5, align 1
  %arrayidx13.5 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc16.4
  %55 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx13.5, align 1
  %inc14.5 = or i32 %mcs_idx.0.lcssa, 6
  %inc16.5 = add nsw i32 %ds_offset, 6
  %arrayidx9.6 = getelementptr i8, ptr %cond, i32 %inc14.5
  %56 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx9.6, align 1
  %conv10.6 = zext i8 %57 to i32
  %arrayidx11.6 = getelementptr i8, ptr %rate_array, i32 %conv10.6
  %58 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx11.6, align 1
  %arrayidx13.6 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc16.5
  %60 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx13.6, align 1
  %inc14.6 = or i32 %mcs_idx.0.lcssa, 7
  %inc16.6 = add nsw i32 %ds_offset, 7
  %arrayidx9.7 = getelementptr i8, ptr %cond, i32 %inc14.6
  %61 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx9.7, align 1
  %conv10.7 = zext i8 %62 to i32
  %arrayidx11.7 = getelementptr i8, ptr %rate_array, i32 %conv10.7
  %63 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx11.7, align 1
  %arrayidx13.7 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc16.6
  %65 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx13.7, align 1
  %inc14.7 = add nuw nsw i32 %mcs_idx.0.lcssa, 8
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.body8.preheader, %for.cond4.preheader.for.cond18.preheader_crit_edge
  %mcs_idx.1.lcssa = phi i32 [ %mcs_idx.0.lcssa, %for.cond4.preheader.for.cond18.preheader_crit_edge ], [ %inc14.7, %for.body8.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483640, i32 %ts_offset)
  %cmp2063 = icmp slt i32 %ts_offset, 2147483640
  br i1 %cmp2063, label %for.body22.preheader, label %for.cond18.preheader.for.end31_crit_edge

for.cond18.preheader.for.end31_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.body22.preheader:                             ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23 = getelementptr i8, ptr %cond, i32 %mcs_idx.1.lcssa
  %66 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %67 to i32
  %arrayidx25 = getelementptr i8, ptr %rate_array, i32 %conv24
  %68 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx25, align 1
  %arrayidx27 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %ts_offset
  %70 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx27, align 1
  %inc30 = add nsw i32 %ts_offset, 1
  %inc28 = add nuw nsw i32 %mcs_idx.1.lcssa, 1
  %arrayidx23.1 = getelementptr i8, ptr %cond, i32 %inc28
  %71 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx23.1, align 1
  %conv24.1 = zext i8 %72 to i32
  %arrayidx25.1 = getelementptr i8, ptr %rate_array, i32 %conv24.1
  %73 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx25.1, align 1
  %arrayidx27.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc30
  %75 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx27.1, align 1
  %inc28.1 = add nuw nsw i32 %mcs_idx.1.lcssa, 2
  %inc30.1 = add nsw i32 %ts_offset, 2
  %arrayidx23.2 = getelementptr i8, ptr %cond, i32 %inc28.1
  %76 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx23.2, align 1
  %conv24.2 = zext i8 %77 to i32
  %arrayidx25.2 = getelementptr i8, ptr %rate_array, i32 %conv24.2
  %78 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx25.2, align 1
  %arrayidx27.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc30.1
  %80 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx27.2, align 1
  %inc28.2 = add nuw nsw i32 %mcs_idx.1.lcssa, 3
  %inc30.2 = add nsw i32 %ts_offset, 3
  %arrayidx23.3 = getelementptr i8, ptr %cond, i32 %inc28.2
  %81 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx23.3, align 1
  %conv24.3 = zext i8 %82 to i32
  %arrayidx25.3 = getelementptr i8, ptr %rate_array, i32 %conv24.3
  %83 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx25.3, align 1
  %arrayidx27.3 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc30.2
  %85 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx27.3, align 1
  %inc28.3 = add nuw nsw i32 %mcs_idx.1.lcssa, 4
  %inc30.3 = add nsw i32 %ts_offset, 4
  %arrayidx23.4 = getelementptr i8, ptr %cond, i32 %inc28.3
  %86 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx23.4, align 1
  %conv24.4 = zext i8 %87 to i32
  %arrayidx25.4 = getelementptr i8, ptr %rate_array, i32 %conv24.4
  %88 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx25.4, align 1
  %arrayidx27.4 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc30.3
  %90 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx27.4, align 1
  %inc28.4 = add nuw nsw i32 %mcs_idx.1.lcssa, 5
  %inc30.4 = add nsw i32 %ts_offset, 5
  %arrayidx23.5 = getelementptr i8, ptr %cond, i32 %inc28.4
  %91 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx23.5, align 1
  %conv24.5 = zext i8 %92 to i32
  %arrayidx25.5 = getelementptr i8, ptr %rate_array, i32 %conv24.5
  %93 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx25.5, align 1
  %arrayidx27.5 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc30.4
  %95 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx27.5, align 1
  %inc28.5 = add nuw nsw i32 %mcs_idx.1.lcssa, 6
  %inc30.5 = add nsw i32 %ts_offset, 6
  %arrayidx23.6 = getelementptr i8, ptr %cond, i32 %inc28.5
  %96 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx23.6, align 1
  %conv24.6 = zext i8 %97 to i32
  %arrayidx25.6 = getelementptr i8, ptr %rate_array, i32 %conv24.6
  %98 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx25.6, align 1
  %arrayidx27.6 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc30.5
  %100 = ptrtoint ptr %arrayidx27.6 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx27.6, align 1
  %inc28.6 = add nuw nsw i32 %mcs_idx.1.lcssa, 7
  %inc30.6 = add nsw i32 %ts_offset, 7
  %arrayidx23.7 = getelementptr i8, ptr %cond, i32 %inc28.6
  %101 = ptrtoint ptr %arrayidx23.7 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx23.7, align 1
  %conv24.7 = zext i8 %102 to i32
  %arrayidx25.7 = getelementptr i8, ptr %rate_array, i32 %conv24.7
  %103 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx25.7, align 1
  %arrayidx27.7 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 %inc30.6
  %105 = ptrtoint ptr %arrayidx27.7 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx27.7, align 1
  br label %for.end31

for.end31:                                        ; preds = %for.body22.preheader, %for.cond18.preheader.for.end31_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ar9003_hw_attach_phy_ops(ptr nocapture noundef %ah) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_set_freq = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 7
  %0 = ptrtoint ptr %rf_set_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ar9003_hw_set_channel, ptr %rf_set_freq, align 4
  %spur_mitigate_freq = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 8
  %1 = ptrtoint ptr %spur_mitigate_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ar9003_hw_spur_mitigate, ptr %spur_mitigate_freq, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  %4 = add i32 %3, -768
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  %spec.select = select i1 %switch, ptr @ar9003_hw_compute_pll_control_soc, ptr @ar9003_hw_compute_pll_control
  %6 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 20
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select, ptr %6, align 4
  %set_channel_regs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 10
  %8 = ptrtoint ptr %set_channel_regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ar9003_hw_set_channel_regs, ptr %set_channel_regs, align 4
  %init_bb = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 11
  %9 = ptrtoint ptr %init_bb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ar9003_hw_init_bb, ptr %init_bb, align 4
  %process_ini = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 12
  %10 = ptrtoint ptr %process_ini to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ar9003_hw_process_ini, ptr %process_ini, align 4
  %set_rfmode = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 14
  %11 = ptrtoint ptr %set_rfmode to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ar9003_hw_set_rfmode, ptr %set_rfmode, align 4
  %mark_phy_inactive = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 15
  %12 = ptrtoint ptr %mark_phy_inactive to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ar9003_hw_mark_phy_inactive, ptr %mark_phy_inactive, align 4
  %set_delta_slope = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 16
  %13 = ptrtoint ptr %set_delta_slope to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ar9003_hw_set_delta_slope, ptr %set_delta_slope, align 4
  %rfbus_req = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 17
  %14 = ptrtoint ptr %rfbus_req to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ar9003_hw_rfbus_req, ptr %rfbus_req, align 4
  %rfbus_done = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 18
  %15 = ptrtoint ptr %rfbus_done to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ar9003_hw_rfbus_done, ptr %rfbus_done, align 4
  %ani_control = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 21
  %16 = ptrtoint ptr %ani_control to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ar9003_hw_ani_control, ptr %ani_control, align 4
  %do_getnf = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 22
  %17 = ptrtoint ptr %do_getnf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ar9003_hw_do_getnf, ptr %do_getnf, align 4
  %ani_cache_ini_regs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 25
  %18 = ptrtoint ptr %ani_cache_ini_regs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ar9003_hw_ani_cache_ini_regs, ptr %ani_cache_ini_regs, align 4
  %set_radar_params = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 23
  %19 = ptrtoint ptr %set_radar_params to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ar9003_hw_set_radar_params, ptr %set_radar_params, align 4
  %fast_chan_change = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 24
  %20 = ptrtoint ptr %fast_chan_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ar9003_hw_fast_chan_change, ptr %fast_chan_change, align 4
  %antdiv_comb_conf_get = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 8
  %21 = ptrtoint ptr %antdiv_comb_conf_get to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ar9003_hw_antdiv_comb_conf_get, ptr %antdiv_comb_conf_get, align 4
  %antdiv_comb_conf_set = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 9
  %22 = ptrtoint ptr %antdiv_comb_conf_set to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ar9003_hw_antdiv_comb_conf_set, ptr %antdiv_comb_conf_set, align 4
  %spectral_scan_config = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 10
  %23 = ptrtoint ptr %spectral_scan_config to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ar9003_hw_spectral_scan_config, ptr %spectral_scan_config, align 4
  %spectral_scan_trigger = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 11
  %24 = ptrtoint ptr %spectral_scan_trigger to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ar9003_hw_spectral_scan_trigger, ptr %spectral_scan_trigger, align 4
  %spectral_scan_wait = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 12
  %25 = ptrtoint ptr %spectral_scan_wait to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ar9003_hw_spectral_scan_wait, ptr %spectral_scan_wait, align 4
  %set_bt_ant_diversity = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 16
  %26 = ptrtoint ptr %set_bt_ant_diversity to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ar9003_hw_set_bt_ant_diversity, ptr %set_bt_ant_diversity, align 4
  %tx99_start = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 13
  %27 = ptrtoint ptr %tx99_start to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ar9003_hw_tx99_start, ptr %tx99_start, align 4
  %tx99_stop = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 14
  %28 = ptrtoint ptr %tx99_stop to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ar9003_hw_tx99_stop, ptr %tx99_stop, align 4
  %tx99_set_txpower = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 15
  %29 = ptrtoint ptr %tx99_set_txpower to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ar9003_hw_tx99_set_txpower, ptr %tx99_set_txpower, align 4
  %nf_2g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  %30 = ptrtoint ptr %nf_2g.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -60, ptr %nf_2g.i, align 4
  %min.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %min.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -125, ptr %min.i, align 2
  %nominal.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 2
  %32 = ptrtoint ptr %nominal.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -110, ptr %nominal.i, align 4
  %nf_5g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20
  %33 = ptrtoint ptr %nf_5g.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -60, ptr %nf_5g.i, align 2
  %min5.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 1
  %34 = ptrtoint ptr %min5.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -125, ptr %min5.i, align 2
  %nominal7.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 2
  %35 = ptrtoint ptr %nominal7.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -115, ptr %nominal7.i, align 2
  %36 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.ar9003_hw_set_nf_limits.exit_crit_edge [
    i32 512, label %if.end.thread.i
    i32 640, label %entry.if.then16.i_crit_edge
    i32 704, label %entry.if.then16.i_crit_edge46
  ]

entry.if.then16.i_crit_edge46:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

entry.if.then16.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

entry.ar9003_hw_set_nf_limits.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_set_nf_limits.exit

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %nominal.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -118, ptr %nominal.i, align 4
  br label %ar9003_hw_set_nf_limits.exit

if.then16.i:                                      ; preds = %entry.if.then16.i_crit_edge, %entry.if.then16.i_crit_edge46
  %38 = ptrtoint ptr %min.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -127, ptr %min.i, align 2
  %39 = ptrtoint ptr %nominal.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -127, ptr %nominal.i, align 4
  %40 = ptrtoint ptr %min5.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -127, ptr %min5.i, align 2
  %41 = ptrtoint ptr %nominal7.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -127, ptr %nominal7.i, align 2
  br label %ar9003_hw_set_nf_limits.exit

ar9003_hw_set_nf_limits.exit:                     ; preds = %if.then16.i, %if.end.thread.i, %entry.ar9003_hw_set_nf_limits.exit_crit_edge
  %radar_conf.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76
  %fir_power.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 7
  %42 = ptrtoint ptr %fir_power.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -28, ptr %fir_power.i, align 4
  %radar_rssi.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 5
  %43 = ptrtoint ptr %radar_rssi.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %radar_rssi.i, align 4
  %pulse_height.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 2
  %44 = ptrtoint ptr %pulse_height.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 10, ptr %pulse_height.i, align 4
  %pulse_rssi.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 3
  %45 = ptrtoint ptr %pulse_rssi.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 15, ptr %pulse_rssi.i, align 4
  %46 = ptrtoint ptr %radar_conf.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8, ptr %radar_conf.i, align 4
  %pulse_maxlen.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 4
  %47 = ptrtoint ptr %pulse_maxlen.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 255, ptr %pulse_maxlen.i, align 4
  %pulse_inband_step.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 1
  %48 = ptrtoint ptr %pulse_inband_step.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 12, ptr %pulse_inband_step.i, align 4
  %radar_inband.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 6
  %49 = ptrtoint ptr %radar_inband.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 8, ptr %radar_inband.i, align 4
  %nf_regs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 18
  %50 = call ptr @memcpy(ptr %nf_regs, ptr @ar9003_hw_attach_phy_ops.ar9300_cca_regs, i32 24)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9003_hw_set_channel(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  %centers = alloca %struct.chan_centers, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #8
  %0 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %centers, align 2, !annotation !75
  %1 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !75
  %3 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !75
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #8
  %5 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %centers, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4800, i16 %6)
  %cmp = icmp ult i16 %6, 4800
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %macVersion, align 4
  br i1 %cmp, label %if.then, label %if.else60

if.then:                                          ; preds = %entry
  %9 = add i32 %8, -512
  %10 = call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 26)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %10, label %if.else55 [
    i32 0, label %if.then.if.then28_crit_edge
    i32 1, label %if.then.if.then28_crit_edge212
    i32 12, label %if.then.if.then28_crit_edge213
    i32 8, label %if.then.if.then28_crit_edge214
    i32 16, label %if.then.if.then28_crit_edge215
    i32 3, label %if.then.if.then28_crit_edge216
    i32 4, label %if.then39
  ]

if.then.if.then28_crit_edge216:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then.if.then28_crit_edge215:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then.if.then28_crit_edge214:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then.if.then28_crit_edge213:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then.if.then28_crit_edge212:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then.if.then28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %if.then.if.then28_crit_edge, %if.then.if.then28_crit_edge212, %if.then.if.then28_crit_edge213, %if.then.if.then28_crit_edge214, %if.then.if.then28_crit_edge215, %if.then.if.then28_crit_edge216
  %is_clk_25mhz = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 128
  %12 = ptrtoint ptr %is_clk_25mhz to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_clk_25mhz, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %. = select i1 %tobool.not, i32 120, i32 75
  %mul = shl nuw nsw i32 %conv, 2
  %mul.frozen = freeze i32 %mul
  %..frozen = freeze i32 %.
  %div30 = udiv i32 %mul.frozen, %..frozen
  %14 = mul i32 %div30, %..frozen
  %rem.decomposed = sub i32 %mul.frozen, %14
  %mul32 = shl nuw nsw i32 %rem.decomposed, 17
  %div33 = udiv i32 %mul32, %.
  %shl = shl nuw nsw i32 %div30, 17
  %or = or i32 %div33, %shl
  br label %if.end95

if.then39:                                        ; preds = %if.then
  %is_clk_25mhz40 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 128
  %15 = ptrtoint ptr %is_clk_25mhz40 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_clk_25mhz40, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool41.not = icmp eq i8 %16, 0
  br i1 %tobool41.not, label %if.else51, label %if.then42

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %mul43 = shl nuw nsw i32 %conv, 1
  %mul43.frozen = freeze i32 %mul43
  %div44 = udiv i32 %mul43.frozen, 75
  %17 = mul i32 %div44, 75
  %rem46.decomposed = sub i32 %mul43.frozen, %17
  %mul47 = shl nuw nsw i32 %rem46.decomposed, 17
  %div48 = udiv i32 %mul47, 75
  %shl49 = shl nuw nsw i32 %div44, 17
  %or50 = or i32 %div48, %shl49
  br label %if.end95

if.else51:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %mul52 = shl nuw i32 %conv, 16
  %div53 = udiv i32 %mul52, 15
  %shr = lshr i32 %div53, 1
  br label %if.end95

if.else55:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mul56 = shl nuw i32 %conv, 16
  %div57 = udiv i32 %mul56, 15
  br label %if.end95

if.else60:                                        ; preds = %entry
  %18 = add i32 %8, -768
  %19 = call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %switch = icmp ult i32 %19, 4
  br i1 %switch, label %land.lhs.true, label %if.else60.if.else90_crit_edge

if.else60.if.else90_crit_edge:                    ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else90

land.lhs.true:                                    ; preds = %if.else60
  %is_clk_25mhz80 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 128
  %20 = ptrtoint ptr %is_clk_25mhz80 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_clk_25mhz80, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool81.not = icmp eq i8 %21, 0
  br i1 %tobool81.not, label %land.lhs.true.if.else90_crit_edge, label %if.then83

land.lhs.true.if.else90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else90

if.then83:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %.frozen = freeze i16 %6
  %div84210 = udiv i16 %.frozen, 75
  %div84.zext = zext i16 %div84210 to i32
  %22 = mul i16 %div84210, 75
  %rem85211.decomposed = sub i16 %.frozen, %22
  %rem85.zext = zext i16 %rem85211.decomposed to i32
  %mul86 = shl nuw nsw i32 %rem85.zext, 17
  %div87 = udiv i32 %mul86, 75
  %shl88 = shl nuw nsw i32 %div84.zext, 17
  %or89 = or i32 %div87, %shl88
  br label %if.end95

if.else90:                                        ; preds = %land.lhs.true.if.else90_crit_edge, %if.else60.if.else90_crit_edge
  %mul91 = shl nuw nsw i32 %conv, 15
  %div92 = udiv i32 %mul91, 15
  %shr93 = lshr i32 %div92, 1
  br label %if.end95

if.end95:                                         ; preds = %if.else90, %if.then83, %if.else55, %if.else51, %if.then42, %if.then28
  %bMode.0 = phi i32 [ 536870912, %if.else55 ], [ 536870912, %if.else51 ], [ 536870912, %if.then42 ], [ 536870912, %if.then28 ], [ 0, %if.else90 ], [ 0, %if.then83 ]
  %channelSel.2 = phi i32 [ %div57, %if.else55 ], [ %shr, %if.else51 ], [ %or50, %if.then42 ], [ %or, %if.then28 ], [ %shr93, %if.else90 ], [ %or89, %if.then83 ]
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %23 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write, align 4
  call void %24(ptr noundef %ah, i32 noundef %bMode.0, i32 noundef 41792) #8
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %25 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw, align 4
  %macVersion100 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %macVersion100 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %macVersion100, align 4
  %29 = and i32 %28, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %29)
  %30 = icmp ne i32 %29, 640
  %31 = zext i1 %30 to i32
  %32 = select i1 %30, i32 2, i32 1
  %shl107 = shl nuw nsw i32 1, %31
  %and = and i32 %shl107, %32
  %call = call i32 %26(ptr noundef %ah, i32 noundef 90252, i32 noundef %and, i32 noundef %32) #8
  %shl130 = shl i32 %channelSel.2, 2
  %or133 = or i32 %shl130, 1073741824
  %33 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write, align 4
  call void %34(ptr noundef %ah, i32 noundef %or133, i32 noundef 90264) #8
  %or149 = or i32 %shl130, -1073741824
  %35 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write, align 4
  call void %36(ptr noundef %ah, i32 noundef %or149, i32 noundef 90264) #8
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %37 = ptrtoint ptr %curchan to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %chan, ptr %curchan, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_spur_mitigate(ptr noundef %ah, ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %1)
  %cmp = icmp eq i32 %1, 704
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %channelFlags.i, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  %call.i = tail call ptr @ar9003_get_spur_chan_ptr(ptr noundef %ah, i1 noundef zeroext %tobool.not.i) #8
  %5 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %macVersion, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %6, label %if.else45.i [
    i32 576, label %if.then.if.then.i_crit_edge
    i32 768, label %if.then.if.then.i_crit_edge20
    i32 512, label %if.then.if.then.i_crit_edge21
    i32 1024, label %if.then.if.then.i_crit_edge22
    i32 1536, label %if.then.if.then.i_crit_edge23
  ]

if.then.if.then.i_crit_edge23:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.if.then.i_crit_edge22:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.if.then.i_crit_edge21:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.if.then.i_crit_edge20:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %if.then.if.then.i_crit_edge20, %if.then.if.then.i_crit_edge21, %if.then.if.then.i_crit_edge22, %if.then.if.then.i_crit_edge23
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp24.i = icmp eq i8 %9, 0
  br i1 %cmp24.i, label %if.then.i.if.end_crit_edge, label %if.end.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then.i
  %10 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %channelFlags.i, align 2
  %12 = and i16 %11, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool30.not.i = icmp eq i16 %12, 0
  br i1 %tobool30.not.i, label %if.else41.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end.i
  %13 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ah, align 4
  %call32.i = tail call i32 %14(ptr noundef %ah, i32 noundef 41476) #8
  %15 = and i32 %call32.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp34.i = icmp eq i32 %15, 0
  %channel.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %channel.i, align 4
  %conv37.i = zext i16 %17 to i32
  br i1 %cmp34.i, label %if.then36.i, label %if.else.i

if.then36.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %conv37.i, 10
  br label %if.end52.i

if.else.i:                                        ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %conv37.i, -10
  br label %if.end52.i

if.else41.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %channel42.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %18 = ptrtoint ptr %channel42.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %channel42.i, align 4
  %conv43.i = zext i16 %19 to i32
  br label %if.end52.i

if.else45.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %6)
  %cmp48.i = icmp eq i32 %6, 640
  %cond.i = select i1 %cmp48.i, i32 5, i32 10
  %channel50.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %20 = ptrtoint ptr %channel50.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %channel50.i, align 4
  %conv51.i = zext i16 %21 to i32
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else45.i, %if.else41.i, %if.else.i, %if.then36.i
  %range.0.i = phi i32 [ 19, %if.then36.i ], [ 19, %if.else.i ], [ 10, %if.else41.i ], [ %cond.i, %if.else45.i ]
  %exitcond.not.i.3 = phi i1 [ false, %if.then36.i ], [ false, %if.else.i ], [ false, %if.else41.i ], [ true, %if.else45.i ]
  %synth_freq.0.i = phi i32 [ %add.i, %if.then36.i ], [ %sub.i, %if.else.i ], [ %conv43.i, %if.else41.i ], [ %conv51.i, %if.else45.i ]
  %22 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %macVersion, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %23, label %if.end52.i.if.end103.i_crit_edge [
    i32 1536, label %if.end52.i.if.then90.i_crit_edge
    i32 576, label %if.end52.i.if.then90.i_crit_edge24
    i32 768, label %if.end52.i.if.then90.i_crit_edge25
    i32 512, label %if.end52.i.if.then90.i_crit_edge26
    i32 1024, label %if.end52.i.if.then90.i_crit_edge27
    i32 640, label %if.end52.i.if.end103.i.1_crit_edge
  ]

if.end52.i.if.end103.i.1_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i.1

if.end52.i.if.then90.i_crit_edge27:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i

if.end52.i.if.then90.i_crit_edge26:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i

if.end52.i.if.then90.i_crit_edge25:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i

if.end52.i.if.then90.i_crit_edge24:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i

if.end52.i.if.then90.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i

if.end52.i.if.end103.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.then90.i:                                      ; preds = %if.end52.i.if.then90.i_crit_edge, %if.end52.i.if.then90.i_crit_edge24, %if.end52.i.if.then90.i_crit_edge25, %if.end52.i.if.then90.i_crit_edge26, %if.end52.i.if.then90.i_crit_edge27
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call.i, align 1
  %27 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %channelFlags.i, align 2
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool95.not.i = icmp eq i16 %29, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp.i.i = icmp eq i8 %26, -1
  %conv.i.i = zext i8 %26 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2300
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 5
  %add6.i.i = add nuw nsw i32 %mul.i.i, 4800
  %cond.i.i = select i1 %tobool95.not.i, i32 %add.i.i, i32 %add6.i.i
  %conv100.i = select i1 %cmp.i.i, i32 255, i32 %cond.i.i
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then90.i, %if.end52.i.if.end103.i_crit_edge
  %cur_bb_spur.0.i = phi i32 [ %conv100.i, %if.then90.i ], [ 2420, %if.end52.i.if.end103.i_crit_edge ]
  %sub104.i = sub nsw i32 %cur_bb_spur.0.i, %synth_freq.0.i
  %30 = tail call i32 @llvm.abs.i32(i32 %sub104.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %range.0.i)
  %cmp110.i = icmp slt i32 %30, %range.0.i
  br i1 %cmp110.i, label %if.end103.i.if.then112.i_crit_edge, label %for.body.i.1

if.end103.i.if.then112.i_crit_edge:               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112.i

if.then112.i:                                     ; preds = %if.end103.i.4.if.then112.i_crit_edge, %if.end103.i.3.if.then112.i_crit_edge, %if.end103.i.2.if.then112.i_crit_edge, %if.end103.i.1.if.then112.i_crit_edge, %if.end103.i.if.then112.i_crit_edge
  %sub104.i.lcssa = phi i32 [ %sub104.i, %if.end103.i.if.then112.i_crit_edge ], [ %sub104.i.1, %if.end103.i.1.if.then112.i_crit_edge ], [ %sub104.i.2, %if.end103.i.2.if.then112.i_crit_edge ], [ %sub104.i.3, %if.end103.i.3.if.then112.i_crit_edge ], [ %sub104.i.4, %if.end103.i.4.if.then112.i_crit_edge ]
  %.lcssa = phi i32 [ %30, %if.end103.i.if.then112.i_crit_edge ], [ %47, %if.end103.i.1.if.then112.i_crit_edge ], [ %54, %if.end103.i.2.if.then112.i_crit_edge ], [ %61, %if.end103.i.3.if.then112.i_crit_edge ], [ %68, %if.end103.i.4.if.then112.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub104.i.lcssa)
  %cmp105.i = icmp slt i32 %sub104.i.lcssa, 0
  %shl.i = shl i32 %.lcssa, 19
  %div.i = sdiv i32 %shl.i, 11
  %sub116.i = sub nsw i32 0, %div.i
  %spec.select213.i = select i1 %cmp105.i, i32 %sub116.i, i32 %div.i
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %31 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %23)
  %cmp122.i = icmp ugt i32 %23, 447
  %cond124.i = select i1 %cmp122.i, i32 41668, i32 39008
  %call125.i = tail call i32 %32(ptr noundef %ah, i32 noundef %cond124.i, i32 noundef 448, i32 noundef 960) #8
  %33 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw.i, align 4
  %call128.i = tail call i32 %34(ptr noundef %ah, i32 noundef 40908, i32 noundef 254, i32 noundef 510) #8
  %35 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmw.i, align 4
  %call131.i = tail call i32 %36(ptr noundef %ah, i32 noundef 40908, i32 noundef 1073741824, i32 noundef 1610612736) #8
  %37 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmw.i, align 4
  %call134.i = tail call i32 %38(ptr noundef %ah, i32 noundef 40908, i32 noundef 1, i32 noundef 1) #8
  %39 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmw.i, align 4
  %and118.i = shl i32 %spec.select213.i, 9
  %shl137.i = and i32 %and118.i, 536870400
  %call139.i = tail call i32 %40(ptr noundef %ah, i32 noundef 40908, i32 noundef %shl137.i, i32 noundef 536870400) #8
  br label %if.end

for.body.i.1:                                     ; preds = %if.end103.i
  %41 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %23, label %for.body.i.1.if.end103.i.1_crit_edge [
    i32 1536, label %for.body.i.1.if.then90.i.1_crit_edge
    i32 576, label %for.body.i.1.if.then90.i.1_crit_edge28
    i32 768, label %for.body.i.1.if.then90.i.1_crit_edge29
    i32 512, label %for.body.i.1.if.then90.i.1_crit_edge30
    i32 1024, label %for.body.i.1.if.then90.i.1_crit_edge31
  ]

for.body.i.1.if.then90.i.1_crit_edge31:           ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.1

for.body.i.1.if.then90.i.1_crit_edge30:           ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.1

for.body.i.1.if.then90.i.1_crit_edge29:           ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.1

for.body.i.1.if.then90.i.1_crit_edge28:           ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.1

for.body.i.1.if.then90.i.1_crit_edge:             ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.1

for.body.i.1.if.end103.i.1_crit_edge:             ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i.1

if.then90.i.1:                                    ; preds = %for.body.i.1.if.then90.i.1_crit_edge, %for.body.i.1.if.then90.i.1_crit_edge28, %for.body.i.1.if.then90.i.1_crit_edge29, %for.body.i.1.if.then90.i.1_crit_edge30, %for.body.i.1.if.then90.i.1_crit_edge31
  %arrayidx91.i.1 = getelementptr i8, ptr %call.i, i32 1
  %42 = ptrtoint ptr %arrayidx91.i.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx91.i.1, align 1
  %44 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %channelFlags.i, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool95.not.i.1 = icmp eq i16 %46, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp.i.i.1 = icmp eq i8 %43, -1
  %conv.i.i.1 = zext i8 %43 to i32
  %add.i.i.1 = add nuw nsw i32 %conv.i.i.1, 2300
  %mul.i.i.1 = mul nuw nsw i32 %conv.i.i.1, 5
  %add6.i.i.1 = add nuw nsw i32 %mul.i.i.1, 4800
  %cond.i.i.1 = select i1 %tobool95.not.i.1, i32 %add.i.i.1, i32 %add6.i.i.1
  %conv100.i.1 = select i1 %cmp.i.i.1, i32 255, i32 %cond.i.i.1
  br label %if.end103.i.1

if.end103.i.1:                                    ; preds = %if.then90.i.1, %for.body.i.1.if.end103.i.1_crit_edge, %if.end52.i.if.end103.i.1_crit_edge
  %cur_bb_spur.0.i.1 = phi i32 [ %conv100.i.1, %if.then90.i.1 ], [ 2440, %if.end52.i.if.end103.i.1_crit_edge ], [ 2440, %for.body.i.1.if.end103.i.1_crit_edge ]
  %sub104.i.1 = sub nsw i32 %cur_bb_spur.0.i.1, %synth_freq.0.i
  %47 = tail call i32 @llvm.abs.i32(i32 %sub104.i.1, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %range.0.i)
  %cmp110.i.1 = icmp slt i32 %47, %range.0.i
  br i1 %cmp110.i.1, label %if.end103.i.1.if.then112.i_crit_edge, label %for.body.i.2

if.end103.i.1.if.then112.i_crit_edge:             ; preds = %if.end103.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112.i

for.body.i.2:                                     ; preds = %if.end103.i.1
  %48 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %23, label %for.body.i.2.if.end103.i.2_crit_edge [
    i32 1536, label %for.body.i.2.if.then90.i.2_crit_edge
    i32 576, label %for.body.i.2.if.then90.i.2_crit_edge32
    i32 768, label %for.body.i.2.if.then90.i.2_crit_edge33
    i32 512, label %for.body.i.2.if.then90.i.2_crit_edge34
    i32 1024, label %for.body.i.2.if.then90.i.2_crit_edge35
  ]

for.body.i.2.if.then90.i.2_crit_edge35:           ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.2

for.body.i.2.if.then90.i.2_crit_edge34:           ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.2

for.body.i.2.if.then90.i.2_crit_edge33:           ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.2

for.body.i.2.if.then90.i.2_crit_edge32:           ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.2

for.body.i.2.if.then90.i.2_crit_edge:             ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.2

for.body.i.2.if.end103.i.2_crit_edge:             ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i.2

if.then90.i.2:                                    ; preds = %for.body.i.2.if.then90.i.2_crit_edge, %for.body.i.2.if.then90.i.2_crit_edge32, %for.body.i.2.if.then90.i.2_crit_edge33, %for.body.i.2.if.then90.i.2_crit_edge34, %for.body.i.2.if.then90.i.2_crit_edge35
  %arrayidx91.i.2 = getelementptr i8, ptr %call.i, i32 2
  %49 = ptrtoint ptr %arrayidx91.i.2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx91.i.2, align 1
  %51 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %channelFlags.i, align 2
  %53 = and i16 %52, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool95.not.i.2 = icmp eq i16 %53, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp.i.i.2 = icmp eq i8 %50, -1
  %conv.i.i.2 = zext i8 %50 to i32
  %add.i.i.2 = add nuw nsw i32 %conv.i.i.2, 2300
  %mul.i.i.2 = mul nuw nsw i32 %conv.i.i.2, 5
  %add6.i.i.2 = add nuw nsw i32 %mul.i.i.2, 4800
  %cond.i.i.2 = select i1 %tobool95.not.i.2, i32 %add.i.i.2, i32 %add6.i.i.2
  %conv100.i.2 = select i1 %cmp.i.i.2, i32 255, i32 %cond.i.i.2
  br label %if.end103.i.2

if.end103.i.2:                                    ; preds = %if.then90.i.2, %for.body.i.2.if.end103.i.2_crit_edge
  %cur_bb_spur.0.i.2 = phi i32 [ %conv100.i.2, %if.then90.i.2 ], [ 2464, %for.body.i.2.if.end103.i.2_crit_edge ]
  %sub104.i.2 = sub nsw i32 %cur_bb_spur.0.i.2, %synth_freq.0.i
  %54 = tail call i32 @llvm.abs.i32(i32 %sub104.i.2, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %range.0.i)
  %cmp110.i.2 = icmp slt i32 %54, %range.0.i
  br i1 %cmp110.i.2, label %if.end103.i.2.if.then112.i_crit_edge, label %for.body.i.3

if.end103.i.2.if.then112.i_crit_edge:             ; preds = %if.end103.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112.i

for.body.i.3:                                     ; preds = %if.end103.i.2
  %55 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %23, label %for.body.i.3.if.end103.i.3_crit_edge [
    i32 640, label %for.body.i.3.for.inc.i.3_crit_edge
    i32 576, label %for.body.i.3.if.then90.i.3_crit_edge
    i32 768, label %for.body.i.3.if.then90.i.3_crit_edge36
    i32 512, label %for.body.i.3.if.then90.i.3_crit_edge37
    i32 1024, label %for.body.i.3.if.then90.i.3_crit_edge38
    i32 1536, label %for.body.i.3.if.then90.i.3_crit_edge39
  ]

for.body.i.3.if.then90.i.3_crit_edge39:           ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.3

for.body.i.3.if.then90.i.3_crit_edge38:           ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.3

for.body.i.3.if.then90.i.3_crit_edge37:           ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.3

for.body.i.3.if.then90.i.3_crit_edge36:           ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.3

for.body.i.3.if.then90.i.3_crit_edge:             ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.3

for.body.i.3.for.inc.i.3_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

for.body.i.3.if.end103.i.3_crit_edge:             ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i.3

if.then90.i.3:                                    ; preds = %for.body.i.3.if.then90.i.3_crit_edge, %for.body.i.3.if.then90.i.3_crit_edge36, %for.body.i.3.if.then90.i.3_crit_edge37, %for.body.i.3.if.then90.i.3_crit_edge38, %for.body.i.3.if.then90.i.3_crit_edge39
  %arrayidx91.i.3 = getelementptr i8, ptr %call.i, i32 3
  %56 = ptrtoint ptr %arrayidx91.i.3 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx91.i.3, align 1
  %58 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %channelFlags.i, align 2
  %60 = and i16 %59, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool95.not.i.3 = icmp eq i16 %60, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %cmp.i.i.3 = icmp eq i8 %57, -1
  %conv.i.i.3 = zext i8 %57 to i32
  %add.i.i.3 = add nuw nsw i32 %conv.i.i.3, 2300
  %mul.i.i.3 = mul nuw nsw i32 %conv.i.i.3, 5
  %add6.i.i.3 = add nuw nsw i32 %mul.i.i.3, 4800
  %cond.i.i.3 = select i1 %tobool95.not.i.3, i32 %add.i.i.3, i32 %add6.i.i.3
  %conv100.i.3 = select i1 %cmp.i.i.3, i32 255, i32 %cond.i.i.3
  br label %if.end103.i.3

if.end103.i.3:                                    ; preds = %if.then90.i.3, %for.body.i.3.if.end103.i.3_crit_edge
  %cur_bb_spur.0.i.3 = phi i32 [ %conv100.i.3, %if.then90.i.3 ], [ 2480, %for.body.i.3.if.end103.i.3_crit_edge ]
  %sub104.i.3 = sub nsw i32 %cur_bb_spur.0.i.3, %synth_freq.0.i
  %61 = tail call i32 @llvm.abs.i32(i32 %sub104.i.3, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %range.0.i)
  %cmp110.i.3 = icmp slt i32 %61, %range.0.i
  br i1 %cmp110.i.3, label %if.end103.i.3.if.then112.i_crit_edge, label %if.end103.i.3.for.inc.i.3_crit_edge

if.end103.i.3.for.inc.i.3_crit_edge:              ; preds = %if.end103.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

if.end103.i.3.if.then112.i_crit_edge:             ; preds = %if.end103.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112.i

for.inc.i.3:                                      ; preds = %if.end103.i.3.for.inc.i.3_crit_edge, %for.body.i.3.for.inc.i.3_crit_edge
  br i1 %exitcond.not.i.3, label %for.inc.i.3.for.end.i_crit_edge, label %for.body.i.4

for.inc.i.3.for.end.i_crit_edge:                  ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.4:                                     ; preds = %for.inc.i.3
  %62 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %23, label %for.body.i.4.if.end103.i.4_crit_edge [
    i32 1536, label %for.body.i.4.if.then90.i.4_crit_edge
    i32 576, label %for.body.i.4.if.then90.i.4_crit_edge40
    i32 768, label %for.body.i.4.if.then90.i.4_crit_edge41
    i32 512, label %for.body.i.4.if.then90.i.4_crit_edge42
    i32 1024, label %for.body.i.4.if.then90.i.4_crit_edge43
  ]

for.body.i.4.if.then90.i.4_crit_edge43:           ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.4

for.body.i.4.if.then90.i.4_crit_edge42:           ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.4

for.body.i.4.if.then90.i.4_crit_edge41:           ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.4

for.body.i.4.if.then90.i.4_crit_edge40:           ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.4

for.body.i.4.if.then90.i.4_crit_edge:             ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.4

for.body.i.4.if.end103.i.4_crit_edge:             ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i.4

if.then90.i.4:                                    ; preds = %for.body.i.4.if.then90.i.4_crit_edge, %for.body.i.4.if.then90.i.4_crit_edge40, %for.body.i.4.if.then90.i.4_crit_edge41, %for.body.i.4.if.then90.i.4_crit_edge42, %for.body.i.4.if.then90.i.4_crit_edge43
  %arrayidx91.i.4 = getelementptr i8, ptr %call.i, i32 4
  %63 = ptrtoint ptr %arrayidx91.i.4 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx91.i.4, align 1
  %65 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %channelFlags.i, align 2
  %67 = and i16 %66, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool95.not.i.4 = icmp eq i16 %67, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %cmp.i.i.4 = icmp eq i8 %64, -1
  %conv.i.i.4 = zext i8 %64 to i32
  %add.i.i.4 = add nuw nsw i32 %conv.i.i.4, 2300
  %mul.i.i.4 = mul nuw nsw i32 %conv.i.i.4, 5
  %add6.i.i.4 = add nuw nsw i32 %mul.i.i.4, 4800
  %cond.i.i.4 = select i1 %tobool95.not.i.4, i32 %add.i.i.4, i32 %add6.i.i.4
  %conv100.i.4 = select i1 %cmp.i.i.4, i32 255, i32 %cond.i.i.4
  br label %if.end103.i.4

if.end103.i.4:                                    ; preds = %if.then90.i.4, %for.body.i.4.if.end103.i.4_crit_edge
  %cur_bb_spur.0.i.4 = phi i32 [ %conv100.i.4, %if.then90.i.4 ], [ undef, %for.body.i.4.if.end103.i.4_crit_edge ]
  %sub104.i.4 = sub i32 %cur_bb_spur.0.i.4, %synth_freq.0.i
  %68 = tail call i32 @llvm.abs.i32(i32 %sub104.i.4, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %range.0.i)
  %cmp110.i.4 = icmp slt i32 %68, %range.0.i
  br i1 %cmp110.i.4, label %if.end103.i.4.if.then112.i_crit_edge, label %if.end103.i.4.for.end.i_crit_edge

if.end103.i.4.for.end.i_crit_edge:                ; preds = %if.end103.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end103.i.4.if.then112.i_crit_edge:             ; preds = %if.end103.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112.i

for.end.i:                                        ; preds = %if.end103.i.4.for.end.i_crit_edge, %for.inc.i.3.for.end.i_crit_edge
  %rmw142.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %69 = ptrtoint ptr %rmw142.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmw142.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %23)
  %cmp145.i = icmp ugt i32 %23, 447
  %cond147.i = select i1 %cmp145.i, i32 41668, i32 39008
  %call148.i = tail call i32 %70(ptr noundef %ah, i32 noundef %cond147.i, i32 noundef 320, i32 noundef 960) #8
  %71 = ptrtoint ptr %rmw142.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmw142.i, align 4
  %call151.i = tail call i32 %72(ptr noundef %ah, i32 noundef 40908, i32 noundef 0, i32 noundef 1) #8
  %73 = ptrtoint ptr %rmw142.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmw142.i, align 4
  %call154.i = tail call i32 %74(ptr noundef %ah, i32 noundef 40908, i32 noundef 0, i32 noundef 536870400) #8
  br label %if.end

if.end:                                           ; preds = %for.end.i, %if.then112.i, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %channelFlags.i4 = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %75 = ptrtoint ptr %channelFlags.i4 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %channelFlags.i4, align 2
  %77 = and i16 %76, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i5 = icmp eq i16 %77, 0
  %spurChans.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2, i32 2
  %spurChans1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 11
  %spurChansPtr.0.i = select i1 %tobool.not.i5, ptr %spurChans1.i, ptr %spurChans.i
  %78 = ptrtoint ptr %spurChansPtr.0.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %spurChansPtr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp.i = icmp eq i8 %79, 0
  br i1 %cmp.i, label %if.end.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge, label %if.end7.i

if.end.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_mitigate_ofdm.exit

if.end7.i:                                        ; preds = %if.end
  %80 = and i16 %76, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool11.not.i = icmp eq i16 %80, 0
  br i1 %tobool11.not.i, label %if.else22.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end7.i
  %81 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ah, align 4
  %call.i6 = tail call i32 %82(ptr noundef %ah, i32 noundef 41476) #8
  %83 = and i32 %call.i6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp14.i = icmp eq i32 %83, 0
  %channel.i7 = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %84 = ptrtoint ptr %channel.i7 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %channel.i7, align 4
  %conv17.i = zext i16 %85 to i32
  br i1 %cmp14.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i8 = add nsw i32 %conv17.i, -10
  br label %if.end25.i

if.else18.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i9 = add nuw nsw i32 %conv17.i, 10
  br label %if.end25.i

if.else22.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %channel23.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %86 = ptrtoint ptr %channel23.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %channel23.i, align 4
  %conv24.i = zext i16 %87 to i32
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else22.i, %if.else18.i, %if.then16.i
  %range.0.i10 = phi i32 [ 19, %if.then16.i ], [ 19, %if.else18.i ], [ 10, %if.else22.i ]
  %synth_freq.0.i11 = phi i32 [ %sub.i8, %if.then16.i ], [ %add.i9, %if.else18.i ], [ %conv24.i, %if.else22.i ]
  %rmw.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %88 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmw.i.i, align 4
  %call.i.i = tail call i32 %89(ptr noundef %ah, i32 noundef 38924, i32 noundef 0, i32 noundef 1073741824) #8
  %90 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmw.i.i, align 4
  %call3.i.i = tail call i32 %91(ptr noundef %ah, i32 noundef 38936, i32 noundef 0, i32 noundef 1072693248) #8
  %92 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmw.i.i, align 4
  %call6.i.i = tail call i32 %93(ptr noundef %ah, i32 noundef 38936, i32 noundef 0, i32 noundef 1048575) #8
  %94 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmw.i.i, align 4
  %call9.i.i = tail call i32 %95(ptr noundef %ah, i32 noundef 38956, i32 noundef 0, i32 noundef 268435456) #8
  %96 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmw.i.i, align 4
  %call12.i.i = tail call i32 %97(ptr noundef %ah, i32 noundef 38936, i32 noundef 0, i32 noundef 1073741824) #8
  %98 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmw.i.i, align 4
  %call15.i.i = tail call i32 %99(ptr noundef %ah, i32 noundef 38936, i32 noundef 0, i32 noundef -2147483648) #8
  %100 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmw.i.i, align 4
  %call18.i.i = tail call i32 %101(ptr noundef %ah, i32 noundef 38924, i32 noundef 0, i32 noundef -2147483648) #8
  %102 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmw.i.i, align 4
  %call21.i.i = tail call i32 %103(ptr noundef %ah, i32 noundef 38940, i32 noundef 0, i32 noundef 256) #8
  %104 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmw.i.i, align 4
  %call24.i.i = tail call i32 %105(ptr noundef %ah, i32 noundef 38940, i32 noundef 0, i32 noundef 67108864) #8
  %106 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmw.i.i, align 4
  %call27.i.i = tail call i32 %107(ptr noundef %ah, i32 noundef 38940, i32 noundef 0, i32 noundef 131072) #8
  %108 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmw.i.i, align 4
  %call30.i.i = tail call i32 %109(ptr noundef %ah, i32 noundef 38924, i32 noundef 0, i32 noundef 268435456) #8
  %110 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmw.i.i, align 4
  %call33.i.i = tail call i32 %111(ptr noundef %ah, i32 noundef 38924, i32 noundef 0, i32 noundef 536870912) #8
  %112 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmw.i.i, align 4
  %call36.i.i = tail call i32 %113(ptr noundef %ah, i32 noundef 39948, i32 noundef 0, i32 noundef 4064) #8
  %114 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rmw.i.i, align 4
  %116 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %117)
  %cmp.i.i12 = icmp eq i32 %117, 1536
  %add.i.i13 = select i1 %cmp.i.i12, i32 41496, i32 41504
  %call39.i.i = tail call i32 %115(ptr noundef %ah, i32 noundef %add.i.i13, i32 noundef 0, i32 noundef 130048) #8
  %118 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rmw.i.i, align 4
  %call42.i.i = tail call i32 %119(ptr noundef %ah, i32 noundef 39952, i32 noundef 0, i32 noundef 4064) #8
  %120 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmw.i.i, align 4
  %call45.i.i = tail call i32 %121(ptr noundef %ah, i32 noundef 39948, i32 noundef 0, i32 noundef 31) #8
  %122 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmw.i.i, align 4
  %call48.i.i = tail call i32 %123(ptr noundef %ah, i32 noundef 39952, i32 noundef 0, i32 noundef 31) #8
  %124 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmw.i.i, align 4
  %126 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %127)
  %cmp53.i.i = icmp eq i32 %127, 1536
  %add55.i.i = select i1 %cmp53.i.i, i32 41496, i32 41504
  %call56.i.i = tail call i32 %125(ptr noundef %ah, i32 noundef %add55.i.i, i32 noundef 0, i32 noundef 1023) #8
  %128 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmw.i.i, align 4
  %call59.i.i = tail call i32 %129(ptr noundef %ah, i32 noundef 38940, i32 noundef 0, i32 noundef 66846720) #8
  %130 = ptrtoint ptr %spurChansPtr.0.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %spurChansPtr.0.i, align 1
  %132 = zext i8 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %131, label %if.end.i.i [
    i8 0, label %if.end25.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge
    i8 -1, label %if.end25.i.ath9k_hw_fbin2freq.exit.i_crit_edge
  ]

if.end25.i.ath9k_hw_fbin2freq.exit.i_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hw_fbin2freq.exit.i

if.end25.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_mitigate_ofdm.exit

if.end.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i14 = zext i8 %131 to i32
  %add.i109.i = add nuw nsw i32 %conv.i.i14, 2300
  %mul.i.i15 = mul nuw nsw i32 %conv.i.i14, 5
  %add6.i.i16 = add nuw nsw i32 %mul.i.i15, 4800
  %cond.i.i17 = select i1 %tobool.not.i5, i32 %add.i109.i, i32 %add6.i.i16
  br label %ath9k_hw_fbin2freq.exit.i

ath9k_hw_fbin2freq.exit.i:                        ; preds = %if.end.i.i, %if.end25.i.ath9k_hw_fbin2freq.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i17, %if.end.i.i ], [ 255, %if.end25.i.ath9k_hw_fbin2freq.exit.i_crit_edge ]
  %sub35.i = sub nsw i32 %retval.0.i.i, %synth_freq.0.i11
  %133 = tail call i32 @llvm.abs.i32(i32 %sub35.i, i1 true) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %range.0.i10)
  %cmp39.i = icmp ult i32 %133, %range.0.i10
  br i1 %cmp39.i, label %ath9k_hw_fbin2freq.exit.i.if.then41.i_crit_edge, label %for.inc.i19

ath9k_hw_fbin2freq.exit.i.if.then41.i_crit_edge:  ; preds = %ath9k_hw_fbin2freq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

if.then41.i:                                      ; preds = %ath9k_hw_fbin2freq.exit.4.i.if.then41.i_crit_edge, %ath9k_hw_fbin2freq.exit.3.i.if.then41.i_crit_edge, %ath9k_hw_fbin2freq.exit.2.i.if.then41.i_crit_edge, %ath9k_hw_fbin2freq.exit.1.i.if.then41.i_crit_edge, %ath9k_hw_fbin2freq.exit.i.if.then41.i_crit_edge
  %cmp44.i = phi i1 [ false, %ath9k_hw_fbin2freq.exit.4.i.if.then41.i_crit_edge ], [ true, %ath9k_hw_fbin2freq.exit.3.i.if.then41.i_crit_edge ], [ true, %ath9k_hw_fbin2freq.exit.2.i.if.then41.i_crit_edge ], [ true, %ath9k_hw_fbin2freq.exit.1.i.if.then41.i_crit_edge ], [ true, %ath9k_hw_fbin2freq.exit.i.if.then41.i_crit_edge ]
  %i.0131.lcssa132.i = phi i32 [ 5, %ath9k_hw_fbin2freq.exit.4.i.if.then41.i_crit_edge ], [ 4, %ath9k_hw_fbin2freq.exit.3.i.if.then41.i_crit_edge ], [ 3, %ath9k_hw_fbin2freq.exit.2.i.if.then41.i_crit_edge ], [ 2, %ath9k_hw_fbin2freq.exit.1.i.if.then41.i_crit_edge ], [ 1, %ath9k_hw_fbin2freq.exit.i.if.then41.i_crit_edge ]
  %sub35.lcssa.i = phi i32 [ %sub35.4.i, %ath9k_hw_fbin2freq.exit.4.i.if.then41.i_crit_edge ], [ %sub35.3.i, %ath9k_hw_fbin2freq.exit.3.i.if.then41.i_crit_edge ], [ %sub35.2.i, %ath9k_hw_fbin2freq.exit.2.i.if.then41.i_crit_edge ], [ %sub35.1.i, %ath9k_hw_fbin2freq.exit.1.i.if.then41.i_crit_edge ], [ %sub35.i, %ath9k_hw_fbin2freq.exit.i.if.then41.i_crit_edge ]
  %134 = ptrtoint ptr %channelFlags.i4 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %channelFlags.i4, align 2
  %136 = and i16 %135, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool.not.i.i = icmp eq i16 %136, 0
  br i1 %tobool.not.i.i, label %if.else23.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35.lcssa.i)
  %cmp36.le.i = icmp slt i32 %sub35.lcssa.i, 0
  %137 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ah, align 4
  %call.i111.i = tail call i32 %138(ptr noundef %ah, i32 noundef 41476) #8
  %139 = lshr i32 %call.i111.i, 4
  %.lobit44.i.i = and i32 %139, 1
  %.sink.i.i = select i1 %cmp36.le.i, i32 5120, i32 -5120
  %freq_offset.lobit.i.i = lshr i32 %sub35.lcssa.i, 31
  %spur_subchannel_sd.2.i.i = xor i32 %.lobit44.i.i, %freq_offset.lobit.i.i
  %sub.i.i = shl nsw i32 %sub35.lcssa.i, 9
  %shl18.i.i = add nsw i32 %.sink.i.i, %sub.i.i
  %phi.bo.i.i = shl nuw nsw i32 %spur_subchannel_sd.2.i.i, 28
  br label %if.end28.i.i

if.else23.i.i:                                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl24.i.i = shl nsw i32 %sub35.lcssa.i, 9
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.else23.i.i, %if.then.i.i
  %.sink45.i.i = phi i32 [ 18, %if.else23.i.i ], [ 17, %if.then.i.i ]
  %spur_freq_sd.1.in.i.i = phi i32 [ %shl24.i.i, %if.else23.i.i ], [ %shl18.i.i, %if.then.i.i ]
  %spur_subchannel_sd.3.i.i = phi i32 [ 0, %if.else23.i.i ], [ %phi.bo.i.i, %if.then.i.i ]
  %shl26.i.i = shl i32 %sub35.lcssa.i, %.sink45.i.i
  %spur_freq_sd.1.i.i = sdiv i32 %spur_freq_sd.1.in.i.i, 11
  %spur_delta_phase.0.i.i = sdiv i32 %shl26.i.i, 5
  %and30.i.i = and i32 %spur_delta_phase.0.i.i, 1048575
  %140 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmw.i.i, align 4
  %call.i.i.i = tail call i32 %141(ptr noundef %ah, i32 noundef 38924, i32 noundef 1073741824, i32 noundef 1073741824) #8
  %142 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmw.i.i, align 4
  %and29.i.i = shl i32 %spur_freq_sd.1.i.i, 20
  %shl.i.i.i = and i32 %and29.i.i, 1072693248
  %call3.i.i.i = tail call i32 %143(ptr noundef %ah, i32 noundef 38936, i32 noundef %shl.i.i.i, i32 noundef 1072693248) #8
  %144 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rmw.i.i, align 4
  %call8.i.i.i = tail call i32 %145(ptr noundef %ah, i32 noundef 38936, i32 noundef %and30.i.i, i32 noundef 1048575) #8
  %146 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rmw.i.i, align 4
  %call13.i.i.i = tail call i32 %147(ptr noundef %ah, i32 noundef 38956, i32 noundef %spur_subchannel_sd.3.i.i, i32 noundef 268435456) #8
  %148 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rmw.i.i, align 4
  %call16.i.i.i = tail call i32 %149(ptr noundef %ah, i32 noundef 38936, i32 noundef 1073741824, i32 noundef 1073741824) #8
  %150 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %151)
  %cmp.i.i.i = icmp eq i32 %151, 704
  %or.cond.i.i.i = and i1 %tobool11.not.i, %cmp.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2437, i32 %synth_freq.0.i11)
  %cmp19.i.i.i = icmp eq i32 %synth_freq.0.i11, 2437
  %or.cond144.i.i.i = and i1 %cmp19.i.i.i, %or.cond.i.i.i
  br i1 %or.cond144.i.i.i, label %if.end28.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end28.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rmw.i.i, align 4
  %call22.i.i.i = tail call i32 %153(ptr noundef %ah, i32 noundef 38936, i32 noundef -2147483648, i32 noundef -2147483648) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end28.i.i.if.end.i.i.i_crit_edge
  %154 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rmw.i.i, align 4
  %call25.i.i.i = tail call i32 %155(ptr noundef %ah, i32 noundef 38924, i32 noundef -2147483648, i32 noundef -2147483648) #8
  %156 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rmw.i.i, align 4
  %call28.i.i.i = tail call i32 %157(ptr noundef %ah, i32 noundef 38940, i32 noundef 34, i32 noundef 255) #8
  %158 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rmw.i.i, align 4
  %call31.i.i.i = tail call i32 %159(ptr noundef %ah, i32 noundef 38940, i32 noundef 256, i32 noundef 256) #8
  %160 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %161)
  %cmp34.i.i.i = icmp eq i32 %161, 768
  br i1 %cmp34.i.i.i, label %if.end.i.i.i.ar9003_hw_spur_ofdm_work.exit.i_crit_edge, label %land.lhs.true35.i.i.i

if.end.i.i.i.ar9003_hw_spur_ofdm_work.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_ofdm_work.exit.i

land.lhs.true35.i.i.i:                            ; preds = %if.end.i.i.i
  %162 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ah, align 4
  %call37.i.i.i = tail call i32 %163(ptr noundef %ah, i32 noundef 41480) #8
  %164 = and i32 %call37.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp39.not.i.i.i = icmp eq i32 %164, 0
  br i1 %cmp39.not.i.i.i, label %land.lhs.true35.i.i.i.ar9003_hw_spur_ofdm_work.exit.i_crit_edge, label %if.then40.i.i.i

land.lhs.true35.i.i.i.ar9003_hw_spur_ofdm_work.exit.i_crit_edge: ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_ofdm_work.exit.i

if.then40.i.i.i:                                  ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rmw.i.i, align 4
  %call43.i.i.i = tail call i32 %166(ptr noundef %ah, i32 noundef 38940, i32 noundef 67108864, i32 noundef 67108864) #8
  br label %ar9003_hw_spur_ofdm_work.exit.i

ar9003_hw_spur_ofdm_work.exit.i:                  ; preds = %if.then40.i.i.i, %land.lhs.true35.i.i.i.ar9003_hw_spur_ofdm_work.exit.i_crit_edge, %if.end.i.i.i.ar9003_hw_spur_ofdm_work.exit.i_crit_edge
  %shl45.i.i.i = shl nsw i32 %sub35.lcssa.i, 4
  %div.i.i.i = sdiv i32 %shl45.i.i.i, 5
  %sub35.lobit.i = ashr i32 %sub35.lcssa.i, 31
  %spec.select.i.i.i = add nsw i32 %div.i.i.i, %sub35.lobit.i
  %and49.i.i.i = and i32 %spec.select.i.i.i, 127
  %167 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rmw.i.i, align 4
  %call52.i.i.i = tail call i32 %168(ptr noundef %ah, i32 noundef 38940, i32 noundef 131072, i32 noundef 131072) #8
  %169 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rmw.i.i, align 4
  %call55.i.i.i = tail call i32 %170(ptr noundef %ah, i32 noundef 38924, i32 noundef 268435456, i32 noundef 268435456) #8
  %171 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rmw.i.i, align 4
  %call58.i.i.i = tail call i32 %172(ptr noundef %ah, i32 noundef 38924, i32 noundef 536870912, i32 noundef 536870912) #8
  %173 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rmw.i.i, align 4
  %shl61.i.i.i = shl nuw nsw i32 %and49.i.i.i, 5
  %call63.i.i.i = tail call i32 %174(ptr noundef %ah, i32 noundef 39948, i32 noundef %shl61.i.i.i, i32 noundef 4064) #8
  %175 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmw.i.i, align 4
  %177 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %178)
  %cmp68.i.i.i = icmp eq i32 %178, 1536
  %add.i.i.i = select i1 %cmp68.i.i.i, i32 41496, i32 41504
  %shl69.i.i.i = shl nuw nsw i32 %and49.i.i.i, 10
  %call71.i.i.i = tail call i32 %176(ptr noundef %ah, i32 noundef %add.i.i.i, i32 noundef %shl69.i.i.i, i32 noundef 130048) #8
  %179 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rmw.i.i, align 4
  %call76.i.i.i = tail call i32 %180(ptr noundef %ah, i32 noundef 39952, i32 noundef %shl61.i.i.i, i32 noundef 4064) #8
  %181 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rmw.i.i, align 4
  %call79.i.i.i = tail call i32 %182(ptr noundef %ah, i32 noundef 39948, i32 noundef 12, i32 noundef 31) #8
  %183 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rmw.i.i, align 4
  %call82.i.i.i = tail call i32 %184(ptr noundef %ah, i32 noundef 39952, i32 noundef 12, i32 noundef 31) #8
  %185 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rmw.i.i, align 4
  %187 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %188)
  %cmp87.i.i.i = icmp eq i32 %188, 1536
  %add89.i.i.i = select i1 %cmp87.i.i.i, i32 41496, i32 41504
  %call90.i.i.i = tail call i32 %186(ptr noundef %ah, i32 noundef %add89.i.i.i, i32 noundef 160, i32 noundef 1023) #8
  %189 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %rmw.i.i, align 4
  %call93.i.i.i = tail call i32 %190(ptr noundef %ah, i32 noundef 38940, i32 noundef 66846720, i32 noundef 66846720) #8
  %191 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %192)
  %cmp42.i = icmp eq i32 %192, 704
  %or.cond.i = and i1 %cmp44.i, %cmp42.i
  br i1 %or.cond.i, label %if.then46.i, label %ar9003_hw_spur_ofdm_work.exit.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge

ar9003_hw_spur_ofdm_work.exit.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge: ; preds = %ar9003_hw_spur_ofdm_work.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_mitigate_ofdm.exit

if.then46.i:                                      ; preds = %ar9003_hw_spur_ofdm_work.exit.i
  %arrayidx48.i = getelementptr i8, ptr %spurChansPtr.0.i, i32 %i.0131.lcssa132.i
  %193 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %194)
  %cmp.i112.i = icmp eq i8 %194, -1
  %conv.i113.i = zext i8 %194 to i32
  %add.i114.i = add nuw nsw i32 %conv.i113.i, 2300
  %mul.i115.i = mul nuw nsw i32 %conv.i113.i, 5
  %add6.i116.i = add nuw nsw i32 %mul.i115.i, 4800
  %cond.i117.i = select i1 %tobool.not.i5, i32 %add.i114.i, i32 %add6.i116.i
  %conv51.i18 = select i1 %cmp.i112.i, i32 255, i32 %cond.i117.i
  %sub52.i = sub nsw i32 %conv51.i18, %synth_freq.0.i11
  %195 = tail call i32 @llvm.abs.i32(i32 %sub52.i, i1 true) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %range.0.i10)
  %cmp62.i = icmp ult i32 %195, %range.0.i10
  br i1 %cmp62.i, label %if.then64.i, label %if.then46.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge

if.then46.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_mitigate_ofdm.exit

if.then64.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i = shl nsw i32 %sub52.i, 4
  %div.i.i = sdiv i32 %shl.i.i, 5
  %sub52.lobit.i = ashr i32 %sub52.i, 31
  %spec.select.i.i = add nsw i32 %div.i.i, %sub52.lobit.i
  %and.i.i = and i32 %spec.select.i.i, 127
  %196 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rmw.i.i, align 4
  %shl1.i.i = shl nuw nsw i32 %and.i.i, 17
  %call.i125.i = tail call i32 %197(ptr noundef %ah, i32 noundef 39948, i32 noundef %shl1.i.i, i32 noundef 16646144) #8
  %198 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rmw.i.i, align 4
  %200 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %201)
  %cmp5.i.i = icmp eq i32 %201, 1536
  %add.i127.i = select i1 %cmp5.i.i, i32 41500, i32 41508
  %shl6.i.i = shl nuw nsw i32 %and.i.i, 10
  %call8.i.i = tail call i32 %199(ptr noundef %ah, i32 noundef %add.i127.i, i32 noundef %shl6.i.i, i32 noundef 130048) #8
  %202 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmw.i.i, align 4
  %call13.i.i = tail call i32 %203(ptr noundef %ah, i32 noundef 39952, i32 noundef %shl1.i.i, i32 noundef 16646144) #8
  %204 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rmw.i.i, align 4
  %call16.i.i = tail call i32 %205(ptr noundef %ah, i32 noundef 39948, i32 noundef 57344, i32 noundef 126976) #8
  %206 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rmw.i.i, align 4
  %call19.i.i = tail call i32 %207(ptr noundef %ah, i32 noundef 39952, i32 noundef 57344, i32 noundef 126976) #8
  %208 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rmw.i.i, align 4
  %210 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %211)
  %cmp24.i.i = icmp eq i32 %211, 1536
  %add26.i.i = select i1 %cmp24.i.i, i32 41500, i32 41508
  %call27.i128.i = tail call i32 %209(ptr noundef %ah, i32 noundef %add26.i.i, i32 noundef 160, i32 noundef 1023) #8
  br label %ar9003_hw_spur_mitigate_ofdm.exit

for.inc.i19:                                      ; preds = %ath9k_hw_fbin2freq.exit.i
  %arrayidx28.1.i = getelementptr i8, ptr %spurChansPtr.0.i, i32 1
  %212 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx28.1.i, align 1
  %214 = zext i8 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %213, label %if.end.i.1.i [
    i8 0, label %for.inc.i19.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge
    i8 -1, label %for.inc.i19.ath9k_hw_fbin2freq.exit.1.i_crit_edge
  ]

for.inc.i19.ath9k_hw_fbin2freq.exit.1.i_crit_edge: ; preds = %for.inc.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hw_fbin2freq.exit.1.i

for.inc.i19.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge: ; preds = %for.inc.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_mitigate_ofdm.exit

if.end.i.1.i:                                     ; preds = %for.inc.i19
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.1.i = zext i8 %213 to i32
  %add.i109.1.i = add nuw nsw i32 %conv.i.1.i, 2300
  %mul.i.1.i = mul nuw nsw i32 %conv.i.1.i, 5
  %add6.i.1.i = add nuw nsw i32 %mul.i.1.i, 4800
  %cond.i.1.i = select i1 %tobool.not.i5, i32 %add.i109.1.i, i32 %add6.i.1.i
  br label %ath9k_hw_fbin2freq.exit.1.i

ath9k_hw_fbin2freq.exit.1.i:                      ; preds = %if.end.i.1.i, %for.inc.i19.ath9k_hw_fbin2freq.exit.1.i_crit_edge
  %retval.0.i.1.i = phi i32 [ %cond.i.1.i, %if.end.i.1.i ], [ 255, %for.inc.i19.ath9k_hw_fbin2freq.exit.1.i_crit_edge ]
  %sub35.1.i = sub nsw i32 %retval.0.i.1.i, %synth_freq.0.i11
  %215 = tail call i32 @llvm.abs.i32(i32 %sub35.1.i, i1 true) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %range.0.i10)
  %cmp39.1.i = icmp ult i32 %215, %range.0.i10
  br i1 %cmp39.1.i, label %ath9k_hw_fbin2freq.exit.1.i.if.then41.i_crit_edge, label %for.inc.1.i

ath9k_hw_fbin2freq.exit.1.i.if.then41.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

for.inc.1.i:                                      ; preds = %ath9k_hw_fbin2freq.exit.1.i
  %arrayidx28.2.i = getelementptr i8, ptr %spurChansPtr.0.i, i32 2
  %216 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx28.2.i, align 1
  %218 = zext i8 %217 to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %217, label %if.end.i.2.i [
    i8 0, label %for.inc.1.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge
    i8 -1, label %for.inc.1.i.ath9k_hw_fbin2freq.exit.2.i_crit_edge
  ]

for.inc.1.i.ath9k_hw_fbin2freq.exit.2.i_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hw_fbin2freq.exit.2.i

for.inc.1.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_mitigate_ofdm.exit

if.end.i.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.2.i = zext i8 %217 to i32
  %add.i109.2.i = add nuw nsw i32 %conv.i.2.i, 2300
  %mul.i.2.i = mul nuw nsw i32 %conv.i.2.i, 5
  %add6.i.2.i = add nuw nsw i32 %mul.i.2.i, 4800
  %cond.i.2.i = select i1 %tobool.not.i5, i32 %add.i109.2.i, i32 %add6.i.2.i
  br label %ath9k_hw_fbin2freq.exit.2.i

ath9k_hw_fbin2freq.exit.2.i:                      ; preds = %if.end.i.2.i, %for.inc.1.i.ath9k_hw_fbin2freq.exit.2.i_crit_edge
  %retval.0.i.2.i = phi i32 [ %cond.i.2.i, %if.end.i.2.i ], [ 255, %for.inc.1.i.ath9k_hw_fbin2freq.exit.2.i_crit_edge ]
  %sub35.2.i = sub nsw i32 %retval.0.i.2.i, %synth_freq.0.i11
  %219 = tail call i32 @llvm.abs.i32(i32 %sub35.2.i, i1 true) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %range.0.i10)
  %cmp39.2.i = icmp ult i32 %219, %range.0.i10
  br i1 %cmp39.2.i, label %ath9k_hw_fbin2freq.exit.2.i.if.then41.i_crit_edge, label %for.inc.2.i

ath9k_hw_fbin2freq.exit.2.i.if.then41.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

for.inc.2.i:                                      ; preds = %ath9k_hw_fbin2freq.exit.2.i
  %arrayidx28.3.i = getelementptr i8, ptr %spurChansPtr.0.i, i32 3
  %220 = ptrtoint ptr %arrayidx28.3.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx28.3.i, align 1
  %222 = zext i8 %221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %221, label %if.end.i.3.i [
    i8 0, label %for.inc.2.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge
    i8 -1, label %for.inc.2.i.ath9k_hw_fbin2freq.exit.3.i_crit_edge
  ]

for.inc.2.i.ath9k_hw_fbin2freq.exit.3.i_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hw_fbin2freq.exit.3.i

for.inc.2.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_mitigate_ofdm.exit

if.end.i.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.3.i = zext i8 %221 to i32
  %add.i109.3.i = add nuw nsw i32 %conv.i.3.i, 2300
  %mul.i.3.i = mul nuw nsw i32 %conv.i.3.i, 5
  %add6.i.3.i = add nuw nsw i32 %mul.i.3.i, 4800
  %cond.i.3.i = select i1 %tobool.not.i5, i32 %add.i109.3.i, i32 %add6.i.3.i
  br label %ath9k_hw_fbin2freq.exit.3.i

ath9k_hw_fbin2freq.exit.3.i:                      ; preds = %if.end.i.3.i, %for.inc.2.i.ath9k_hw_fbin2freq.exit.3.i_crit_edge
  %retval.0.i.3.i = phi i32 [ %cond.i.3.i, %if.end.i.3.i ], [ 255, %for.inc.2.i.ath9k_hw_fbin2freq.exit.3.i_crit_edge ]
  %sub35.3.i = sub nsw i32 %retval.0.i.3.i, %synth_freq.0.i11
  %223 = tail call i32 @llvm.abs.i32(i32 %sub35.3.i, i1 true) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %range.0.i10)
  %cmp39.3.i = icmp ult i32 %223, %range.0.i10
  br i1 %cmp39.3.i, label %ath9k_hw_fbin2freq.exit.3.i.if.then41.i_crit_edge, label %for.inc.3.i

ath9k_hw_fbin2freq.exit.3.i.if.then41.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

for.inc.3.i:                                      ; preds = %ath9k_hw_fbin2freq.exit.3.i
  %arrayidx28.4.i = getelementptr i8, ptr %spurChansPtr.0.i, i32 4
  %224 = ptrtoint ptr %arrayidx28.4.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx28.4.i, align 1
  %226 = zext i8 %225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %225, label %if.end.i.4.i [
    i8 0, label %for.inc.3.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge
    i8 -1, label %for.inc.3.i.ath9k_hw_fbin2freq.exit.4.i_crit_edge
  ]

for.inc.3.i.ath9k_hw_fbin2freq.exit.4.i_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hw_fbin2freq.exit.4.i

for.inc.3.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_mitigate_ofdm.exit

if.end.i.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.4.i = zext i8 %225 to i32
  %add.i109.4.i = add nuw nsw i32 %conv.i.4.i, 2300
  %mul.i.4.i = mul nuw nsw i32 %conv.i.4.i, 5
  %add6.i.4.i = add nuw nsw i32 %mul.i.4.i, 4800
  %cond.i.4.i = select i1 %tobool.not.i5, i32 %add.i109.4.i, i32 %add6.i.4.i
  br label %ath9k_hw_fbin2freq.exit.4.i

ath9k_hw_fbin2freq.exit.4.i:                      ; preds = %if.end.i.4.i, %for.inc.3.i.ath9k_hw_fbin2freq.exit.4.i_crit_edge
  %retval.0.i.4.i = phi i32 [ %cond.i.4.i, %if.end.i.4.i ], [ 255, %for.inc.3.i.ath9k_hw_fbin2freq.exit.4.i_crit_edge ]
  %sub35.4.i = sub nsw i32 %retval.0.i.4.i, %synth_freq.0.i11
  %227 = tail call i32 @llvm.abs.i32(i32 %sub35.4.i, i1 true) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %227, i32 %range.0.i10)
  %cmp39.4.i = icmp ult i32 %227, %range.0.i10
  br i1 %cmp39.4.i, label %ath9k_hw_fbin2freq.exit.4.i.if.then41.i_crit_edge, label %ath9k_hw_fbin2freq.exit.4.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge

ath9k_hw_fbin2freq.exit.4.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_spur_mitigate_ofdm.exit

ath9k_hw_fbin2freq.exit.4.i.if.then41.i_crit_edge: ; preds = %ath9k_hw_fbin2freq.exit.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

ar9003_hw_spur_mitigate_ofdm.exit:                ; preds = %ath9k_hw_fbin2freq.exit.4.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge, %for.inc.3.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge, %for.inc.2.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge, %for.inc.1.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge, %for.inc.i19.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge, %if.then64.i, %if.then46.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge, %ar9003_hw_spur_ofdm_work.exit.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge, %if.end25.i.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge, %if.end.ar9003_hw_spur_mitigate_ofdm.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ar9003_hw_compute_pll_control_soc(ptr nocapture noundef readnone %ah, ptr noundef readonly %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %land.lhs.true3.critedge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true3.critedge:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %3 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  %spec.select = select i1 %tobool7.not, i32 5242924, i32 72351788
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true3.critedge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %pll.0 = phi i32 [ 38797356, %land.lhs.true.if.end10_crit_edge ], [ 5242924, %entry.if.end10_crit_edge ], [ %spec.select, %land.lhs.true3.critedge ]
  ret i32 %pll.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ar9003_hw_compute_pll_control(ptr nocapture noundef readnone %ah, ptr noundef readonly %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %land.lhs.true3.critedge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true3.critedge:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %3 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  %spec.select = select i1 %tobool7.not, i32 5164, i32 37932
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true3.critedge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %pll.0 = phi i32 [ 21548, %land.lhs.true.if.end10_crit_edge ], [ 5164, %entry.if.end10_crit_edge ], [ %spec.select, %land.lhs.true3.critedge ]
  ret i32 %pll.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_set_channel_regs(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 41476) #8
  %and = and i32 %call, 2048
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %3)
  %cmp = icmp eq i32 %3, 1536
  %spec.select.v = select i1 %cmp, i32 192, i32 704
  %spec.select = or i32 %spec.select.v, %and
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %channelFlags, align 2
  %conv = zext i16 %5 to i32
  %and2 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %and7 = and i32 %conv, 16
  %6 = or i32 %and7, %spec.select
  %spec.select41 = or i32 %6, 4
  %phymode.1 = select i1 %tobool.not, i32 %spec.select, i32 %spec.select41
  %7 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ah, align 4
  %call15 = tail call i32 %8(ptr noundef %ah, i32 noundef 41476) #8
  %call15.masked = and i32 %call15, -1025
  %and17 = or i32 %phymode.1, %call15.masked
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  tail call void %10(ptr noundef %ah, i32 noundef %and17, i32 noundef 41476) #8
  tail call void @ath9k_hw_set11nmac2040(ptr noundef %ah, ptr noundef %chan) #8
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  tail call void %12(ptr noundef %ah, i32 noundef 1638400, i32 noundef 100) #8
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  tail call void %14(ptr noundef %ah, i32 noundef 983040, i32 noundef 108) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_init_bb(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 41556) #8
  %and = and i32 %call, 16383
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  tail call void %3(ptr noundef %ah, i32 noundef 1, i32 noundef 41484) #8
  tail call void @ath9k_hw_synth_delay(ptr noundef %ah, ptr noundef %chan, i32 noundef %and) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9003_hw_process_ini(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  %regWrites = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regWrites) #8
  %0 = ptrtoint ptr %regWrites to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %regWrites, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %1 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %channelFlags, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and8 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond = select i1 %tobool9.not, i32 1, i32 2
  %cond12 = select i1 %tobool9.not, i32 4, i32 3
  %modesIndex.0 = select i1 %tobool.not, i32 %cond12, i32 %cond
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %bus_ops.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %macRev = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %ini_radio_post_sys2ant = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 99
  %ia_columns.i299 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 99, i32 2
  %ia_rows.i302 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 99, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0389 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 106, i32 %i.0389
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.ar9003_hw_prog_ini.exit_crit_edge, label %if.end.i

for.body.ar9003_hw_prog_ini.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit

if.end.i:                                         ; preds = %for.body
  %ia_columns.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 106, i32 %i.0389, i32 2
  %5 = ptrtoint ptr %ia_columns.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ia_columns.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %modesIndex.0)
  %cmp.not.i = icmp ugt i32 %6, %modesIndex.0
  %spec.store.select.i = select i1 %cmp.not.i, i32 %modesIndex.0, i32 1
  %ia_rows.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 106, i32 %i.0389, i32 1
  %7 = ptrtoint ptr %ia_rows.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ia_rows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp329.not.i = icmp eq i32 %8, 0
  br i1 %cmp329.not.i, label %if.end.i.ar9003_hw_prog_ini.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.ar9003_hw_prog_ini.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc15.i, %do.end.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %ia_columns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ia_columns.i, align 4
  %mul.i = mul i32 %12, %i.031.i
  %arrayidx.i = getelementptr i32, ptr %10, i32 %mul.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add9.i = add i32 %mul.i, %spec.store.select.i
  %arrayidx10.i = getelementptr i32, ptr %10, i32 %add9.i
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10.i, align 4
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  tail call void %18(ptr noundef %ah, i32 noundef %16, i32 noundef %14) #8
  %inc15.i = add nuw i32 %i.031.i, 1
  %rem.i = and i32 %inc15.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp11.i = icmp eq i32 %rem.i, 0
  br i1 %cmp11.i, label %land.lhs.true.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %19 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp12.not.i = icmp eq i32 %22, 2
  br i1 %cmp12.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %if.then13.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then13.i, %land.lhs.true.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %24 = ptrtoint ptr %ia_rows.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ia_rows.i, align 4
  %cmp3.i = icmp ult i32 %inc15.i, %25
  br i1 %cmp3.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.ar9003_hw_prog_ini.exit_crit_edge

do.end.i.ar9003_hw_prog_ini.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ar9003_hw_prog_ini.exit:                          ; preds = %do.end.i.ar9003_hw_prog_ini.exit_crit_edge, %if.end.i.ar9003_hw_prog_ini.exit_crit_edge, %for.body.ar9003_hw_prog_ini.exit_crit_edge
  %arrayidx14 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 103, i32 %i.0389
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx14, align 4
  %tobool.not.i223 = icmp eq ptr %27, null
  br i1 %tobool.not.i223, label %ar9003_hw_prog_ini.exit.ar9003_hw_prog_ini.exit247_crit_edge, label %if.end.i229

ar9003_hw_prog_ini.exit.ar9003_hw_prog_ini.exit247_crit_edge: ; preds = %ar9003_hw_prog_ini.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit247

if.end.i229:                                      ; preds = %ar9003_hw_prog_ini.exit
  %ia_columns.i224 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 103, i32 %i.0389, i32 2
  %28 = ptrtoint ptr %ia_columns.i224 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ia_columns.i224, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %modesIndex.0)
  %cmp.not.i225 = icmp ugt i32 %29, %modesIndex.0
  %spec.store.select.i226 = select i1 %cmp.not.i225, i32 %modesIndex.0, i32 1
  %ia_rows.i227 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 103, i32 %i.0389, i32 1
  %30 = ptrtoint ptr %ia_rows.i227 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ia_rows.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp329.not.i228 = icmp eq i32 %31, 0
  br i1 %cmp329.not.i228, label %if.end.i229.ar9003_hw_prog_ini.exit247_crit_edge, label %if.end.i229.for.body.i241_crit_edge

if.end.i229.for.body.i241_crit_edge:              ; preds = %if.end.i229
  br label %for.body.i241

if.end.i229.ar9003_hw_prog_ini.exit247_crit_edge: ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit247

for.body.i241:                                    ; preds = %do.end.i246.for.body.i241_crit_edge, %if.end.i229.for.body.i241_crit_edge
  %i.031.i233 = phi i32 [ %inc15.i238, %do.end.i246.for.body.i241_crit_edge ], [ 0, %if.end.i229.for.body.i241_crit_edge ]
  %32 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx14, align 4
  %34 = ptrtoint ptr %ia_columns.i224 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ia_columns.i224, align 4
  %mul.i234 = mul i32 %35, %i.031.i233
  %arrayidx.i235 = getelementptr i32, ptr %33, i32 %mul.i234
  %36 = ptrtoint ptr %arrayidx.i235 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i235, align 4
  %add9.i236 = add i32 %mul.i234, %spec.store.select.i226
  %arrayidx10.i237 = getelementptr i32, ptr %33, i32 %add9.i236
  %38 = ptrtoint ptr %arrayidx10.i237 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx10.i237, align 4
  %40 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i, align 4
  tail call void %41(ptr noundef %ah, i32 noundef %39, i32 noundef %37) #8
  %inc15.i238 = add nuw i32 %i.031.i233, 1
  %rem.i239 = and i32 %inc15.i238, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i239)
  %cmp11.i240 = icmp eq i32 %rem.i239, 0
  br i1 %cmp11.i240, label %land.lhs.true.i243, label %for.body.i241.do.end.i246_crit_edge

for.body.i241.do.end.i246_crit_edge:              ; preds = %for.body.i241
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i246

land.lhs.true.i243:                               ; preds = %for.body.i241
  %42 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus_ops.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp12.not.i242 = icmp eq i32 %45, 2
  br i1 %cmp12.not.i242, label %land.lhs.true.i243.do.end.i246_crit_edge, label %if.then13.i244

land.lhs.true.i243.do.end.i246_crit_edge:         ; preds = %land.lhs.true.i243
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i246

if.then13.i244:                                   ; preds = %land.lhs.true.i243
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #8
  br label %do.end.i246

do.end.i246:                                      ; preds = %if.then13.i244, %land.lhs.true.i243.do.end.i246_crit_edge, %for.body.i241.do.end.i246_crit_edge
  %47 = ptrtoint ptr %ia_rows.i227 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ia_rows.i227, align 4
  %cmp3.i245 = icmp ult i32 %inc15.i238, %48
  br i1 %cmp3.i245, label %do.end.i246.for.body.i241_crit_edge, label %do.end.i246.ar9003_hw_prog_ini.exit247_crit_edge

do.end.i246.ar9003_hw_prog_ini.exit247_crit_edge: ; preds = %do.end.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit247

do.end.i246.for.body.i241_crit_edge:              ; preds = %do.end.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i241

ar9003_hw_prog_ini.exit247:                       ; preds = %do.end.i246.ar9003_hw_prog_ini.exit247_crit_edge, %if.end.i229.ar9003_hw_prog_ini.exit247_crit_edge, %ar9003_hw_prog_ini.exit.ar9003_hw_prog_ini.exit247_crit_edge
  %arrayidx15 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 104, i32 %i.0389
  %49 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx15, align 4
  %tobool.not.i248 = icmp eq ptr %50, null
  br i1 %tobool.not.i248, label %ar9003_hw_prog_ini.exit247.ar9003_hw_prog_ini.exit272_crit_edge, label %if.end.i254

ar9003_hw_prog_ini.exit247.ar9003_hw_prog_ini.exit272_crit_edge: ; preds = %ar9003_hw_prog_ini.exit247
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit272

if.end.i254:                                      ; preds = %ar9003_hw_prog_ini.exit247
  %ia_columns.i249 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 104, i32 %i.0389, i32 2
  %51 = ptrtoint ptr %ia_columns.i249 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ia_columns.i249, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %modesIndex.0)
  %cmp.not.i250 = icmp ugt i32 %52, %modesIndex.0
  %spec.store.select.i251 = select i1 %cmp.not.i250, i32 %modesIndex.0, i32 1
  %ia_rows.i252 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 104, i32 %i.0389, i32 1
  %53 = ptrtoint ptr %ia_rows.i252 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ia_rows.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp329.not.i253 = icmp eq i32 %54, 0
  br i1 %cmp329.not.i253, label %if.end.i254.ar9003_hw_prog_ini.exit272_crit_edge, label %if.end.i254.for.body.i266_crit_edge

if.end.i254.for.body.i266_crit_edge:              ; preds = %if.end.i254
  br label %for.body.i266

if.end.i254.ar9003_hw_prog_ini.exit272_crit_edge: ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit272

for.body.i266:                                    ; preds = %do.end.i271.for.body.i266_crit_edge, %if.end.i254.for.body.i266_crit_edge
  %i.031.i258 = phi i32 [ %inc15.i263, %do.end.i271.for.body.i266_crit_edge ], [ 0, %if.end.i254.for.body.i266_crit_edge ]
  %55 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx15, align 4
  %57 = ptrtoint ptr %ia_columns.i249 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ia_columns.i249, align 4
  %mul.i259 = mul i32 %58, %i.031.i258
  %arrayidx.i260 = getelementptr i32, ptr %56, i32 %mul.i259
  %59 = ptrtoint ptr %arrayidx.i260 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i260, align 4
  %add9.i261 = add i32 %mul.i259, %spec.store.select.i251
  %arrayidx10.i262 = getelementptr i32, ptr %56, i32 %add9.i261
  %61 = ptrtoint ptr %arrayidx10.i262 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx10.i262, align 4
  %63 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write.i, align 4
  tail call void %64(ptr noundef %ah, i32 noundef %62, i32 noundef %60) #8
  %inc15.i263 = add nuw i32 %i.031.i258, 1
  %rem.i264 = and i32 %inc15.i263, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i264)
  %cmp11.i265 = icmp eq i32 %rem.i264, 0
  br i1 %cmp11.i265, label %land.lhs.true.i268, label %for.body.i266.do.end.i271_crit_edge

for.body.i266.do.end.i271_crit_edge:              ; preds = %for.body.i266
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i271

land.lhs.true.i268:                               ; preds = %for.body.i266
  %65 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus_ops.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp12.not.i267 = icmp eq i32 %68, 2
  br i1 %cmp12.not.i267, label %land.lhs.true.i268.do.end.i271_crit_edge, label %if.then13.i269

land.lhs.true.i268.do.end.i271_crit_edge:         ; preds = %land.lhs.true.i268
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i271

if.then13.i269:                                   ; preds = %land.lhs.true.i268
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #8
  br label %do.end.i271

do.end.i271:                                      ; preds = %if.then13.i269, %land.lhs.true.i268.do.end.i271_crit_edge, %for.body.i266.do.end.i271_crit_edge
  %70 = ptrtoint ptr %ia_rows.i252 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ia_rows.i252, align 4
  %cmp3.i270 = icmp ult i32 %inc15.i263, %71
  br i1 %cmp3.i270, label %do.end.i271.for.body.i266_crit_edge, label %do.end.i271.ar9003_hw_prog_ini.exit272_crit_edge

do.end.i271.ar9003_hw_prog_ini.exit272_crit_edge: ; preds = %do.end.i271
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit272

do.end.i271.for.body.i266_crit_edge:              ; preds = %do.end.i271
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i266

ar9003_hw_prog_ini.exit272:                       ; preds = %do.end.i271.ar9003_hw_prog_ini.exit272_crit_edge, %if.end.i254.ar9003_hw_prog_ini.exit272_crit_edge, %ar9003_hw_prog_ini.exit247.ar9003_hw_prog_ini.exit272_crit_edge
  %arrayidx16 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 105, i32 %i.0389
  %72 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx16, align 4
  %tobool.not.i273 = icmp eq ptr %73, null
  br i1 %tobool.not.i273, label %ar9003_hw_prog_ini.exit272.ar9003_hw_prog_ini.exit297_crit_edge, label %if.end.i279

ar9003_hw_prog_ini.exit272.ar9003_hw_prog_ini.exit297_crit_edge: ; preds = %ar9003_hw_prog_ini.exit272
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit297

if.end.i279:                                      ; preds = %ar9003_hw_prog_ini.exit272
  %ia_columns.i274 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 105, i32 %i.0389, i32 2
  %74 = ptrtoint ptr %ia_columns.i274 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ia_columns.i274, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %modesIndex.0)
  %cmp.not.i275 = icmp ugt i32 %75, %modesIndex.0
  %spec.store.select.i276 = select i1 %cmp.not.i275, i32 %modesIndex.0, i32 1
  %ia_rows.i277 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 105, i32 %i.0389, i32 1
  %76 = ptrtoint ptr %ia_rows.i277 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ia_rows.i277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp329.not.i278 = icmp eq i32 %77, 0
  br i1 %cmp329.not.i278, label %if.end.i279.ar9003_hw_prog_ini.exit297_crit_edge, label %if.end.i279.for.body.i291_crit_edge

if.end.i279.for.body.i291_crit_edge:              ; preds = %if.end.i279
  br label %for.body.i291

if.end.i279.ar9003_hw_prog_ini.exit297_crit_edge: ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit297

for.body.i291:                                    ; preds = %do.end.i296.for.body.i291_crit_edge, %if.end.i279.for.body.i291_crit_edge
  %i.031.i283 = phi i32 [ %inc15.i288, %do.end.i296.for.body.i291_crit_edge ], [ 0, %if.end.i279.for.body.i291_crit_edge ]
  %78 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx16, align 4
  %80 = ptrtoint ptr %ia_columns.i274 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ia_columns.i274, align 4
  %mul.i284 = mul i32 %81, %i.031.i283
  %arrayidx.i285 = getelementptr i32, ptr %79, i32 %mul.i284
  %82 = ptrtoint ptr %arrayidx.i285 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i285, align 4
  %add9.i286 = add i32 %mul.i284, %spec.store.select.i276
  %arrayidx10.i287 = getelementptr i32, ptr %79, i32 %add9.i286
  %84 = ptrtoint ptr %arrayidx10.i287 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx10.i287, align 4
  %86 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write.i, align 4
  tail call void %87(ptr noundef %ah, i32 noundef %85, i32 noundef %83) #8
  %inc15.i288 = add nuw i32 %i.031.i283, 1
  %rem.i289 = and i32 %inc15.i288, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i289)
  %cmp11.i290 = icmp eq i32 %rem.i289, 0
  br i1 %cmp11.i290, label %land.lhs.true.i293, label %for.body.i291.do.end.i296_crit_edge

for.body.i291.do.end.i296_crit_edge:              ; preds = %for.body.i291
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i296

land.lhs.true.i293:                               ; preds = %for.body.i291
  %88 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus_ops.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp12.not.i292 = icmp eq i32 %91, 2
  br i1 %cmp12.not.i292, label %land.lhs.true.i293.do.end.i296_crit_edge, label %if.then13.i294

land.lhs.true.i293.do.end.i296_crit_edge:         ; preds = %land.lhs.true.i293
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i296

if.then13.i294:                                   ; preds = %land.lhs.true.i293
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748) #8
  br label %do.end.i296

do.end.i296:                                      ; preds = %if.then13.i294, %land.lhs.true.i293.do.end.i296_crit_edge, %for.body.i291.do.end.i296_crit_edge
  %93 = ptrtoint ptr %ia_rows.i277 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ia_rows.i277, align 4
  %cmp3.i295 = icmp ult i32 %inc15.i288, %94
  br i1 %cmp3.i295, label %do.end.i296.for.body.i291_crit_edge, label %do.end.i296.ar9003_hw_prog_ini.exit297_crit_edge

do.end.i296.ar9003_hw_prog_ini.exit297_crit_edge: ; preds = %do.end.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit297

do.end.i296.for.body.i291_crit_edge:              ; preds = %do.end.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i291

ar9003_hw_prog_ini.exit297:                       ; preds = %do.end.i296.ar9003_hw_prog_ini.exit297_crit_edge, %if.end.i279.ar9003_hw_prog_ini.exit297_crit_edge, %ar9003_hw_prog_ini.exit272.ar9003_hw_prog_ini.exit297_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0389)
  %cmp17 = icmp eq i32 %i.0389, 2
  br i1 %cmp17, label %land.lhs.true, label %ar9003_hw_prog_ini.exit297.for.inc_crit_edge

ar9003_hw_prog_ini.exit297.for.inc_crit_edge:     ; preds = %ar9003_hw_prog_ini.exit297
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %ar9003_hw_prog_ini.exit297
  %95 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %96)
  %cmp19 = icmp eq i32 %96, 640
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true21:                                  ; preds = %land.lhs.true
  %97 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %macRev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %98)
  %cmp24 = icmp ugt i16 %98, 1
  br i1 %cmp24, label %if.then26, label %land.lhs.true21.ar9003_doubler_fix.exit_crit_edge

land.lhs.true21.ar9003_doubler_fix.exit_crit_edge: ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_doubler_fix.exit

if.then26:                                        ; preds = %land.lhs.true21
  %99 = ptrtoint ptr %ini_radio_post_sys2ant to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ini_radio_post_sys2ant, align 4
  %tobool.not.i298 = icmp eq ptr %100, null
  br i1 %tobool.not.i298, label %if.then26.for.endthread-pre-split_crit_edge, label %if.end.i304

if.then26.for.endthread-pre-split_crit_edge:      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

if.end.i304:                                      ; preds = %if.then26
  %101 = ptrtoint ptr %ia_columns.i299 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ia_columns.i299, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %modesIndex.0)
  %cmp.not.i300 = icmp ugt i32 %102, %modesIndex.0
  %spec.store.select.i301 = select i1 %cmp.not.i300, i32 %modesIndex.0, i32 1
  %103 = ptrtoint ptr %ia_rows.i302 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ia_rows.i302, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp329.not.i303 = icmp eq i32 %104, 0
  br i1 %cmp329.not.i303, label %if.end.i304.for.endthread-pre-split_crit_edge, label %if.end.i304.for.body.i316_crit_edge

if.end.i304.for.body.i316_crit_edge:              ; preds = %if.end.i304
  br label %for.body.i316

if.end.i304.for.endthread-pre-split_crit_edge:    ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.body.i316:                                    ; preds = %do.end.i321.for.body.i316_crit_edge, %if.end.i304.for.body.i316_crit_edge
  %i.031.i308 = phi i32 [ %inc15.i313, %do.end.i321.for.body.i316_crit_edge ], [ 0, %if.end.i304.for.body.i316_crit_edge ]
  %105 = ptrtoint ptr %ini_radio_post_sys2ant to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ini_radio_post_sys2ant, align 4
  %107 = ptrtoint ptr %ia_columns.i299 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ia_columns.i299, align 4
  %mul.i309 = mul i32 %108, %i.031.i308
  %arrayidx.i310 = getelementptr i32, ptr %106, i32 %mul.i309
  %109 = ptrtoint ptr %arrayidx.i310 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i310, align 4
  %add9.i311 = add i32 %mul.i309, %spec.store.select.i301
  %arrayidx10.i312 = getelementptr i32, ptr %106, i32 %add9.i311
  %111 = ptrtoint ptr %arrayidx10.i312 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx10.i312, align 4
  %113 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write.i, align 4
  tail call void %114(ptr noundef %ah, i32 noundef %112, i32 noundef %110) #8
  %inc15.i313 = add nuw i32 %i.031.i308, 1
  %rem.i314 = and i32 %inc15.i313, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i314)
  %cmp11.i315 = icmp eq i32 %rem.i314, 0
  br i1 %cmp11.i315, label %land.lhs.true.i318, label %for.body.i316.do.end.i321_crit_edge

for.body.i316.do.end.i321_crit_edge:              ; preds = %for.body.i316
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i321

land.lhs.true.i318:                               ; preds = %for.body.i316
  %115 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bus_ops.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %118)
  %cmp12.not.i317 = icmp eq i32 %118, 2
  br i1 %cmp12.not.i317, label %land.lhs.true.i318.do.end.i321_crit_edge, label %if.then13.i319

land.lhs.true.i318.do.end.i321_crit_edge:         ; preds = %land.lhs.true.i318
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i321

if.then13.i319:                                   ; preds = %land.lhs.true.i318
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748) #8
  br label %do.end.i321

do.end.i321:                                      ; preds = %if.then13.i319, %land.lhs.true.i318.do.end.i321_crit_edge, %for.body.i316.do.end.i321_crit_edge
  %120 = ptrtoint ptr %ia_rows.i302 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ia_rows.i302, align 4
  %cmp3.i320 = icmp ult i32 %inc15.i313, %121
  br i1 %cmp3.i320, label %do.end.i321.for.body.i316_crit_edge, label %do.end.i321.for.inc_crit_edge

do.end.i321.for.inc_crit_edge:                    ; preds = %do.end.i321
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end.i321.for.body.i316_crit_edge:              ; preds = %do.end.i321
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i316

for.inc:                                          ; preds = %do.end.i321.for.inc_crit_edge, %ar9003_hw_prog_ini.exit297.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0389, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.endthread-pre-split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.endthread-pre-split_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.endthread-pre-split:                          ; preds = %for.inc.for.endthread-pre-split_crit_edge, %if.end.i304.for.endthread-pre-split_crit_edge, %if.then26.for.endthread-pre-split_crit_edge
  %122 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr393 = load i32, ptr %macVersion, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %land.lhs.true.for.end_crit_edge
  %123 = phi i32 [ %.pr393, %for.endthread-pre-split ], [ %96, %land.lhs.true.for.end_crit_edge ]
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %123, label %for.end.ar9003_doubler_fix.exit_crit_edge [
    i32 448, label %for.end.if.then.i_crit_edge
    i32 1024, label %for.end.if.then.i_crit_edge398
  ]

for.end.if.then.i_crit_edge398:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.end.if.then.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.end.ar9003_doubler_fix.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_doubler_fix.exit

if.then.i:                                        ; preds = %for.end.if.then.i_crit_edge, %for.end.if.then.i_crit_edge398
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %125 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %126(ptr noundef %ah, i32 noundef 90372, i32 noundef 12, i32 noundef 0) #8
  %127 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmw.i, align 4
  %call14.i = tail call i32 %128(ptr noundef %ah, i32 noundef 91396, i32 noundef 12, i32 noundef 0) #8
  %129 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rmw.i, align 4
  %call17.i = tail call i32 %130(ptr noundef %ah, i32 noundef 92420, i32 noundef 12, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 42949600) #8
  %132 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rmw.i, align 4
  %call20.i = tail call i32 %133(ptr noundef %ah, i32 noundef 90372, i32 noundef 0, i32 noundef 4) #8
  %134 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rmw.i, align 4
  %call23.i = tail call i32 %135(ptr noundef %ah, i32 noundef 91396, i32 noundef 0, i32 noundef 4) #8
  %136 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rmw.i, align 4
  %call26.i = tail call i32 %137(ptr noundef %ah, i32 noundef 92420, i32 noundef 0, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748) #8
  %139 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rmw.i, align 4
  %call29.i = tail call i32 %140(ptr noundef %ah, i32 noundef 90372, i32 noundef 4, i32 noundef 4) #8
  %141 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rmw.i, align 4
  %call32.i = tail call i32 %142(ptr noundef %ah, i32 noundef 91396, i32 noundef 4, i32 noundef 4) #8
  %143 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmw.i, align 4
  %call35.i = tail call i32 %144(ptr noundef %ah, i32 noundef 92420, i32 noundef 4, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 42949600) #8
  %146 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rmw.i, align 4
  %call38.i = tail call i32 %147(ptr noundef %ah, i32 noundef 90284, i32 noundef 7864320, i32 noundef 7864320) #8
  %148 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rmw.i, align 4
  %call41.i = tail call i32 %149(ptr noundef %ah, i32 noundef 90372, i32 noundef 0, i32 noundef 12) #8
  %150 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rmw.i, align 4
  %call44.i = tail call i32 %151(ptr noundef %ah, i32 noundef 91396, i32 noundef 0, i32 noundef 12) #8
  %152 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rmw.i, align 4
  %call47.i = tail call i32 %153(ptr noundef %ah, i32 noundef 92420, i32 noundef 0, i32 noundef 12) #8
  br label %ar9003_doubler_fix.exit

ar9003_doubler_fix.exit:                          ; preds = %if.then.i, %for.end.ar9003_doubler_fix.exit_crit_edge, %land.lhs.true21.ar9003_doubler_fix.exit_crit_edge
  %iniModesRxGain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 93
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniModesRxGain, i32 noundef 1, ptr noundef nonnull %regWrites) #8
  %154 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %155)
  %cmp30 = icmp eq i32 %155, 640
  br i1 %cmp30, label %land.lhs.true32, label %ar9003_doubler_fix.exit.if.end51_crit_edge

ar9003_doubler_fix.exit.if.end51_crit_edge:       ; preds = %ar9003_doubler_fix.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true32:                                  ; preds = %ar9003_doubler_fix.exit
  %156 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %macRev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %157)
  %cmp36 = icmp ugt i16 %157, 1
  br i1 %cmp36, label %if.then38, label %land.lhs.true32.if.end51thread-pre-split_crit_edge

land.lhs.true32.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51thread-pre-split

if.then38:                                        ; preds = %land.lhs.true32
  %call = call i32 @ar9003_hw_get_rx_gain_idx(ptr noundef %ah) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp39 = icmp eq i32 %call, 2
  br i1 %cmp39, label %if.then41, label %if.then38.if.end42_crit_edge

if.then38.if.end42_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %ini_modes_rxgain_bb_core = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 101
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %ini_modes_rxgain_bb_core, i32 noundef 1, ptr noundef nonnull %regWrites) #8
  %ini_modes_rxgain_bb_postamble = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 102
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %ini_modes_rxgain_bb_postamble, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then38.if.end42_crit_edge
  %call43 = call i32 @ar9003_hw_get_rx_gain_idx(ptr noundef %ah) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 2
  br i1 %cmp44, label %if.end42.if.then49_crit_edge, label %lor.lhs.false

if.end42.if.then49_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

lor.lhs.false:                                    ; preds = %if.end42
  %call46 = call i32 @ar9003_hw_get_rx_gain_idx(ptr noundef %ah) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 3
  br i1 %cmp47, label %lor.lhs.false.if.then49_crit_edge, label %lor.lhs.false.if.end51thread-pre-split_crit_edge

lor.lhs.false.if.end51thread-pre-split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51thread-pre-split

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %if.end42.if.then49_crit_edge
  %ini_modes_rxgain_xlna = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 100
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %ini_modes_rxgain_xlna, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #8
  br label %if.end51thread-pre-split

if.end51thread-pre-split:                         ; preds = %if.then49, %lor.lhs.false.if.end51thread-pre-split_crit_edge, %land.lhs.true32.if.end51thread-pre-split_crit_edge
  %158 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr = load i32, ptr %macVersion, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51thread-pre-split, %ar9003_doubler_fix.exit.if.end51_crit_edge
  %159 = phi i32 [ %.pr, %if.end51thread-pre-split ], [ %155, %ar9003_doubler_fix.exit.if.end51_crit_edge ]
  %160 = zext i32 %159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %159, label %if.end51.if.end62_crit_edge [
    i32 1024, label %if.end51.if.then61_crit_edge
    i32 1536, label %if.end51.if.then61_crit_edge399
  ]

if.end51.if.then61_crit_edge399:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

if.end51.if.then61_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %if.end51.if.then61_crit_edge, %if.end51.if.then61_crit_edge399
  %ini_modes_rx_gain_bounds = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 94
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %ini_modes_rx_gain_bounds, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end51.if.end62_crit_edge
  %161 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %162)
  %cmp65 = icmp eq i32 %162, 1536
  br i1 %cmp65, label %land.lhs.true67, label %if.end62.if.end73_crit_edge

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

land.lhs.true67:                                  ; preds = %if.end62
  %call68 = call i32 @ar9003_hw_get_rx_gain_idx(ptr noundef %ah) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %land.lhs.true67.if.end73thread-pre-split_crit_edge

land.lhs.true67.if.end73thread-pre-split_crit_edge: ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73thread-pre-split

if.then71:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  %ini_modes_rxgain_xlna72 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 100
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %ini_modes_rxgain_xlna72, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #8
  br label %if.end73thread-pre-split

if.end73thread-pre-split:                         ; preds = %if.then71, %land.lhs.true67.if.end73thread-pre-split_crit_edge
  %163 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr386 = load i32, ptr %macVersion, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end73thread-pre-split, %if.end62.if.end73_crit_edge
  %164 = phi i32 [ %.pr386, %if.end73thread-pre-split ], [ %162, %if.end62.if.end73_crit_edge ]
  %165 = zext i32 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %164, label %if.else107 [
    i32 1024, label %if.then93
    i32 1536, label %if.then100
    i32 1280, label %if.end73.if.end109_crit_edge
  ]

if.end73.if.end109_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then93:                                        ; preds = %if.end73
  %166 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %channelFlags, align 2
  %conv.i = zext i16 %167 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i324 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i324, label %if.then.i325, label %if.end.i326

if.then.i325:                                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %and3.i = and i32 %conv.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i32 8, i32 7
  br label %if.end109

if.end.i326:                                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %channel.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %168 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5351, i16 %169)
  %cmp.i = icmp ult i16 %169, 5351
  call void @__sanitizer_cov_trace_const_cmp2(i16 5601, i16 %169)
  %cmp16.i = icmp ult i16 %169, 5601
  %.1.i = select i1 %cmp16.i, i32 3, i32 5
  %ret.0.i = select i1 %cmp.i, i32 1, i32 %.1.i
  %170 = and i16 %167, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %170)
  %tobool25.not.i = icmp ne i16 %170, 0
  %inc.i = zext i1 %tobool25.not.i to i32
  %ret.1.i = add nuw nsw i32 %ret.0.i, %inc.i
  br label %if.end109

if.then100:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %channelFlags, align 2
  %conv.i328 = zext i16 %172 to i32
  %and.i329 = and i32 %conv.i328, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i329)
  %tobool.not.i330 = icmp eq i32 %and.i329, 0
  %and3.i331 = and i32 %conv.i328, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i331)
  %tobool4.not.i332 = icmp eq i32 %and3.i331, 0
  %..i333 = select i1 %tobool4.not.i332, i32 2, i32 1
  %retval.0.i334 = select i1 %tobool.not.i330, i32 %..i333, i32 0
  br label %if.end109

if.else107:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.then100, %if.end.i326, %if.then.i325, %if.end73.if.end109_crit_edge
  %modes_txgain_index.1.sink = phi i32 [ %modesIndex.0, %if.else107 ], [ %retval.0.i334, %if.then100 ], [ %..i, %if.then.i325 ], [ %ret.1.i, %if.end.i326 ], [ 1, %if.end73.if.end109_crit_edge ]
  %iniModesTxGain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 95
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniModesTxGain, i32 noundef %modes_txgain_index.1.sink, ptr noundef nonnull %regWrites) #8
  %173 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %channelFlags, align 2
  %175 = and i16 %174, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %175)
  %tobool113.not = icmp eq i16 %175, 0
  br i1 %tobool113.not, label %if.end109.if.end118_crit_edge, label %land.lhs.true114

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

land.lhs.true114:                                 ; preds = %if.end109
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %176 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %caps, align 4
  %and115 = and i32 %177, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %land.lhs.true114.if.end118_crit_edge, label %if.then117

land.lhs.true114.if.end118_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then117:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #10
  %iniModesFastClock = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 91
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniModesFastClock, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #8
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %land.lhs.true114.if.end118_crit_edge, %if.end109.if.end118_crit_edge
  %iniAdditional = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 92
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniAdditional, i32 noundef 1, ptr noundef nonnull %regWrites) #8
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %178 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2484, i16 %179)
  %cmp120 = icmp eq i16 %179, 2484
  br i1 %cmp120, label %if.then122, label %if.end118.if.end130_crit_edge

if.end118.if.end130_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then122:                                       ; preds = %if.end118
  %iniCckfirJapan2484 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 97
  %180 = ptrtoint ptr %iniCckfirJapan2484 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %iniCckfirJapan2484, align 4
  %tobool.not.i335 = icmp eq ptr %181, null
  br i1 %tobool.not.i335, label %if.then122.ar9003_hw_prog_ini.exit358_crit_edge, label %if.end.i340

if.then122.ar9003_hw_prog_ini.exit358_crit_edge:  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit358

if.end.i340:                                      ; preds = %if.then122
  %ia_columns.i336 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 97, i32 2
  %ia_rows.i338 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 97, i32 1
  %182 = ptrtoint ptr %ia_rows.i338 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ia_rows.i338, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp329.not.i339 = icmp eq i32 %183, 0
  br i1 %cmp329.not.i339, label %if.end.i340.ar9003_hw_prog_ini.exit358_crit_edge, label %if.end.i340.for.body.i352_crit_edge

if.end.i340.for.body.i352_crit_edge:              ; preds = %if.end.i340
  br label %for.body.i352

if.end.i340.ar9003_hw_prog_ini.exit358_crit_edge: ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit358

for.body.i352:                                    ; preds = %do.end.i357.for.body.i352_crit_edge, %if.end.i340.for.body.i352_crit_edge
  %i.031.i344 = phi i32 [ %inc15.i349, %do.end.i357.for.body.i352_crit_edge ], [ 0, %if.end.i340.for.body.i352_crit_edge ]
  %184 = ptrtoint ptr %iniCckfirJapan2484 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %iniCckfirJapan2484, align 4
  %186 = ptrtoint ptr %ia_columns.i336 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ia_columns.i336, align 4
  %mul.i345 = mul i32 %187, %i.031.i344
  %arrayidx.i346 = getelementptr i32, ptr %185, i32 %mul.i345
  %188 = ptrtoint ptr %arrayidx.i346 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx.i346, align 4
  %add9.i347 = add i32 %mul.i345, 1
  %arrayidx10.i348 = getelementptr i32, ptr %185, i32 %add9.i347
  %190 = ptrtoint ptr %arrayidx10.i348 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx10.i348, align 4
  %192 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write.i, align 4
  call void %193(ptr noundef %ah, i32 noundef %191, i32 noundef %189) #8
  %inc15.i349 = add nuw i32 %i.031.i344, 1
  %rem.i350 = and i32 %inc15.i349, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i350)
  %cmp11.i351 = icmp eq i32 %rem.i350, 0
  br i1 %cmp11.i351, label %land.lhs.true.i354, label %for.body.i352.do.end.i357_crit_edge

for.body.i352.do.end.i357_crit_edge:              ; preds = %for.body.i352
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i357

land.lhs.true.i354:                               ; preds = %for.body.i352
  %194 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %bus_ops.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %197)
  %cmp12.not.i353 = icmp eq i32 %197, 2
  br i1 %cmp12.not.i353, label %land.lhs.true.i354.do.end.i357_crit_edge, label %if.then13.i355

land.lhs.true.i354.do.end.i357_crit_edge:         ; preds = %land.lhs.true.i354
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i357

if.then13.i355:                                   ; preds = %land.lhs.true.i354
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %198(i32 noundef 214748) #8
  br label %do.end.i357

do.end.i357:                                      ; preds = %if.then13.i355, %land.lhs.true.i354.do.end.i357_crit_edge, %for.body.i352.do.end.i357_crit_edge
  %199 = ptrtoint ptr %ia_rows.i338 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ia_rows.i338, align 4
  %cmp3.i356 = icmp ult i32 %inc15.i349, %200
  br i1 %cmp3.i356, label %do.end.i357.for.body.i352_crit_edge, label %do.end.i357.ar9003_hw_prog_ini.exit358_crit_edge

do.end.i357.ar9003_hw_prog_ini.exit358_crit_edge: ; preds = %do.end.i357
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit358

do.end.i357.for.body.i352_crit_edge:              ; preds = %do.end.i357
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i352

ar9003_hw_prog_ini.exit358:                       ; preds = %do.end.i357.ar9003_hw_prog_ini.exit358_crit_edge, %if.end.i340.ar9003_hw_prog_ini.exit358_crit_edge, %if.then122.ar9003_hw_prog_ini.exit358_crit_edge
  %201 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %202)
  %cmp125 = icmp eq i32 %202, 1280
  br i1 %cmp125, label %if.then127, label %ar9003_hw_prog_ini.exit358.if.end130_crit_edge

ar9003_hw_prog_ini.exit358.if.end130_crit_edge:   ; preds = %ar9003_hw_prog_ini.exit358
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then127:                                       ; preds = %ar9003_hw_prog_ini.exit358
  call void @__sanitizer_cov_trace_pc() #10
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %203 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rmw, align 4
  %call128 = call i32 %204(ptr noundef %ah, i32 noundef 41680, i32 noundef 0, i32 noundef 7) #8
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %ar9003_hw_prog_ini.exit358.if.end130_crit_edge, %if.end118.if.end130_crit_edge
  %modes_index = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 45
  %205 = ptrtoint ptr %modes_index to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %modesIndex.0, ptr %modes_index, align 4
  %rmw.i359 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %206 = ptrtoint ptr %rmw.i359 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rmw.i359, align 4
  %call.i360 = call i32 %207(ptr noundef %ah, i32 noundef 32840, i32 noundef 33554464, i32 noundef 0) #8
  %208 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ah, align 4
  %call2.i = call i32 %209(ptr noundef %ah, i32 noundef 33604) #8
  %and.i361 = and i32 %call2.i, -131273
  %or.i = or i32 %and.i361, 131208
  %210 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write.i, align 4
  call void %211(ptr noundef %ah, i32 noundef %or.i, i32 noundef 33604) #8
  %212 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %macVersion, align 4
  %214 = zext i32 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %213, label %if.end130.if.end23.i_crit_edge [
    i32 640, label %if.end130.if.then.i365_crit_edge
    i32 704, label %if.end130.if.then.i365_crit_edge400
  ]

if.end130.if.then.i365_crit_edge400:              ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i365

if.end130.if.then.i365_crit_edge:                 ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i365

if.end130.if.end23.i_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then.i365:                                     ; preds = %if.end130.if.then.i365_crit_edge, %if.end130.if.then.i365_crit_edge400
  %215 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %write.i, align 4
  call void %216(ptr noundef %ah, i32 noundef 3, i32 noundef 131116) #8
  %217 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ah, align 4
  %219 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %220)
  %cmp13.i = icmp eq i32 %220, 576
  %add.i = select i1 %cmp13.i, i32 42436, i32 42564
  %call14.i364 = call i32 %218(ptr noundef %ah, i32 noundef %add.i) #8
  %enabled_cals19.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 59
  %221 = ptrtoint ptr %enabled_cals19.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %enabled_cals19.i, align 2
  %223 = and i8 %222, -2
  %call14.lobit.i = lshr i32 %call14.i364, 31
  %224 = trunc i32 %call14.lobit.i to i8
  %.sink.i = or i8 %223, %224
  store i8 %.sink.i, ptr %enabled_cals19.i, align 2
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then.i365, %if.end130.if.end23.i_crit_edge
  %225 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ah, align 4
  %call26.i366 = call i32 %226(ptr noundef %ah, i32 noundef 41688) #8
  %enabled_cals35.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 59
  %227 = ptrtoint ptr %enabled_cals35.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %enabled_cals35.i, align 2
  %229 = and i8 %228, -5
  %230 = trunc i32 %call26.i366 to i8
  %231 = shl i8 %230, 1
  %232 = and i8 %231, 4
  %.sink131.i = or i8 %232, %229
  store i8 %.sink131.i, ptr %enabled_cals35.i, align 2
  %233 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %macVersion, align 4
  %235 = add i32 %234, -768
  %236 = call i32 @llvm.fshl.i32(i32 %235, i32 %235, i32 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %236)
  %switch.i = icmp ult i32 %236, 4
  br i1 %switch.i, label %if.then59.i, label %if.end23.i.ar9003_hw_override_ini.exit_crit_edge

if.end23.i.ar9003_hw_override_ini.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_override_ini.exit

if.then59.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %is_clk_25mhz.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 128
  %237 = ptrtoint ptr %is_clk_25mhz.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %is_clk_25mhz.i, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool60.not.i = icmp eq i8 %238, 0
  %239 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %234)
  %cmp78.i = icmp eq i32 %234, 20
  %cond80.i = select i1 %cmp78.i, i32 131128, i32 28728
  %..i367 = select i1 %tobool60.not.i, i32 1218, i32 760
  %.132.i = select i1 %tobool60.not.i, i32 1111040, i32 1110999
  %.133.i = select i1 %tobool60.not.i, i32 124928, i32 124846
  call void %240(ptr noundef %ah, i32 noundef %..i367, i32 noundef %cond80.i) #8
  %241 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write.i, align 4
  call void %242(ptr noundef %ah, i32 noundef %.132.i, i32 noundef 33348) #8
  %243 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write.i, align 4
  call void %244(ptr noundef %ah, i32 noundef %.133.i, i32 noundef 33356) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %245(i32 noundef 21474800) #8
  br label %ar9003_hw_override_ini.exit

ar9003_hw_override_ini.exit:                      ; preds = %if.then59.i, %if.end23.i.ar9003_hw_override_ini.exit_crit_edge
  %246 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ah, align 4
  %call.i368 = call i32 %247(ptr noundef %ah, i32 noundef 41476) #8
  %and.i369 = and i32 %call.i368, 2048
  %248 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %249)
  %cmp.i371 = icmp eq i32 %249, 1536
  %spec.select.v.i = select i1 %cmp.i371, i32 192, i32 704
  %spec.select.i = or i32 %spec.select.v.i, %and.i369
  %250 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %channelFlags, align 2
  %conv.i373 = zext i16 %251 to i32
  %and2.i = and i32 %conv.i373, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i374 = icmp eq i32 %and2.i, 0
  %and7.i = and i32 %conv.i373, 16
  %252 = or i32 %spec.select.i, %and7.i
  %spec.select41.i = or i32 %252, 4
  %phymode.1.i = select i1 %tobool.not.i374, i32 %spec.select.i, i32 %spec.select41.i
  %253 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %ah, align 4
  %call15.i = call i32 %254(ptr noundef %ah, i32 noundef 41476) #8
  %call15.masked.i = and i32 %call15.i, -1025
  %and17.i = or i32 %phymode.1.i, %call15.masked.i
  %255 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %write.i, align 4
  call void %256(ptr noundef %ah, i32 noundef %and17.i, i32 noundef 41476) #8
  call void @ath9k_hw_set11nmac2040(ptr noundef %ah, ptr noundef %chan) #8
  %257 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %write.i, align 4
  call void %258(ptr noundef %ah, i32 noundef 1638400, i32 noundef 100) #8
  %259 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %write.i, align 4
  call void %260(ptr noundef %ah, i32 noundef 983040, i32 noundef 108) #8
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %261 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %rxchainmask, align 1
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %263 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %txchainmask, align 4
  %tx_chainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 2
  %265 = ptrtoint ptr %tx_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %tx_chainmask.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %266)
  %cmp.i376 = icmp eq i8 %266, 5
  br i1 %cmp.i376, label %ar9003_hw_override_ini.exit.if.then.i379_crit_edge, label %lor.lhs.false.i

ar9003_hw_override_ini.exit.if.then.i379_crit_edge: ; preds = %ar9003_hw_override_ini.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i379

lor.lhs.false.i:                                  ; preds = %ar9003_hw_override_ini.exit
  %rx_chainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 3
  %267 = ptrtoint ptr %rx_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %rx_chainmask.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %268)
  %cmp4.i = icmp eq i8 %268, 5
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then.i379_crit_edge, label %lor.lhs.false.i.cleanup131_crit_edge

lor.lhs.false.i.cleanup131_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

lor.lhs.false.i.if.then.i379_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i379

if.then.i379:                                     ; preds = %lor.lhs.false.i.if.then.i379_crit_edge, %ar9003_hw_override_ini.exit.if.then.i379_crit_edge
  %269 = ptrtoint ptr %rmw.i359 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rmw.i359, align 4
  %call.i378 = call i32 %270(ptr noundef %ah, i32 noundef 41804, i32 noundef 64, i32 noundef 0) #8
  br label %cleanup131

cleanup131:                                       ; preds = %if.then.i379, %lor.lhs.false.i.cleanup131_crit_edge
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %271 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %write.i, align 4
  %conv7.i = zext i8 %262 to i32
  call void %272(ptr noundef %ah, i32 noundef %conv7.i, i32 noundef 41632) #8
  %273 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %write.i, align 4
  call void %274(ptr noundef %ah, i32 noundef %conv7.i, i32 noundef 41664) #8
  %275 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %caps.i, align 4
  %and.i381 = and i32 %276, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i381)
  %tobool.not.i382 = icmp eq i32 %and.i381, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %264)
  %cmp13.i383 = icmp eq i8 %264, 7
  %spec.store.select.i384 = select i1 %cmp13.i383, i8 3, i8 %264
  %tx.addr.0.i = select i1 %tobool.not.i382, i8 %264, i8 %spec.store.select.i384
  %277 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %write.i, align 4
  %conv19.i = zext i8 %tx.addr.0.i to i32
  call void %278(ptr noundef %ah, i32 noundef %conv19.i, i32 noundef 33580) #8
  call void @ath9k_hw_apply_txpower(ptr noundef %ah, ptr noundef %chan, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regWrites) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_set_rfmode(ptr noundef %ah, ptr noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %chan, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps, align 4
  %and8 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 260
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end.if.end12_crit_edge
  %rfMode.1 = phi i32 [ 4, %if.end.if.end12_crit_edge ], [ %spec.select, %land.lhs.true ]
  %5 = and i16 %1, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %if.end12.if.end22_crit_edge, label %if.then21

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %7 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %8(ptr noundef %ah, i32 noundef 41528, i32 noundef 3, i32 noundef 3) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end12.if.end22_crit_edge
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  tail call void %10(ptr noundef %ah, i32 noundef %rfMode.1, i32 noundef 41480) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_mark_phy_inactive(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef 0, i32 noundef 41484) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_set_delta_slope(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  %ds_coef_exp = alloca i32, align 4
  %ds_coef_man = alloca i32, align 4
  %centers = alloca %struct.chan_centers, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ds_coef_exp) #8
  %0 = ptrtoint ptr %ds_coef_exp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ds_coef_exp, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ds_coef_man) #8
  %1 = ptrtoint ptr %ds_coef_man to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ds_coef_man, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #8
  %2 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %centers, align 2, !annotation !75
  %3 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !75
  %5 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !75
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %7 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %channelFlags, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %spec.select = select i1 %tobool4.not, i32 1677721600, i32 419430400
  %clockMhzScaled.0 = select i1 %tobool.not, i32 %spec.select, i32 838860800
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #8
  %9 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %centers, align 2
  %conv8 = zext i16 %10 to i32
  %div = udiv i32 %clockMhzScaled.0, %conv8
  call void @ath9k_hw_get_delta_slope_vals(ptr noundef %ah, i32 noundef %div, ptr noundef nonnull %ds_coef_man, ptr noundef nonnull %ds_coef_exp) #8
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %11 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmw, align 4
  %13 = ptrtoint ptr %ds_coef_man to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ds_coef_man, align 4
  %shl = shl i32 %14, 17
  %call = call i32 %12(ptr noundef %ah, i32 noundef 38920, i32 noundef %shl, i32 noundef -131072) #8
  %15 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmw, align 4
  %17 = ptrtoint ptr %ds_coef_exp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ds_coef_exp, align 4
  %shl12 = shl i32 %18, 13
  %and13 = and i32 %shl12, 122880
  %call14 = call i32 %16(ptr noundef %ah, i32 noundef 38920, i32 noundef %and13, i32 noundef 122880) #8
  %mul = mul i32 %div, 9
  %div15 = udiv i32 %mul, 10
  call void @ath9k_hw_get_delta_slope_vals(ptr noundef %ah, i32 noundef %div15, ptr noundef nonnull %ds_coef_man, ptr noundef nonnull %ds_coef_exp) #8
  %19 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmw, align 4
  %21 = ptrtoint ptr %ds_coef_man to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ds_coef_man, align 4
  %shl18 = shl i32 %22, 4
  %and19 = and i32 %shl18, 524272
  %call20 = call i32 %20(ptr noundef %ah, i32 noundef 39956, i32 noundef %and19, i32 noundef 524272) #8
  %23 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmw, align 4
  %25 = ptrtoint ptr %ds_coef_exp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ds_coef_exp, align 4
  %and24 = and i32 %26, 15
  %call25 = call i32 %24(ptr noundef %ah, i32 noundef 39956, i32 noundef %and24, i32 noundef 15) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ds_coef_man) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ds_coef_exp) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar9003_hw_rfbus_req(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef 1, i32 noundef 41532) #8
  %call = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef 41536, i32 noundef 1, i32 noundef 1, i32 noundef 100000) #8
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_rfbus_done(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 41556) #8
  %and = and i32 %call, 16383
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %2 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curchan, align 4
  tail call void @ath9k_hw_synth_delay(ptr noundef %ah, ptr noundef %3, i32 noundef %and) #8
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  tail call void %5(ptr noundef %ah, i32 noundef 0, i32 noundef 41532) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar9003_hw_ani_control(ptr noundef %ah, i32 noundef %cmd, i32 noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %0 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curchan, align 4
  %ani_function = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 69
  %2 = ptrtoint ptr %ani_function to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ani_function, align 4
  %and = and i32 %3, %cmd
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %and, label %do.body426 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb160
    i32 4, label %sw.bb260
    i32 8, label %sw.bb366
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %param)
  %tobool = icmp ne i32 %param, 0
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %macVersion, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %6, label %if.end [
    i32 640, label %sw.bb.skip_ws_det_crit_edge
    i32 704, label %sw.bb.skip_ws_det_crit_edge807
  ]

sw.bb.skip_ws_det_crit_edge807:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_ws_det

sw.bb.skip_ws_det_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_ws_det

if.end:                                           ; preds = %sw.bb
  br i1 %tobool, label %cond.true72, label %if.end.cond.end77_crit_edge

if.end.cond.end77_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end77

cond.true72:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %iniDef = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11
  %8 = ptrtoint ptr %iniDef to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %iniDef, align 4
  %conv = zext i16 %9 to i32
  %phi.bo = shl nuw nsw i32 %conv, 14
  %phi.bo650 = and i32 %phi.bo, 2080768
  %m2ThreshLow10 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 1
  %10 = ptrtoint ptr %m2ThreshLow10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %m2ThreshLow10, align 2
  %conv11 = zext i16 %11 to i32
  %phi.bo651 = shl i32 %conv11, 21
  %phi.bo652 = and i32 %phi.bo651, 266338304
  %m1Thresh18 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 2
  %12 = ptrtoint ptr %m1Thresh18 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %m1Thresh18, align 4
  %conv19 = zext i16 %13 to i32
  %phi.bo653 = shl i32 %conv19, 17
  %phi.bo654 = and i32 %phi.bo653, 16646144
  %m2Thresh26 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 3
  %14 = ptrtoint ptr %m2Thresh26 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %m2Thresh26, align 2
  %conv27 = zext i16 %15 to i32
  %phi.bo655 = shl i32 %conv27, 24
  %phi.bo656 = and i32 %phi.bo655, 2130706432
  %m2CountThr34 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 4
  %16 = ptrtoint ptr %m2CountThr34 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %m2CountThr34, align 4
  %18 = and i16 %17, 31
  %phi.bo657 = zext i16 %18 to i32
  %m2CountThrLow42 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 5
  %19 = ptrtoint ptr %m2CountThrLow42 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %m2CountThrLow42, align 2
  %conv43 = zext i16 %20 to i32
  %phi.bo658 = shl nuw nsw i32 %conv43, 8
  %phi.bo659 = and i32 %phi.bo658, 16128
  %m1ThreshLowExt50 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 6
  %21 = ptrtoint ptr %m1ThreshLowExt50 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %m1ThreshLowExt50, align 4
  %conv51 = zext i16 %22 to i32
  %phi.bo660 = shl nuw nsw i32 %conv51, 14
  %phi.bo661 = and i32 %phi.bo660, 2080768
  %m2ThreshLowExt58 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 7
  %23 = ptrtoint ptr %m2ThreshLowExt58 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %m2ThreshLowExt58, align 2
  %conv59 = zext i16 %24 to i32
  %phi.bo662 = shl i32 %conv59, 21
  %phi.bo663 = and i32 %phi.bo662, 266338304
  %m1ThreshExt66 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 8
  %25 = ptrtoint ptr %m1ThreshExt66 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %m1ThreshExt66, align 4
  %27 = and i16 %26, 127
  %phi.bo664 = zext i16 %27 to i32
  %m2ThreshExt74 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 9
  %28 = ptrtoint ptr %m2ThreshExt74 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %m2ThreshExt74, align 2
  %conv75 = zext i16 %29 to i32
  %phi.bo665 = shl nuw nsw i32 %conv75, 7
  %phi.bo666 = and i32 %phi.bo665, 16256
  br label %cond.end77

cond.end77:                                       ; preds = %cond.true72, %if.end.cond.end77_crit_edge
  %cond70801 = phi i32 [ %phi.bo664, %cond.true72 ], [ 127, %if.end.cond.end77_crit_edge ]
  %cond54750760799 = phi i32 [ %phi.bo661, %cond.true72 ], [ 2080768, %if.end.cond.end77_crit_edge ]
  %cond38711719748762797 = phi i32 [ %phi.bo657, %cond.true72 ], [ 31, %if.end.cond.end77_crit_edge ]
  %cond22684690709721746764795 = phi i32 [ %phi.bo654, %cond.true72 ], [ 16646144, %if.end.cond.end77_crit_edge ]
  %cond6669673682692707723744766793 = phi i32 [ %phi.bo650, %cond.true72 ], [ 2080768, %if.end.cond.end77_crit_edge ]
  %cond14675680694705725742768791 = phi i32 [ %phi.bo652, %cond.true72 ], [ 266338304, %if.end.cond.end77_crit_edge ]
  %cond30696703727740770789 = phi i32 [ %phi.bo656, %cond.true72 ], [ 2130706432, %if.end.cond.end77_crit_edge ]
  %cond46729738772787 = phi i32 [ %phi.bo659, %cond.true72 ], [ 16128, %if.end.cond.end77_crit_edge ]
  %cond62774785 = phi i32 [ %phi.bo663, %cond.true72 ], [ 266338304, %if.end.cond.end77_crit_edge ]
  %cond78 = phi i32 [ %phi.bo666, %cond.true72 ], [ 16256, %if.end.cond.end77_crit_edge ]
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %30 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw, align 4
  %call80 = tail call i32 %31(ptr noundef %ah, i32 noundef 38952, i32 noundef %cond6669673682692707723744766793, i32 noundef 2080768) #8
  %32 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw, align 4
  %call85 = tail call i32 %33(ptr noundef %ah, i32 noundef 38952, i32 noundef %cond14675680694705725742768791, i32 noundef 266338304) #8
  %34 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw, align 4
  %call90 = tail call i32 %35(ptr noundef %ah, i32 noundef 38948, i32 noundef %cond22684690709721746764795, i32 noundef 16646144) #8
  %36 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmw, align 4
  %call95 = tail call i32 %37(ptr noundef %ah, i32 noundef 38948, i32 noundef %cond30696703727740770789, i32 noundef 2130706432) #8
  %38 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw, align 4
  %call100 = tail call i32 %39(ptr noundef %ah, i32 noundef 38948, i32 noundef %cond38711719748762797, i32 noundef 31) #8
  %40 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmw, align 4
  %call105 = tail call i32 %41(ptr noundef %ah, i32 noundef 38952, i32 noundef %cond46729738772787, i32 noundef 16128) #8
  %42 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmw, align 4
  %call110 = tail call i32 %43(ptr noundef %ah, i32 noundef 38956, i32 noundef %cond54750760799, i32 noundef 2080768) #8
  %44 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmw, align 4
  %call115 = tail call i32 %45(ptr noundef %ah, i32 noundef 38956, i32 noundef %cond62774785, i32 noundef 266338304) #8
  %46 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw, align 4
  %call120 = tail call i32 %47(ptr noundef %ah, i32 noundef 38956, i32 noundef %cond70801, i32 noundef 127) #8
  %48 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmw, align 4
  %call125 = tail call i32 %49(ptr noundef %ah, i32 noundef 38956, i32 noundef %cond78, i32 noundef 16256) #8
  br label %skip_ws_det

skip_ws_det:                                      ; preds = %cond.end77, %sw.bb.skip_ws_det_crit_edge, %sw.bb.skip_ws_det_crit_edge807
  %rmw129 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %50 = ptrtoint ptr %rmw129 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw129, align 4
  br i1 %tobool, label %if.then127, label %if.else

if.then127:                                       ; preds = %skip_ws_det
  call void @__sanitizer_cov_trace_pc() #10
  %call130 = tail call i32 %51(ptr noundef %ah, i32 noundef 38952, i32 noundef 1, i32 noundef 0) #8
  br label %if.end134

if.else:                                          ; preds = %skip_ws_det
  call void @__sanitizer_cov_trace_pc() #10
  %call133 = tail call i32 %51(ptr noundef %ah, i32 noundef 38952, i32 noundef 0, i32 noundef 1) #8
  br label %if.end134

if.end134:                                        ; preds = %if.else, %if.then127
  %ofdmWeakSigDetect = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 7
  %52 = ptrtoint ptr %ofdmWeakSigDetect to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ofdmWeakSigDetect, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool135.not = icmp eq i8 %53, 0
  %54 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %54)
  %cmp137.not = icmp eq i8 %53, %54
  br i1 %cmp137.not, label %if.end134.do.body434_crit_edge, label %do.body

if.end134.do.body434_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body434

do.body:                                          ; preds = %if.end134
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug_mask, align 4
  %and140 = and i32 %56, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body.do.end_crit_edge, label %if.then142

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then142:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %channel, align 4
  %conv143 = zext i16 %58 to i32
  %cond147 = select i1 %tobool135.not, ptr @.str.11, ptr @.str.10
  %cond149 = select i1 %tobool, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %conv143, ptr noundef nonnull %cond147, ptr noundef nonnull %cond149) #8
  br label %do.end

do.end:                                           ; preds = %if.then142, %do.body.do.end_crit_edge
  %ast_ani_ofdmoff = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 3
  %ast_ani_ofdmon = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 2
  %ast_ani_ofdmoff.sink803 = select i1 %tobool, ptr %ast_ani_ofdmon, ptr %ast_ani_ofdmoff
  %59 = ptrtoint ptr %ast_ani_ofdmoff.sink803 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ast_ani_ofdmoff.sink803, align 4
  %inc155 = add i32 %60, 1
  store i32 %inc155, ptr %ast_ani_ofdmoff.sink803, align 4
  %61 = ptrtoint ptr %ofdmWeakSigDetect to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %54, ptr %ofdmWeakSigDetect, align 1
  br label %do.body434

sw.bb160:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %param)
  %cmp161 = icmp ugt i32 %param, 8
  br i1 %cmp161, label %do.body164, label %if.end172

do.body164:                                       ; preds = %sw.bb160
  %debug_mask165 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %62 = ptrtoint ptr %debug_mask165 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug_mask165, align 4
  %and166 = and i32 %63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %do.body164.cleanup454_crit_edge, label %if.then168

do.body164.cleanup454_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup454

if.then168:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.12, i32 noundef %param, i32 noundef 9) #8
  br label %cleanup454

if.end172:                                        ; preds = %sw.bb160
  %arrayidx = getelementptr [9 x i32], ptr @firstep_table, i32 0, i32 %param
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %firstep = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 10
  %66 = ptrtoint ptr %firstep to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %firstep, align 4
  %conv174 = zext i16 %67 to i32
  %add = add i32 %65, %conv174
  %68 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 20)
  %rmw184 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %70 = ptrtoint ptr %rmw184 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmw184, align 4
  %shl185 = shl nuw nsw i32 %69, 12
  %call187 = tail call i32 %71(ptr noundef %ah, i32 noundef 40464, i32 noundef %shl185, i32 noundef 258048) #8
  %firstepLow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 11
  %72 = ptrtoint ptr %firstepLow to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %firstepLow, align 2
  %conv191 = zext i16 %73 to i32
  %add192 = add i32 %65, %conv191
  %74 = tail call i32 @llvm.smax.i32(i32 %add192, i32 0)
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 20)
  %76 = ptrtoint ptr %rmw184 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmw184, align 4
  %shl203 = shl nuw nsw i32 %75, 6
  %call205 = tail call i32 %77(ptr noundef %ah, i32 noundef 38944, i32 noundef %shl203, i32 noundef 4032) #8
  %firstepLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 6
  %78 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %firstepLevel, align 2
  %conv206 = zext i8 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv206, i32 %param)
  %cmp207.not = icmp eq i32 %conv206, %param
  br i1 %cmp207.not, label %if.end172.do.body434_crit_edge, label %do.body210

if.end172.do.body434_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body434

do.body210:                                       ; preds = %if.end172
  %debug_mask211 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %80 = ptrtoint ptr %debug_mask211 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %debug_mask211, align 4
  %and212 = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %do.body210.do.body225_crit_edge, label %if.then214

do.body210.do.body225_crit_edge:                  ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body225

if.then214:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #10
  %channel215 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %82 = ptrtoint ptr %channel215 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %channel215, align 4
  %conv216 = zext i16 %83 to i32
  %84 = ptrtoint ptr %firstep to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %firstep, align 4
  %conv221 = zext i16 %85 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.13, i32 noundef %conv216, i32 noundef %conv206, i32 noundef %param, i32 noundef 2, i32 noundef %69, i32 noundef %conv221) #8
  br label %do.body225

do.body225:                                       ; preds = %if.then214, %do.body210.do.body225_crit_edge
  %86 = ptrtoint ptr %debug_mask211 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %debug_mask211, align 4
  %and227 = and i32 %87, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228.not = icmp eq i32 %and227, 0
  br i1 %tobool228.not, label %do.body225.do.end239_crit_edge, label %if.then229

do.body225.do.end239_crit_edge:                   ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end239

if.then229:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #10
  %channel230 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %88 = ptrtoint ptr %channel230 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %channel230, align 4
  %conv231 = zext i16 %89 to i32
  %90 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %firstepLevel, align 2
  %conv233 = zext i8 %91 to i32
  %92 = ptrtoint ptr %firstepLow to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %firstepLow, align 2
  %conv236 = zext i16 %93 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.14, i32 noundef %conv231, i32 noundef %conv233, i32 noundef %param, i32 noundef 2, i32 noundef %75, i32 noundef %conv236) #8
  br label %do.end239

do.end239:                                        ; preds = %if.then229, %do.body225.do.end239_crit_edge
  %94 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %firstepLevel, align 2
  %conv241 = zext i8 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv241, i32 %param)
  %cmp242 = icmp ult i32 %conv241, %param
  br i1 %cmp242, label %if.then244, label %if.else247

if.then244:                                       ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #10
  %ast_ani_stepup = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 6
  br label %cleanup.sink.split

if.else247:                                       ; preds = %do.end239
  call void @__sanitizer_cov_trace_cmp4(i32 %conv241, i32 %param)
  %cmp250 = icmp ugt i32 %conv241, %param
  br i1 %cmp250, label %if.then252, label %if.else247.cleanup_crit_edge

if.else247.cleanup_crit_edge:                     ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then252:                                       ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #10
  %ast_ani_stepdown = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then252, %if.then244
  %ast_ani_stepup.sink804 = phi ptr [ %ast_ani_stepup, %if.then244 ], [ %ast_ani_stepdown, %if.then252 ]
  %96 = ptrtoint ptr %ast_ani_stepup.sink804 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ast_ani_stepup.sink804, align 4
  %inc246 = add i32 %97, 1
  store i32 %inc246, ptr %ast_ani_stepup.sink804, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else247.cleanup_crit_edge
  %conv257 = trunc i32 %param to i8
  %98 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv257, ptr %firstepLevel, align 2
  br label %do.body434

sw.bb260:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %param)
  %cmp262 = icmp ugt i32 %param, 7
  br i1 %cmp262, label %do.body265, label %if.end273

do.body265:                                       ; preds = %sw.bb260
  %debug_mask266 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %99 = ptrtoint ptr %debug_mask266 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug_mask266, align 4
  %and267 = and i32 %100, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267)
  %tobool268.not = icmp eq i32 %and267, 0
  br i1 %tobool268.not, label %do.body265.cleanup454_crit_edge, label %if.then269

do.body265.cleanup454_crit_edge:                  ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup454

if.then269:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.15, i32 noundef %param, i32 noundef 8) #8
  br label %cleanup454

if.end273:                                        ; preds = %sw.bb260
  %arrayidx274 = getelementptr [8 x i32], ptr @cycpwrThr1_table, i32 0, i32 %param
  %101 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx274, align 4
  %cycpwrThr1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 12
  %103 = ptrtoint ptr %cycpwrThr1 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %cycpwrThr1, align 4
  %conv277 = zext i16 %104 to i32
  %add278 = add i32 %102, %conv277
  %105 = tail call i32 @llvm.smax.i32(i32 %add278, i32 0)
  %106 = tail call i32 @llvm.umin.i32(i32 %105, i32 22)
  %rmw288 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %107 = ptrtoint ptr %rmw288 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmw288, align 4
  %shl289 = shl nuw nsw i32 %106, 1
  %call291 = tail call i32 %108(ptr noundef %ah, i32 noundef 38928, i32 noundef %shl289, i32 noundef 254) #8
  %cycpwrThr1Ext = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 13
  %109 = ptrtoint ptr %cycpwrThr1Ext to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %cycpwrThr1Ext, align 2
  %conv295 = zext i16 %110 to i32
  %add296 = add i32 %102, %conv295
  %111 = tail call i32 @llvm.smax.i32(i32 %add296, i32 0)
  %112 = tail call i32 @llvm.umin.i32(i32 %111, i32 22)
  %113 = ptrtoint ptr %rmw288 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rmw288, align 4
  %shl307 = shl nuw nsw i32 %112, 9
  %call309 = tail call i32 %114(ptr noundef %ah, i32 noundef 38960, i32 noundef %shl307, i32 noundef 65024) #8
  %spurImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 5
  %115 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %spurImmunityLevel, align 1
  %conv310 = zext i8 %116 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv310, i32 %param)
  %cmp311.not = icmp eq i32 %conv310, %param
  br i1 %cmp311.not, label %if.end273.do.body434_crit_edge, label %do.body314

if.end273.do.body434_crit_edge:                   ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body434

do.body314:                                       ; preds = %if.end273
  %debug_mask315 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %117 = ptrtoint ptr %debug_mask315 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %debug_mask315, align 4
  %and316 = and i32 %118, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %do.body314.do.body329_crit_edge, label %if.then318

do.body314.do.body329_crit_edge:                  ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body329

if.then318:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #10
  %channel319 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %119 = ptrtoint ptr %channel319 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %channel319, align 4
  %conv320 = zext i16 %120 to i32
  %121 = ptrtoint ptr %cycpwrThr1 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %cycpwrThr1, align 4
  %conv325 = zext i16 %122 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.16, i32 noundef %conv320, i32 noundef %conv310, i32 noundef %param, i32 noundef 3, i32 noundef %106, i32 noundef %conv325) #8
  br label %do.body329

do.body329:                                       ; preds = %if.then318, %do.body314.do.body329_crit_edge
  %123 = ptrtoint ptr %debug_mask315 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %debug_mask315, align 4
  %and331 = and i32 %124, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and331)
  %tobool332.not = icmp eq i32 %and331, 0
  br i1 %tobool332.not, label %do.body329.do.end343_crit_edge, label %if.then333

do.body329.do.end343_crit_edge:                   ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end343

if.then333:                                       ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #10
  %channel334 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %125 = ptrtoint ptr %channel334 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %channel334, align 4
  %conv335 = zext i16 %126 to i32
  %127 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %spurImmunityLevel, align 1
  %conv337 = zext i8 %128 to i32
  %129 = ptrtoint ptr %cycpwrThr1Ext to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %cycpwrThr1Ext, align 2
  %conv340 = zext i16 %130 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.17, i32 noundef %conv335, i32 noundef %conv337, i32 noundef %param, i32 noundef 3, i32 noundef %112, i32 noundef %conv340) #8
  br label %do.end343

do.end343:                                        ; preds = %if.then333, %do.body329.do.end343_crit_edge
  %131 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %spurImmunityLevel, align 1
  %conv345 = zext i8 %132 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv345, i32 %param)
  %cmp346 = icmp ult i32 %conv345, %param
  br i1 %cmp346, label %if.then348, label %if.else351

if.then348:                                       ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #10
  %stats349 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33
  br label %cleanup364.sink.split

if.else351:                                       ; preds = %do.end343
  call void @__sanitizer_cov_trace_cmp4(i32 %conv345, i32 %param)
  %cmp354 = icmp ugt i32 %conv345, %param
  br i1 %cmp354, label %if.then356, label %if.else351.cleanup364_crit_edge

if.else351.cleanup364_crit_edge:                  ; preds = %if.else351
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup364

if.then356:                                       ; preds = %if.else351
  call void @__sanitizer_cov_trace_pc() #10
  %ast_ani_spurdown = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 1
  br label %cleanup364.sink.split

cleanup364.sink.split:                            ; preds = %if.then356, %if.then348
  %stats349.sink805 = phi ptr [ %stats349, %if.then348 ], [ %ast_ani_spurdown, %if.then356 ]
  %133 = ptrtoint ptr %stats349.sink805 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %stats349.sink805, align 4
  %inc350 = add i32 %134, 1
  store i32 %inc350, ptr %stats349.sink805, align 4
  br label %cleanup364

cleanup364:                                       ; preds = %cleanup364.sink.split, %if.else351.cleanup364_crit_edge
  %conv361 = trunc i32 %param to i8
  %135 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv361, ptr %spurImmunityLevel, align 1
  br label %do.body434

sw.bb366:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %param)
  %tobool367 = icmp ne i32 %param, 0
  %frombool370 = zext i1 %tobool367 to i8
  %rx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 3
  %136 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %rx_chainmask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %137)
  %cmp372 = icmp eq i8 %137, 1
  br i1 %cmp372, label %sw.bb366.do.body434_crit_edge, label %if.end375

sw.bb366.do.body434_crit_edge:                    ; preds = %sw.bb366
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body434

if.end375:                                        ; preds = %sw.bb366
  %rmw377 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %138 = ptrtoint ptr %rmw377 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rmw377, align 4
  %conv379 = zext i1 %tobool367 to i32
  %call382 = tail call i32 %139(ptr noundef %ah, i32 noundef 40912, i32 noundef %conv379, i32 noundef 1) #8
  %140 = ptrtoint ptr %rmw377 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmw377, align 4
  %shl387 = select i1 %tobool367, i32 2, i32 0
  %call389 = tail call i32 %141(ptr noundef %ah, i32 noundef 40912, i32 noundef %shl387, i32 noundef 2) #8
  %mrcCCK = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 4
  %142 = ptrtoint ptr %mrcCCK to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %mrcCCK, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %frombool370)
  %cmp393.not = icmp eq i8 %143, %frombool370
  br i1 %cmp393.not, label %if.end375.do.body434_crit_edge, label %do.body396

if.end375.do.body434_crit_edge:                   ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body434

do.body396:                                       ; preds = %if.end375
  %debug_mask397 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %144 = ptrtoint ptr %debug_mask397 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %debug_mask397, align 4
  %and398 = and i32 %145, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and398)
  %tobool399.not = icmp eq i32 %and398, 0
  br i1 %tobool399.not, label %do.body396.do.end412_crit_edge, label %if.then400

do.body396.do.end412_crit_edge:                   ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end412

if.then400:                                       ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #10
  %channel401 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %146 = ptrtoint ptr %channel401 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %channel401, align 4
  %conv402 = zext i16 %147 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool405.not = icmp eq i8 %143, 0
  %cond406 = select i1 %tobool405.not, ptr @.str.11, ptr @.str.10
  %cond409 = select i1 %tobool367, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.18, i32 noundef %conv402, ptr noundef nonnull %cond406, ptr noundef nonnull %cond409) #8
  br label %do.end412

do.end412:                                        ; preds = %if.then400, %do.body396.do.end412_crit_edge
  %ast_ani_cckhigh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 4
  %ast_ani_ccklow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 5
  %ast_ani_cckhigh.sink806 = select i1 %tobool367, ptr %ast_ani_ccklow, ptr %ast_ani_cckhigh
  %148 = ptrtoint ptr %ast_ani_cckhigh.sink806 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ast_ani_cckhigh.sink806, align 4
  %inc419 = add i32 %149, 1
  store i32 %inc419, ptr %ast_ani_cckhigh.sink806, align 4
  %150 = ptrtoint ptr %mrcCCK to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %frombool370, ptr %mrcCCK, align 4
  br label %do.body434

do.body426:                                       ; preds = %entry
  %debug_mask427 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %151 = ptrtoint ptr %debug_mask427 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %debug_mask427, align 4
  %and428 = and i32 %152, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and428)
  %tobool429.not = icmp eq i32 %and428, 0
  br i1 %tobool429.not, label %do.body426.cleanup454_crit_edge, label %if.then430

do.body426.cleanup454_crit_edge:                  ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup454

if.then430:                                       ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.19, i32 noundef %cmd) #8
  br label %cleanup454

do.body434:                                       ; preds = %do.end412, %if.end375.do.body434_crit_edge, %sw.bb366.do.body434_crit_edge, %cleanup364, %if.end273.do.body434_crit_edge, %cleanup, %if.end172.do.body434_crit_edge, %do.end, %if.end134.do.body434_crit_edge
  %debug_mask435 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %153 = ptrtoint ptr %debug_mask435 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %debug_mask435, align 4
  %and436 = and i32 %154, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and436)
  %tobool437.not = icmp eq i32 %and436, 0
  br i1 %tobool437.not, label %do.body434.cleanup454_crit_edge, label %if.then438

do.body434.cleanup454_crit_edge:                  ; preds = %do.body434
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup454

if.then438:                                       ; preds = %do.body434
  call void @__sanitizer_cov_trace_pc() #10
  %spurImmunityLevel439 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 5
  %155 = ptrtoint ptr %spurImmunityLevel439 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %spurImmunityLevel439, align 1
  %conv440 = zext i8 %156 to i32
  %ofdmWeakSigDetect441 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 7
  %157 = ptrtoint ptr %ofdmWeakSigDetect441 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %ofdmWeakSigDetect441, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool442.not = icmp eq i8 %158, 0
  %cond444 = select i1 %tobool442.not, ptr @.str.11, ptr @.str.10
  %firstepLevel445 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 6
  %159 = ptrtoint ptr %firstepLevel445 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %firstepLevel445, align 2
  %conv446 = zext i8 %160 to i32
  %mrcCCK447 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 4
  %161 = ptrtoint ptr %mrcCCK447 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %mrcCCK447, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool449.not = icmp eq i8 %162, 0
  %cond450 = select i1 %tobool449.not, ptr @.str.11, ptr @.str.10
  %listenTime = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 8
  %163 = ptrtoint ptr %listenTime to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %listenTime, align 4
  %ofdmPhyErrCount = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 9
  %165 = ptrtoint ptr %ofdmPhyErrCount to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ofdmPhyErrCount, align 4
  %cckPhyErrCount = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 10
  %167 = ptrtoint ptr %cckPhyErrCount to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cckPhyErrCount, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.20, i32 noundef %conv440, ptr noundef nonnull %cond444, i32 noundef %conv446, ptr noundef nonnull %cond450, i32 noundef %164, i32 noundef %166, i32 noundef %168) #8
  br label %cleanup454

cleanup454:                                       ; preds = %if.then438, %do.body434.cleanup454_crit_edge, %if.then430, %do.body426.cleanup454_crit_edge, %if.then269, %do.body265.cleanup454_crit_edge, %if.then168, %do.body164.cleanup454_crit_edge
  %retval.2 = phi i1 [ false, %if.then430 ], [ false, %do.body426.cleanup454_crit_edge ], [ true, %if.then438 ], [ true, %do.body434.cleanup454_crit_edge ], [ false, %do.body164.cleanup454_crit_edge ], [ false, %if.then168 ], [ false, %do.body265.cleanup454_crit_edge ], [ false, %if.then269 ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_do_getnf(ptr noundef %ah, ptr nocapture noundef writeonly %nfarray) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %0 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rxchainmask, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah, align 4
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 %4(ptr noundef %ah, i32 noundef %6) #8
  %7 = shl i32 %call, 3
  %conv2 = ashr i32 %7, 23
  %conv5 = trunc i32 %conv2 to i16
  %8 = ptrtoint ptr %nfarray to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv5, ptr %nfarray, align 2
  %9 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curchan, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %channelFlags, align 2
  %13 = and i16 %12, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not = icmp eq i16 %13, 0
  br i1 %tobool9.not, label %if.then.for.inc_crit_edge, label %if.then10

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah, align 4
  %arrayidx15 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 3
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  %call16 = tail call i32 %15(ptr noundef %ah, i32 noundef %17) #8
  %18 = shl i32 %call16, 7
  %conv19 = ashr i32 %18, 23
  %conv22 = trunc i32 %conv19 to i16
  %arrayidx24 = getelementptr i16, ptr %nfarray, i32 3
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv22, ptr %arrayidx24, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %20 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rxchainmask, align 1
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.1 = icmp eq i8 %22, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %23 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ah, align 4
  %arrayidx.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1, align 4
  %call.1 = tail call i32 %24(ptr noundef %ah, i32 noundef %26) #8
  %27 = shl i32 %call.1, 3
  %conv2.1 = ashr i32 %27, 23
  %conv5.1 = trunc i32 %conv2.1 to i16
  %arrayidx6.1 = getelementptr i16, ptr %nfarray, i32 1
  %28 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv5.1, ptr %arrayidx6.1, align 2
  %29 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %curchan, align 4
  %channelFlags.1 = getelementptr inbounds %struct.ath9k_channel, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %channelFlags.1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %channelFlags.1, align 2
  %33 = and i16 %32, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool9.not.1 = icmp eq i16 %33, 0
  br i1 %tobool9.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then10.1

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then10.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ah, align 4
  %arrayidx15.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 4
  %36 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15.1, align 4
  %call16.1 = tail call i32 %35(ptr noundef %ah, i32 noundef %37) #8
  %38 = shl i32 %call16.1, 7
  %conv19.1 = ashr i32 %38, 23
  %conv22.1 = trunc i32 %conv19.1 to i16
  %arrayidx24.1 = getelementptr i16, ptr %nfarray, i32 4
  %39 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv22.1, ptr %arrayidx24.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %40 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rxchainmask, align 1
  %42 = and i8 %41, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.2 = icmp eq i8 %42, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %43 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ah, align 4
  %arrayidx.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 2
  %45 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.2, align 4
  %call.2 = tail call i32 %44(ptr noundef %ah, i32 noundef %46) #8
  %47 = shl i32 %call.2, 3
  %conv2.2 = ashr i32 %47, 23
  %conv5.2 = trunc i32 %conv2.2 to i16
  %arrayidx6.2 = getelementptr i16, ptr %nfarray, i32 2
  %48 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv5.2, ptr %arrayidx6.2, align 2
  %49 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %curchan, align 4
  %channelFlags.2 = getelementptr inbounds %struct.ath9k_channel, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %channelFlags.2 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %channelFlags.2, align 2
  %53 = and i16 %52, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool9.not.2 = icmp eq i16 %53, 0
  br i1 %tobool9.not.2, label %if.then.2.for.inc.2_crit_edge, label %if.then10.2

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then10.2:                                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ah, align 4
  %arrayidx15.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 5
  %56 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx15.2, align 4
  %call16.2 = tail call i32 %55(ptr noundef %ah, i32 noundef %57) #8
  %58 = shl i32 %call16.2, 7
  %conv19.2 = ashr i32 %58, 23
  %conv22.2 = trunc i32 %conv19.2 to i16
  %arrayidx24.2 = getelementptr i16, ptr %nfarray, i32 5
  %59 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv22.2, ptr %arrayidx24.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then10.2, %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_ani_cache_ini_regs(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_mask, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %2 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curchan, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion, align 4
  %macRev = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %macRev, align 4
  %conv = zext i16 %7 to i32
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 28
  %8 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opmode, align 4
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %channel, align 4
  %conv3 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.21, i32 noundef %5, i32 noundef %conv, i32 noundef %9, i32 noundef %conv3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %iniDef1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %call4 = tail call i32 %13(ptr noundef %ah, i32 noundef 38948) #8
  %and5 = lshr i32 %call4, 17
  %14 = trunc i32 %and5 to i16
  %conv6 = and i16 %14, 127
  %m1Thresh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 2
  %15 = ptrtoint ptr %m1Thresh to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6, ptr %m1Thresh, align 2
  %and7 = lshr i32 %call4, 24
  %16 = trunc i32 %and7 to i16
  %conv9 = and i16 %16, 127
  %m2Thresh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 3
  %17 = ptrtoint ptr %m2Thresh to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv9, ptr %m2Thresh, align 2
  %18 = trunc i32 %call4 to i16
  %conv12 = and i16 %18, 31
  %m2CountThr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 4
  %19 = ptrtoint ptr %m2CountThr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv12, ptr %m2CountThr, align 2
  %20 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ah, align 4
  %call15 = tail call i32 %21(ptr noundef %ah, i32 noundef 38952) #8
  %and16 = lshr i32 %call15, 14
  %22 = trunc i32 %and16 to i16
  %conv18 = and i16 %22, 127
  %23 = ptrtoint ptr %iniDef1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv18, ptr %iniDef1, align 2
  %and19 = lshr i32 %call15, 21
  %24 = trunc i32 %and19 to i16
  %conv21 = and i16 %24, 127
  %m2ThreshLow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 1
  %25 = ptrtoint ptr %m2ThreshLow to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv21, ptr %m2ThreshLow, align 2
  %26 = trunc i32 %call15 to i16
  %27 = lshr i16 %26, 8
  %conv24 = and i16 %27, 63
  %m2CountThrLow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 5
  %28 = ptrtoint ptr %m2CountThrLow to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv24, ptr %m2CountThrLow, align 2
  %29 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ah, align 4
  %call27 = tail call i32 %30(ptr noundef %ah, i32 noundef 38956) #8
  %31 = trunc i32 %call27 to i16
  %conv30 = and i16 %31, 127
  %m1ThreshExt = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 8
  %32 = ptrtoint ptr %m1ThreshExt to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv30, ptr %m1ThreshExt, align 2
  %33 = lshr i16 %31, 7
  %conv33 = and i16 %33, 127
  %m2ThreshExt = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 9
  %34 = ptrtoint ptr %m2ThreshExt to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv33, ptr %m2ThreshExt, align 2
  %and34 = lshr i32 %call27, 14
  %35 = trunc i32 %and34 to i16
  %conv36 = and i16 %35, 127
  %m1ThreshLowExt = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 6
  %36 = ptrtoint ptr %m1ThreshLowExt to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv36, ptr %m1ThreshLowExt, align 2
  %and37 = lshr i32 %call27, 21
  %37 = trunc i32 %and37 to i16
  %conv39 = and i16 %37, 127
  %m2ThreshLowExt = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 7
  %38 = ptrtoint ptr %m2ThreshLowExt to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv39, ptr %m2ThreshLowExt, align 2
  %39 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ah, align 4
  %call42 = tail call i32 %40(ptr noundef %ah, i32 noundef 40464) #8
  %and43 = lshr i32 %call42, 12
  %41 = trunc i32 %and43 to i16
  %conv45 = and i16 %41, 63
  %firstep = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 10
  %42 = ptrtoint ptr %firstep to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv45, ptr %firstep, align 2
  %43 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ah, align 4
  %call48 = tail call i32 %44(ptr noundef %ah, i32 noundef 38944) #8
  %45 = trunc i32 %call48 to i16
  %46 = lshr i16 %45, 6
  %conv51 = and i16 %46, 63
  %firstepLow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 11
  %47 = ptrtoint ptr %firstepLow to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv51, ptr %firstepLow, align 2
  %48 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ah, align 4
  %call54 = tail call i32 %49(ptr noundef %ah, i32 noundef 38928) #8
  %50 = trunc i32 %call54 to i16
  %51 = lshr i16 %50, 1
  %conv57 = and i16 %51, 127
  %cycpwrThr1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 12
  %52 = ptrtoint ptr %cycpwrThr1 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv57, ptr %cycpwrThr1, align 2
  %53 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ah, align 4
  %call60 = tail call i32 %54(ptr noundef %ah, i32 noundef 38960) #8
  %55 = trunc i32 %call60 to i16
  %56 = lshr i16 %55, 9
  %cycpwrThr1Ext = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 13
  %57 = ptrtoint ptr %cycpwrThr1Ext to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %cycpwrThr1Ext, align 2
  %spurImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 5
  %58 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 3, ptr %spurImmunityLevel, align 1
  %firstepLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 6
  %59 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %firstepLevel, align 2
  %ofdmWeakSigDetect = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 7
  %60 = ptrtoint ptr %ofdmWeakSigDetect to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %ofdmWeakSigDetect, align 1
  %mrcCCK = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 4
  %61 = ptrtoint ptr %mrcCCK to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %mrcCCK, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_set_radar_params(ptr noundef %ah, ptr noundef readonly %conf) #0 align 64 {
entry:
  %regWrites = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regWrites) #8
  %0 = ptrtoint ptr %regWrites to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %regWrites, align 4
  %tobool.not = icmp eq ptr %conf, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %1 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %2(ptr noundef %ah, i32 noundef 38964, i32 noundef 0, i32 noundef 1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fir_power = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 7
  %3 = ptrtoint ptr %fir_power to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fir_power, align 4
  %shl = shl i32 %4, 24
  %radar_rssi = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 5
  %5 = ptrtoint ptr %radar_rssi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %radar_rssi, align 4
  %shl2 = shl i32 %6, 18
  %and3 = and i32 %shl2, 16515072
  %or1 = or i32 %and3, %shl
  %pulse_height = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 2
  %7 = ptrtoint ptr %pulse_height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pulse_height, align 4
  %shl5 = shl i32 %8, 12
  %and6 = and i32 %shl5, 258048
  %or4 = or i32 %or1, %and6
  %pulse_rssi = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 3
  %9 = ptrtoint ptr %pulse_rssi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pulse_rssi, align 4
  %shl8 = shl i32 %10, 6
  %and9 = and i32 %shl8, 4032
  %or7 = or i32 %or4, %and9
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conf, align 4
  %shl11 = shl i32 %12, 1
  %and12 = and i32 %shl11, 62
  %or10 = or i32 %or7, %and12
  %or13 = or i32 %or10, -2147483647
  %13 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ah, align 4
  %call15 = tail call i32 %14(ptr noundef %ah, i32 noundef 38968) #8
  %and16 = and i32 %call15, -4186112
  %pulse_maxlen = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 4
  %15 = ptrtoint ptr %pulse_maxlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pulse_maxlen, align 4
  %and20 = and i32 %16, 255
  %pulse_inband_step = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 1
  %17 = ptrtoint ptr %pulse_inband_step to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pulse_inband_step, align 4
  %shl22 = shl i32 %18, 8
  %and23 = and i32 %shl22, 7936
  %radar_inband = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 6
  %19 = ptrtoint ptr %radar_inband to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %radar_inband, align 4
  %shl25 = shl i32 %20, 16
  %and26 = and i32 %shl25, 4128768
  %or18 = or i32 %and16, %and20
  %or21 = or i32 %or18, %and23
  %or24 = or i32 %or21, %and26
  %or27 = or i32 %or24, 49152
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %21 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write, align 4
  tail call void %22(ptr noundef %ah, i32 noundef %or13, i32 noundef 38964) #8
  %23 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write, align 4
  tail call void %24(ptr noundef %ah, i32 noundef %or27, i32 noundef 38968) #8
  %ext_channel = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 8
  %25 = ptrtoint ptr %ext_channel to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ext_channel, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not = icmp eq i8 %26, 0
  %rmw37 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %27 = ptrtoint ptr %rmw37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmw37, align 4
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 %28(ptr noundef %ah, i32 noundef 38972, i32 noundef 16384, i32 noundef 0) #8
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 %28(ptr noundef %ah, i32 noundef 38972, i32 noundef 0, i32 noundef 16384) #8
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then32
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %macVersion, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %30, label %if.end39.cleanup_crit_edge [
    i32 448, label %if.end39.if.then50_crit_edge
    i32 768, label %if.end39.if.then50_crit_edge97
  ]

if.end39.if.then50_crit_edge97:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

if.end39.if.then50_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %if.end39.if.then50_crit_edge, %if.end39.if.then50_crit_edge97
  %ini_dfs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 83
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %32 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %curchan, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %channelFlags, align 2
  %36 = and i16 %35, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool53.not = icmp eq i16 %36, 0
  %cond = select i1 %tobool53.not, i32 1, i32 2
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %ini_dfs, i32 noundef %cond, ptr noundef nonnull %regWrites) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end39.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regWrites) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9003_hw_fast_chan_change(ptr noundef %ah, ptr noundef readonly %chan, ptr nocapture noundef writeonly %ini_reloaded) #0 align 64 {
entry:
  %regWrites = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regWrites) #8
  %0 = ptrtoint ptr %regWrites to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %regWrites, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %1 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %channelFlags, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and8 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond = select i1 %tobool9.not, i32 1, i32 2
  %cond12 = select i1 %tobool9.not, i32 4, i32 3
  %modesIndex.0 = select i1 %tobool.not, i32 %cond12, i32 %cond
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %4)
  %cmp = icmp eq i32 %4, 1280
  %spec.select = select i1 %cmp, i32 1, i32 %modesIndex.0
  %modes_index = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 45
  %5 = ptrtoint ptr %modes_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modes_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %modesIndex.0, i32 %6)
  %cmp15 = icmp eq i32 %modesIndex.0, %6
  br i1 %cmp15, label %entry.set_rfmode_crit_edge, label %if.end18

entry.set_rfmode_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_rfmode

if.end18:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 106, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end18.ar9003_hw_prog_ini.exit_crit_edge, label %if.end.i

if.end18.ar9003_hw_prog_ini.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit

if.end.i:                                         ; preds = %if.end18
  %ia_columns.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 106, i32 2, i32 2
  %9 = ptrtoint ptr %ia_columns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ia_columns.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %modesIndex.0)
  %cmp.not.i = icmp ugt i32 %10, %modesIndex.0
  %spec.store.select.i = select i1 %cmp.not.i, i32 %modesIndex.0, i32 1
  %ia_rows.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 106, i32 2, i32 1
  %11 = ptrtoint ptr %ia_rows.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ia_rows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp329.not.i = icmp eq i32 %12, 0
  br i1 %cmp329.not.i, label %if.end.i.ar9003_hw_prog_ini.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.ar9003_hw_prog_ini.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %bus_ops.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc15.i, %do.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %ia_columns.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ia_columns.i, align 4
  %mul.i = mul i32 %16, %i.031.i
  %arrayidx.i = getelementptr i32, ptr %14, i32 %mul.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add9.i = add i32 %mul.i, %spec.store.select.i
  %arrayidx10.i = getelementptr i32, ptr %14, i32 %add9.i
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10.i, align 4
  %21 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i, align 4
  tail call void %22(ptr noundef %ah, i32 noundef %20, i32 noundef %18) #8
  %inc15.i = add nuw i32 %i.031.i, 1
  %rem.i = and i32 %inc15.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp11.i = icmp eq i32 %rem.i, 0
  br i1 %cmp11.i, label %land.lhs.true.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %23 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus_ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp12.not.i = icmp eq i32 %26, 2
  br i1 %cmp12.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %if.then13.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then13.i, %land.lhs.true.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %28 = ptrtoint ptr %ia_rows.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ia_rows.i, align 4
  %cmp3.i = icmp ult i32 %inc15.i, %29
  br i1 %cmp3.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.ar9003_hw_prog_ini.exit_crit_edge

do.end.i.ar9003_hw_prog_ini.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ar9003_hw_prog_ini.exit:                          ; preds = %do.end.i.ar9003_hw_prog_ini.exit_crit_edge, %if.end.i.ar9003_hw_prog_ini.exit_crit_edge, %if.end18.ar9003_hw_prog_ini.exit_crit_edge
  %arrayidx19 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 103, i32 2
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx19, align 4
  %tobool.not.i117 = icmp eq ptr %31, null
  br i1 %tobool.not.i117, label %ar9003_hw_prog_ini.exit.ar9003_hw_prog_ini.exit141_crit_edge, label %if.end.i123

ar9003_hw_prog_ini.exit.ar9003_hw_prog_ini.exit141_crit_edge: ; preds = %ar9003_hw_prog_ini.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit141

if.end.i123:                                      ; preds = %ar9003_hw_prog_ini.exit
  %ia_columns.i118 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 103, i32 2, i32 2
  %32 = ptrtoint ptr %ia_columns.i118 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ia_columns.i118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %modesIndex.0)
  %cmp.not.i119 = icmp ugt i32 %33, %modesIndex.0
  %spec.store.select.i120 = select i1 %cmp.not.i119, i32 %modesIndex.0, i32 1
  %ia_rows.i121 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 103, i32 2, i32 1
  %34 = ptrtoint ptr %ia_rows.i121 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ia_rows.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp329.not.i122 = icmp eq i32 %35, 0
  br i1 %cmp329.not.i122, label %if.end.i123.ar9003_hw_prog_ini.exit141_crit_edge, label %for.body.lr.ph.i126

if.end.i123.ar9003_hw_prog_ini.exit141_crit_edge: ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit141

for.body.lr.ph.i126:                              ; preds = %if.end.i123
  %write.i124 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %bus_ops.i125 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body.i135

for.body.i135:                                    ; preds = %do.end.i140.for.body.i135_crit_edge, %for.body.lr.ph.i126
  %i.031.i127 = phi i32 [ 0, %for.body.lr.ph.i126 ], [ %inc15.i132, %do.end.i140.for.body.i135_crit_edge ]
  %36 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx19, align 4
  %38 = ptrtoint ptr %ia_columns.i118 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ia_columns.i118, align 4
  %mul.i128 = mul i32 %39, %i.031.i127
  %arrayidx.i129 = getelementptr i32, ptr %37, i32 %mul.i128
  %40 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i129, align 4
  %add9.i130 = add i32 %mul.i128, %spec.store.select.i120
  %arrayidx10.i131 = getelementptr i32, ptr %37, i32 %add9.i130
  %42 = ptrtoint ptr %arrayidx10.i131 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx10.i131, align 4
  %44 = ptrtoint ptr %write.i124 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write.i124, align 4
  tail call void %45(ptr noundef %ah, i32 noundef %43, i32 noundef %41) #8
  %inc15.i132 = add nuw i32 %i.031.i127, 1
  %rem.i133 = and i32 %inc15.i132, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i133)
  %cmp11.i134 = icmp eq i32 %rem.i133, 0
  br i1 %cmp11.i134, label %land.lhs.true.i137, label %for.body.i135.do.end.i140_crit_edge

for.body.i135.do.end.i140_crit_edge:              ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i140

land.lhs.true.i137:                               ; preds = %for.body.i135
  %46 = ptrtoint ptr %bus_ops.i125 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus_ops.i125, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp12.not.i136 = icmp eq i32 %49, 2
  br i1 %cmp12.not.i136, label %land.lhs.true.i137.do.end.i140_crit_edge, label %if.then13.i138

land.lhs.true.i137.do.end.i140_crit_edge:         ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i140

if.then13.i138:                                   ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #8
  br label %do.end.i140

do.end.i140:                                      ; preds = %if.then13.i138, %land.lhs.true.i137.do.end.i140_crit_edge, %for.body.i135.do.end.i140_crit_edge
  %51 = ptrtoint ptr %ia_rows.i121 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ia_rows.i121, align 4
  %cmp3.i139 = icmp ult i32 %inc15.i132, %52
  br i1 %cmp3.i139, label %do.end.i140.for.body.i135_crit_edge, label %do.end.i140.ar9003_hw_prog_ini.exit141_crit_edge

do.end.i140.ar9003_hw_prog_ini.exit141_crit_edge: ; preds = %do.end.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit141

do.end.i140.for.body.i135_crit_edge:              ; preds = %do.end.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i135

ar9003_hw_prog_ini.exit141:                       ; preds = %do.end.i140.ar9003_hw_prog_ini.exit141_crit_edge, %if.end.i123.ar9003_hw_prog_ini.exit141_crit_edge, %ar9003_hw_prog_ini.exit.ar9003_hw_prog_ini.exit141_crit_edge
  %arrayidx20 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 104, i32 2
  %53 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx20, align 4
  %tobool.not.i142 = icmp eq ptr %54, null
  br i1 %tobool.not.i142, label %ar9003_hw_prog_ini.exit141.ar9003_hw_prog_ini.exit166_crit_edge, label %if.end.i148

ar9003_hw_prog_ini.exit141.ar9003_hw_prog_ini.exit166_crit_edge: ; preds = %ar9003_hw_prog_ini.exit141
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit166

if.end.i148:                                      ; preds = %ar9003_hw_prog_ini.exit141
  %ia_columns.i143 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 104, i32 2, i32 2
  %55 = ptrtoint ptr %ia_columns.i143 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ia_columns.i143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %modesIndex.0)
  %cmp.not.i144 = icmp ugt i32 %56, %modesIndex.0
  %spec.store.select.i145 = select i1 %cmp.not.i144, i32 %modesIndex.0, i32 1
  %ia_rows.i146 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 104, i32 2, i32 1
  %57 = ptrtoint ptr %ia_rows.i146 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ia_rows.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp329.not.i147 = icmp eq i32 %58, 0
  br i1 %cmp329.not.i147, label %if.end.i148.ar9003_hw_prog_ini.exit166_crit_edge, label %for.body.lr.ph.i151

if.end.i148.ar9003_hw_prog_ini.exit166_crit_edge: ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit166

for.body.lr.ph.i151:                              ; preds = %if.end.i148
  %write.i149 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %bus_ops.i150 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body.i160

for.body.i160:                                    ; preds = %do.end.i165.for.body.i160_crit_edge, %for.body.lr.ph.i151
  %i.031.i152 = phi i32 [ 0, %for.body.lr.ph.i151 ], [ %inc15.i157, %do.end.i165.for.body.i160_crit_edge ]
  %59 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx20, align 4
  %61 = ptrtoint ptr %ia_columns.i143 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ia_columns.i143, align 4
  %mul.i153 = mul i32 %62, %i.031.i152
  %arrayidx.i154 = getelementptr i32, ptr %60, i32 %mul.i153
  %63 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i154, align 4
  %add9.i155 = add i32 %mul.i153, %spec.store.select.i145
  %arrayidx10.i156 = getelementptr i32, ptr %60, i32 %add9.i155
  %65 = ptrtoint ptr %arrayidx10.i156 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx10.i156, align 4
  %67 = ptrtoint ptr %write.i149 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write.i149, align 4
  tail call void %68(ptr noundef %ah, i32 noundef %66, i32 noundef %64) #8
  %inc15.i157 = add nuw i32 %i.031.i152, 1
  %rem.i158 = and i32 %inc15.i157, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i158)
  %cmp11.i159 = icmp eq i32 %rem.i158, 0
  br i1 %cmp11.i159, label %land.lhs.true.i162, label %for.body.i160.do.end.i165_crit_edge

for.body.i160.do.end.i165_crit_edge:              ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i165

land.lhs.true.i162:                               ; preds = %for.body.i160
  %69 = ptrtoint ptr %bus_ops.i150 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus_ops.i150, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp12.not.i161 = icmp eq i32 %72, 2
  br i1 %cmp12.not.i161, label %land.lhs.true.i162.do.end.i165_crit_edge, label %if.then13.i163

land.lhs.true.i162.do.end.i165_crit_edge:         ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i165

if.then13.i163:                                   ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #8
  br label %do.end.i165

do.end.i165:                                      ; preds = %if.then13.i163, %land.lhs.true.i162.do.end.i165_crit_edge, %for.body.i160.do.end.i165_crit_edge
  %74 = ptrtoint ptr %ia_rows.i146 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ia_rows.i146, align 4
  %cmp3.i164 = icmp ult i32 %inc15.i157, %75
  br i1 %cmp3.i164, label %do.end.i165.for.body.i160_crit_edge, label %do.end.i165.ar9003_hw_prog_ini.exit166_crit_edge

do.end.i165.ar9003_hw_prog_ini.exit166_crit_edge: ; preds = %do.end.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit166

do.end.i165.for.body.i160_crit_edge:              ; preds = %do.end.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i160

ar9003_hw_prog_ini.exit166:                       ; preds = %do.end.i165.ar9003_hw_prog_ini.exit166_crit_edge, %if.end.i148.ar9003_hw_prog_ini.exit166_crit_edge, %ar9003_hw_prog_ini.exit141.ar9003_hw_prog_ini.exit166_crit_edge
  %arrayidx21 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 105, i32 2
  %76 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx21, align 4
  %tobool.not.i167 = icmp eq ptr %77, null
  br i1 %tobool.not.i167, label %ar9003_hw_prog_ini.exit166.ar9003_hw_prog_ini.exit191_crit_edge, label %if.end.i173

ar9003_hw_prog_ini.exit166.ar9003_hw_prog_ini.exit191_crit_edge: ; preds = %ar9003_hw_prog_ini.exit166
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit191

if.end.i173:                                      ; preds = %ar9003_hw_prog_ini.exit166
  %ia_columns.i168 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 105, i32 2, i32 2
  %78 = ptrtoint ptr %ia_columns.i168 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ia_columns.i168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %modesIndex.0)
  %cmp.not.i169 = icmp ugt i32 %79, %modesIndex.0
  %spec.store.select.i170 = select i1 %cmp.not.i169, i32 %modesIndex.0, i32 1
  %ia_rows.i171 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 105, i32 2, i32 1
  %80 = ptrtoint ptr %ia_rows.i171 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ia_rows.i171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp329.not.i172 = icmp eq i32 %81, 0
  br i1 %cmp329.not.i172, label %if.end.i173.ar9003_hw_prog_ini.exit191_crit_edge, label %for.body.lr.ph.i176

if.end.i173.ar9003_hw_prog_ini.exit191_crit_edge: ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit191

for.body.lr.ph.i176:                              ; preds = %if.end.i173
  %write.i174 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %bus_ops.i175 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body.i185

for.body.i185:                                    ; preds = %do.end.i190.for.body.i185_crit_edge, %for.body.lr.ph.i176
  %i.031.i177 = phi i32 [ 0, %for.body.lr.ph.i176 ], [ %inc15.i182, %do.end.i190.for.body.i185_crit_edge ]
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx21, align 4
  %84 = ptrtoint ptr %ia_columns.i168 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ia_columns.i168, align 4
  %mul.i178 = mul i32 %85, %i.031.i177
  %arrayidx.i179 = getelementptr i32, ptr %83, i32 %mul.i178
  %86 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i179, align 4
  %add9.i180 = add i32 %mul.i178, %spec.store.select.i170
  %arrayidx10.i181 = getelementptr i32, ptr %83, i32 %add9.i180
  %88 = ptrtoint ptr %arrayidx10.i181 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx10.i181, align 4
  %90 = ptrtoint ptr %write.i174 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write.i174, align 4
  tail call void %91(ptr noundef %ah, i32 noundef %89, i32 noundef %87) #8
  %inc15.i182 = add nuw i32 %i.031.i177, 1
  %rem.i183 = and i32 %inc15.i182, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i183)
  %cmp11.i184 = icmp eq i32 %rem.i183, 0
  br i1 %cmp11.i184, label %land.lhs.true.i187, label %for.body.i185.do.end.i190_crit_edge

for.body.i185.do.end.i190_crit_edge:              ; preds = %for.body.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i190

land.lhs.true.i187:                               ; preds = %for.body.i185
  %92 = ptrtoint ptr %bus_ops.i175 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus_ops.i175, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp12.not.i186 = icmp eq i32 %95, 2
  br i1 %cmp12.not.i186, label %land.lhs.true.i187.do.end.i190_crit_edge, label %if.then13.i188

land.lhs.true.i187.do.end.i190_crit_edge:         ; preds = %land.lhs.true.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i190

if.then13.i188:                                   ; preds = %land.lhs.true.i187
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748) #8
  br label %do.end.i190

do.end.i190:                                      ; preds = %if.then13.i188, %land.lhs.true.i187.do.end.i190_crit_edge, %for.body.i185.do.end.i190_crit_edge
  %97 = ptrtoint ptr %ia_rows.i171 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ia_rows.i171, align 4
  %cmp3.i189 = icmp ult i32 %inc15.i182, %98
  br i1 %cmp3.i189, label %do.end.i190.for.body.i185_crit_edge, label %do.end.i190.ar9003_hw_prog_ini.exit191_crit_edge

do.end.i190.ar9003_hw_prog_ini.exit191_crit_edge: ; preds = %do.end.i190
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_prog_ini.exit191

do.end.i190.for.body.i185_crit_edge:              ; preds = %do.end.i190
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i185

ar9003_hw_prog_ini.exit191:                       ; preds = %do.end.i190.ar9003_hw_prog_ini.exit191_crit_edge, %if.end.i173.ar9003_hw_prog_ini.exit191_crit_edge, %ar9003_hw_prog_ini.exit166.ar9003_hw_prog_ini.exit191_crit_edge
  %99 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %100)
  %cmp24 = icmp eq i32 %100, 640
  br i1 %cmp24, label %land.lhs.true, label %ar9003_hw_prog_ini.exit191.if.end31_crit_edge

ar9003_hw_prog_ini.exit191.if.end31_crit_edge:    ; preds = %ar9003_hw_prog_ini.exit191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %ar9003_hw_prog_ini.exit191
  %macRev = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %101 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %macRev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %102)
  %cmp28 = icmp ugt i16 %102, 1
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  %ini_radio_post_sys2ant = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 99
  %103 = ptrtoint ptr %ini_radio_post_sys2ant to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ini_radio_post_sys2ant, align 4
  %tobool.not.i192 = icmp eq ptr %104, null
  br i1 %tobool.not.i192, label %if.then30.if.end31_crit_edge, label %if.end.i198

if.then30.if.end31_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end.i198:                                      ; preds = %if.then30
  %ia_columns.i193 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 99, i32 2
  %105 = ptrtoint ptr %ia_columns.i193 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ia_columns.i193, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %modesIndex.0)
  %cmp.not.i194 = icmp ugt i32 %106, %modesIndex.0
  %spec.store.select.i195 = select i1 %cmp.not.i194, i32 %modesIndex.0, i32 1
  %ia_rows.i196 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 99, i32 1
  %107 = ptrtoint ptr %ia_rows.i196 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ia_rows.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp329.not.i197 = icmp eq i32 %108, 0
  br i1 %cmp329.not.i197, label %if.end.i198.if.end31_crit_edge, label %for.body.lr.ph.i201

if.end.i198.if.end31_crit_edge:                   ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

for.body.lr.ph.i201:                              ; preds = %if.end.i198
  %write.i199 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %bus_ops.i200 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body.i210

for.body.i210:                                    ; preds = %do.end.i215.for.body.i210_crit_edge, %for.body.lr.ph.i201
  %i.031.i202 = phi i32 [ 0, %for.body.lr.ph.i201 ], [ %inc15.i207, %do.end.i215.for.body.i210_crit_edge ]
  %109 = ptrtoint ptr %ini_radio_post_sys2ant to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ini_radio_post_sys2ant, align 4
  %111 = ptrtoint ptr %ia_columns.i193 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ia_columns.i193, align 4
  %mul.i203 = mul i32 %112, %i.031.i202
  %arrayidx.i204 = getelementptr i32, ptr %110, i32 %mul.i203
  %113 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i204, align 4
  %add9.i205 = add i32 %mul.i203, %spec.store.select.i195
  %arrayidx10.i206 = getelementptr i32, ptr %110, i32 %add9.i205
  %115 = ptrtoint ptr %arrayidx10.i206 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx10.i206, align 4
  %117 = ptrtoint ptr %write.i199 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write.i199, align 4
  tail call void %118(ptr noundef %ah, i32 noundef %116, i32 noundef %114) #8
  %inc15.i207 = add nuw i32 %i.031.i202, 1
  %rem.i208 = and i32 %inc15.i207, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i208)
  %cmp11.i209 = icmp eq i32 %rem.i208, 0
  br i1 %cmp11.i209, label %land.lhs.true.i212, label %for.body.i210.do.end.i215_crit_edge

for.body.i210.do.end.i215_crit_edge:              ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i215

land.lhs.true.i212:                               ; preds = %for.body.i210
  %119 = ptrtoint ptr %bus_ops.i200 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bus_ops.i200, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %122)
  %cmp12.not.i211 = icmp eq i32 %122, 2
  br i1 %cmp12.not.i211, label %land.lhs.true.i212.do.end.i215_crit_edge, label %if.then13.i213

land.lhs.true.i212.do.end.i215_crit_edge:         ; preds = %land.lhs.true.i212
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i215

if.then13.i213:                                   ; preds = %land.lhs.true.i212
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 214748) #8
  br label %do.end.i215

do.end.i215:                                      ; preds = %if.then13.i213, %land.lhs.true.i212.do.end.i215_crit_edge, %for.body.i210.do.end.i215_crit_edge
  %124 = ptrtoint ptr %ia_rows.i196 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ia_rows.i196, align 4
  %cmp3.i214 = icmp ult i32 %inc15.i207, %125
  br i1 %cmp3.i214, label %do.end.i215.for.body.i210_crit_edge, label %do.end.i215.if.end31_crit_edge

do.end.i215.if.end31_crit_edge:                   ; preds = %do.end.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end.i215.for.body.i210_crit_edge:              ; preds = %do.end.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i210

if.end31:                                         ; preds = %do.end.i215.if.end31_crit_edge, %if.end.i198.if.end31_crit_edge, %if.then30.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %ar9003_hw_prog_ini.exit191.if.end31_crit_edge
  %iniModesTxGain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 95
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniModesTxGain, i32 noundef %spec.select, ptr noundef nonnull %regWrites) #8
  %126 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %127)
  %cmp34 = icmp eq i32 %127, 640
  br i1 %cmp34, label %land.lhs.true36, label %if.end31.if.end47_crit_edge

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true36:                                  ; preds = %if.end31
  %macRev38 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %128 = ptrtoint ptr %macRev38 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %macRev38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %129)
  %cmp40 = icmp ugt i16 %129, 1
  br i1 %cmp40, label %if.then42, label %land.lhs.true36.if.end47_crit_edge

land.lhs.true36.if.end47_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then42:                                        ; preds = %land.lhs.true36
  %call = call i32 @ar9003_hw_get_rx_gain_idx(ptr noundef %ah) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp43 = icmp eq i32 %call, 2
  br i1 %cmp43, label %if.then45, label %if.then42.if.end47_crit_edge

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %ini_modes_rxgain_bb_core = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 101
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %ini_modes_rxgain_bb_core, i32 noundef 1, ptr noundef nonnull %regWrites) #8
  %ini_modes_rxgain_bb_postamble = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 102
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %ini_modes_rxgain_bb_postamble, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then42.if.end47_crit_edge, %land.lhs.true36.if.end47_crit_edge, %if.end31.if.end47_crit_edge
  %130 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %channelFlags, align 2
  %132 = and i16 %131, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool51.not = icmp eq i16 %132, 0
  br i1 %tobool51.not, label %if.end47.if.end56_crit_edge, label %land.lhs.true52

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true52:                                  ; preds = %if.end47
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %133 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %caps, align 4
  %and53 = and i32 %134, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %land.lhs.true52.if.end56_crit_edge, label %if.then55

land.lhs.true52.if.end56_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then55:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  %iniModesFastClock = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 91
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniModesFastClock, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %land.lhs.true52.if.end56_crit_edge, %if.end47.if.end56_crit_edge
  %135 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %136)
  %cmp59 = icmp eq i32 %136, 704
  br i1 %cmp59, label %if.then61, label %if.end56.if.end63_crit_edge

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %iniModesFastClock62 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 91
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniModesFastClock62, i32 noundef 1, ptr noundef nonnull %regWrites) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end56.if.end63_crit_edge
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %137 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2484, i16 %138)
  %cmp65 = icmp eq i16 %138, 2484
  br i1 %cmp65, label %if.then67, label %if.end63.if.end68_crit_edge

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then67:                                        ; preds = %if.end63
  %iniCckfirJapan2484 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 97
  %139 = ptrtoint ptr %iniCckfirJapan2484 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %iniCckfirJapan2484, align 4
  %tobool.not.i217 = icmp eq ptr %140, null
  br i1 %tobool.not.i217, label %if.then67.if.end68_crit_edge, label %if.end.i222

if.then67.if.end68_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end.i222:                                      ; preds = %if.then67
  %ia_columns.i218 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 97, i32 2
  %ia_rows.i220 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 97, i32 1
  %141 = ptrtoint ptr %ia_rows.i220 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ia_rows.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp329.not.i221 = icmp eq i32 %142, 0
  br i1 %cmp329.not.i221, label %if.end.i222.if.end68_crit_edge, label %for.body.lr.ph.i225

if.end.i222.if.end68_crit_edge:                   ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.body.lr.ph.i225:                              ; preds = %if.end.i222
  %write.i223 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %bus_ops.i224 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body.i234

for.body.i234:                                    ; preds = %do.end.i239.for.body.i234_crit_edge, %for.body.lr.ph.i225
  %i.031.i226 = phi i32 [ 0, %for.body.lr.ph.i225 ], [ %inc15.i231, %do.end.i239.for.body.i234_crit_edge ]
  %143 = ptrtoint ptr %iniCckfirJapan2484 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %iniCckfirJapan2484, align 4
  %145 = ptrtoint ptr %ia_columns.i218 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ia_columns.i218, align 4
  %mul.i227 = mul i32 %146, %i.031.i226
  %arrayidx.i228 = getelementptr i32, ptr %144, i32 %mul.i227
  %147 = ptrtoint ptr %arrayidx.i228 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i228, align 4
  %add9.i229 = add i32 %mul.i227, 1
  %arrayidx10.i230 = getelementptr i32, ptr %144, i32 %add9.i229
  %149 = ptrtoint ptr %arrayidx10.i230 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx10.i230, align 4
  %151 = ptrtoint ptr %write.i223 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write.i223, align 4
  call void %152(ptr noundef %ah, i32 noundef %150, i32 noundef %148) #8
  %inc15.i231 = add nuw i32 %i.031.i226, 1
  %rem.i232 = and i32 %inc15.i231, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i232)
  %cmp11.i233 = icmp eq i32 %rem.i232, 0
  br i1 %cmp11.i233, label %land.lhs.true.i236, label %for.body.i234.do.end.i239_crit_edge

for.body.i234.do.end.i239_crit_edge:              ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i239

land.lhs.true.i236:                               ; preds = %for.body.i234
  %153 = ptrtoint ptr %bus_ops.i224 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bus_ops.i224, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %156)
  %cmp12.not.i235 = icmp eq i32 %156, 2
  br i1 %cmp12.not.i235, label %land.lhs.true.i236.do.end.i239_crit_edge, label %if.then13.i237

land.lhs.true.i236.do.end.i239_crit_edge:         ; preds = %land.lhs.true.i236
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i239

if.then13.i237:                                   ; preds = %land.lhs.true.i236
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %157(i32 noundef 214748) #8
  br label %do.end.i239

do.end.i239:                                      ; preds = %if.then13.i237, %land.lhs.true.i236.do.end.i239_crit_edge, %for.body.i234.do.end.i239_crit_edge
  %158 = ptrtoint ptr %ia_rows.i220 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ia_rows.i220, align 4
  %cmp3.i238 = icmp ult i32 %inc15.i231, %159
  br i1 %cmp3.i238, label %do.end.i239.for.body.i234_crit_edge, label %do.end.i239.if.end68_crit_edge

do.end.i239.if.end68_crit_edge:                   ; preds = %do.end.i239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end.i239.for.body.i234_crit_edge:              ; preds = %do.end.i239
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i234

if.end68:                                         ; preds = %do.end.i239.if.end68_crit_edge, %if.end.i222.if.end68_crit_edge, %if.then67.if.end68_crit_edge, %if.end63.if.end68_crit_edge
  %160 = ptrtoint ptr %modes_index to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %modesIndex.0, ptr %modes_index, align 4
  br label %set_rfmode

set_rfmode:                                       ; preds = %if.end68, %entry.set_rfmode_crit_edge
  %storemerge = phi i8 [ 1, %if.end68 ], [ 0, %entry.set_rfmode_crit_edge ]
  %161 = ptrtoint ptr %ini_reloaded to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %storemerge, ptr %ini_reloaded, align 1
  %cmp.i = icmp eq ptr %chan, null
  br i1 %cmp.i, label %set_rfmode.ar9003_hw_set_rfmode.exit_crit_edge, label %if.end.i242

set_rfmode.ar9003_hw_set_rfmode.exit_crit_edge:   ; preds = %set_rfmode
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9003_hw_set_rfmode.exit

if.end.i242:                                      ; preds = %set_rfmode
  %162 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %channelFlags, align 2
  %164 = and i16 %163, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool.not.i241 = icmp eq i16 %164, 0
  br i1 %tobool.not.i241, label %if.end.i242.if.end12.i_crit_edge, label %land.lhs.true.i243

if.end.i242.if.end12.i_crit_edge:                 ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i243:                               ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #10
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %165 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %caps.i, align 4
  %and8.i = and i32 %166, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %spec.select.i = select i1 %tobool9.not.i, i32 0, i32 260
  br label %if.end12.i

if.end12.i:                                       ; preds = %land.lhs.true.i243, %if.end.i242.if.end12.i_crit_edge
  %rfMode.1.i = phi i32 [ 4, %if.end.i242.if.end12.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i243 ]
  %167 = and i16 %163, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %if.end12.i.if.end22.i_crit_edge, label %if.then21.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %169 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rmw.i, align 4
  %call.i = call i32 %170(ptr noundef %ah, i32 noundef 41528, i32 noundef 3, i32 noundef 3) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end12.i.if.end22.i_crit_edge
  %write.i244 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %171 = ptrtoint ptr %write.i244 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %write.i244, align 4
  call void %172(ptr noundef %ah, i32 noundef %rfMode.1.i, i32 noundef 41480) #8
  br label %ar9003_hw_set_rfmode.exit

ar9003_hw_set_rfmode.exit:                        ; preds = %if.end22.i, %set_rfmode.ar9003_hw_set_rfmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regWrites) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_antdiv_comb_conf_get(ptr noundef %ah, ptr nocapture noundef writeonly %antconf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 40488) #8
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
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %macVersion, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %9, label %entry.if.else29_crit_edge [
    i32 512, label %land.lhs.true
    i32 576, label %entry.if.end34_crit_edge
    i32 704, label %if.then25
  ]

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

entry.if.else29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29

land.lhs.true:                                    ; preds = %entry
  %macRev = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %macRev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp10 = icmp eq i16 %12, 1
  br i1 %cmp10, label %land.lhs.true.if.end34_crit_edge, label %land.lhs.true.if.else29_crit_edge

land.lhs.true.if.else29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else29:                                        ; preds = %land.lhs.true.if.else29_crit_edge, %entry.if.else29_crit_edge
  br label %if.end34

if.end34:                                         ; preds = %if.else29, %if.then25, %land.lhs.true.if.end34_crit_edge, %entry.if.end34_crit_edge
  %.sink57 = phi i32 [ -1, %if.else29 ], [ 3, %if.then25 ], [ -1, %land.lhs.true.if.end34_crit_edge ], [ -1, %entry.if.end34_crit_edge ]
  %.sink56 = phi i32 [ -3, %if.else29 ], [ -9, %if.then25 ], [ -9, %land.lhs.true.if.end34_crit_edge ], [ -9, %entry.if.end34_crit_edge ]
  %.sink = phi i8 [ 0, %if.else29 ], [ 3, %if.then25 ], [ 1, %land.lhs.true.if.end34_crit_edge ], [ 2, %entry.if.end34_crit_edge ]
  %lna1_lna2_switch_delta17 = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 6
  %13 = ptrtoint ptr %lna1_lna2_switch_delta17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink57, ptr %lna1_lna2_switch_delta17, align 4
  %lna1_lna2_delta18 = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 5
  %14 = ptrtoint ptr %lna1_lna2_delta18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink56, ptr %lna1_lna2_delta18, align 4
  %div_group19 = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 7
  %15 = ptrtoint ptr %div_group19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %div_group19, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_antdiv_comb_conf_set(ptr noundef %ah, ptr nocapture noundef readonly %antconf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 40488) #8
  %and = and i32 %call, -2113961473
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
  %main_gaintb = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 3
  %8 = ptrtoint ptr %main_gaintb to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %main_gaintb, align 1
  %conv10 = zext i8 %9 to i32
  %shl11 = shl i32 %conv10, 30
  %and12 = and i32 %shl11, 1073741824
  %or13 = or i32 %or9, %and12
  %alt_gaintb = getelementptr inbounds %struct.ath_hw_antcomb_conf, ptr %antconf, i32 0, i32 4
  %10 = ptrtoint ptr %alt_gaintb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %alt_gaintb, align 4
  %conv14 = zext i8 %11 to i32
  %shl15 = shl i32 %conv14, 29
  %and16 = and i32 %shl15, 536870912
  %or17 = or i32 %or13, %and16
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  tail call void %13(ptr noundef %ah, i32 noundef %or17, i32 noundef 40488) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_spectral_scan_config(ptr noundef %ah, ptr nocapture noundef readonly %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %param, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %3(ptr noundef %ah, i32 noundef 41512, i32 noundef 0, i32 noundef 1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 %3(ptr noundef %ah, i32 noundef 38964, i32 noundef -2147483648, i32 noundef 0) #8
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %call6 = tail call i32 %5(ptr noundef %ah, i32 noundef 41512, i32 noundef 1, i32 noundef 0) #8
  %endless = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 2
  %6 = ptrtoint ptr %endless to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %endless, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.else, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %count7 = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 3
  %8 = ptrtoint ptr %count7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  %spec.select = select i1 %cmp, i8 1, i8 %9
  %phi.cast = zext i8 %spec.select to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 16
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end.if.end14_crit_edge
  %count.0 = phi i32 [ 0, %if.end.if.end14_crit_edge ], [ %phi.bo, %if.else ]
  %short_repeat = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 1
  %10 = ptrtoint ptr %short_repeat to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %short_repeat, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw, align 4
  br i1 %tobool15.not, label %if.else20, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 %13(ptr noundef %ah, i32 noundef 41512, i32 noundef 268435456, i32 noundef 0) #8
  br label %if.end24

if.else20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 %13(ptr noundef %ah, i32 noundef 41512, i32 noundef 0, i32 noundef 268435456) #8
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then16
  %14 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw, align 4
  %call28 = tail call i32 %15(ptr noundef %ah, i32 noundef 41512, i32 noundef %count.0, i32 noundef 268369920) #8
  %16 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw, align 4
  %period = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 4
  %18 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %period, align 1
  %conv31 = zext i8 %19 to i32
  %shl32 = shl nuw nsw i32 %conv31, 8
  %call34 = tail call i32 %17(ptr noundef %ah, i32 noundef 41512, i32 noundef %shl32, i32 noundef 65280) #8
  %20 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw, align 4
  %fft_period = getelementptr inbounds %struct.ath_spec_scan, ptr %param, i32 0, i32 5
  %22 = ptrtoint ptr %fft_period to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fft_period, align 1
  %conv37 = zext i8 %23 to i32
  %shl38 = shl nuw nsw i32 %conv37, 4
  %and39 = and i32 %shl38, 240
  %call40 = tail call i32 %21(ptr noundef %ah, i32 noundef 41512, i32 noundef %and39, i32 noundef 240) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_spectral_scan_trigger(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 41512, i32 noundef 1, i32 noundef 0) #8
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call3 = tail call i32 %3(ptr noundef %ah, i32 noundef 41512, i32 noundef 2, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_spectral_scan_wait(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef 41512, i32 noundef 2, i32 noundef 0, i32 noundef 100000) #8
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.22, ptr noundef %common.i, ptr noundef nonnull @.str.23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_set_bt_ant_diversity(ptr noundef %ah, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 576, label %if.then7
    i32 704, label %entry.if.end16_crit_edge
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %entry
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %3 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %curchan, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %channelFlags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %call = tail call i32 @ar9003_hw_ant_ctrl_common_2_get(ptr noundef %ah, i1 noundef zeroext %tobool.not) #8
  br i1 %enable, label %if.then11, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %ant_ctrl_comm2g_switch_enable = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 20
  %8 = ptrtoint ptr %ant_ctrl_comm2g_switch_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ant_ctrl_comm2g_switch_enable, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then7.if.end13_crit_edge
  %regval.0 = phi i32 [ %9, %if.then11 ], [ %call, %if.then7.if.end13_crit_edge ]
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  %and14 = and i32 %regval.0, 16777215
  %call15 = tail call i32 %11(ptr noundef %ah, i32 noundef 41612, i32 noundef %and14, i32 noundef 16777215) #8
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %entry.if.end16_crit_edge
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %12 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eep_ops, align 4
  %get_eeprom = getelementptr inbounds %struct.eeprom_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %get_eeprom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_eeprom, align 4
  %call17 = tail call i32 %15(ptr noundef %ah, i32 noundef 28) #8
  %16 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ah, align 4
  %call20 = tail call i32 %17(ptr noundef %ah, i32 noundef 40488) #8
  %and21 = and i32 %call20, -2113929217
  %and23 = shl i32 %call17, 25
  %shl24 = and i32 %and23, 2113929216
  %or25 = or i32 %and21, %shl24
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  tail call void %19(ptr noundef %ah, i32 noundef %or25, i32 noundef 40488) #8
  %20 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %macVersion, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %21, label %if.end16.cleanup_crit_edge [
    i32 576, label %land.lhs.true31
    i32 704, label %if.then82
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true31:                                  ; preds = %if.end16
  %macRev = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %macRev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp34.not = icmp eq i16 %24, 0
  br i1 %cmp34.not, label %land.lhs.true31.cleanup_crit_edge, label %if.then36

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true31
  %25 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ah, align 4
  %call39 = tail call i32 %26(ptr noundef %ah, i32 noundef 40488) #8
  %and40 = and i32 %call39, -16777217
  %27 = shl i32 %call17, 18
  %shl43 = and i32 %27, 16777216
  %or44 = or i32 %and40, %shl43
  %or47 = or i32 %call39, 16777216
  %spec.select = select i1 %enable, i32 %or47, i32 %or44
  %28 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write, align 4
  tail call void %29(ptr noundef %ah, i32 noundef %spec.select, i32 noundef 40488) #8
  %30 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ah, align 4
  %call53 = tail call i32 %31(ptr noundef %ah, i32 noundef 40896) #8
  %and54 = and i32 %call53, -8193
  %32 = shl i32 %call17, 6
  %shl58 = and i32 %32, 8192
  %or59 = or i32 %and54, %shl58
  %or62 = or i32 %call53, 8192
  %regval.2 = select i1 %enable, i32 %or62, i32 %or59
  %33 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write, align 4
  tail call void %34(ptr noundef %ah, i32 noundef %regval.2, i32 noundef 40896) #8
  %35 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %caps, align 4
  %and66 = and i32 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then36.cleanup_crit_edge, label %if.then68

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then68:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ah, align 4
  %call71 = tail call i32 %38(ptr noundef %ah, i32 noundef 40488) #8
  %and72 = and i32 %call71, -2113929217
  %or74 = or i32 %and72, 301989888
  %39 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write, align 4
  tail call void %40(ptr noundef %ah, i32 noundef %or74, i32 noundef 40488) #8
  br label %cleanup

if.then82:                                        ; preds = %if.end16
  %rmw86 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %41 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw86, align 4
  br i1 %enable, label %if.then84, label %if.else100

if.then84:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = tail call i32 %42(ptr noundef %ah, i32 noundef 40488, i32 noundef 16777216, i32 noundef 0) #8
  %43 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmw86, align 4
  %call90 = tail call i32 %44(ptr noundef %ah, i32 noundef 40488, i32 noundef 8388608, i32 noundef 0) #8
  %45 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmw86, align 4
  %call93 = tail call i32 %46(ptr noundef %ah, i32 noundef 40896, i32 noundef 8192, i32 noundef 0) #8
  %47 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmw86, align 4
  %call96 = tail call i32 %48(ptr noundef %ah, i32 noundef 40484, i32 noundef 2097152, i32 noundef 0) #8
  %49 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmw86, align 4
  %call99 = tail call i32 %50(ptr noundef %ah, i32 noundef 6756, i32 noundef 32768, i32 noundef 0) #8
  br label %cleanup

if.else100:                                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %call103 = tail call i32 %42(ptr noundef %ah, i32 noundef 40488, i32 noundef 0, i32 noundef 16777216) #8
  %51 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmw86, align 4
  %call106 = tail call i32 %52(ptr noundef %ah, i32 noundef 40488, i32 noundef 0, i32 noundef 8388608) #8
  %53 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmw86, align 4
  %call109 = tail call i32 %54(ptr noundef %ah, i32 noundef 40896, i32 noundef 0, i32 noundef 8192) #8
  %55 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmw86, align 4
  %call112 = tail call i32 %56(ptr noundef %ah, i32 noundef 40484, i32 noundef 0, i32 noundef 2097152) #8
  %57 = ptrtoint ptr %rmw86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmw86, align 4
  %call115 = tail call i32 %58(ptr noundef %ah, i32 noundef 6756, i32 noundef 0, i32 noundef 32768) #8
  %59 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ah, align 4
  %call118 = tail call i32 %60(ptr noundef %ah, i32 noundef 40488) #8
  %and119 = and i32 %call118, -2113929217
  %or121 = or i32 %and119, 301989888
  %61 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write, align 4
  tail call void %62(ptr noundef %ah, i32 noundef %or121, i32 noundef 40488) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else100, %if.then84, %if.then68, %if.then36.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_tx99_start(ptr noundef %ah, i32 noundef %qnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %3)
  %cmp = icmp eq i32 %3, 1536
  %add = select i1 %cmp, i32 41820, i32 41824
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef %add, i32 noundef 268435456, i32 noundef 0) #8
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %call3 = tail call i32 %5(ptr noundef %ah, i32 noundef 32840, i32 noundef 0, i32 noundef 32) #8
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  tail call void %7(ptr noundef %ah, i32 noundef 32, i32 noundef 8) #8
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %shl = shl i32 %qnum, 2
  %add7 = add i32 %shl, 4160
  tail call void %9(ptr noundef %ah, i32 noundef 0, i32 noundef %add7) #8
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  tail call void %11(ptr noundef %ah, i32 noundef 20, i32 noundef 4144) #8
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  tail call void %13(ptr noundef %ah, i32 noundef 20, i32 noundef 4272) #8
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  tail call void %15(ptr noundef %ah, i32 noundef 1024, i32 noundef 32788) #8
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %add17 = add i32 %shl, 4224
  tail call void %17(ptr noundef %ah, i32 noundef -1, i32 noundef %add17) #8
  %18 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw, align 4
  %add21 = add i32 %shl, 2496
  %call22 = tail call i32 %19(ptr noundef %ah, i32 noundef %add21, i32 noundef 2048, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_tx99_stop(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %3)
  %cmp = icmp eq i32 %3, 1536
  %add = select i1 %cmp, i32 41820, i32 41824
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef %add, i32 noundef 0, i32 noundef 268435456) #8
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %call3 = tail call i32 %5(ptr noundef %ah, i32 noundef 32840, i32 noundef 32, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_tx99_set_txpower(ptr noundef %ah, i8 noundef zeroext %txpower) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 @llvm.umin.i8(i8 %txpower, i8 63)
  %1 = zext i8 %0 to i32
  %2 = call ptr @memset(ptr @ar9003_hw_tx99_set_txpower.p_pwr_array, i32 %1, i32 36)
  %call = tail call i32 @ar9003_hw_tx_power_regwrite(ptr noundef %ah, ptr noundef nonnull @ar9003_hw_tx99_set_txpower.p_pwr_array) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ar9003_hw_bb_watchdog_check(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bb_watchdog_last_status = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 115
  %0 = ptrtoint ptr %bb_watchdog_last_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bb_watchdog_last_status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %1, label %sw.default [
    i32 67110201, label %sw.bb
    i32 318767114, label %entry.cleanup_crit_edge
    i32 67108874, label %entry.sw.bb10_crit_edge
    i32 67111689, label %entry.sw.bb10_crit_edge35
    i32 67109897, label %sw.bb11
  ]

entry.sw.bb10_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah, align 4
  %call = tail call i32 %4(ptr noundef %ah, i32 noundef 38964) #8
  %or = or i32 %call, 2130706432
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  tail call void %6(ptr noundef %ah, i32 noundef %or, i32 noundef 38964) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #8
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call4 = tail call i32 %9(ptr noundef %ah, i32 noundef 38964) #8
  %and5 = and i32 %call4, -2130706433
  %or6 = or i32 %and5, 1677721600
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  tail call void %11(ptr noundef %ah, i32 noundef %or6, i32 noundef 38964) #8
  br label %cleanup

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge35
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %macVersion, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %13, label %if.else [
    i32 768, label %sw.bb11.cleanup_crit_edge
    i32 1280, label %sw.bb11.cleanup_crit_edge36
    i32 1536, label %sw.bb11.cleanup_crit_edge37
  ]

sw.bb11.cleanup_crit_edge37:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb11.cleanup_crit_edge36:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.else, %sw.bb11.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge36, %sw.bb11.cleanup_crit_edge37, %sw.bb10, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.default ], [ true, %if.else ], [ true, %sw.bb10 ], [ false, %sw.bb ], [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb11.cleanup_crit_edge ], [ false, %sw.bb11.cleanup_crit_edge36 ], [ false, %sw.bb11.cleanup_crit_edge37 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_bb_watchdog_config(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %bb_watchdog_timeout_ms = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 116
  %0 = ptrtoint ptr %bb_watchdog_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bb_watchdog_timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %call2 = tail call i32 %5(ptr noundef %ah, i32 noundef 42952) #8
  %and = and i32 %call2, -7
  tail call void %3(ptr noundef %ah, i32 noundef %and, i32 noundef 42952) #8
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call7 = tail call i32 %9(ptr noundef %ah, i32 noundef 42948) #8
  %and8 = and i32 %call7, -4
  tail call void %7(ptr noundef %ah, i32 noundef %and8, i32 noundef 42948) #8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  %and9 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then.cleanup_crit_edge, label %if.then11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end12:                                         ; preds = %entry
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %call15 = tail call i32 %13(ptr noundef %ah, i32 noundef 42952) #8
  %and16 = and i32 %call15, -7
  %write18 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %14 = ptrtoint ptr %write18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write18, align 4
  %or = or i32 %and16, 4
  tail call void %15(ptr noundef %ah, i32 noundef %or, i32 noundef 42952) #8
  %16 = tail call i32 @llvm.umin.i32(i32 %1, i32 10000)
  %mul = mul nuw nsw i32 %16, 100
  %div = udiv i32 %mul, 74
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %17 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %curchan, align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %if.end12.if.end29_crit_edge, label %land.lhs.true

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %channelFlags, align 2
  %21 = and i16 %20, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool25.not = icmp eq i16 %21, 0
  %div28 = udiv i32 %mul, 37
  %spec.select = select i1 %tobool25.not, i32 %div, i32 %div28
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true, %if.end12.if.end29_crit_edge
  %idle_count.0 = phi i32 [ %div, %if.end12.if.end29_crit_edge ], [ %spec.select, %land.lhs.true ]
  %22 = ptrtoint ptr %write18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write18, align 4
  %shl = shl nuw nsw i32 %idle_count.0, 2
  %or33 = or i32 %shl, -65535
  tail call void %23(ptr noundef %ah, i32 noundef %or33, i32 noundef 42948) #8
  %debug_mask35 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %debug_mask35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug_mask35, align 4
  %and36 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end29.cleanup_crit_edge, label %if.then38

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end29.cleanup_crit_edge, %if.then11, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_bb_watchdog_read(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 42944) #8
  %bb_watchdog_last_status = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 115
  %2 = ptrtoint ptr %bb_watchdog_last_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %bb_watchdog_last_status, align 4
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %3 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write, align 4
  %and = and i32 %call, -9
  tail call void %4(ptr noundef %ah, i32 noundef %and, i32 noundef 42944) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_bb_watchdog_dbg_info(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_mask, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !77

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bb_watchdog_last_status = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 115
  %2 = ptrtoint ptr %bb_watchdog_last_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bb_watchdog_last_status, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %3) #8
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 4
  %and11 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.do.body34_crit_edge, label %if.then13

if.end.do.body34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %3, 7
  %and15 = lshr i32 %3, 3
  %shr16 = and i32 %and15, 1
  %and17 = lshr i32 %3, 4
  %shr18 = and i32 %and17, 15
  %and19 = lshr i32 %3, 8
  %shr20 = and i32 %and19, 15
  %and21 = lshr i32 %3, 12
  %shr22 = and i32 %and21, 15
  %and23 = lshr i32 %3, 16
  %shr24 = and i32 %and23, 15
  %and25 = lshr i32 %3, 20
  %shr26 = and i32 %and25, 15
  %and27 = lshr i32 %3, 24
  %shr28 = and i32 %and27, 15
  %shr30 = lshr i32 %3, 28
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4, i32 noundef %and14, i32 noundef %shr16, i32 noundef %shr18, i32 noundef %shr20, i32 noundef %shr22, i32 noundef %shr24, i32 noundef %shr26, i32 noundef %shr28, i32 noundef %shr30) #8
  br label %do.body34

do.body34:                                        ; preds = %if.then13, %if.end.do.body34_crit_edge
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and36 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body34.do.body46_crit_edge, label %if.then38

do.body34.do.body46_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call39 = tail call i32 %9(ptr noundef %ah, i32 noundef 42948) #8
  %10 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ah, align 4
  %call42 = tail call i32 %11(ptr noundef %ah, i32 noundef 42952) #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %call39, i32 noundef %call42) #8
  br label %do.body46

do.body46:                                        ; preds = %if.then38, %do.body34.do.body46_crit_edge
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and48 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body46.do.end56_crit_edge, label %if.then50

do.body46.do.end56_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

if.then50:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah, align 4
  %call53 = tail call i32 %15(ptr noundef %ah, i32 noundef 41476) #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %call53) #8
  br label %do.end56

do.end56:                                         ; preds = %if.then50, %do.body46.do.end56_crit_edge
  %cc_survey = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 21
  %16 = ptrtoint ptr %cc_survey to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cc_survey, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool57.not = icmp eq i32 %17, 0
  br i1 %tobool57.not, label %do.end56.do.body81_crit_edge, label %do.body59

do.end56.do.body81_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81

do.body59:                                        ; preds = %do.end56
  %18 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask, align 4
  %and61 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body59.do.body81_crit_edge, label %if.then63

do.body59.do.body81_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81

if.then63:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  %rx_busy = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 21, i32 1
  %20 = ptrtoint ptr %rx_busy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_busy, align 4
  %mul = mul i32 %21, 100
  %div = udiv i32 %mul, %17
  %rx_frame = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 21, i32 2
  %22 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_frame, align 4
  %mul68 = mul i32 %23, 100
  %div71 = udiv i32 %mul68, %17
  %tx_frame = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 21, i32 3
  %24 = ptrtoint ptr %tx_frame to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_frame, align 4
  %mul73 = mul i32 %25, 100
  %div76 = udiv i32 %mul73, %17
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, i32 noundef %div, i32 noundef %div71, i32 noundef %div76) #8
  br label %do.body81

do.body81:                                        ; preds = %if.then63, %do.body59.do.body81_crit_edge, %do.end56.do.body81_crit_edge
  %26 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_mask, align 4
  %and83 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body81.cleanup_crit_edge, label %if.then85

do.body81.cleanup_crit_edge:                      ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body81.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar9003_hw_disable_phy_restart(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bb_watchdog_last_status = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 115
  %0 = ptrtoint ptr %bb_watchdog_last_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bb_watchdog_last_status, align 4
  %2 = and i32 %1, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 2816, i32 %2)
  %cmp = icmp eq i32 %2, 2816
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bb_hang_rx_ofdm = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 117
  %3 = ptrtoint ptr %bb_hang_rx_ofdm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bb_hang_rx_ofdm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %bb_hang_rx_ofdm4 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 117
  %5 = ptrtoint ptr %bb_hang_rx_ofdm4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bb_hang_rx_ofdm4, align 4
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %call = tail call i32 %7(ptr noundef %ah, i32 noundef 40484) #8
  %and5 = and i32 %call, -2
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  tail call void %9(ptr noundef %ah, i32 noundef %and5, i32 noundef 40484) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_channel_centers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ar9003_get_spur_chan_ptr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set11nmac2040(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_synth_delay(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_write_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_hw_get_rx_gain_idx(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_apply_txpower(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_delta_slope_vals(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_hw_ant_ctrl_common_2_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ar9003_hw_tx_power_regwrite(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @ar9003_hw_attach_phy_ops.ar9300_cca_regs, !1, !"ar9300_cca_regs", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1934, i32 19}
!2 = !{ptr @__ksymtab_ar9003_hw_bb_watchdog_check, !3, !"__ksymtab_ar9003_hw_bb_watchdog_check", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2045, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2066, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2102, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2131, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2133, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2145, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2148, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2153, i32 3}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2157, i32 2}
!21 = !{ptr @__ksymtab_ar9003_hw_bb_watchdog_dbg_info, !22, !"__ksymtab_ar9003_hw_bb_watchdog_dbg_info", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2159, i32 1}
!23 = !{ptr @__ksymtab_ar9003_hw_disable_phy_restart, !24, !"__ksymtab_ar9003_hw_disable_phy_restart", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 2180, i32 1}
!25 = distinct !{null, !26, !"ofdm2pwr", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 59, i32 17}
!27 = !{ptr @mcs2pwr_ht40, !28, !"mcs2pwr_ht40", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 97, i32 17}
!29 = !{ptr @mcs2pwr_ht20, !30, !"mcs2pwr_ht20", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 70, i32 17}
!31 = !{ptr @ar9003_hw_spur_mitigate_mrc_cck.spur_freq, !32, !"spur_freq", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 241, i32 19}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1161, i32 4}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1179, i32 4}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1216, i32 4}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1224, i32 4}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1244, i32 4}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1280, i32 4}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1288, i32 4}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1319, i32 4}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1332, i32 3}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1336, i32 2}
!55 = !{ptr @firstep_table, !56, !"firstep_table", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 37, i32 18}
!57 = !{ptr @cycpwrThr1_table, !58, !"cycpwrThr1_table", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 41, i32 18}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1412, i32 2}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1800, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ar9003_hw_tx99_set_txpower.p_pwr_array, !65, !"p_pwr_array", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_phy.c", i32 1826, i32 12}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
!77 = !{!"branch_weights", i32 2000, i32 1}
