; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/calib.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/calib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath9k_hw_getchan_noise\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_getchan_noise\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_getchan_noise\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_getchan_noise:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_getchan_noise\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_getchan_noise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_reset_calvalid\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_reset_calvalid\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_reset_calvalid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_reset_calvalid:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_reset_calvalid\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_reset_calvalid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_loadnf\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_loadnf\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_loadnf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_loadnf:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_loadnf\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_loadnf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_getnf\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_getnf\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_getnf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_getnf:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_getnf\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_getnf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_bstuck_nfcal\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_bstuck_nfcal\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_bstuck_nfcal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_bstuck_nfcal:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_bstuck_nfcal\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_bstuck_nfcal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }
%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ath9k_hw_getchan_noise = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_getchan_noise = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_getchan_noise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_getchan_noise to i32), ptr @__kstrtab_ath9k_hw_getchan_noise, ptr @__kstrtabns_ath9k_hw_getchan_noise }, section "___ksymtab+ath9k_hw_getchan_noise", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Calibration state incorrect, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Resetting Cal %d state for channel %u\0A\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_hw_reset_calvalid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_reset_calvalid = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_reset_calvalid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_reset_calvalid to i32), ptr @__kstrtab_ath9k_hw_reset_calvalid, ptr @__kstrtabns_ath9k_hw_reset_calvalid }, section "___ksymtab+ath9k_hw_reset_calvalid", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Timeout while waiting for nf to load: AR_PHY_AGC_CONTROL=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_hw_loadnf = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_loadnf = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_loadnf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_loadnf to i32), ptr @__kstrtab_ath9k_hw_loadnf, ptr @__kstrtabns_ath9k_hw_loadnf }, section "___ksymtab+ath9k_hw_loadnf", align 4
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NF did not complete in calibration window\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"noise floor failed detected; detected %d, threshold %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_hw_getnf = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_getnf = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_getnf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_getnf to i32), ptr @__kstrtab_ath9k_hw_getnf, ptr @__kstrtabns_ath9k_hw_getnf }, section "___ksymtab+ath9k_hw_getnf", align 4
@__kstrtab_ath9k_hw_bstuck_nfcal = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_bstuck_nfcal = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_bstuck_nfcal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_bstuck_nfcal to i32), ptr @__kstrtab_ath9k_hw_bstuck_nfcal, ptr @__kstrtabns_ath9k_hw_bstuck_nfcal }, section "___ksymtab+ath9k_hw_bstuck_nfcal", align 4
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NF calibrated [%s] [chain %d] is %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NF[%d] (%d) > MAX (%d), correcting to MAX\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NF[%d] (%d) < MIN (%d), correcting to NOM\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFmid[%d] (%d) > MAX (%d), %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not corrected (due to interference)\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"correcting to MAX\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 208, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 215, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 343, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 414, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 424, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 386, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 391, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 396, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath9k/calib.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 125, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_ath9k_hw_bstuck_nfcal, ptr @__ksymtab_ath9k_hw_getchan_noise, ptr @__ksymtab_ath9k_hw_getnf, ptr @__ksymtab_ath9k_hw_loadnf, ptr @__ksymtab_ath9k_hw_reset_calvalid, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i16 @ath9k_hw_getchan_noise(ptr nocapture noundef readonly %ah, ptr noundef readonly %chan, i16 noundef signext %nf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nf)
  %tobool.not = icmp eq i16 %nf, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %conv = zext i16 %nf to i32
  %sub = add nuw nsw i32 %conv, 250
  %tobool.not.i.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i.i, label %ath9k_hw_get_nf_limits.exit.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then
  %channelFlags.i.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags.i.i, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not.i.i = icmp eq i16 %2, 0
  br i1 %tobool1.not.i.i, label %ath9k_hw_get_nf_limits.exit.thread18.i, label %ath9k_hw_get_nf_limits.exit.thread.i

ath9k_hw_get_nf_limits.exit.i:                    ; preds = %if.then
  %arrayidx.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %ath9k_hw_get_nf_limits.exit.i.if.then.i10.i_crit_edge, label %ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_default_nf.exit_crit_edge

ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_default_nf.exit_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_default_nf.exit

ath9k_hw_get_nf_limits.exit.i.if.then.i10.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i10.i

ath9k_hw_get_nf_limits.exit.thread18.i:           ; preds = %lor.lhs.false.i.i
  %arrayidx20.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 3, i32 0
  %5 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx20.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not21.i = icmp eq i16 %6, 0
  br i1 %tobool.not21.i, label %ath9k_hw_get_nf_limits.exit.thread18.i.if.then.i10.i_crit_edge, label %ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_default_nf.exit_crit_edge

ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_default_nf.exit_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_default_nf.exit

ath9k_hw_get_nf_limits.exit.thread18.i.if.then.i10.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i10.i

ath9k_hw_get_nf_limits.exit.thread.i:             ; preds = %lor.lhs.false.i.i
  %arrayidx16.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not17.i = icmp eq i16 %8, 0
  br i1 %tobool.not17.i, label %if.else.i12.i, label %ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_default_nf.exit_crit_edge

ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_default_nf.exit_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_default_nf.exit

if.then.i10.i:                                    ; preds = %ath9k_hw_get_nf_limits.exit.thread18.i.if.then.i10.i_crit_edge, %ath9k_hw_get_nf_limits.exit.i.if.then.i10.i_crit_edge
  %nf_2g.i9.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  br label %ath9k_hw_get_nf_limits.exit14.i

if.else.i12.i:                                    ; preds = %ath9k_hw_get_nf_limits.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  %nf_5g.i11.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20
  br label %ath9k_hw_get_nf_limits.exit14.i

ath9k_hw_get_nf_limits.exit14.i:                  ; preds = %if.else.i12.i, %if.then.i10.i
  %limit.0.i13.i = phi ptr [ %nf_5g.i11.i, %if.else.i12.i ], [ %nf_2g.i9.i, %if.then.i10.i ]
  %nominal.i = getelementptr inbounds %struct.ath_nf_limits, ptr %limit.0.i13.i, i32 0, i32 2
  %9 = ptrtoint ptr %nominal.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nominal.i, align 2
  br label %ath9k_hw_get_default_nf.exit

ath9k_hw_get_default_nf.exit:                     ; preds = %ath9k_hw_get_nf_limits.exit14.i, %ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_default_nf.exit_crit_edge, %ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_default_nf.exit_crit_edge, %ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_default_nf.exit_crit_edge
  %retval.0.i = phi i16 [ %10, %ath9k_hw_get_nf_limits.exit14.i ], [ %4, %ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_default_nf.exit_crit_edge ], [ %8, %ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_default_nf.exit_crit_edge ], [ %6, %ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_default_nf.exit_crit_edge ]
  %conv1 = zext i16 %retval.0.i to i32
  %sub2 = sub nsw i32 %sub, %conv1
  %sext = shl i32 %sub2, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp = icmp sgt i32 %sext, 0
  %11 = trunc i32 %sub2 to i8
  %conv9 = add i8 %11, -95
  %noise.0 = select i1 %cmp, i8 %conv9, i8 -95
  br label %if.end10

if.end10:                                         ; preds = %ath9k_hw_get_default_nf.exit, %entry.if.end10_crit_edge
  %noise.1 = phi i8 [ %noise.0, %ath9k_hw_get_default_nf.exit ], [ -95, %entry.if.end10_crit_edge ]
  %conv11 = sext i8 %noise.1 to i16
  ret i16 %conv11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_reset_calibration(ptr noundef %ah, ptr noundef %currCal) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_calibration.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 6
  %0 = ptrtoint ptr %setup_calibration.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup_calibration.i, align 4
  tail call void %1(ptr noundef %ah, ptr noundef %currCal) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %cal_start_time = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 47
  %3 = ptrtoint ptr %cal_start_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cal_start_time, align 4
  %calState = getelementptr inbounds %struct.ath9k_cal_list, ptr %currCal, i32 0, i32 1
  %4 = ptrtoint ptr %calState to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %calState, align 4
  %meas0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 54
  %5 = call ptr @memset(ptr %meas0, i32 0, i32 50)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_hw_reset_calvalid(ptr noundef %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %cal_list_curr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 53
  %0 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cal_list_curr, align 4
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %2 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caldata, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %5)
  %cmp = icmp ne i32 %5, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp3 = icmp ult i32 %5, 64
  %or.cond.not = and i1 %cmp, %cmp3
  %cmp6 = icmp eq ptr %1, null
  %or.cond56 = select i1 %or.cond.not, i1 true, i1 %cmp6
  br i1 %or.cond56, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %calState = getelementptr inbounds %struct.ath9k_cal_list, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %calState to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %calState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp9.not = icmp eq i32 %7, 3
  br i1 %cmp9.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %7) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %cal_list = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 51
  %10 = ptrtoint ptr %cal_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cal_list, align 4
  %debug_mask18 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  br label %do.body16

do.body16:                                        ; preds = %do.end24.do.body16_crit_edge, %if.end15
  %currCal.0 = phi ptr [ %11, %if.end15 ], [ %34, %do.end24.do.body16_crit_edge ]
  %12 = ptrtoint ptr %debug_mask18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask18, align 4
  %and19 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body16.do.end24_crit_edge, label %if.then21

do.body16.do.end24_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %currCal.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %currCal.0, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %curchan, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %17, i32 noundef %23) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body16.do.end24_crit_edge
  %24 = ptrtoint ptr %currCal.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %currCal.0, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %neg = xor i32 %27, -1
  %28 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %caldata, align 4
  %CalValid = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %CalValid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %CalValid, align 4
  %and28 = and i32 %31, %neg
  store i32 %and28, ptr %CalValid, align 4
  %calState29 = getelementptr inbounds %struct.ath9k_cal_list, ptr %currCal.0, i32 0, i32 1
  %32 = ptrtoint ptr %calState29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %calState29, align 4
  %calNext = getelementptr inbounds %struct.ath9k_cal_list, ptr %currCal.0, i32 0, i32 2
  %33 = ptrtoint ptr %calNext to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %calNext, align 4
  %35 = ptrtoint ptr %cal_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cal_list, align 4
  %cmp32.not = icmp eq ptr %34, %36
  br i1 %cmp32.not, label %do.end24.cleanup_crit_edge, label %do.end24.do.body16_crit_edge

do.end24.do.body16_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.end24.cleanup_crit_edge, %if.then12, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.then12 ], [ true, %do.body.cleanup_crit_edge ], [ false, %do.end24.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_start_nfcal(ptr noundef %ah, i1 noundef zeroext %update) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %0 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caldata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cal_flags) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %5)
  %cmp = icmp ugt i32 %5, 447
  %cond = select i1 %cmp, i32 41668, i32 39008
  %call = tail call i32 %3(ptr noundef %ah, i32 noundef %cond, i32 noundef 32768, i32 noundef 0) #6
  %6 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw, align 4
  %8 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %9)
  %cmp8 = icmp ugt i32 %9, 447
  %cond9 = select i1 %cmp8, i32 41668, i32 39008
  br i1 %update, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 %7(ptr noundef %ah, i32 noundef %cond9, i32 noundef 0, i32 noundef 131072) #6
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 %7(ptr noundef %ah, i32 noundef %cond9, i32 noundef 131072, i32 noundef 0) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then3
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  %12 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %13)
  %cmp23 = icmp ugt i32 %13, 447
  %cond24 = select i1 %cmp23, i32 41668, i32 39008
  %call25 = tail call i32 %11(ptr noundef %ah, i32 noundef %cond24, i32 noundef 2, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_hw_loadnf(ptr noundef %ah, ptr noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %0 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rxchainmask, align 1
  %shl = shl i8 %1, 3
  %or = or i8 %shl, %1
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %channelFlags.i, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool1.not.i = icmp eq i16 %4, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %nf_2g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  br label %ath9k_hw_get_nf_limits.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %nf_5g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20
  br label %ath9k_hw_get_nf_limits.exit

ath9k_hw_get_nf_limits.exit:                      ; preds = %if.else.i, %if.then.i
  %limit.0.i = phi ptr [ %nf_5g.i, %if.else.i ], [ %nf_2g.i, %if.then.i ]
  %nominal = getelementptr inbounds %struct.ath_nf_limits, ptr %limit.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %nominal to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nominal, align 2
  %7 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %10)
  %cmp = icmp ugt i32 %10, 447
  %cond = select i1 %cmp, i32 41668, i32 39008
  %call6 = tail call i32 %8(ptr noundef %ah, i32 noundef %cond) #6
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %11 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caldata, align 4
  %tobool.not = icmp eq ptr %12, null
  %nfCalHist = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %12, i32 0, i32 13
  %spec.select = select i1 %tobool.not, ptr null, ptr %nfCalHist
  %enable_rmw_buffer = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 6
  %13 = ptrtoint ptr %enable_rmw_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enable_rmw_buffer, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %ath9k_hw_get_nf_limits.exit.do.end_crit_edge, label %if.then10

ath9k_hw_get_nf_limits.exit.do.end_crit_edge:     ; preds = %ath9k_hw_get_nf_limits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then10:                                        ; preds = %ath9k_hw_get_nf_limits.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %14(ptr noundef %ah) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %ath9k_hw_get_nf_limits.exit.do.end_crit_edge
  %conv16 = zext i8 %or to i32
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %nf_override = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 25
  %tobool30.not = icmp eq ptr %spec.select, null
  %nf_5g.i374 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20
  %nf_2g.i372 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.0378 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl17 = shl nuw nsw i32 1, %i.0378
  %and = and i32 %shl17, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.then19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0378)
  %cmp20 = icmp ugt i32 %i.0378, 2
  br i1 %cmp20, label %land.lhs.true, label %if.then19.if.end26_crit_edge

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true:                                    ; preds = %if.then19
  %15 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %channelFlags, align 2
  %17 = and i16 %16, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool24.not = icmp eq i16 %17, 0
  br i1 %tobool24.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.then19.if.end26_crit_edge
  %18 = ptrtoint ptr %nf_override to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nf_override, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool27.not = icmp eq i16 %19, 0
  br i1 %tobool27.not, label %if.else, label %if.end26.if.end44_crit_edge

if.end26.if.end44_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.else:                                          ; preds = %if.end26
  br i1 %tobool30.not, label %if.else32, label %if.then31

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %privNF = getelementptr %struct.ath9k_nfcal_hist, ptr %spec.select, i32 %i.0378, i32 2
  %20 = ptrtoint ptr %privNF to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %privNF, align 2
  br label %if.end44

if.else32:                                        ; preds = %if.else
  br i1 %tobool.not.i, label %if.else32.ath9k_hw_get_nf_limits.exit377_crit_edge, label %lor.lhs.false.i371

if.else32.ath9k_hw_get_nf_limits.exit377_crit_edge: ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_limits.exit377

lor.lhs.false.i371:                               ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %channelFlags, align 2
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool1.not.i370 = icmp eq i16 %24, 0
  %spec.select384 = select i1 %tobool1.not.i370, ptr %nf_2g.i372, ptr %nf_5g.i374
  br label %ath9k_hw_get_nf_limits.exit377

ath9k_hw_get_nf_limits.exit377:                   ; preds = %lor.lhs.false.i371, %if.else32.ath9k_hw_get_nf_limits.exit377_crit_edge
  %limit.0.i376 = phi ptr [ %nf_2g.i372, %if.else32.ath9k_hw_get_nf_limits.exit377_crit_edge ], [ %spec.select384, %lor.lhs.false.i371 ]
  %arrayidx34 = getelementptr %struct.ath_nf_limits, ptr %limit.0.i376, i32 0, i32 3, i32 %i.0378
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx34, align 2
  %27 = add i16 %26, 59
  call void @__sanitizer_cov_trace_const_cmp2(i16 -68, i16 %27)
  %28 = icmp ult i16 %27, -68
  %spec.select367 = select i1 %28, i16 %6, i16 %26
  br label %if.end44

if.end44:                                         ; preds = %ath9k_hw_get_nf_limits.exit377, %if.then31, %if.end26.if.end44_crit_edge
  %nfval.0 = phi i16 [ %21, %if.then31 ], [ %19, %if.end26.if.end44_crit_edge ], [ %spec.select367, %ath9k_hw_get_nf_limits.exit377 ]
  %29 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw, align 4
  %arrayidx46 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 %i.0378
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx46, align 4
  %conv47 = sext i16 %nfval.0 to i32
  %shl48 = shl nsw i32 %conv47, 1
  %and49 = and i32 %shl48, 510
  %call50 = tail call i32 %30(ptr noundef %ah, i32 noundef %32, i32 noundef %and49, i32 noundef 511) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0378, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %and52 = and i32 %call6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %for.end.if.end82_crit_edge, label %if.then54

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then54:                                        ; preds = %for.end
  %33 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw, align 4
  %35 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %36)
  %cmp59 = icmp ugt i32 %36, 447
  %cond61 = select i1 %cmp59, i32 41668, i32 39008
  %call62 = tail call i32 %34(ptr noundef %ah, i32 noundef %cond61, i32 noundef 0, i32 noundef 2) #6
  %rmw_flush = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 7
  %37 = ptrtoint ptr %rmw_flush to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmw_flush, align 4
  %tobool65.not = icmp eq ptr %38, null
  br i1 %tobool65.not, label %if.then54.do.body72_crit_edge, label %if.then66

if.then54.do.body72_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body72

if.then66:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %38(ptr noundef %ah) #6
  br label %do.body72

do.body72:                                        ; preds = %if.then66, %if.then54.do.body72_crit_edge
  %39 = ptrtoint ptr %enable_rmw_buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %enable_rmw_buffer, align 4
  %tobool75.not = icmp eq ptr %40, null
  br i1 %tobool75.not, label %do.body72.if.end82_crit_edge, label %if.then76

do.body72.if.end82_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then76:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %40(ptr noundef %ah) #6
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %do.body72.if.end82_crit_edge, %for.end.if.end82_crit_edge
  %41 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw, align 4
  %43 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %44)
  %cmp87 = icmp ugt i32 %44, 447
  %cond89 = select i1 %cmp87, i32 41668, i32 39008
  %call90 = tail call i32 %42(ptr noundef %ah, i32 noundef %cond89, i32 noundef 0, i32 noundef 32768) #6
  %45 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmw, align 4
  %47 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %48)
  %cmp95 = icmp ugt i32 %48, 447
  %cond97 = select i1 %cmp95, i32 41668, i32 39008
  %call98 = tail call i32 %46(ptr noundef %ah, i32 noundef %cond97, i32 noundef 0, i32 noundef 131072) #6
  %49 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmw, align 4
  %51 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %52)
  %cmp103 = icmp ugt i32 %52, 447
  %cond105 = select i1 %cmp103, i32 41668, i32 39008
  %call106 = tail call i32 %50(ptr noundef %ah, i32 noundef %cond105, i32 noundef 2, i32 noundef 0) #6
  %rmw_flush109 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 7
  %53 = ptrtoint ptr %rmw_flush109 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmw_flush109, align 4
  %tobool110.not = icmp eq ptr %54, null
  br i1 %tobool110.not, label %if.end82.for.body120.preheader_crit_edge, label %if.then111

if.end82.for.body120.preheader_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body120.preheader

if.then111:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %54(ptr noundef %ah) #6
  br label %for.body120.preheader

for.body120.preheader:                            ; preds = %if.then111, %if.end82.for.body120.preheader_crit_edge
  br label %for.body120

for.body120:                                      ; preds = %if.end133.for.body120_crit_edge, %for.body120.preheader
  %j.0381 = phi i32 [ %inc135, %if.end133.for.body120_crit_edge ], [ 0, %for.body120.preheader ]
  %55 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ah, align 4
  %57 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %58)
  %cmp125 = icmp ugt i32 %58, 447
  %cond127 = select i1 %cmp125, i32 41668, i32 39008
  %call128 = tail call i32 %56(ptr noundef %ah, i32 noundef %cond127) #6
  %and129 = and i32 %call128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %cmp130 = icmp eq i32 %and129, 0
  br i1 %cmp130, label %for.body120.for.end136_crit_edge, label %if.end133

for.body120.for.end136_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end136

if.end133:                                        ; preds = %for.body120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #6
  %inc135 = add nuw nsw i32 %j.0381, 1
  %exitcond385.not = icmp eq i32 %inc135, 22200
  br i1 %exitcond385.not, label %if.end133.for.end136_crit_edge, label %if.end133.for.body120_crit_edge

if.end133.for.body120_crit_edge:                  ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body120

if.end133.for.end136_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end136

for.end136:                                       ; preds = %if.end133.for.end136_crit_edge, %for.body120.for.end136_crit_edge
  %j.0.lcssa = phi i32 [ %j.0381, %for.body120.for.end136_crit_edge ], [ 22200, %if.end133.for.end136_crit_edge ]
  br i1 %tobool53.not, label %for.end136.if.end192_crit_edge, label %do.body140

for.end136.if.end192_crit_edge:                   ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

do.body140:                                       ; preds = %for.end136
  %60 = ptrtoint ptr %enable_rmw_buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %enable_rmw_buffer, align 4
  %tobool143.not = icmp eq ptr %61, null
  br i1 %tobool143.not, label %do.body140.do.end149_crit_edge, label %if.then144

do.body140.do.end149_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end149

if.then144:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %61(ptr noundef %ah) #6
  br label %do.end149

do.end149:                                        ; preds = %if.then144, %do.body140.do.end149_crit_edge
  %and150 = and i32 %call6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.end149.if.end161_crit_edge, label %if.then152

do.end149.if.end161_crit_edge:                    ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

if.then152:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmw, align 4
  %64 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %65)
  %cmp157 = icmp ugt i32 %65, 447
  %cond159 = select i1 %cmp157, i32 41668, i32 39008
  %call160 = tail call i32 %63(ptr noundef %ah, i32 noundef %cond159, i32 noundef 32768, i32 noundef 0) #6
  br label %if.end161

if.end161:                                        ; preds = %if.then152, %do.end149.if.end161_crit_edge
  %and162 = and i32 %call6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end161.if.end173_crit_edge, label %if.then164

if.end161.if.end173_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then164:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmw, align 4
  %68 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %69)
  %cmp169 = icmp ugt i32 %69, 447
  %cond171 = select i1 %cmp169, i32 41668, i32 39008
  %call172 = tail call i32 %67(ptr noundef %ah, i32 noundef %cond171, i32 noundef 131072, i32 noundef 0) #6
  br label %if.end173

if.end173:                                        ; preds = %if.then164, %if.end161.if.end173_crit_edge
  %70 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmw, align 4
  %72 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %73)
  %cmp178 = icmp ugt i32 %73, 447
  %cond180 = select i1 %cmp178, i32 41668, i32 39008
  %call181 = tail call i32 %71(ptr noundef %ah, i32 noundef %cond180, i32 noundef 2, i32 noundef 0) #6
  %74 = ptrtoint ptr %rmw_flush109 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmw_flush109, align 4
  %tobool185.not = icmp eq ptr %75, null
  br i1 %tobool185.not, label %if.end173.if.end192_crit_edge, label %if.then186

if.end173.if.end192_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

if.then186:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %75(ptr noundef %ah) #6
  br label %if.end192

if.end192:                                        ; preds = %if.then186, %if.end173.if.end192_crit_edge, %for.end136.if.end192_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 22200, i32 %j.0.lcssa)
  %cmp193 = icmp eq i32 %j.0.lcssa, 22200
  br i1 %cmp193, label %do.body196, label %do.body212

do.body196:                                       ; preds = %if.end192
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %76 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %debug_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool198.not = icmp eq i32 %77, 0
  br i1 %tobool198.not, label %do.body196.cleanup259_crit_edge, label %if.then199

do.body196.cleanup259_crit_edge:                  ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup259

if.then199:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ah, align 4
  %80 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %81)
  %cmp204 = icmp ugt i32 %81, 447
  %cond206 = select i1 %cmp204, i32 41668, i32 39008
  %call207 = tail call i32 %79(ptr noundef %ah, i32 noundef %cond206) #6
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %call207) #6
  br label %cleanup259

do.body212:                                       ; preds = %if.end192
  %82 = ptrtoint ptr %enable_rmw_buffer to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %enable_rmw_buffer, align 4
  %tobool215.not = icmp eq ptr %83, null
  br i1 %tobool215.not, label %do.body212.do.end221_crit_edge, label %if.then216

do.body212.do.end221_crit_edge:                   ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end221

if.then216:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %83(ptr noundef %ah) #6
  br label %do.end221

do.end221:                                        ; preds = %if.then216, %do.body212.do.end221_crit_edge
  %and228 = and i32 %conv16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %do.end221.for.inc246_crit_edge, label %if.end239

do.end221.for.inc246_crit_edge:                   ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc246

if.end239:                                        ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmw, align 4
  %arrayidx243 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 0
  %86 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx243, align 4
  %call244 = tail call i32 %85(ptr noundef %ah, i32 noundef %87, i32 noundef 412, i32 noundef 511) #6
  br label %for.inc246

for.inc246:                                       ; preds = %if.end239, %do.end221.for.inc246_crit_edge
  %and228.1 = and i32 %conv16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.1)
  %tobool229.not.1 = icmp eq i32 %and228.1, 0
  br i1 %tobool229.not.1, label %for.inc246.for.inc246.1_crit_edge, label %if.end239.1

for.inc246.for.inc246.1_crit_edge:                ; preds = %for.inc246
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc246.1

if.end239.1:                                      ; preds = %for.inc246
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmw, align 4
  %arrayidx243.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 1
  %90 = ptrtoint ptr %arrayidx243.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx243.1, align 4
  %call244.1 = tail call i32 %89(ptr noundef %ah, i32 noundef %91, i32 noundef 412, i32 noundef 511) #6
  br label %for.inc246.1

for.inc246.1:                                     ; preds = %if.end239.1, %for.inc246.for.inc246.1_crit_edge
  %and228.2 = and i32 %conv16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.2)
  %tobool229.not.2 = icmp eq i32 %and228.2, 0
  br i1 %tobool229.not.2, label %for.inc246.1.for.inc246.2_crit_edge, label %if.end239.2

for.inc246.1.for.inc246.2_crit_edge:              ; preds = %for.inc246.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc246.2

if.end239.2:                                      ; preds = %for.inc246.1
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmw, align 4
  %arrayidx243.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 2
  %94 = ptrtoint ptr %arrayidx243.2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx243.2, align 4
  %call244.2 = tail call i32 %93(ptr noundef %ah, i32 noundef %95, i32 noundef 412, i32 noundef 511) #6
  br label %for.inc246.2

for.inc246.2:                                     ; preds = %if.end239.2, %for.inc246.1.for.inc246.2_crit_edge
  %and228.3 = and i32 %conv16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.3)
  %tobool229.not.3 = icmp eq i32 %and228.3, 0
  br i1 %tobool229.not.3, label %for.inc246.2.for.inc246.3_crit_edge, label %land.lhs.true233.3

for.inc246.2.for.inc246.3_crit_edge:              ; preds = %for.inc246.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc246.3

land.lhs.true233.3:                               ; preds = %for.inc246.2
  %96 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %channelFlags, align 2
  %98 = and i16 %97, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool237.not.3 = icmp eq i16 %98, 0
  br i1 %tobool237.not.3, label %land.lhs.true233.3.for.inc246.3_crit_edge, label %if.end239.3

land.lhs.true233.3.for.inc246.3_crit_edge:        ; preds = %land.lhs.true233.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc246.3

if.end239.3:                                      ; preds = %land.lhs.true233.3
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rmw, align 4
  %arrayidx243.3 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 3
  %101 = ptrtoint ptr %arrayidx243.3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx243.3, align 4
  %call244.3 = tail call i32 %100(ptr noundef %ah, i32 noundef %102, i32 noundef 412, i32 noundef 511) #6
  br label %for.inc246.3

for.inc246.3:                                     ; preds = %if.end239.3, %land.lhs.true233.3.for.inc246.3_crit_edge, %for.inc246.2.for.inc246.3_crit_edge
  %and228.4 = and i32 %conv16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.4)
  %tobool229.not.4 = icmp eq i32 %and228.4, 0
  br i1 %tobool229.not.4, label %for.inc246.3.for.inc246.4_crit_edge, label %land.lhs.true233.4

for.inc246.3.for.inc246.4_crit_edge:              ; preds = %for.inc246.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc246.4

land.lhs.true233.4:                               ; preds = %for.inc246.3
  %103 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %channelFlags, align 2
  %105 = and i16 %104, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool237.not.4 = icmp eq i16 %105, 0
  br i1 %tobool237.not.4, label %land.lhs.true233.4.for.inc246.4_crit_edge, label %if.end239.4

land.lhs.true233.4.for.inc246.4_crit_edge:        ; preds = %land.lhs.true233.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc246.4

if.end239.4:                                      ; preds = %land.lhs.true233.4
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmw, align 4
  %arrayidx243.4 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 4
  %108 = ptrtoint ptr %arrayidx243.4 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx243.4, align 4
  %call244.4 = tail call i32 %107(ptr noundef %ah, i32 noundef %109, i32 noundef 412, i32 noundef 511) #6
  br label %for.inc246.4

for.inc246.4:                                     ; preds = %if.end239.4, %land.lhs.true233.4.for.inc246.4_crit_edge, %for.inc246.3.for.inc246.4_crit_edge
  %and228.5 = and i32 %conv16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.5)
  %tobool229.not.5 = icmp eq i32 %and228.5, 0
  br i1 %tobool229.not.5, label %for.inc246.4.for.inc246.5_crit_edge, label %land.lhs.true233.5

for.inc246.4.for.inc246.5_crit_edge:              ; preds = %for.inc246.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc246.5

land.lhs.true233.5:                               ; preds = %for.inc246.4
  %110 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %channelFlags, align 2
  %112 = and i16 %111, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool237.not.5 = icmp eq i16 %112, 0
  br i1 %tobool237.not.5, label %land.lhs.true233.5.for.inc246.5_crit_edge, label %if.end239.5

land.lhs.true233.5.for.inc246.5_crit_edge:        ; preds = %land.lhs.true233.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc246.5

if.end239.5:                                      ; preds = %land.lhs.true233.5
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rmw, align 4
  %arrayidx243.5 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 18, i32 5
  %115 = ptrtoint ptr %arrayidx243.5 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx243.5, align 4
  %call244.5 = tail call i32 %114(ptr noundef %ah, i32 noundef %116, i32 noundef 412, i32 noundef 511) #6
  br label %for.inc246.5

for.inc246.5:                                     ; preds = %if.end239.5, %land.lhs.true233.5.for.inc246.5_crit_edge, %for.inc246.4.for.inc246.5_crit_edge
  %117 = ptrtoint ptr %rmw_flush109 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rmw_flush109, align 4
  %tobool252.not = icmp eq ptr %118, null
  br i1 %tobool252.not, label %for.inc246.5.cleanup259_crit_edge, label %if.then253

for.inc246.5.cleanup259_crit_edge:                ; preds = %for.inc246.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup259

if.then253:                                       ; preds = %for.inc246.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %118(ptr noundef %ah) #6
  br label %cleanup259

cleanup259:                                       ; preds = %if.then253, %for.inc246.5.cleanup259_crit_edge, %if.then199, %do.body196.cleanup259_crit_edge
  %retval.0 = phi i32 [ -110, %if.then199 ], [ -110, %do.body196.cleanup259_crit_edge ], [ 0, %if.then253 ], [ 0, %for.inc246.5.cleanup259_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_hw_getnf(ptr noundef %ah, ptr noundef %chan) #2 align 64 {
entry:
  %nfarray = alloca [6 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nfarray) #6
  %0 = call ptr @memset(ptr %nfarray, i32 0, i32 12)
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan, align 4
  %caldata2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %3 = ptrtoint ptr %caldata2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caldata2, align 4
  %5 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %8)
  %cmp = icmp ugt i32 %8, 447
  %cond = select i1 %cmp, i32 41668, i32 39008
  %call3 = tail call i32 %6(ptr noundef %ah, i32 noundef %cond) #6
  %and = and i32 %call3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and4 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %do_getnf.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 22
  %11 = ptrtoint ptr %do_getnf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %do_getnf.i, align 4
  call void %12(ptr noundef %ah, ptr noundef nonnull %nfarray) #6
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %13 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %curchan.i, align 4
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %channelFlags.i, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  %nf_5g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20
  %nf_2g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  %limit.0.i = select i1 %tobool.not.i, ptr %nf_2g.i, ptr %nf_5g.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %min.i = getelementptr inbounds %struct.ath_nf_limits, ptr %limit.0.i, i32 0, i32 1
  %nominal.i = getelementptr inbounds %struct.ath_nf_limits, ptr %limit.0.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7
  %i.088.i = phi i32 [ 0, %if.end7 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %nfarray, i32 %i.088.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool2.not.i = icmp eq i16 %19, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  %20 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask.i, align 4
  %and5.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then7.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.088.i)
  %cmp8.i = icmp ugt i32 %i.088.i, 2
  %cond.i = select i1 %cmp8.i, ptr @.str.7, ptr @.str.8
  %rem.i = urem i32 %i.088.i, 3
  %conv11.i = sext i16 %19 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond.i, i32 noundef %rem.i, i32 noundef %conv11.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %do.body.i.do.end.i_crit_edge
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i, align 2
  %conv14.i = sext i16 %23 to i32
  %24 = ptrtoint ptr %limit.0.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %limit.0.i, align 2
  %conv15.i = sext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp16.i = icmp sgt i16 %23, %25
  br i1 %cmp16.i, label %do.body19.i, label %if.else33.i

do.body19.i:                                      ; preds = %do.end.i
  %26 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_mask.i, align 4
  %and21.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.body19.i.for.inc.sink.split.i_crit_edge, label %if.then23.i

do.body19.i.for.inc.sink.split.i_crit_edge:       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

if.then23.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %i.088.i, i32 noundef %conv14.i, i32 noundef %conv15.i) #6
  br label %for.inc.sink.split.i

if.else33.i:                                      ; preds = %do.end.i
  %28 = ptrtoint ptr %min.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %min.i, align 2
  %conv36.i = sext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %29)
  %cmp37.i = icmp slt i16 %23, %29
  br i1 %cmp37.i, label %do.body40.i, label %if.else33.i.for.inc.i_crit_edge

if.else33.i.for.inc.i_crit_edge:                  ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.body40.i:                                      ; preds = %if.else33.i
  %30 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask.i, align 4
  %and42.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %do.body40.i.for.inc.sink.split.i_crit_edge, label %if.then44.i

do.body40.i.for.inc.sink.split.i_crit_edge:       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

if.then44.i:                                      ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef %i.088.i, i32 noundef %conv14.i, i32 noundef %conv36.i) #6
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then44.i, %do.body40.i.for.inc.sink.split.i_crit_edge, %if.then23.i, %do.body19.i.for.inc.sink.split.i_crit_edge
  %limit.0.sink.i = phi ptr [ %limit.0.i, %if.then23.i ], [ %limit.0.i, %do.body19.i.for.inc.sink.split.i_crit_edge ], [ %nominal.i, %if.then44.i ], [ %nominal.i, %do.body40.i.for.inc.sink.split.i_crit_edge ]
  %32 = ptrtoint ptr %limit.0.sink.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %limit.0.sink.i, align 2
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else33.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %ath9k_hw_nf_sanitize.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath9k_hw_nf_sanitize.exit:                        ; preds = %for.inc.i
  %35 = ptrtoint ptr %nfarray to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nfarray, align 2
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %do.body8.i [
    i32 1, label %ath9k_hw_nf_sanitize.exit.ath9k_hw_get_nf_thresh.exit_crit_edge
    i32 0, label %sw.bb2.i
  ]

ath9k_hw_nf_sanitize.exit.ath9k_hw_get_nf_thresh.exit_crit_edge: ; preds = %ath9k_hw_nf_sanitize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_thresh.exit

sw.bb2.i:                                         ; preds = %ath9k_hw_nf_sanitize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_thresh.exit

do.body8.i:                                       ; preds = %ath9k_hw_nf_sanitize.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/calib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

ath9k_hw_get_nf_thresh.exit:                      ; preds = %sw.bb2.i, %ath9k_hw_nf_sanitize.exit.ath9k_hw_get_nf_thresh.exit_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb2.i ], [ 0, %ath9k_hw_nf_sanitize.exit.ath9k_hw_get_nf_thresh.exit_crit_edge ]
  %eep_ops3.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %40 = ptrtoint ptr %eep_ops3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eep_ops3.i, align 4
  %get_eeprom4.i = getelementptr inbounds %struct.eeprom_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %get_eeprom4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_eeprom4.i, align 4
  %call5.i = call i32 %43(ptr noundef %ah, i32 noundef %.sink.i) #6
  %storemerge.in.i = trunc i32 %call5.i to i8
  %storemerge.i = sext i8 %storemerge.in.i to i16
  %conv = sext i16 %36 to i32
  %sext = shl i32 %call5.i, 24
  %conv10 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %storemerge.i)
  %cmp11 = icmp sgt i16 %36, %storemerge.i
  br i1 %cmp11, label %do.body14, label %ath9k_hw_get_nf_thresh.exit.if.end24_crit_edge

ath9k_hw_get_nf_thresh.exit.if.end24_crit_edge:   ; preds = %ath9k_hw_get_nf_thresh.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.body14:                                        ; preds = %ath9k_hw_get_nf_thresh.exit
  %44 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug_mask.i, align 4
  %and16 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.if.end24_crit_edge, label %if.then18

do.body14.if.end24_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv10) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %do.body14.if.end24_crit_edge, %ath9k_hw_get_nf_thresh.exit.if.end24_crit_edge
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %noisefloor = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 3
  %46 = ptrtoint ptr %noisefloor to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %36, ptr %noisefloor, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %4, i32 0, i32 2
  call void @_clear_bit(i32 noundef 3, ptr noundef %cal_flags) #6
  %rxchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %47 = ptrtoint ptr %rxchainmask.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rxchainmask.i, align 1
  %shl.i = shl i8 %48, 3
  %or.i = or i8 %shl.i, %48
  %nfCalHist.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %4, i32 0, i32 13
  %49 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %curchan.i, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.end27.ath9k_hw_get_nf_limits.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end27.ath9k_hw_get_nf_limits.exit.i_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_limits.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %channelFlags.i.i = getelementptr inbounds %struct.ath9k_channel, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %channelFlags.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %channelFlags.i.i, align 2
  %53 = and i16 %52, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool1.not.i.i = icmp eq i16 %53, 0
  %spec.select = select i1 %tobool1.not.i.i, ptr %nf_2g.i, ptr %nf_5g.i
  br label %ath9k_hw_get_nf_limits.exit.i

ath9k_hw_get_nf_limits.exit.i:                    ; preds = %lor.lhs.false.i.i, %if.end27.ath9k_hw_get_nf_limits.exit.i_crit_edge
  %limit.0.i.i = phi ptr [ %nf_2g.i, %if.end27.ath9k_hw_get_nf_limits.exit.i_crit_edge ], [ %spec.select, %lor.lhs.false.i.i ]
  %conv6.i = zext i8 %or.i to i32
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc.i76.for.body.i67_crit_edge, %ath9k_hw_get_nf_limits.exit.i
  %i.0147.i = phi i32 [ 0, %ath9k_hw_get_nf_limits.exit.i ], [ %inc74.i, %for.inc.i76.for.body.i67_crit_edge ]
  %high_nf_mid.0.off0145.i = phi i1 [ false, %ath9k_hw_get_nf_limits.exit.i ], [ %high_nf_mid.1.off0.i, %for.inc.i76.for.body.i67_crit_edge ]
  %shl7.i = shl nuw nsw i32 1, %i.0147.i
  %and.i = and i32 %shl7.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i66 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i66, label %for.body.i67.for.inc.i76_crit_edge, label %lor.lhs.false.i

for.body.i67.for.inc.i76_crit_edge:               ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i76

lor.lhs.false.i:                                  ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0147.i)
  %cmp8.i68 = icmp ugt i32 %i.0147.i, 2
  br i1 %cmp8.i68, label %land.lhs.true.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %54 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %curchan.i, align 4
  %channelFlags.i69 = getelementptr inbounds %struct.ath9k_channel, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %channelFlags.i69 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %channelFlags.i69, align 2
  %58 = and i16 %57, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool13.not.i = icmp eq i16 %58, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.for.inc.i76_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.for.inc.i76_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i76

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %arrayidx.i70 = getelementptr i16, ptr %nfarray, i32 %i.0147.i
  %59 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i70, align 2
  %arrayidx14.i = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist.i, i32 %i.0147.i
  %currIndex.i = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist.i, i32 %i.0147.i, i32 1
  %61 = ptrtoint ptr %currIndex.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %currIndex.i, align 2
  %idxprom.i = zext i8 %62 to i32
  %arrayidx16.i = getelementptr [5 x i16], ptr %arrayidx14.i, i32 0, i32 %idxprom.i
  %63 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %60, ptr %arrayidx16.i, align 2
  %64 = load i8, ptr %currIndex.i, align 2
  %inc.i71 = add i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc.i71)
  %cmp20.i = icmp ugt i8 %inc.i71, 4
  %spec.select.i = select i1 %cmp20.i, i8 0, i8 %inc.i71
  %65 = ptrtoint ptr %currIndex.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %spec.select.i, ptr %currIndex.i, align 2
  %invalidNFcount.i = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist.i, i32 %i.0147.i, i32 3
  %66 = ptrtoint ptr %invalidNFcount.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %invalidNFcount.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp28.not.i = icmp eq i8 %67, 0
  br i1 %cmp28.not.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i8 %67, -1
  %68 = ptrtoint ptr %invalidNFcount.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %dec.i, ptr %invalidNFcount.i, align 2
  %69 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.i70, align 2
  br label %if.end41.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %sort.i.sroa.0.0.copyload.i = load i16, ptr %arrayidx14.i, align 2
  %sort.i.sroa.9.0.arrayidx14.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx14.i, i32 2
  %72 = ptrtoint ptr %sort.i.sroa.9.0.arrayidx14.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %sort.i.sroa.9.0.copyload.i = load i16, ptr %sort.i.sroa.9.0.arrayidx14.sroa_idx.i, align 2
  %sort.i.sroa.21.0.arrayidx14.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx14.i, i32 4
  %73 = ptrtoint ptr %sort.i.sroa.21.0.arrayidx14.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %sort.i.sroa.21.0.copyload.i = load i16, ptr %sort.i.sroa.21.0.arrayidx14.sroa_idx.i, align 2
  %sort.i.sroa.32.0.arrayidx14.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx14.i, i32 6
  %74 = ptrtoint ptr %sort.i.sroa.32.0.arrayidx14.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %sort.i.sroa.32.0.copyload.i = load i16, ptr %sort.i.sroa.32.0.arrayidx14.sroa_idx.i, align 2
  %sort.i.sroa.38.0.arrayidx14.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx14.i, i32 8
  %75 = ptrtoint ptr %sort.i.sroa.38.0.arrayidx14.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %sort.i.sroa.38.0.copyload.i = load i16, ptr %sort.i.sroa.38.0.arrayidx14.sroa_idx.i, align 2
  %76 = call i16 @llvm.smin.i16(i16 %sort.i.sroa.9.0.copyload.i, i16 %sort.i.sroa.0.0.copyload.i) #6
  %77 = call i16 @llvm.smax.i16(i16 %sort.i.sroa.9.0.copyload.i, i16 %sort.i.sroa.0.0.copyload.i) #6
  %78 = call i16 @llvm.smin.i16(i16 %sort.i.sroa.21.0.copyload.i, i16 %76) #6
  %79 = call i16 @llvm.smax.i16(i16 %sort.i.sroa.21.0.copyload.i, i16 %76) #6
  %80 = call i16 @llvm.smin.i16(i16 %sort.i.sroa.32.0.copyload.i, i16 %78) #6
  %81 = call i16 @llvm.smax.i16(i16 %sort.i.sroa.32.0.copyload.i, i16 %78) #6
  %82 = call i16 @llvm.smax.i16(i16 %sort.i.sroa.38.0.copyload.i, i16 %80) #6
  %83 = call i16 @llvm.smin.i16(i16 %79, i16 %77) #6
  %84 = call i16 @llvm.smax.i16(i16 %79, i16 %77) #6
  %85 = call i16 @llvm.smin.i16(i16 %81, i16 %83) #6
  %86 = call i16 @llvm.smax.i16(i16 %81, i16 %83) #6
  %87 = call i16 @llvm.smax.i16(i16 %82, i16 %85) #6
  %88 = call i16 @llvm.smin.i16(i16 %86, i16 %84) #6
  %89 = call i16 @llvm.smin.i16(i16 %87, i16 %88) #6
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else.i, %if.then30.i
  %.sink.i72 = phi i16 [ %89, %if.else.i ], [ %70, %if.then30.i ]
  %90 = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist.i, i32 %i.0147.i, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %.sink.i72, ptr %90, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.sink.i72)
  %tobool44.not.i = icmp eq i16 %.sink.i72, 0
  br i1 %tobool44.not.i, label %if.end41.i.for.inc.i76_crit_edge, label %if.end46.i

if.end41.i.for.inc.i76_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i76

if.end46.i:                                       ; preds = %if.end41.i
  %conv49.i = sext i16 %.sink.i72 to i32
  %92 = ptrtoint ptr %limit.0.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %limit.0.i.i, align 2
  %conv50.i = sext i16 %93 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %.sink.i72, i16 %93)
  %cmp51.i = icmp sgt i16 %.sink.i72, %93
  br i1 %cmp51.i, label %if.then53.i, label %if.end46.i.for.inc.i76_crit_edge

if.end46.i.for.inc.i76_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i76

if.then53.i:                                      ; preds = %if.end46.i
  %94 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %debug_mask.i, align 4
  %and54.i = and i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.then53.i.do.end.i74_crit_edge, label %if.then56.i

if.then53.i.do.end.i74_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i74

if.then56.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %cal_flags, align 4
  %98 = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool63.not.i = icmp eq i32 %98, 0
  %cond.i73 = select i1 %tobool63.not.i, ptr @.str.13, ptr @.str.12
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.11, i32 noundef %i.0147.i, i32 noundef %conv49.i, i32 noundef %conv50.i, ptr noundef nonnull %cond.i73) #6
  br label %do.end.i74

do.end.i74:                                       ; preds = %if.then56.i, %if.then53.i.do.end.i74_crit_edge
  %99 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %cal_flags, align 4
  %101 = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool67.not.i = icmp eq i32 %101, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %do.end.i74.for.inc.i76_crit_edge

do.end.i74.for.inc.i76_crit_edge:                 ; preds = %do.end.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i76

if.then68.i:                                      ; preds = %do.end.i74
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %limit.0.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %limit.0.i.i, align 2
  %104 = ptrtoint ptr %90 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %90, align 2
  br label %for.inc.i76

for.inc.i76:                                      ; preds = %if.then68.i, %do.end.i74.for.inc.i76_crit_edge, %if.end46.i.for.inc.i76_crit_edge, %if.end41.i.for.inc.i76_crit_edge, %land.lhs.true.i.for.inc.i76_crit_edge, %for.body.i67.for.inc.i76_crit_edge
  %high_nf_mid.1.off0.i = phi i1 [ true, %do.end.i74.for.inc.i76_crit_edge ], [ true, %if.then68.i ], [ %high_nf_mid.0.off0145.i, %if.end46.i.for.inc.i76_crit_edge ], [ %high_nf_mid.0.off0145.i, %if.end41.i.for.inc.i76_crit_edge ], [ %high_nf_mid.0.off0145.i, %land.lhs.true.i.for.inc.i76_crit_edge ], [ %high_nf_mid.0.off0145.i, %for.body.i67.for.inc.i76_crit_edge ]
  %inc74.i = add nuw nsw i32 %i.0147.i, 1
  %exitcond.not.i75 = icmp eq i32 %inc74.i, 6
  br i1 %exitcond.not.i75, label %for.end.i, label %for.inc.i76.for.body.i67_crit_edge

for.inc.i76.for.body.i67_crit_edge:               ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i67

for.end.i:                                        ; preds = %for.inc.i76
  br i1 %high_nf_mid.1.off0.i, label %for.end.i.ath9k_hw_update_nfcal_hist_buffer.exit_crit_edge, label %if.then76.i

for.end.i.ath9k_hw_update_nfcal_hist_buffer.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_update_nfcal_hist_buffer.exit

if.then76.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef 4, ptr noundef %cal_flags) #6
  br label %ath9k_hw_update_nfcal_hist_buffer.exit

ath9k_hw_update_nfcal_hist_buffer.exit:           ; preds = %if.then76.i, %for.end.i.ath9k_hw_update_nfcal_hist_buffer.exit_crit_edge
  %privNF = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %4, i32 0, i32 13, i32 0, i32 2
  %105 = ptrtoint ptr %privNF to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %privNF, align 2
  %noisefloor31 = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 3
  %107 = ptrtoint ptr %noisefloor31 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %noisefloor31, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool.not.i77 = icmp eq i16 %106, 0
  br i1 %tobool.not.i77, label %ath9k_hw_update_nfcal_hist_buffer.exit.ath9k_hw_getchan_noise.exit_crit_edge, label %if.then.i

ath9k_hw_update_nfcal_hist_buffer.exit.ath9k_hw_getchan_noise.exit_crit_edge: ; preds = %ath9k_hw_update_nfcal_hist_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_getchan_noise.exit

if.then.i:                                        ; preds = %ath9k_hw_update_nfcal_hist_buffer.exit
  %conv.i = zext i16 %106 to i32
  %sub.i = add nuw nsw i32 %conv.i, 250
  %tobool.not.i.i.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i.i.i, label %ath9k_hw_get_nf_limits.exit.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then.i
  %channelFlags.i.i.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %108 = ptrtoint ptr %channelFlags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %channelFlags.i.i.i, align 2
  %110 = and i16 %109, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool1.not.i.i.i = icmp eq i16 %110, 0
  br i1 %tobool1.not.i.i.i, label %ath9k_hw_get_nf_limits.exit.thread18.i.i, label %ath9k_hw_get_nf_limits.exit.thread.i.i

ath9k_hw_get_nf_limits.exit.i.i:                  ; preds = %if.then.i
  %arrayidx.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 3, i32 0
  %111 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool.not.i.i78 = icmp eq i16 %112, 0
  br i1 %tobool.not.i.i78, label %ath9k_hw_get_nf_limits.exit.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge, label %ath9k_hw_get_nf_limits.exit.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge

ath9k_hw_get_nf_limits.exit.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_default_nf.exit.i

ath9k_hw_get_nf_limits.exit.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_limits.exit14.i.i

ath9k_hw_get_nf_limits.exit.thread18.i.i:         ; preds = %lor.lhs.false.i.i.i
  %arrayidx20.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 3, i32 0
  %113 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx20.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool.not21.i.i = icmp eq i16 %114, 0
  br i1 %tobool.not21.i.i, label %ath9k_hw_get_nf_limits.exit.thread18.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge, label %ath9k_hw_get_nf_limits.exit.thread18.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge

ath9k_hw_get_nf_limits.exit.thread18.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_default_nf.exit.i

ath9k_hw_get_nf_limits.exit.thread18.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_limits.exit14.i.i

ath9k_hw_get_nf_limits.exit.thread.i.i:           ; preds = %lor.lhs.false.i.i.i
  %arrayidx16.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 3, i32 0
  %115 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx16.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool.not17.i.i = icmp eq i16 %116, 0
  br i1 %tobool.not17.i.i, label %ath9k_hw_get_nf_limits.exit.thread.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge, label %ath9k_hw_get_nf_limits.exit.thread.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge

ath9k_hw_get_nf_limits.exit.thread.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_default_nf.exit.i

ath9k_hw_get_nf_limits.exit.thread.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_limits.exit14.i.i

ath9k_hw_get_nf_limits.exit14.i.i:                ; preds = %ath9k_hw_get_nf_limits.exit.thread.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge, %ath9k_hw_get_nf_limits.exit.thread18.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge, %ath9k_hw_get_nf_limits.exit.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge
  %limit.0.i13.i.i = phi ptr [ %nf_2g.i, %ath9k_hw_get_nf_limits.exit.thread18.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge ], [ %nf_2g.i, %ath9k_hw_get_nf_limits.exit.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge ], [ %nf_5g.i, %ath9k_hw_get_nf_limits.exit.thread.i.i.ath9k_hw_get_nf_limits.exit14.i.i_crit_edge ]
  %nominal.i.i = getelementptr inbounds %struct.ath_nf_limits, ptr %limit.0.i13.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %nominal.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %nominal.i.i, align 2
  br label %ath9k_hw_get_default_nf.exit.i

ath9k_hw_get_default_nf.exit.i:                   ; preds = %ath9k_hw_get_nf_limits.exit14.i.i, %ath9k_hw_get_nf_limits.exit.thread.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge, %ath9k_hw_get_nf_limits.exit.thread18.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge, %ath9k_hw_get_nf_limits.exit.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %118, %ath9k_hw_get_nf_limits.exit14.i.i ], [ %112, %ath9k_hw_get_nf_limits.exit.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge ], [ %116, %ath9k_hw_get_nf_limits.exit.thread.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge ], [ %114, %ath9k_hw_get_nf_limits.exit.thread18.i.i.ath9k_hw_get_default_nf.exit.i_crit_edge ]
  %conv1.i = zext i16 %retval.0.i.i to i32
  %sub2.i = sub nsw i32 %sub.i, %conv1.i
  %sext.i = shl i32 %sub2.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.i)
  %cmp.i = icmp sgt i32 %sext.i, 0
  %119 = trunc i32 %sub2.i to i8
  %conv9.i = add i8 %119, -95
  %noise.0.i = select i1 %cmp.i, i8 %conv9.i, i8 -95
  br label %ath9k_hw_getchan_noise.exit

ath9k_hw_getchan_noise.exit:                      ; preds = %ath9k_hw_get_default_nf.exit.i, %ath9k_hw_update_nfcal_hist_buffer.exit.ath9k_hw_getchan_noise.exit_crit_edge
  %noise.1.i = phi i8 [ %noise.0.i, %ath9k_hw_get_default_nf.exit.i ], [ -95, %ath9k_hw_update_nfcal_hist_buffer.exit.ath9k_hw_getchan_noise.exit_crit_edge ]
  %noise = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 30
  %120 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %noise.1.i, ptr %noise, align 4
  br label %cleanup

cleanup:                                          ; preds = %ath9k_hw_getchan_noise.exit, %if.then26, %if.then6, %do.body.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %ath9k_hw_getchan_noise.exit ], [ false, %if.then26 ], [ false, %if.then6 ], [ false, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nfarray) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_init_nfcal_hist_buffer(ptr nocapture noundef readonly %ah, ptr noundef readonly %chan) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channel, align 4
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %2 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caldata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %1, ptr %3, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %5 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %channelFlags, align 2
  %7 = load ptr, ptr %caldata, align 4
  %channelFlags3 = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %channelFlags3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %6, ptr %channelFlags3, align 2
  %9 = load ptr, ptr %caldata, align 4
  %nfCalHist = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %9, i32 0, i32 13
  %tobool.not.i.i = icmp eq ptr %chan, null
  %nf_5g.i11.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20
  %nf_2g.i9.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %ath9k_hw_get_default_nf.exit.for.body_crit_edge, %entry
  %k.039 = phi i32 [ 0, %entry ], [ %spec.store.select, %ath9k_hw_get_default_nf.exit.for.body_crit_edge ]
  %i.038 = phi i32 [ 0, %entry ], [ %inc17, %ath9k_hw_get_default_nf.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist, i32 %i.038
  %currIndex = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist, i32 %i.038, i32 1
  %10 = ptrtoint ptr %currIndex to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %currIndex, align 2
  br i1 %tobool.not.i.i, label %ath9k_hw_get_nf_limits.exit.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %for.body
  %11 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %channelFlags, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool1.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool1.not.i.i, label %ath9k_hw_get_nf_limits.exit.thread18.i, label %ath9k_hw_get_nf_limits.exit.thread.i

ath9k_hw_get_nf_limits.exit.i:                    ; preds = %for.body
  %arrayidx.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 3, i32 %k.039
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i, label %ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge, label %ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_default_nf.exit_crit_edge

ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_default_nf.exit_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_default_nf.exit

ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_limits.exit14.i

ath9k_hw_get_nf_limits.exit.thread18.i:           ; preds = %lor.lhs.false.i.i
  %arrayidx20.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 3, i32 %k.039
  %16 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx20.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not21.i = icmp eq i16 %17, 0
  br i1 %tobool.not21.i, label %ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge, label %ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_default_nf.exit_crit_edge

ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_default_nf.exit_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_default_nf.exit

ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_limits.exit14.i

ath9k_hw_get_nf_limits.exit.thread.i:             ; preds = %lor.lhs.false.i.i
  %arrayidx16.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 3, i32 %k.039
  %18 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not17.i = icmp eq i16 %19, 0
  br i1 %tobool.not17.i, label %ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge, label %ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_default_nf.exit_crit_edge

ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_default_nf.exit_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_default_nf.exit

ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge: ; preds = %ath9k_hw_get_nf_limits.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_get_nf_limits.exit14.i

ath9k_hw_get_nf_limits.exit14.i:                  ; preds = %ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge, %ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge, %ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge
  %limit.0.i13.i = phi ptr [ %nf_2g.i9.i, %ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge ], [ %nf_2g.i9.i, %ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge ], [ %nf_5g.i11.i, %ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_nf_limits.exit14.i_crit_edge ]
  %nominal.i = getelementptr inbounds %struct.ath_nf_limits, ptr %limit.0.i13.i, i32 0, i32 2
  %20 = ptrtoint ptr %nominal.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nominal.i, align 2
  br label %ath9k_hw_get_default_nf.exit

ath9k_hw_get_default_nf.exit:                     ; preds = %ath9k_hw_get_nf_limits.exit14.i, %ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_default_nf.exit_crit_edge, %ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_default_nf.exit_crit_edge, %ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_default_nf.exit_crit_edge
  %retval.0.i = phi i16 [ %21, %ath9k_hw_get_nf_limits.exit14.i ], [ %15, %ath9k_hw_get_nf_limits.exit.i.ath9k_hw_get_default_nf.exit_crit_edge ], [ %19, %ath9k_hw_get_nf_limits.exit.thread.i.ath9k_hw_get_default_nf.exit_crit_edge ], [ %17, %ath9k_hw_get_nf_limits.exit.thread18.i.ath9k_hw_get_default_nf.exit_crit_edge ]
  %privNF = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist, i32 %i.038, i32 2
  %22 = ptrtoint ptr %privNF to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %retval.0.i, ptr %privNF, align 2
  %invalidNFcount = getelementptr %struct.ath9k_nfcal_hist, ptr %nfCalHist, i32 %i.038, i32 3
  %23 = ptrtoint ptr %invalidNFcount to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %invalidNFcount, align 2
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %retval.0.i, ptr %arrayidx, align 2
  %arrayidx13.1 = getelementptr [5 x i16], ptr %arrayidx, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %retval.0.i, ptr %arrayidx13.1, align 2
  %arrayidx13.2 = getelementptr [5 x i16], ptr %arrayidx, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %retval.0.i, ptr %arrayidx13.2, align 2
  %arrayidx13.3 = getelementptr [5 x i16], ptr %arrayidx, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %retval.0.i, ptr %arrayidx13.3, align 2
  %arrayidx13.4 = getelementptr [5 x i16], ptr %arrayidx, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %retval.0.i, ptr %arrayidx13.4, align 2
  %inc14 = add i32 %k.039, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc14)
  %cmp15 = icmp sgt i32 %inc14, 2
  %spec.store.select = select i1 %cmp15, i32 0, i32 %inc14
  %inc17 = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc17, 6
  br i1 %exitcond.not, label %for.end18, label %ath9k_hw_get_default_nf.exit.for.body_crit_edge

ath9k_hw_get_default_nf.exit.for.body_crit_edge:  ; preds = %ath9k_hw_get_default_nf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end18:                                        ; preds = %ath9k_hw_get_default_nf.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_bstuck_nfcal(ptr noundef %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caldata1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %0 = ptrtoint ptr %caldata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caldata1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !43

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cal_flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %ath9k_hw_start_nfcal.exit, label %if.else

ath9k_hw_start_nfcal.exit:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cal_flags) #6
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %5 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmw.i, align 4
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %8)
  %cmp.i = icmp ugt i32 %8, 447
  %cond.i = select i1 %cmp.i, i32 41668, i32 39008
  %call.i = tail call i32 %6(ptr noundef %ah, i32 noundef %cond.i, i32 noundef 32768, i32 noundef 0) #6
  %9 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmw.i, align 4
  %11 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %12)
  %cmp8.i = icmp ugt i32 %12, 447
  %cond9.i = select i1 %cmp8.i, i32 41668, i32 39008
  %call10.i = tail call i32 %10(ptr noundef %ah, i32 noundef %cond9.i, i32 noundef 0, i32 noundef 131072) #6
  %13 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmw.i, align 4
  %15 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %16)
  %cmp23.i = icmp ugt i32 %16, 447
  %cond24.i = select i1 %cmp23.i, i32 41668, i32 39008
  %call25.i = tail call i32 %14(ptr noundef %ah, i32 noundef %cond24.i, i32 noundef 2, i32 noundef 0) #6
  br label %if.end12

if.else:                                          ; preds = %if.end
  %17 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %20)
  %cmp = icmp ugt i32 %20, 447
  %cond = select i1 %cmp, i32 41668, i32 39008
  %call7 = tail call i32 %18(ptr noundef %ah, i32 noundef %cond) #6
  %and = and i32 %call7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %21 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %curchan, align 4
  %call10 = tail call zeroext i1 @ath9k_hw_getnf(ptr noundef %ah, ptr noundef %22)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else.if.end12_crit_edge, %ath9k_hw_start_nfcal.exit
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cal_flags) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__ksymtab_ath9k_hw_getchan_noise, !1, !"__ksymtab_ath9k_hw_getchan_noise", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 85, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 208, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 215, i32 3}
!7 = !{ptr @__ksymtab_ath9k_hw_reset_calvalid, !8, !"__ksymtab_ath9k_hw_reset_calvalid", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 227, i32 1}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 343, i32 3}
!11 = !{ptr @__ksymtab_ath9k_hw_loadnf, !12, !"__ksymtab_ath9k_hw_loadnf", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 368, i32 1}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 414, i32 3}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 424, i32 3}
!17 = !{ptr @__ksymtab_ath9k_hw_getnf, !18, !"__ksymtab_ath9k_hw_getnf", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 441, i32 1}
!19 = !{ptr @__ksymtab_ath9k_hw_bstuck_nfcal, !20, !"__ksymtab_ath9k_hw_bstuck_nfcal", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 486, i32 1}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 386, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 391, i32 4}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 396, i32 4}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/calib.c", i32 125, i32 4}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2157656255, i64 2157656758, i64 2157656292, i64 2157656348, i64 2157656382, i64 2157656406, i64 2157656447, i64 2157656468, i64 2157656496, i64 2157656530}
!43 = !{!"branch_weights", i32 1, i32 2000}
