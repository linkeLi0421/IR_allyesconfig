; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar5008_phy.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar5008_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ar5416IniArray = type { ptr, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.125, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.126, %union.anon.127, %union.anon.128, %union.anon.129, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
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
%struct.ath_gen_timer_table = type { [16 x ptr], i16, i8 }
%struct.ath9k_hw_wow = type { i32, i32, i8 }
%struct.ath_dynack = type { i8, i32, i32, %struct.list_head, %struct.spinlock, %struct.ath_dyn_rxbuf, %struct.ath_dyn_txbuf }
%struct.list_head = type { ptr, ptr }
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.chan_centers = type { i16, i16, i16 }

@ar5008_hw_attach_phy_ops.ar5416_cca_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 39012, i32 43108, i32 47204, i32 39356, i32 43452, i32 47548], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid channel %u MHz\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Force rf_pwd_icsyndiv to %1d on %4d\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bank0 = internal constant { %struct.ar5416IniArray, [20 x i8] } { %struct.ar5416IniArray { ptr @ar5416Bank0, i32 2, i32 2 }, [20 x i8] zeroinitializer }, align 32
@bank1 = internal constant { %struct.ar5416IniArray, [20 x i8] } { %struct.ar5416IniArray { ptr @ar5416Bank1, i32 2, i32 2 }, [20 x i8] zeroinitializer }, align 32
@bank2 = internal constant { %struct.ar5416IniArray, [20 x i8] } { %struct.ar5416IniArray { ptr @ar5416Bank2, i32 2, i32 2 }, [20 x i8] zeroinitializer }, align 32
@bank3 = internal constant { %struct.ar5416IniArray, [20 x i8] } { %struct.ar5416IniArray { ptr @ar5416Bank3, i32 1, i32 3 }, [20 x i8] zeroinitializer }, align 32
@bank7 = internal constant { %struct.ar5416IniArray, [20 x i8] } { %struct.ar5416IniArray { ptr @ar5416Bank7, i32 3, i32 2 }, [20 x i8] zeroinitializer }, align 32
@ar5416Bank0 = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 39088, i32 509056485], [2 x i32] [i32 39136, i32 33587232]], [16 x i8] zeroinitializer }, align 32
@ar5416Bank1 = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 39088, i32 34636833], [2 x i32] [i32 39148, i32 8]], [16 x i8] zeroinitializer }, align 32
@ar5416Bank2 = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 39088, i32 242482967], [2 x i32] [i32 39136, i32 1056]], [16 x i8] zeroinitializer }, align 32
@ar5416Bank3 = internal constant { [1 x [3 x i32]], [20 x i8] } { [1 x [3 x i32]] [[3 x i32] [i32 39152, i32 20971544, i32 29360152]], [20 x i8] zeroinitializer }, align 32
@ar5416Bank7 = internal constant { [3 x [2 x i32]], [40 x i8] } { [3 x [2 x i32]] [[2 x i32] [i32 39068, i32 1280], [2 x i32] [i32 39068, i32 2048], [2 x i32] [i32 39116, i32 14]], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ar5416SetRfRegs failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"** ch %d: ofdm weak signal: %s=>%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"** ch %d: level %d=>%d[def:%d] firstep[level]=%d ini=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"** ch %d: level %d=>%d[def:%d] firstep_low[level]=%d ini=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1[level]=%d ini=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1Ext[level]=%d ini=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/ath/ath9k/ar5008_phy.c\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid cmd %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"ANI parameters: SI=%d, ofdmWS=%s FS=%d MRCcck=%s listenTime=%d ofdmErrs=%d cckErrs=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ver %d.%d opmode %u chan %d Mhz\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 64]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"ar5416_cca_regs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1346, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 226, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 186, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"bank0\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 83, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"bank1\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 84, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"bank2\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 85, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"bank3\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 86, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"bank7\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 87, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"ar5416Bank0\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 53, i32 18 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"ar5416Bank1\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 59, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"ar5416Bank2\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 65, i32 18 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"ar5416Bank3\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 71, i32 18 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"ar5416Bank7\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 76, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 819, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1030, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1054, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1062, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1089, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1097, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1118, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1121, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1125, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [47 x i8] c"../drivers/net/wireless/ath/ath9k/ar5008_phy.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1179, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @ar5008_hw_attach_phy_ops.ar5416_cca_regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bank0, ptr @bank1, ptr @bank2, ptr @bank3, ptr @bank7, ptr @ar5416Bank0, ptr @ar5416Bank1, ptr @ar5416Bank2, ptr @ar5416Bank3, ptr @ar5416Bank7, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5008_hw_attach_phy_ops.ar5416_cca_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5416Bank0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5416Bank1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5416Bank2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5416Bank3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5416Bank7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar5008_hw_cmn_spur_mitigate(ptr noundef %ah, ptr nocapture readnone %chan, i32 noundef %bin) local_unnamed_addr #0 align 64 {
entry:
  %mask_m = alloca [123 x i8], align 1
  %mask_p = alloca [123 x i8], align 1
  %tmp_v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 123, ptr nonnull %mask_m) #5
  %0 = call ptr @memset(ptr %mask_m, i32 0, i32 123)
  call void @llvm.lifetime.start.p0(i64 123, ptr nonnull %mask_p) #5
  %1 = call ptr @memset(ptr %mask_p, i32 0, i32 123)
  %add = add i32 %bin, 100
  %sub = add i32 %bin, -100
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry
  %cur_bin.1682 = phi i32 [ -6000, %entry ], [ %add8, %for.body3.for.body3_crit_edge ]
  %bp.0681 = phi i32 [ 0, %entry ], [ %inc, %for.body3.for.body3_crit_edge ]
  %chan_mask.0680 = phi i32 [ 0, %entry ], [ %chan_mask.1, %for.body3.for.body3_crit_edge ]
  %pilot_mask.0679 = phi i32 [ 0, %entry ], [ %pilot_mask.1, %for.body3.for.body3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_bin.1682, i32 %sub)
  %cmp4 = icmp sgt i32 %cur_bin.1682, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_bin.1682, i32 %add)
  %cmp5 = icmp slt i32 %cur_bin.1682, %add
  %or.cond = and i1 %cmp4, %cmp5
  %shl = shl nuw nsw i32 1, %bp.0681
  %or = select i1 %or.cond, i32 %shl, i32 0
  %pilot_mask.1 = or i32 %or, %pilot_mask.0679
  %chan_mask.1 = or i32 %or, %chan_mask.0680
  %add8 = add nuw nsw i32 %cur_bin.1682, 100
  %inc = add nuw nsw i32 %bp.0681, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.end, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.end:                                          ; preds = %for.body3
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  tail call void %3(ptr noundef %ah, i32 noundef %pilot_mask.1, i32 noundef 39296) #5
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  tail call void %5(ptr noundef %ah, i32 noundef %chan_mask.1, i32 noundef 39320) #5
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.body3.1.for.body3.1_crit_edge, %for.end
  %cur_bin.1682.1 = phi i32 [ -3000, %for.end ], [ %add8.1, %for.body3.1.for.body3.1_crit_edge ]
  %bp.0681.1 = phi i32 [ 0, %for.end ], [ %inc.1, %for.body3.1.for.body3.1_crit_edge ]
  %chan_mask.0680.1 = phi i32 [ 0, %for.end ], [ %chan_mask.1.1, %for.body3.1.for.body3.1_crit_edge ]
  %pilot_mask.0679.1 = phi i32 [ 0, %for.end ], [ %pilot_mask.1.1, %for.body3.1.for.body3.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_bin.1682.1, i32 %sub)
  %cmp4.1 = icmp sgt i32 %cur_bin.1682.1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_bin.1682.1, i32 %add)
  %cmp5.1 = icmp slt i32 %cur_bin.1682.1, %add
  %or.cond.1 = and i1 %cmp4.1, %cmp5.1
  %shl.1 = shl nuw nsw i32 1, %bp.0681.1
  %or.1 = select i1 %or.cond.1, i32 %shl.1, i32 0
  %pilot_mask.1.1 = or i32 %or.1, %pilot_mask.0679.1
  %chan_mask.1.1 = or i32 %or.1, %chan_mask.0680.1
  %add8.1 = add nsw i32 %cur_bin.1682.1, 100
  %inc.1 = add nuw nsw i32 %bp.0681.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 30
  br i1 %exitcond.1.not, label %for.end.1, label %for.body3.1.for.body3.1_crit_edge

for.body3.1.for.body3.1_crit_edge:                ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.1

for.end.1:                                        ; preds = %for.body3.1
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  tail call void %7(ptr noundef %ah, i32 noundef %pilot_mask.1.1, i32 noundef 39300) #5
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  tail call void %9(ptr noundef %ah, i32 noundef %chan_mask.1.1, i32 noundef 39324) #5
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.body3.2.for.body3.2_crit_edge, %for.end.1
  %cur_bin.1682.2 = phi i32 [ 100, %for.end.1 ], [ %add8.2, %for.body3.2.for.body3.2_crit_edge ]
  %bp.0681.2 = phi i32 [ 0, %for.end.1 ], [ %inc.2, %for.body3.2.for.body3.2_crit_edge ]
  %chan_mask.0680.2 = phi i32 [ 0, %for.end.1 ], [ %chan_mask.1.2, %for.body3.2.for.body3.2_crit_edge ]
  %pilot_mask.0679.2 = phi i32 [ 0, %for.end.1 ], [ %pilot_mask.1.2, %for.body3.2.for.body3.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_bin.1682.2, i32 %sub)
  %cmp4.2 = icmp sgt i32 %cur_bin.1682.2, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_bin.1682.2, i32 %add)
  %cmp5.2 = icmp slt i32 %cur_bin.1682.2, %add
  %or.cond.2 = and i1 %cmp4.2, %cmp5.2
  %shl.2 = shl nuw nsw i32 1, %bp.0681.2
  %or.2 = select i1 %or.cond.2, i32 %shl.2, i32 0
  %pilot_mask.1.2 = or i32 %or.2, %pilot_mask.0679.2
  %chan_mask.1.2 = or i32 %or.2, %chan_mask.0680.2
  %add8.2 = add nuw nsw i32 %cur_bin.1682.2, 100
  %inc.2 = add nuw nsw i32 %bp.0681.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 30
  br i1 %exitcond.2.not, label %for.end.2, label %for.body3.2.for.body3.2_crit_edge

for.body3.2.for.body3.2_crit_edge:                ; preds = %for.body3.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.2

for.end.2:                                        ; preds = %for.body3.2
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  tail call void %11(ptr noundef %ah, i32 noundef %pilot_mask.1.2, i32 noundef 41904) #5
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  tail call void %13(ptr noundef %ah, i32 noundef %chan_mask.1.2, i32 noundef 39380) #5
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.body3.3.for.body3.3_crit_edge, %for.end.2
  %cur_bin.1682.3 = phi i32 [ 3100, %for.end.2 ], [ %add8.3, %for.body3.3.for.body3.3_crit_edge ]
  %bp.0681.3 = phi i32 [ 0, %for.end.2 ], [ %inc.3, %for.body3.3.for.body3.3_crit_edge ]
  %chan_mask.0680.3 = phi i32 [ 0, %for.end.2 ], [ %chan_mask.1.3, %for.body3.3.for.body3.3_crit_edge ]
  %pilot_mask.0679.3 = phi i32 [ 0, %for.end.2 ], [ %pilot_mask.1.3, %for.body3.3.for.body3.3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_bin.1682.3, i32 %sub)
  %cmp4.3 = icmp sgt i32 %cur_bin.1682.3, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_bin.1682.3, i32 %add)
  %cmp5.3 = icmp slt i32 %cur_bin.1682.3, %add
  %or.cond.3 = and i1 %cmp4.3, %cmp5.3
  %shl.3 = shl nuw nsw i32 1, %bp.0681.3
  %or.3 = select i1 %or.cond.3, i32 %shl.3, i32 0
  %pilot_mask.1.3 = or i32 %or.3, %pilot_mask.0679.3
  %chan_mask.1.3 = or i32 %or.3, %chan_mask.0680.3
  %add8.3 = add nuw nsw i32 %cur_bin.1682.3, 100
  %inc.3 = add nuw nsw i32 %bp.0681.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 30
  br i1 %exitcond.3.not, label %for.end.3, label %for.body3.3.for.body3.3_crit_edge

for.body3.3.for.body3.3_crit_edge:                ; preds = %for.body3.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.3

for.end.3:                                        ; preds = %for.body3.3
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  tail call void %15(ptr noundef %ah, i32 noundef %pilot_mask.1.3, i32 noundef 41908) #5
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  tail call void %17(ptr noundef %ah, i32 noundef %chan_mask.1.3, i32 noundef 39384) #5
  %add17 = add i32 %bin, 120
  %sub18 = add i32 %bin, -120
  br label %for.body21

for.body21:                                       ; preds = %if.end47.for.body21_crit_edge, %for.end.3
  %i.1688 = phi i32 [ 0, %for.end.3 ], [ %inc50, %if.end47.for.body21_crit_edge ]
  %cur_vit_mask.0685 = phi i32 [ 6100, %for.end.3 ], [ %sub48, %if.end47.for.body21_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_vit_mask.0685, i32 %sub18)
  %cmp22 = icmp sgt i32 %cur_vit_mask.0685, %sub18
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_vit_mask.0685, i32 %add17)
  %cmp24 = icmp slt i32 %cur_vit_mask.0685, %add17
  %or.cond676 = and i1 %cmp22, %cmp24
  br i1 %or.cond676, label %if.then25, label %for.body21.if.end47_crit_edge

for.body21.if.end47_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then25:                                        ; preds = %for.body21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_v)
  %18 = ptrtoint ptr %tmp_v to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 -1, ptr %tmp_v, align 4
  %sub26 = sub i32 %cur_vit_mask.0685, %bin
  %19 = tail call i32 @llvm.abs.i32(i32 %sub26, i1 false)
  %20 = ptrtoint ptr %tmp_v to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %19, ptr %tmp_v, align 4
  %tmp_v.0.tmp_v.0.tmp_v.0. = load volatile i32, ptr %tmp_v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %tmp_v.0.tmp_v.0.tmp_v.0.)
  %cmp29 = icmp slt i32 %tmp_v.0.tmp_v.0.tmp_v.0., 75
  %mask_amt.0 = zext i1 %cmp29 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_vit_mask.0685)
  %cmp32 = icmp slt i32 %cur_vit_mask.0685, 0
  br i1 %cmp32, label %if.then33, label %if.else43

if.then33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %cur_vit_mask.0685)
  %cmp36 = icmp ult i32 %cur_vit_mask.0685, -99
  %cur_vit_mask.0.nonneg = sub nsw i32 0, %cur_vit_mask.0685
  %div.neg677 = udiv i32 %cur_vit_mask.0.nonneg, 100
  %cond41 = select i1 %cmp36, i32 %div.neg677, i32 0
  %arrayidx42 = getelementptr [123 x i8], ptr %mask_m, i32 0, i32 %cond41
  br label %if.end46

if.else43:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %div44678 = udiv i32 %cur_vit_mask.0685, 100
  %arrayidx45 = getelementptr [123 x i8], ptr %mask_p, i32 0, i32 %div44678
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then33
  %arrayidx45.sink = phi ptr [ %arrayidx45, %if.else43 ], [ %arrayidx42, %if.then33 ]
  %21 = ptrtoint ptr %arrayidx45.sink to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %mask_amt.0, ptr %arrayidx45.sink, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_v)
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %for.body21.if.end47_crit_edge
  %sub48 = add nsw i32 %cur_vit_mask.0685, -100
  %inc50 = add nuw nsw i32 %i.1688, 1
  %exitcond690.not = icmp eq i32 %inc50, 123
  br i1 %exitcond690.not, label %for.end51, label %if.end47.for.body21_crit_edge

if.end47.for.body21_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21

for.end51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx52 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 46
  %22 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx52, align 1
  %conv652 = zext i8 %23 to i32
  %shl53 = shl i32 %conv652, 30
  %arrayidx54 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 47
  %24 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx54, align 1
  %conv55653 = zext i8 %25 to i32
  %shl56 = shl i32 %conv55653, 28
  %or57 = or i32 %shl56, %shl53
  %arrayidx58 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 48
  %26 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx58, align 1
  %conv59654 = zext i8 %27 to i32
  %shl60 = shl i32 %conv59654, 26
  %or61 = or i32 %or57, %shl60
  %arrayidx62 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 49
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx62, align 1
  %conv63655 = zext i8 %29 to i32
  %shl64 = shl nuw i32 %conv63655, 24
  %or65 = or i32 %or61, %shl64
  %arrayidx66 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 50
  %30 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx66, align 1
  %conv67 = sext i8 %31 to i32
  %shl68 = shl nsw i32 %conv67, 22
  %or69 = or i32 %or65, %shl68
  %arrayidx70 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 51
  %32 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %33 to i32
  %shl72 = shl nsw i32 %conv71, 20
  %or73 = or i32 %or69, %shl72
  %arrayidx74 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 52
  %34 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx74, align 1
  %conv75 = sext i8 %35 to i32
  %shl76 = shl nsw i32 %conv75, 18
  %or77 = or i32 %or73, %shl76
  %arrayidx78 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 53
  %36 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx78, align 1
  %conv79 = sext i8 %37 to i32
  %shl80 = shl nsw i32 %conv79, 16
  %or81 = or i32 %or77, %shl80
  %arrayidx82 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 54
  %38 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx82, align 1
  %conv83 = sext i8 %39 to i32
  %shl84 = shl nsw i32 %conv83, 14
  %or85 = or i32 %or81, %shl84
  %arrayidx86 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 55
  %40 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %41 to i32
  %shl88 = shl nsw i32 %conv87, 12
  %or89 = or i32 %or85, %shl88
  %arrayidx90 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 56
  %42 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx90, align 1
  %conv91 = sext i8 %43 to i32
  %shl92 = shl nsw i32 %conv91, 10
  %or93 = or i32 %or89, %shl92
  %arrayidx94 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 57
  %44 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx94, align 1
  %conv95 = sext i8 %45 to i32
  %shl96 = shl nsw i32 %conv95, 8
  %or97 = or i32 %or93, %shl96
  %arrayidx98 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 58
  %46 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx98, align 1
  %conv99 = sext i8 %47 to i32
  %shl100 = shl nsw i32 %conv99, 6
  %or101 = or i32 %or97, %shl100
  %arrayidx102 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 59
  %48 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx102, align 1
  %conv103 = sext i8 %49 to i32
  %shl104 = shl nsw i32 %conv103, 4
  %or105 = or i32 %or101, %shl104
  %arrayidx106 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 60
  %50 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx106, align 1
  %conv107 = sext i8 %51 to i32
  %shl108 = shl nsw i32 %conv107, 2
  %or109 = or i32 %or105, %shl108
  %arrayidx110 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 61
  %52 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx110, align 1
  %conv111 = sext i8 %53 to i32
  %or113 = or i32 %or109, %conv111
  %54 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write, align 4
  tail call void %55(ptr noundef %ah, i32 noundef %or113, i32 noundef 39168) #5
  %56 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write, align 4
  tail call void %57(ptr noundef %ah, i32 noundef %or113, i32 noundef 41888) #5
  %arrayidx118 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 31
  %58 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx118, align 1
  %conv119656 = zext i8 %59 to i32
  %shl120 = shl i32 %conv119656, 28
  %arrayidx121 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 32
  %60 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx121, align 1
  %conv122657 = zext i8 %61 to i32
  %shl123 = shl i32 %conv122657, 26
  %or124 = or i32 %shl123, %shl120
  %arrayidx125 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 33
  %62 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx125, align 1
  %conv126658 = zext i8 %63 to i32
  %shl127 = shl nuw i32 %conv126658, 24
  %or128 = or i32 %or124, %shl127
  %arrayidx129 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 34
  %64 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx129, align 1
  %conv130 = sext i8 %65 to i32
  %shl131 = shl nsw i32 %conv130, 22
  %or132 = or i32 %or128, %shl131
  %arrayidx133 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 35
  %66 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx133, align 1
  %conv134 = sext i8 %67 to i32
  %shl135 = shl nsw i32 %conv134, 20
  %or136 = or i32 %or132, %shl135
  %arrayidx137 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 36
  %68 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx137, align 1
  %conv138 = sext i8 %69 to i32
  %shl139 = shl nsw i32 %conv138, 18
  %or140 = or i32 %or136, %shl139
  %arrayidx141 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 37
  %70 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx141, align 1
  %conv142 = sext i8 %71 to i32
  %shl143 = shl nsw i32 %conv142, 16
  %or144 = or i32 %or140, %shl143
  %72 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx58, align 1
  %conv146 = sext i8 %73 to i32
  %shl147 = shl nsw i32 %conv146, 14
  %or148 = or i32 %or144, %shl147
  %arrayidx149 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 39
  %74 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx149, align 1
  %conv150 = sext i8 %75 to i32
  %shl151 = shl nsw i32 %conv150, 12
  %or152 = or i32 %or148, %shl151
  %arrayidx153 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 40
  %76 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx153, align 1
  %conv154 = sext i8 %77 to i32
  %shl155 = shl nsw i32 %conv154, 10
  %or156 = or i32 %or152, %shl155
  %arrayidx157 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 41
  %78 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx157, align 1
  %conv158 = sext i8 %79 to i32
  %shl159 = shl nsw i32 %conv158, 8
  %or160 = or i32 %or156, %shl159
  %arrayidx161 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 42
  %80 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx161, align 1
  %conv162 = sext i8 %81 to i32
  %shl163 = shl nsw i32 %conv162, 6
  %or164 = or i32 %or160, %shl163
  %arrayidx165 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 43
  %82 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx165, align 1
  %conv166 = sext i8 %83 to i32
  %shl167 = shl nsw i32 %conv166, 4
  %or168 = or i32 %or164, %shl167
  %arrayidx169 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 44
  %84 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx169, align 1
  %conv170 = sext i8 %85 to i32
  %shl171 = shl nsw i32 %conv170, 2
  %or172 = or i32 %or168, %shl171
  %arrayidx173 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 45
  %86 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx173, align 1
  %conv174 = sext i8 %87 to i32
  %or176 = or i32 %or172, %conv174
  %88 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write, align 4
  tail call void %89(ptr noundef %ah, i32 noundef %or176, i32 noundef 39172) #5
  %90 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write, align 4
  tail call void %91(ptr noundef %ah, i32 noundef %or176, i32 noundef 41892) #5
  %arrayidx181 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 16
  %92 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx181, align 1
  %conv182691 = zext i8 %93 to i32
  %shl183 = shl i32 %conv182691, 30
  %shl186 = shl i32 %conv182691, 28
  %or187 = or i32 %shl183, %shl186
  %arrayidx188 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 18
  %94 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx188, align 1
  %conv189 = sext i8 %95 to i32
  %shl190 = shl i32 %conv189, 26
  %or191 = or i32 %or187, %shl190
  %shl194 = shl nsw i32 %conv189, 24
  %or195 = or i32 %or191, %shl194
  %arrayidx196 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 20
  %96 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx196, align 1
  %conv197 = sext i8 %97 to i32
  %shl198 = shl nsw i32 %conv197, 22
  %or199 = or i32 %or195, %shl198
  %shl202 = shl nsw i32 %conv197, 20
  %or203 = or i32 %or199, %shl202
  %arrayidx204 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 22
  %98 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx204, align 1
  %conv205 = sext i8 %99 to i32
  %shl206 = shl nsw i32 %conv205, 18
  %or207 = or i32 %or203, %shl206
  %shl210 = shl nsw i32 %conv205, 16
  %or211 = or i32 %or207, %shl210
  %arrayidx212 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 24
  %100 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx212, align 1
  %conv213 = sext i8 %101 to i32
  %shl214 = shl nsw i32 %conv213, 14
  %or215 = or i32 %or211, %shl214
  %shl218 = shl nsw i32 %conv213, 12
  %or219 = or i32 %or215, %shl218
  %arrayidx220 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 25
  %102 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx220, align 1
  %conv221 = sext i8 %103 to i32
  %shl222 = shl nsw i32 %conv221, 10
  %or223 = or i32 %or219, %shl222
  %arrayidx224 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 26
  %104 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx224, align 1
  %conv225 = sext i8 %105 to i32
  %shl226 = shl nsw i32 %conv225, 8
  %or227 = or i32 %or223, %shl226
  %arrayidx228 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 27
  %106 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx228, align 1
  %conv229 = sext i8 %107 to i32
  %shl230 = shl nsw i32 %conv229, 6
  %or231 = or i32 %or227, %shl230
  %arrayidx232 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 28
  %108 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx232, align 1
  %conv233 = sext i8 %109 to i32
  %shl234 = shl nsw i32 %conv233, 4
  %or235 = or i32 %or231, %shl234
  %arrayidx236 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 29
  %110 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx236, align 1
  %conv237 = sext i8 %111 to i32
  %shl238 = shl nsw i32 %conv237, 2
  %or239 = or i32 %or235, %shl238
  %arrayidx240 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 30
  %112 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx240, align 1
  %conv241 = sext i8 %113 to i32
  %or243 = or i32 %or239, %conv241
  %114 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write, align 4
  tail call void %115(ptr noundef %ah, i32 noundef %or243, i32 noundef 39176) #5
  %116 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write, align 4
  tail call void %117(ptr noundef %ah, i32 noundef %or243, i32 noundef 41896) #5
  %118 = ptrtoint ptr %mask_m to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %mask_m, align 1
  %conv249659 = zext i8 %119 to i32
  %shl250 = shl i32 %conv249659, 30
  %arrayidx251 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 1
  %120 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx251, align 1
  %conv252660 = zext i8 %121 to i32
  %shl253 = shl i32 %conv252660, 28
  %or254 = or i32 %shl253, %shl250
  %arrayidx255 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 2
  %122 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx255, align 1
  %conv256661 = zext i8 %123 to i32
  %shl257 = shl i32 %conv256661, 26
  %or258 = or i32 %or254, %shl257
  %arrayidx259 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 3
  %124 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx259, align 1
  %conv260662 = zext i8 %125 to i32
  %shl261 = shl nuw i32 %conv260662, 24
  %or262 = or i32 %or258, %shl261
  %arrayidx263 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 4
  %126 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx263, align 1
  %conv264 = sext i8 %127 to i32
  %shl265 = shl nsw i32 %conv264, 22
  %or266 = or i32 %or262, %shl265
  %arrayidx267 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 5
  %128 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx267, align 1
  %conv268 = sext i8 %129 to i32
  %shl269 = shl nsw i32 %conv268, 20
  %or270 = or i32 %or266, %shl269
  %arrayidx271 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 6
  %130 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx271, align 1
  %conv272 = sext i8 %131 to i32
  %shl273 = shl nsw i32 %conv272, 18
  %or274 = or i32 %or270, %shl273
  %arrayidx275 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 7
  %132 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx275, align 1
  %conv276 = sext i8 %133 to i32
  %shl277 = shl nsw i32 %conv276, 16
  %or278 = or i32 %or274, %shl277
  %arrayidx279 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 8
  %134 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx279, align 1
  %conv280 = sext i8 %135 to i32
  %shl281 = shl nsw i32 %conv280, 14
  %or282 = or i32 %or278, %shl281
  %arrayidx283 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 9
  %136 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx283, align 1
  %conv284 = sext i8 %137 to i32
  %shl285 = shl nsw i32 %conv284, 12
  %or286 = or i32 %or282, %shl285
  %arrayidx287 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 10
  %138 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx287, align 1
  %conv288 = sext i8 %139 to i32
  %shl289 = shl nsw i32 %conv288, 10
  %or290 = or i32 %or286, %shl289
  %arrayidx291 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 11
  %140 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx291, align 1
  %conv292 = sext i8 %141 to i32
  %shl293 = shl nsw i32 %conv292, 8
  %or294 = or i32 %or290, %shl293
  %arrayidx295 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 12
  %142 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx295, align 1
  %conv296 = sext i8 %143 to i32
  %shl297 = shl nsw i32 %conv296, 6
  %or298 = or i32 %or294, %shl297
  %arrayidx299 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 13
  %144 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx299, align 1
  %conv300 = sext i8 %145 to i32
  %shl301 = shl nsw i32 %conv300, 4
  %or302 = or i32 %or298, %shl301
  %arrayidx303 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 14
  %146 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx303, align 1
  %conv304 = sext i8 %147 to i32
  %shl305 = shl nsw i32 %conv304, 2
  %or306 = or i32 %or302, %shl305
  %arrayidx307 = getelementptr inbounds [123 x i8], ptr %mask_m, i32 0, i32 15
  %148 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx307, align 1
  %conv308 = sext i8 %149 to i32
  %or310 = or i32 %or306, %conv308
  %150 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write, align 4
  tail call void %151(ptr noundef %ah, i32 noundef %or310, i32 noundef 39180) #5
  %152 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write, align 4
  tail call void %153(ptr noundef %ah, i32 noundef %or310, i32 noundef 41900) #5
  %arrayidx315 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 15
  %154 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx315, align 1
  %conv316663 = zext i8 %155 to i32
  %shl317 = shl i32 %conv316663, 28
  %arrayidx318 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 14
  %156 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx318, align 1
  %conv319664 = zext i8 %157 to i32
  %shl320 = shl i32 %conv319664, 26
  %or321 = or i32 %shl320, %shl317
  %arrayidx322 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 13
  %158 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx322, align 1
  %conv323665 = zext i8 %159 to i32
  %shl324 = shl nuw i32 %conv323665, 24
  %or325 = or i32 %or321, %shl324
  %arrayidx326 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 12
  %160 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx326, align 1
  %conv327 = sext i8 %161 to i32
  %shl328 = shl nsw i32 %conv327, 22
  %or329 = or i32 %or325, %shl328
  %arrayidx330 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 11
  %162 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx330, align 1
  %conv331 = sext i8 %163 to i32
  %shl332 = shl nsw i32 %conv331, 20
  %or333 = or i32 %or329, %shl332
  %arrayidx334 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 10
  %164 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx334, align 1
  %conv335 = sext i8 %165 to i32
  %shl336 = shl nsw i32 %conv335, 18
  %or337 = or i32 %or333, %shl336
  %arrayidx338 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 9
  %166 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx338, align 1
  %conv339 = sext i8 %167 to i32
  %shl340 = shl nsw i32 %conv339, 16
  %or341 = or i32 %or337, %shl340
  %arrayidx342 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 8
  %168 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx342, align 1
  %conv343 = sext i8 %169 to i32
  %shl344 = shl nsw i32 %conv343, 14
  %or345 = or i32 %or341, %shl344
  %arrayidx346 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 7
  %170 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx346, align 1
  %conv347 = sext i8 %171 to i32
  %shl348 = shl nsw i32 %conv347, 12
  %or349 = or i32 %or345, %shl348
  %arrayidx350 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 6
  %172 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx350, align 1
  %conv351 = sext i8 %173 to i32
  %shl352 = shl nsw i32 %conv351, 10
  %or353 = or i32 %or349, %shl352
  %arrayidx354 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 5
  %174 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx354, align 1
  %conv355 = sext i8 %175 to i32
  %shl356 = shl nsw i32 %conv355, 8
  %or357 = or i32 %or353, %shl356
  %arrayidx358 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 4
  %176 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx358, align 1
  %conv359 = sext i8 %177 to i32
  %shl360 = shl nsw i32 %conv359, 6
  %or361 = or i32 %or357, %shl360
  %arrayidx362 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 3
  %178 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx362, align 1
  %conv363 = sext i8 %179 to i32
  %shl364 = shl nsw i32 %conv363, 4
  %or365 = or i32 %or361, %shl364
  %arrayidx366 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 2
  %180 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx366, align 1
  %conv367 = sext i8 %181 to i32
  %shl368 = shl nsw i32 %conv367, 2
  %or369 = or i32 %or365, %shl368
  %arrayidx370 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 1
  %182 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx370, align 1
  %conv371 = sext i8 %183 to i32
  %or373 = or i32 %or369, %conv371
  %184 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write, align 4
  tail call void %185(ptr noundef %ah, i32 noundef %or373, i32 noundef 39304) #5
  %186 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write, align 4
  tail call void %187(ptr noundef %ah, i32 noundef %or373, i32 noundef 41912) #5
  %arrayidx378 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 30
  %188 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx378, align 1
  %conv379666 = zext i8 %189 to i32
  %shl380 = shl i32 %conv379666, 28
  %arrayidx381 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 29
  %190 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx381, align 1
  %conv382667 = zext i8 %191 to i32
  %shl383 = shl i32 %conv382667, 26
  %or384 = or i32 %shl383, %shl380
  %arrayidx385 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 28
  %192 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx385, align 1
  %conv386668 = zext i8 %193 to i32
  %shl387 = shl nuw i32 %conv386668, 24
  %or388 = or i32 %or384, %shl387
  %arrayidx389 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 27
  %194 = ptrtoint ptr %arrayidx389 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx389, align 1
  %conv390 = sext i8 %195 to i32
  %shl391 = shl nsw i32 %conv390, 22
  %or392 = or i32 %or388, %shl391
  %arrayidx393 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 26
  %196 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx393, align 1
  %conv394 = sext i8 %197 to i32
  %shl395 = shl nsw i32 %conv394, 20
  %or396 = or i32 %or392, %shl395
  %arrayidx397 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 25
  %198 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx397, align 1
  %conv398 = sext i8 %199 to i32
  %shl399 = shl nsw i32 %conv398, 18
  %or400 = or i32 %or396, %shl399
  %arrayidx401 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 24
  %200 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx401, align 1
  %conv402 = sext i8 %201 to i32
  %shl403 = shl nsw i32 %conv402, 16
  %or404 = or i32 %or400, %shl403
  %arrayidx405 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 23
  %202 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx405, align 1
  %conv406 = sext i8 %203 to i32
  %shl407 = shl nsw i32 %conv406, 14
  %or408 = or i32 %or404, %shl407
  %arrayidx409 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 22
  %204 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx409, align 1
  %conv410 = sext i8 %205 to i32
  %shl411 = shl nsw i32 %conv410, 12
  %or412 = or i32 %or408, %shl411
  %arrayidx413 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 21
  %206 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx413, align 1
  %conv414 = sext i8 %207 to i32
  %shl415 = shl nsw i32 %conv414, 10
  %or416 = or i32 %or412, %shl415
  %arrayidx417 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 20
  %208 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx417, align 1
  %conv418 = sext i8 %209 to i32
  %shl419 = shl nsw i32 %conv418, 8
  %or420 = or i32 %or416, %shl419
  %arrayidx421 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 19
  %210 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx421, align 1
  %conv422 = sext i8 %211 to i32
  %shl423 = shl nsw i32 %conv422, 6
  %or424 = or i32 %or420, %shl423
  %arrayidx425 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 18
  %212 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx425, align 1
  %conv426 = sext i8 %213 to i32
  %shl427 = shl nsw i32 %conv426, 4
  %or428 = or i32 %or424, %shl427
  %arrayidx429 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 17
  %214 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx429, align 1
  %conv430 = sext i8 %215 to i32
  %shl431 = shl nsw i32 %conv430, 2
  %or432 = or i32 %or428, %shl431
  %arrayidx433 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 16
  %216 = ptrtoint ptr %arrayidx433 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx433, align 1
  %conv434 = sext i8 %217 to i32
  %or436 = or i32 %or432, %conv434
  %218 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write, align 4
  tail call void %219(ptr noundef %ah, i32 noundef %or436, i32 noundef 39308) #5
  %220 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write, align 4
  tail call void %221(ptr noundef %ah, i32 noundef %or436, i32 noundef 41916) #5
  %arrayidx441 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 45
  %222 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx441, align 1
  %conv442669 = zext i8 %223 to i32
  %shl443 = shl i32 %conv442669, 28
  %arrayidx444 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 44
  %224 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx444, align 1
  %conv445670 = zext i8 %225 to i32
  %shl446 = shl i32 %conv445670, 26
  %or447 = or i32 %shl446, %shl443
  %arrayidx448 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 43
  %226 = ptrtoint ptr %arrayidx448 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx448, align 1
  %conv449671 = zext i8 %227 to i32
  %shl450 = shl nuw i32 %conv449671, 24
  %or451 = or i32 %or447, %shl450
  %arrayidx452 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 42
  %228 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx452, align 1
  %conv453 = sext i8 %229 to i32
  %shl454 = shl nsw i32 %conv453, 22
  %or455 = or i32 %or451, %shl454
  %arrayidx456 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 41
  %230 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx456, align 1
  %conv457 = sext i8 %231 to i32
  %shl458 = shl nsw i32 %conv457, 20
  %or459 = or i32 %or455, %shl458
  %arrayidx460 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 40
  %232 = ptrtoint ptr %arrayidx460 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx460, align 1
  %conv461 = sext i8 %233 to i32
  %shl462 = shl nsw i32 %conv461, 18
  %or463 = or i32 %or459, %shl462
  %arrayidx464 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 39
  %234 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx464, align 1
  %conv465 = sext i8 %235 to i32
  %shl466 = shl nsw i32 %conv465, 16
  %or467 = or i32 %or463, %shl466
  %arrayidx468 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 38
  %236 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx468, align 1
  %conv469 = sext i8 %237 to i32
  %shl470 = shl nsw i32 %conv469, 14
  %or471 = or i32 %or467, %shl470
  %arrayidx472 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 37
  %238 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx472, align 1
  %conv473 = sext i8 %239 to i32
  %shl474 = shl nsw i32 %conv473, 12
  %or475 = or i32 %or471, %shl474
  %arrayidx476 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 36
  %240 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx476, align 1
  %conv477 = sext i8 %241 to i32
  %shl478 = shl nsw i32 %conv477, 10
  %or479 = or i32 %or475, %shl478
  %arrayidx480 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 35
  %242 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx480, align 1
  %conv481 = sext i8 %243 to i32
  %shl482 = shl nsw i32 %conv481, 8
  %or483 = or i32 %or479, %shl482
  %arrayidx484 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 34
  %244 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx484, align 1
  %conv485 = sext i8 %245 to i32
  %shl486 = shl nsw i32 %conv485, 6
  %or487 = or i32 %or483, %shl486
  %arrayidx488 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 33
  %246 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx488, align 1
  %conv489 = sext i8 %247 to i32
  %shl490 = shl nsw i32 %conv489, 4
  %or491 = or i32 %or487, %shl490
  %arrayidx492 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 32
  %248 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx492, align 1
  %conv493 = sext i8 %249 to i32
  %shl494 = shl nsw i32 %conv493, 2
  %or495 = or i32 %or491, %shl494
  %arrayidx496 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 31
  %250 = ptrtoint ptr %arrayidx496 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx496, align 1
  %conv497 = sext i8 %251 to i32
  %or499 = or i32 %or495, %conv497
  %252 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write, align 4
  tail call void %253(ptr noundef %ah, i32 noundef %or499, i32 noundef 39312) #5
  %254 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %write, align 4
  tail call void %255(ptr noundef %ah, i32 noundef %or499, i32 noundef 41920) #5
  %arrayidx504 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 61
  %256 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx504, align 1
  %conv505672 = zext i8 %257 to i32
  %shl506 = shl i32 %conv505672, 30
  %arrayidx507 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 60
  %258 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx507, align 1
  %conv508673 = zext i8 %259 to i32
  %shl509 = shl i32 %conv508673, 28
  %or510 = or i32 %shl509, %shl506
  %arrayidx511 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 59
  %260 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx511, align 1
  %conv512674 = zext i8 %261 to i32
  %shl513 = shl i32 %conv512674, 26
  %or514 = or i32 %or510, %shl513
  %arrayidx515 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 58
  %262 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx515, align 1
  %conv516675 = zext i8 %263 to i32
  %shl517 = shl nuw i32 %conv516675, 24
  %or518 = or i32 %or514, %shl517
  %arrayidx519 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 57
  %264 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx519, align 1
  %conv520 = sext i8 %265 to i32
  %shl521 = shl nsw i32 %conv520, 22
  %or522 = or i32 %or518, %shl521
  %arrayidx523 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 56
  %266 = ptrtoint ptr %arrayidx523 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx523, align 1
  %conv524 = sext i8 %267 to i32
  %shl525 = shl nsw i32 %conv524, 20
  %or526 = or i32 %or522, %shl525
  %arrayidx527 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 55
  %268 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx527, align 1
  %conv528 = sext i8 %269 to i32
  %shl529 = shl nsw i32 %conv528, 18
  %or530 = or i32 %or526, %shl529
  %arrayidx531 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 54
  %270 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx531, align 1
  %conv532 = sext i8 %271 to i32
  %shl533 = shl nsw i32 %conv532, 16
  %or534 = or i32 %or530, %shl533
  %arrayidx535 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 53
  %272 = ptrtoint ptr %arrayidx535 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx535, align 1
  %conv536 = sext i8 %273 to i32
  %shl537 = shl nsw i32 %conv536, 14
  %or538 = or i32 %or534, %shl537
  %arrayidx539 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 52
  %274 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx539, align 1
  %conv540 = sext i8 %275 to i32
  %shl541 = shl nsw i32 %conv540, 12
  %or542 = or i32 %or538, %shl541
  %arrayidx543 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 51
  %276 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx543, align 1
  %conv544 = sext i8 %277 to i32
  %shl545 = shl nsw i32 %conv544, 10
  %or546 = or i32 %or542, %shl545
  %arrayidx547 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 50
  %278 = ptrtoint ptr %arrayidx547 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx547, align 1
  %conv548 = sext i8 %279 to i32
  %shl549 = shl nsw i32 %conv548, 8
  %or550 = or i32 %or546, %shl549
  %arrayidx551 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 49
  %280 = ptrtoint ptr %arrayidx551 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx551, align 1
  %conv552 = sext i8 %281 to i32
  %shl553 = shl nsw i32 %conv552, 6
  %or554 = or i32 %or550, %shl553
  %arrayidx555 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 48
  %282 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx555, align 1
  %conv556 = sext i8 %283 to i32
  %shl557 = shl nsw i32 %conv556, 4
  %or558 = or i32 %or554, %shl557
  %arrayidx559 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 47
  %284 = ptrtoint ptr %arrayidx559 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx559, align 1
  %conv560 = sext i8 %285 to i32
  %shl561 = shl nsw i32 %conv560, 2
  %or562 = or i32 %or558, %shl561
  %arrayidx563 = getelementptr inbounds [123 x i8], ptr %mask_p, i32 0, i32 46
  %286 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx563, align 1
  %conv564 = sext i8 %287 to i32
  %or566 = or i32 %or562, %conv564
  %288 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %write, align 4
  tail call void %289(ptr noundef %ah, i32 noundef %or566, i32 noundef 39316) #5
  %290 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %write, align 4
  tail call void %291(ptr noundef %ah, i32 noundef %or566, i32 noundef 41924) #5
  call void @llvm.lifetime.end.p0(i64 123, ptr nonnull %mask_p) #5
  call void @llvm.lifetime.end.p0(i64 123, ptr nonnull %mask_m) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ar5008_hw_init_rate_txpower(ptr noundef %ah, ptr noundef readonly %rate_array, ptr nocapture noundef readonly %chan, i32 noundef %ht40_delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rate_array, align 2
  %conv.i = trunc i16 %4 to i8
  %arrayidx1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 0
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %arrayidx1.i, align 1
  %arrayidx.1.i = getelementptr i16, ptr %rate_array, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.1.i, align 2
  %conv.1.i = trunc i16 %7 to i8
  %arrayidx1.1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 1
  %8 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.1.i, ptr %arrayidx1.1.i, align 1
  %arrayidx.2.i = getelementptr i16, ptr %rate_array, i32 2
  %9 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.2.i, align 2
  %conv.2.i = trunc i16 %10 to i8
  %arrayidx1.2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 2
  %11 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.2.i, ptr %arrayidx1.2.i, align 1
  %arrayidx.3.i = getelementptr i16, ptr %rate_array, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.3.i, align 2
  %conv.3.i = trunc i16 %13 to i8
  %arrayidx1.3.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 3
  %14 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.3.i, ptr %arrayidx1.3.i, align 1
  %arrayidx.4.i = getelementptr i16, ptr %rate_array, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.4.i, align 2
  %conv.4.i = trunc i16 %16 to i8
  %arrayidx1.4.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 4
  %17 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.4.i, ptr %arrayidx1.4.i, align 1
  %arrayidx.5.i = getelementptr i16, ptr %rate_array, i32 5
  %18 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.5.i, align 2
  %conv.5.i = trunc i16 %19 to i8
  %arrayidx1.5.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 5
  %20 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.5.i, ptr %arrayidx1.5.i, align 1
  %arrayidx.6.i = getelementptr i16, ptr %rate_array, i32 6
  %21 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.6.i, align 2
  %conv.6.i = trunc i16 %22 to i8
  %arrayidx1.6.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 6
  %23 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.6.i, ptr %arrayidx1.6.i, align 1
  %arrayidx.7.i = getelementptr i16, ptr %rate_array, i32 7
  %24 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.7.i, align 2
  %conv.7.i = trunc i16 %25 to i8
  %arrayidx1.7.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 7
  %26 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.7.i, ptr %arrayidx1.7.i, align 1
  %27 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %channelFlags, align 2
  %29 = and i16 %28, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %29)
  %30 = icmp ne i16 %29, 8
  %31 = and i16 %28, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool12.not = icmp eq i16 %31, 0
  %or.cond143 = and i1 %30, %tobool12.not
  br i1 %or.cond143, label %if.then.if.end41_crit_edge, label %if.then13

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %cond.i = select i1 %tobool12.not, i32 16, i32 24
  %arrayidx.i = getelementptr i16, ptr %rate_array, i32 %cond.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i, align 2
  %conv16.i = zext i16 %33 to i32
  %add1.i = add i32 %conv16.i, %ht40_delta
  %conv2.i = trunc i32 %add1.i to i8
  %arrayidx3.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 8
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv2.i, ptr %arrayidx3.i, align 1
  %inc.i = or i32 %cond.i, 1
  %arrayidx.1.i60 = getelementptr i16, ptr %rate_array, i32 %inc.i
  %35 = ptrtoint ptr %arrayidx.1.i60 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.1.i60, align 2
  %conv16.1.i = zext i16 %36 to i32
  %add1.1.i = add i32 %conv16.1.i, %ht40_delta
  %conv2.1.i = trunc i32 %add1.1.i to i8
  %arrayidx3.1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 9
  %37 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv2.1.i, ptr %arrayidx3.1.i, align 1
  %inc.1.i = or i32 %cond.i, 2
  %arrayidx.2.i61 = getelementptr i16, ptr %rate_array, i32 %inc.1.i
  %38 = ptrtoint ptr %arrayidx.2.i61 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.2.i61, align 2
  %conv16.2.i = zext i16 %39 to i32
  %add1.2.i = add i32 %conv16.2.i, %ht40_delta
  %conv2.2.i = trunc i32 %add1.2.i to i8
  %arrayidx3.2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 10
  %40 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv2.2.i, ptr %arrayidx3.2.i, align 1
  %inc.2.i = or i32 %cond.i, 3
  %arrayidx.3.i62 = getelementptr i16, ptr %rate_array, i32 %inc.2.i
  %41 = ptrtoint ptr %arrayidx.3.i62 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.3.i62, align 2
  %conv16.3.i = zext i16 %42 to i32
  %add1.3.i = add i32 %conv16.3.i, %ht40_delta
  %conv2.3.i = trunc i32 %add1.3.i to i8
  %arrayidx3.3.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 11
  %43 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv2.3.i, ptr %arrayidx3.3.i, align 1
  %inc.3.i = or i32 %cond.i, 4
  %arrayidx.4.i63 = getelementptr i16, ptr %rate_array, i32 %inc.3.i
  %44 = ptrtoint ptr %arrayidx.4.i63 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.4.i63, align 2
  %conv16.4.i = zext i16 %45 to i32
  %add1.4.i = add i32 %conv16.4.i, %ht40_delta
  %conv2.4.i = trunc i32 %add1.4.i to i8
  %arrayidx3.4.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 12
  %46 = ptrtoint ptr %arrayidx3.4.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv2.4.i, ptr %arrayidx3.4.i, align 1
  %inc.4.i = or i32 %cond.i, 5
  %arrayidx.5.i64 = getelementptr i16, ptr %rate_array, i32 %inc.4.i
  %47 = ptrtoint ptr %arrayidx.5.i64 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.5.i64, align 2
  %conv16.5.i = zext i16 %48 to i32
  %add1.5.i = add i32 %conv16.5.i, %ht40_delta
  %conv2.5.i = trunc i32 %add1.5.i to i8
  %arrayidx3.5.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 13
  %49 = ptrtoint ptr %arrayidx3.5.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv2.5.i, ptr %arrayidx3.5.i, align 1
  %inc.5.i = or i32 %cond.i, 6
  %arrayidx.6.i65 = getelementptr i16, ptr %rate_array, i32 %inc.5.i
  %50 = ptrtoint ptr %arrayidx.6.i65 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.6.i65, align 2
  %conv16.6.i = zext i16 %51 to i32
  %add1.6.i = add i32 %conv16.6.i, %ht40_delta
  %conv2.6.i = trunc i32 %add1.6.i to i8
  %arrayidx3.6.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 14
  %52 = ptrtoint ptr %arrayidx3.6.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv2.6.i, ptr %arrayidx3.6.i, align 1
  %inc.6.i = or i32 %cond.i, 7
  %arrayidx.7.i66 = getelementptr i16, ptr %rate_array, i32 %inc.6.i
  %53 = ptrtoint ptr %arrayidx.7.i66 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.7.i66, align 2
  %conv16.7.i = zext i16 %54 to i32
  %add1.7.i = add i32 %conv16.7.i, %ht40_delta
  %conv2.7.i = trunc i32 %add1.7.i to i8
  %arrayidx3.7.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 15
  %55 = ptrtoint ptr %arrayidx3.7.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv2.7.i, ptr %arrayidx3.7.i, align 1
  %arrayidx6.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 16
  br label %if.end41.sink.split

if.else:                                          ; preds = %entry
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %56 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %57)
  %cmp.i = icmp ugt i32 %57, 127
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.cond.false4.i_crit_edge

if.else.cond.false4.i_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false4.i

land.lhs.true.i:                                  ; preds = %if.else
  %eep_ops.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %58 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom.i = getelementptr inbounds %struct.eeprom_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %get_eeprom.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_eeprom.i, align 4
  %call.i = tail call i32 %61(ptr noundef %ah, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cond.false4.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false4.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false4.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i67 = getelementptr i16, ptr %rate_array, i32 8
  %62 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.i67, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %63)
  %cmp1.i = icmp sgt i16 %63, 2
  %conv.i68 = trunc i16 %63 to i8
  %sub.i = add i8 %conv.i68, -2
  %cond.i69 = select i1 %cmp1.i, i8 %sub.i, i8 0
  br label %cond.end7.i

cond.false4.i:                                    ; preds = %land.lhs.true.i.cond.false4.i_crit_edge, %if.else.cond.false4.i_crit_edge
  %arrayidx5.i = getelementptr i16, ptr %rate_array, i32 8
  %64 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = trunc i16 %65 to i8
  br label %cond.end7.i

cond.end7.i:                                      ; preds = %cond.false4.i, %cond.true.i
  %cond8.i = phi i8 [ %cond.i69, %cond.true.i ], [ %conv6.i, %cond.false4.i ]
  %tx_power.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 138
  %66 = ptrtoint ptr %tx_power.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %cond8.i, ptr %tx_power.i, align 1
  %67 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %68)
  %cmp13.i = icmp ugt i32 %68, 127
  br i1 %cmp13.i, label %land.lhs.true15.i, label %cond.end7.i.cond.false42.i_crit_edge

cond.end7.i.cond.false42.i_crit_edge:             ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false42.i

land.lhs.true15.i:                                ; preds = %cond.end7.i
  %eep_ops16.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %69 = ptrtoint ptr %eep_ops16.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %eep_ops16.i, align 4
  %get_eeprom17.i = getelementptr inbounds %struct.eeprom_ops, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %get_eeprom17.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get_eeprom17.i, align 4
  %call18.i = tail call i32 %72(ptr noundef %ah, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true15.i.cond.false42.i_crit_edge, label %cond.true20.i

land.lhs.true15.i.cond.false42.i_crit_edge:       ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false42.i

cond.true20.i:                                    ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx21.i = getelementptr i16, ptr %rate_array, i32 9
  %73 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx21.i, align 2
  %arrayidx22.i = getelementptr i16, ptr %rate_array, i32 10
  %75 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx22.i, align 2
  %77 = tail call i16 @llvm.smin.i16(i16 %74, i16 %76) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %77)
  %cmp36.i = icmp sgt i16 %77, 2
  %cond33.i = trunc i16 %77 to i8
  %sub34.i = add i8 %cond33.i, -2
  %cond41.i = select i1 %cmp36.i, i8 %sub34.i, i8 0
  br label %cond.end58.i

cond.false42.i:                                   ; preds = %land.lhs.true15.i.cond.false42.i_crit_edge, %cond.end7.i.cond.false42.i_crit_edge
  %arrayidx44.i = getelementptr i16, ptr %rate_array, i32 9
  %78 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx44.i, align 2
  %arrayidx46.i = getelementptr i16, ptr %rate_array, i32 10
  %80 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx46.i, align 2
  %82 = tail call i16 @llvm.smin.i16(i16 %79, i16 %81) #5
  %cond57.in.off0.i = trunc i16 %82 to i8
  br label %cond.end58.i

cond.end58.i:                                     ; preds = %cond.false42.i, %cond.true20.i
  %cond59.i = phi i8 [ %cond41.i, %cond.true20.i ], [ %cond57.in.off0.i, %cond.false42.i ]
  %arrayidx62.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 1
  %83 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %cond59.i, ptr %arrayidx62.i, align 1
  %84 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %85)
  %cmp65.i = icmp ugt i32 %85, 127
  br i1 %cmp65.i, label %land.lhs.true67.i, label %cond.end58.i.cond.false94.i_crit_edge

cond.end58.i.cond.false94.i_crit_edge:            ; preds = %cond.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false94.i

land.lhs.true67.i:                                ; preds = %cond.end58.i
  %eep_ops68.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %86 = ptrtoint ptr %eep_ops68.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %eep_ops68.i, align 4
  %get_eeprom69.i = getelementptr inbounds %struct.eeprom_ops, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %get_eeprom69.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_eeprom69.i, align 4
  %call70.i = tail call i32 %89(ptr noundef %ah, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %land.lhs.true67.i.cond.false94.i_crit_edge, label %cond.true72.i

land.lhs.true67.i.cond.false94.i_crit_edge:       ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false94.i

cond.true72.i:                                    ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx73.i = getelementptr i16, ptr %rate_array, i32 11
  %90 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx73.i, align 2
  %arrayidx74.i = getelementptr i16, ptr %rate_array, i32 12
  %92 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx74.i, align 2
  %94 = tail call i16 @llvm.smin.i16(i16 %91, i16 %93) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %94)
  %cmp88.i = icmp sgt i16 %94, 2
  %cond85.i = trunc i16 %94 to i8
  %sub86.i = add i8 %cond85.i, -2
  %cond93.i = select i1 %cmp88.i, i8 %sub86.i, i8 0
  br label %cond.end110.i

cond.false94.i:                                   ; preds = %land.lhs.true67.i.cond.false94.i_crit_edge, %cond.end58.i.cond.false94.i_crit_edge
  %arrayidx96.i = getelementptr i16, ptr %rate_array, i32 11
  %95 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx96.i, align 2
  %arrayidx98.i = getelementptr i16, ptr %rate_array, i32 12
  %97 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx98.i, align 2
  %99 = tail call i16 @llvm.smin.i16(i16 %96, i16 %98) #5
  %cond109.in.off0.i = trunc i16 %99 to i8
  br label %cond.end110.i

cond.end110.i:                                    ; preds = %cond.false94.i, %cond.true72.i
  %cond111.i = phi i8 [ %cond93.i, %cond.true72.i ], [ %cond109.in.off0.i, %cond.false94.i ]
  %arrayidx114.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 2
  %100 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %cond111.i, ptr %arrayidx114.i, align 1
  %101 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %102)
  %cmp117.i = icmp ugt i32 %102, 127
  br i1 %cmp117.i, label %land.lhs.true119.i, label %cond.end110.i.cond.false146.i_crit_edge

cond.end110.i.cond.false146.i_crit_edge:          ; preds = %cond.end110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false146.i

land.lhs.true119.i:                               ; preds = %cond.end110.i
  %eep_ops120.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %103 = ptrtoint ptr %eep_ops120.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %eep_ops120.i, align 4
  %get_eeprom121.i = getelementptr inbounds %struct.eeprom_ops, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %get_eeprom121.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %get_eeprom121.i, align 4
  %call122.i = tail call i32 %106(ptr noundef %ah, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %land.lhs.true119.i.cond.false146.i_crit_edge, label %cond.true124.i

land.lhs.true119.i.cond.false146.i_crit_edge:     ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false146.i

cond.true124.i:                                   ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx125.i = getelementptr i16, ptr %rate_array, i32 13
  %107 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx125.i, align 2
  %arrayidx126.i = getelementptr i16, ptr %rate_array, i32 14
  %109 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx126.i, align 2
  %111 = tail call i16 @llvm.smin.i16(i16 %108, i16 %110) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %111)
  %cmp140.i = icmp sgt i16 %111, 2
  %cond137.i = trunc i16 %111 to i8
  %sub138.i = add i8 %cond137.i, -2
  %cond145.i = select i1 %cmp140.i, i8 %sub138.i, i8 0
  br label %ar5008_hw_init_txpower_cck.exit

cond.false146.i:                                  ; preds = %land.lhs.true119.i.cond.false146.i_crit_edge, %cond.end110.i.cond.false146.i_crit_edge
  %arrayidx148.i = getelementptr i16, ptr %rate_array, i32 13
  %112 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx148.i, align 2
  %arrayidx150.i = getelementptr i16, ptr %rate_array, i32 14
  %114 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx150.i, align 2
  %116 = tail call i16 @llvm.smin.i16(i16 %113, i16 %115) #5
  %cond161.in.off0.i = trunc i16 %116 to i8
  br label %ar5008_hw_init_txpower_cck.exit

ar5008_hw_init_txpower_cck.exit:                  ; preds = %cond.false146.i, %cond.true124.i
  %cond163.i = phi i8 [ %cond145.i, %cond.true124.i ], [ %cond161.in.off0.i, %cond.false146.i ]
  %arrayidx166.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 3
  %117 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %cond163.i, ptr %arrayidx166.i, align 1
  %118 = ptrtoint ptr %rate_array to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %rate_array, align 2
  %conv.i70 = trunc i16 %119 to i8
  %arrayidx1.i71 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 4
  %120 = ptrtoint ptr %arrayidx1.i71 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv.i70, ptr %arrayidx1.i71, align 1
  %arrayidx.1.i72 = getelementptr i16, ptr %rate_array, i32 1
  %121 = ptrtoint ptr %arrayidx.1.i72 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx.1.i72, align 2
  %conv.1.i73 = trunc i16 %122 to i8
  %arrayidx1.1.i74 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 5
  %123 = ptrtoint ptr %arrayidx1.1.i74 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv.1.i73, ptr %arrayidx1.1.i74, align 1
  %arrayidx.2.i75 = getelementptr i16, ptr %rate_array, i32 2
  %124 = ptrtoint ptr %arrayidx.2.i75 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx.2.i75, align 2
  %conv.2.i76 = trunc i16 %125 to i8
  %arrayidx1.2.i77 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 6
  %126 = ptrtoint ptr %arrayidx1.2.i77 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv.2.i76, ptr %arrayidx1.2.i77, align 1
  %arrayidx.3.i78 = getelementptr i16, ptr %rate_array, i32 3
  %127 = ptrtoint ptr %arrayidx.3.i78 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx.3.i78, align 2
  %conv.3.i79 = trunc i16 %128 to i8
  %arrayidx1.3.i80 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 7
  %129 = ptrtoint ptr %arrayidx1.3.i80 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv.3.i79, ptr %arrayidx1.3.i80, align 1
  %arrayidx.4.i81 = getelementptr i16, ptr %rate_array, i32 4
  %130 = ptrtoint ptr %arrayidx.4.i81 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx.4.i81, align 2
  %conv.4.i82 = trunc i16 %131 to i8
  %arrayidx1.4.i83 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 8
  %132 = ptrtoint ptr %arrayidx1.4.i83 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv.4.i82, ptr %arrayidx1.4.i83, align 1
  %arrayidx.5.i84 = getelementptr i16, ptr %rate_array, i32 5
  %133 = ptrtoint ptr %arrayidx.5.i84 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx.5.i84, align 2
  %conv.5.i85 = trunc i16 %134 to i8
  %arrayidx1.5.i86 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 9
  %135 = ptrtoint ptr %arrayidx1.5.i86 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv.5.i85, ptr %arrayidx1.5.i86, align 1
  %arrayidx.6.i87 = getelementptr i16, ptr %rate_array, i32 6
  %136 = ptrtoint ptr %arrayidx.6.i87 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx.6.i87, align 2
  %conv.6.i88 = trunc i16 %137 to i8
  %arrayidx1.6.i89 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 10
  %138 = ptrtoint ptr %arrayidx1.6.i89 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv.6.i88, ptr %arrayidx1.6.i89, align 1
  %arrayidx.7.i90 = getelementptr i16, ptr %rate_array, i32 7
  %139 = ptrtoint ptr %arrayidx.7.i90 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx.7.i90, align 2
  %conv.7.i91 = trunc i16 %140 to i8
  %arrayidx1.7.i92 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 11
  %141 = ptrtoint ptr %arrayidx1.7.i92 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.7.i91, ptr %arrayidx1.7.i92, align 1
  %142 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %channelFlags, align 2
  %144 = and i16 %143, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %144)
  %145 = icmp ne i16 %144, 8
  %146 = and i16 %143, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool32.not = icmp eq i16 %146, 0
  %or.cond144 = and i1 %145, %tobool32.not
  br i1 %or.cond144, label %ar5008_hw_init_txpower_cck.exit.if.end41_crit_edge, label %if.then33

ar5008_hw_init_txpower_cck.exit.if.end41_crit_edge: ; preds = %ar5008_hw_init_txpower_cck.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then33:                                        ; preds = %ar5008_hw_init_txpower_cck.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cond.i93 = select i1 %tobool32.not, i32 16, i32 24
  %arrayidx.i94 = getelementptr i16, ptr %rate_array, i32 %cond.i93
  %147 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx.i94, align 2
  %conv16.i95 = zext i16 %148 to i32
  %add1.i96 = add i32 %conv16.i95, %ht40_delta
  %conv2.i97 = trunc i32 %add1.i96 to i8
  %arrayidx3.i98 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 12
  %149 = ptrtoint ptr %arrayidx3.i98 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv2.i97, ptr %arrayidx3.i98, align 1
  %inc.i99 = or i32 %cond.i93, 1
  %arrayidx.1.i100 = getelementptr i16, ptr %rate_array, i32 %inc.i99
  %150 = ptrtoint ptr %arrayidx.1.i100 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx.1.i100, align 2
  %conv16.1.i101 = zext i16 %151 to i32
  %add1.1.i102 = add i32 %conv16.1.i101, %ht40_delta
  %conv2.1.i103 = trunc i32 %add1.1.i102 to i8
  %arrayidx3.1.i104 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 13
  %152 = ptrtoint ptr %arrayidx3.1.i104 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv2.1.i103, ptr %arrayidx3.1.i104, align 1
  %inc.1.i105 = or i32 %cond.i93, 2
  %arrayidx.2.i106 = getelementptr i16, ptr %rate_array, i32 %inc.1.i105
  %153 = ptrtoint ptr %arrayidx.2.i106 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx.2.i106, align 2
  %conv16.2.i107 = zext i16 %154 to i32
  %add1.2.i108 = add i32 %conv16.2.i107, %ht40_delta
  %conv2.2.i109 = trunc i32 %add1.2.i108 to i8
  %arrayidx3.2.i110 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 14
  %155 = ptrtoint ptr %arrayidx3.2.i110 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv2.2.i109, ptr %arrayidx3.2.i110, align 1
  %inc.2.i111 = or i32 %cond.i93, 3
  %arrayidx.3.i112 = getelementptr i16, ptr %rate_array, i32 %inc.2.i111
  %156 = ptrtoint ptr %arrayidx.3.i112 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %arrayidx.3.i112, align 2
  %conv16.3.i113 = zext i16 %157 to i32
  %add1.3.i114 = add i32 %conv16.3.i113, %ht40_delta
  %conv2.3.i115 = trunc i32 %add1.3.i114 to i8
  %arrayidx3.3.i116 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 15
  %158 = ptrtoint ptr %arrayidx3.3.i116 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv2.3.i115, ptr %arrayidx3.3.i116, align 1
  %inc.3.i117 = or i32 %cond.i93, 4
  %arrayidx.4.i118 = getelementptr i16, ptr %rate_array, i32 %inc.3.i117
  %159 = ptrtoint ptr %arrayidx.4.i118 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %arrayidx.4.i118, align 2
  %conv16.4.i119 = zext i16 %160 to i32
  %add1.4.i120 = add i32 %conv16.4.i119, %ht40_delta
  %conv2.4.i121 = trunc i32 %add1.4.i120 to i8
  %arrayidx3.4.i122 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 16
  %161 = ptrtoint ptr %arrayidx3.4.i122 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv2.4.i121, ptr %arrayidx3.4.i122, align 1
  %inc.4.i123 = or i32 %cond.i93, 5
  %arrayidx.5.i124 = getelementptr i16, ptr %rate_array, i32 %inc.4.i123
  %162 = ptrtoint ptr %arrayidx.5.i124 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %arrayidx.5.i124, align 2
  %conv16.5.i125 = zext i16 %163 to i32
  %add1.5.i126 = add i32 %conv16.5.i125, %ht40_delta
  %conv2.5.i127 = trunc i32 %add1.5.i126 to i8
  %arrayidx3.5.i128 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 17
  %164 = ptrtoint ptr %arrayidx3.5.i128 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv2.5.i127, ptr %arrayidx3.5.i128, align 1
  %inc.5.i129 = or i32 %cond.i93, 6
  %arrayidx.6.i130 = getelementptr i16, ptr %rate_array, i32 %inc.5.i129
  %165 = ptrtoint ptr %arrayidx.6.i130 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %arrayidx.6.i130, align 2
  %conv16.6.i131 = zext i16 %166 to i32
  %add1.6.i132 = add i32 %conv16.6.i131, %ht40_delta
  %conv2.6.i133 = trunc i32 %add1.6.i132 to i8
  %arrayidx3.6.i134 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 18
  %167 = ptrtoint ptr %arrayidx3.6.i134 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv2.6.i133, ptr %arrayidx3.6.i134, align 1
  %inc.6.i135 = or i32 %cond.i93, 7
  %arrayidx.7.i136 = getelementptr i16, ptr %rate_array, i32 %inc.6.i135
  %168 = ptrtoint ptr %arrayidx.7.i136 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx.7.i136, align 2
  %conv16.7.i137 = zext i16 %169 to i32
  %add1.7.i138 = add i32 %conv16.7.i137, %ht40_delta
  %conv2.7.i139 = trunc i32 %add1.7.i138 to i8
  %arrayidx3.7.i140 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 19
  %170 = ptrtoint ptr %arrayidx3.7.i140 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv2.7.i139, ptr %arrayidx3.7.i140, align 1
  %arrayidx6.i141 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 138, i32 20
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.then33, %if.then13
  %arrayidx3.i98.sink = phi ptr [ %arrayidx3.i98, %if.then33 ], [ %arrayidx3.i, %if.then13 ]
  %arrayidx6.i141.sink = phi ptr [ %arrayidx6.i141, %if.then33 ], [ %arrayidx6.i, %if.then13 ]
  %171 = ptrtoint ptr %arrayidx3.i98.sink to i32
  call void @__asan_loadN_noabort(i32 %171, i32 8)
  %172 = load i64, ptr %arrayidx3.i98.sink, align 1
  %173 = ptrtoint ptr %arrayidx6.i141.sink to i32
  call void @__asan_storeN_noabort(i32 %173, i32 8)
  store i64 %172, ptr %arrayidx6.i141.sink, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %ar5008_hw_init_txpower_cck.exit.if.end41_crit_edge, %if.then.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ar5008_hw_attach_phy_ops(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %cmp.i = icmp ugt i32 %1, 127
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %ia_rows.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 87, i32 1
  %2 = ptrtoint ptr %ia_rows.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ia_rows.i, align 4
  %mul.i = shl i32 %3, 2
  %dev.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %mul.i, i32 noundef 3520) #5
  %analogBank6Data.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 64
  %6 = ptrtoint ptr %analogBank6Data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %analogBank6Data.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rf_set_freq = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 7
  %7 = ptrtoint ptr %rf_set_freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ar5008_hw_set_channel, ptr %rf_set_freq, align 4
  %spur_mitigate_freq = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 8
  %8 = ptrtoint ptr %spur_mitigate_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ar5008_hw_spur_mitigate, ptr %spur_mitigate_freq, align 4
  %set_rf_regs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 9
  %9 = ptrtoint ptr %set_rf_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ar5008_hw_set_rf_regs, ptr %set_rf_regs, align 4
  %set_channel_regs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 10
  %10 = ptrtoint ptr %set_channel_regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ar5008_hw_set_channel_regs, ptr %set_channel_regs, align 4
  %init_bb = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 11
  %11 = ptrtoint ptr %init_bb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ar5008_hw_init_bb, ptr %init_bb, align 4
  %process_ini = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 12
  %12 = ptrtoint ptr %process_ini to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ar5008_hw_process_ini, ptr %process_ini, align 4
  %set_rfmode = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 14
  %13 = ptrtoint ptr %set_rfmode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ar5008_hw_set_rfmode, ptr %set_rfmode, align 4
  %mark_phy_inactive = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 15
  %14 = ptrtoint ptr %mark_phy_inactive to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ar5008_hw_mark_phy_inactive, ptr %mark_phy_inactive, align 4
  %set_delta_slope = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 16
  %15 = ptrtoint ptr %set_delta_slope to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ar5008_hw_set_delta_slope, ptr %set_delta_slope, align 4
  %rfbus_req = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 17
  %16 = ptrtoint ptr %rfbus_req to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ar5008_hw_rfbus_req, ptr %rfbus_req, align 4
  %rfbus_done = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 18
  %17 = ptrtoint ptr %rfbus_done to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ar5008_hw_rfbus_done, ptr %rfbus_done, align 4
  %restore_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 19
  %18 = ptrtoint ptr %restore_chainmask to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ar5008_restore_chainmask, ptr %restore_chainmask, align 4
  %do_getnf = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 22
  %19 = ptrtoint ptr %do_getnf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ar5008_hw_do_getnf, ptr %do_getnf, align 4
  %set_radar_params = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 23
  %20 = ptrtoint ptr %set_radar_params to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ar5008_hw_set_radar_params, ptr %set_radar_params, align 4
  %ani_control = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 21
  %21 = ptrtoint ptr %ani_control to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ar5008_hw_ani_control_new, ptr %ani_control, align 4
  %ani_cache_ini_regs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 25
  %22 = ptrtoint ptr %ani_cache_ini_regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ar5008_hw_ani_cache_ini_regs, ptr %ani_cache_ini_regs, align 4
  %23 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %24)
  %cmp = icmp eq i32 %24, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %24)
  %cmp4 = icmp ugt i32 %24, 63
  %or.cond = or i1 %cmp, %cmp4
  %spec.select = select i1 %or.cond, ptr @ar9160_hw_compute_pll_control, ptr @ar5008_hw_compute_pll_control
  %25 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 20
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spec.select, ptr %25, align 4
  %nf_2g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19
  %27 = ptrtoint ptr %nf_2g.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -80, ptr %nf_2g.i, align 4
  %min.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 1
  %28 = ptrtoint ptr %min.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -100, ptr %min.i, align 2
  %nominal.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 19, i32 2
  %29 = ptrtoint ptr %nominal.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -90, ptr %nominal.i, align 4
  %nf_5g.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20
  %30 = ptrtoint ptr %nf_5g.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -90, ptr %nf_5g.i, align 2
  %min5.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 1
  %31 = ptrtoint ptr %min5.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -110, ptr %min5.i, align 2
  %nominal7.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 20, i32 2
  %32 = ptrtoint ptr %nominal7.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -100, ptr %nominal7.i, align 2
  %radar_conf.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76
  %fir_power.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 7
  %33 = ptrtoint ptr %fir_power.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -33, ptr %fir_power.i, align 4
  %radar_rssi.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 5
  %34 = ptrtoint ptr %radar_rssi.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 20, ptr %radar_rssi.i, align 4
  %pulse_height.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 2
  %35 = ptrtoint ptr %pulse_height.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10, ptr %pulse_height.i, align 4
  %pulse_rssi.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 3
  %36 = ptrtoint ptr %pulse_rssi.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 15, ptr %pulse_rssi.i, align 4
  %37 = ptrtoint ptr %radar_conf.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 15, ptr %radar_conf.i, align 4
  %pulse_maxlen.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 4
  %38 = ptrtoint ptr %pulse_maxlen.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 255, ptr %pulse_maxlen.i, align 4
  %pulse_inband_step.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 1
  %39 = ptrtoint ptr %pulse_inband_step.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 12, ptr %pulse_inband_step.i, align 4
  %radar_inband.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 76, i32 6
  %40 = ptrtoint ptr %radar_inband.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %radar_inband.i, align 4
  %nf_regs = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 18
  %41 = call ptr @memcpy(ptr %nf_regs, ptr @ar5008_hw_attach_phy_ops.ar5416_cca_regs, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar5008_hw_set_channel(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  %centers = alloca %struct.chan_centers, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #5
  %0 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %centers, align 2, !annotation !65
  %1 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !65
  %3 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !65
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #5
  %5 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %centers, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4800, i16 %6)
  %cmp = icmp ult i16 %6, 4800
  br i1 %cmp, label %if.then, label %if.else35

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %conv, -2192
  %rem = srem i32 %sub, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then.if.end22_crit_edge, label %if.else

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.else:                                          ; preds = %if.then
  %sub10 = add nsw i32 %conv, -2224
  %rem11 = srem i32 %sub10, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem11)
  %cmp12 = icmp eq i32 %rem11, 0
  br i1 %cmp12, label %if.else.if.end22_crit_edge, label %cleanup

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %if.then.if.end22_crit_edge
  %.sink = phi i32 [ -4384, %if.then.if.end22_crit_edge ], [ -4448, %if.else.if.end22_crit_edge ]
  %bModeSynth.0 = phi i32 [ 0, %if.then.if.end22_crit_edge ], [ 2, %if.else.if.end22_crit_edge ]
  %sub16 = shl nuw nsw i32 %conv, 1
  %sub18 = add nsw i32 %sub16, %.sink
  %channelSel.0 = sdiv i32 %sub18, 10
  %shl = shl nsw i32 %channelSel.0, 2
  %and = and i32 %shl, 252
  %call23 = call i32 @ath9k_hw_reverse_bits(i32 noundef %and, i32 noundef 8) #5
  %7 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ah, align 4
  %call24 = call i32 %8(ptr noundef %ah, i32 noundef 41476) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2484, i16 %6)
  %cmp26 = icmp eq i16 %6, 2484
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  br i1 %cmp26, label %if.end88.thread, label %if.end88

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %conv) #5
  br label %cleanup98

if.else35:                                        ; preds = %entry
  %rem37160 = urem i16 %6, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem37160)
  %cmp38 = icmp eq i16 %rem37160, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 5119, i16 %6)
  %cmp41 = icmp ugt i16 %6, 5119
  %or.cond = and i1 %cmp41, %cmp38
  br i1 %or.cond, label %if.then43, label %if.else50

if.then43:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  %sub45 = add nsw i32 %conv, -4800
  %div46 = sdiv i32 %sub45, 20
  %shl47 = shl nsw i32 %div46, 2
  %call48 = call i32 @ath9k_hw_reverse_bits(i32 noundef %shl47, i32 noundef 8) #5
  %call49 = call i32 @ath9k_hw_reverse_bits(i32 noundef 1, i32 noundef 2) #5
  br label %ar5008_hw_force_bias.exit

if.else50:                                        ; preds = %if.else35
  %rem52161 = urem i16 %6, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem52161)
  %cmp53 = icmp eq i16 %rem52161, 0
  br i1 %cmp53, label %if.then55, label %if.else72

if.then55:                                        ; preds = %if.else50
  %sub57 = add nsw i32 %conv, -4800
  %div58 = sdiv i32 %sub57, 10
  %shl59 = shl nsw i32 %div58, 1
  %call60 = call i32 @ath9k_hw_reverse_bits(i32 noundef %shl59, i32 noundef 8) #5
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %12)
  %cmp61 = icmp eq i32 %12, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %12)
  %cmp65 = icmp ugt i32 %12, 63
  %or.cond138 = or i1 %cmp61, %cmp65
  br i1 %or.cond138, label %if.then67, label %if.else69

if.then67:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  %call68 = call i32 @ath9k_hw_reverse_bits(i32 noundef 2, i32 noundef 2) #5
  br label %ar5008_hw_force_bias.exit

if.else69:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  %call70 = call i32 @ath9k_hw_reverse_bits(i32 noundef 1, i32 noundef 2) #5
  br label %ar5008_hw_force_bias.exit

if.else72:                                        ; preds = %if.else50
  %rem74162 = urem i16 %6, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem74162)
  %cmp75 = icmp eq i16 %rem74162, 0
  br i1 %cmp75, label %if.then77, label %if.else83

if.then77:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #7
  %sub79 = add nsw i32 %conv, -4800
  %div80 = sdiv i32 %sub79, 5
  %call81 = call i32 @ath9k_hw_reverse_bits(i32 noundef %div80, i32 noundef 8) #5
  %call82 = call i32 @ath9k_hw_reverse_bits(i32 noundef 1, i32 noundef 2) #5
  br label %ar5008_hw_force_bias.exit

if.else83:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %conv) #5
  br label %cleanup98

if.end88:                                         ; preds = %if.end22
  %and33 = and i32 %call24, -17
  call void %10(ptr noundef %ah, i32 noundef %and33, i32 noundef 41476) #5
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %macVersion.i, align 4
  %15 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %15)
  %switch.i = icmp ne i32 %15, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 2999, i16 %6)
  %cmp5.i = icmp ugt i16 %6, 2999
  %or.cond163 = select i1 %switch.i, i1 true, i1 %cmp5.i
  br i1 %or.cond163, label %if.end88.ar5008_hw_force_bias.exit_crit_edge, label %if.end88.do.end19.i_crit_edge

if.end88.do.end19.i_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19.i

if.end88.ar5008_hw_force_bias.exit_crit_edge:     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar5008_hw_force_bias.exit

if.end88.thread:                                  ; preds = %if.end22
  %or = or i32 %call24, 16
  call void %10(ptr noundef %ah, i32 noundef %or, i32 noundef 41476) #5
  %macVersion.i145 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %macVersion.i145 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %macVersion.i145, align 4
  %18 = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %18)
  %switch.i146 = icmp eq i32 %18, 12
  br i1 %switch.i146, label %if.end88.thread.do.end19.i_crit_edge, label %if.end88.thread.ar5008_hw_force_bias.exit_crit_edge

if.end88.thread.ar5008_hw_force_bias.exit_crit_edge: ; preds = %if.end88.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar5008_hw_force_bias.exit

if.end88.thread.do.end19.i_crit_edge:             ; preds = %if.end88.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.end88.thread.do.end19.i_crit_edge, %if.end88.do.end19.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2412, i16 %6)
  %cmp21.i = icmp ult i16 %6, 2412
  call void @__sanitizer_cov_trace_const_cmp2(i16 2422, i16 %6)
  %cmp25.i = icmp ult i16 %6, 2422
  %..i = select i1 %cmp25.i, i32 1, i32 2
  %new_bias.0.i = select i1 %cmp21.i, i32 0, i32 %..i
  %call31.i = call i32 @ath9k_hw_reverse_bits(i32 noundef %new_bias.0.i, i32 noundef 3) #5
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool33.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool33.not.i, label %do.end19.i.do.end38.i_crit_edge, label %if.then34.i

do.end19.i.do.end38.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38.i

if.then34.i:                                      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %new_bias.0.i, i32 noundef %conv) #5
  br label %do.end38.i

do.end38.i:                                       ; preds = %if.then34.i, %do.end19.i.do.end38.i_crit_edge
  %analogBank6Data.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 64
  %21 = ptrtoint ptr %analogBank6Data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %analogBank6Data.i, align 4
  %call.i.i = call i32 @ath9k_hw_reverse_bits(i32 noundef %call31.i, i32 noundef 3) #5
  %arrayidx.peel.i.i = getelementptr i32, ptr %22, i32 22
  %23 = ptrtoint ptr %arrayidx.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.peel.i.i, align 4
  %and.peel.i.i = and i32 %24, -1879048193
  %shl8.peel.i.i = shl i32 %call.i.i, 28
  %and11.peel.i.i = and i32 %shl8.peel.i.i, 1879048192
  %or.peel.i.i = or i32 %and.peel.i.i, %and11.peel.i.i
  store i32 %or.peel.i.i, ptr %arrayidx.peel.i.i, align 4
  %iniBank6.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 87
  %25 = ptrtoint ptr %analogBank6Data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %analogBank6Data.i, align 4
  %enable_write_buffer.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %27 = ptrtoint ptr %enable_write_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enable_write_buffer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %do.end38.i.do.end.i.i_crit_edge, label %if.then.i.i

do.end38.i.do.end.i.i_crit_edge:                  ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %28(ptr noundef %ah) #5
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %do.end38.i.do.end.i.i_crit_edge
  %ia_rows.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 87, i32 1
  %29 = ptrtoint ptr %ia_rows.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ia_rows.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp38.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp38.not.i.i, label %do.end.i.i.do.body13.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end.i.i.do.body13.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end.i.i
  %write.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %ia_columns.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 87, i32 2
  %bus_ops.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %reg_writes.0.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %26, i32 %reg_writes.0.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  %35 = ptrtoint ptr %iniBank6.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iniBank6.i.i, align 4
  %37 = ptrtoint ptr %ia_columns.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ia_columns.i.i, align 4
  %mul.i.i = mul i32 %38, %reg_writes.0.i
  %arrayidx4.i.i = getelementptr i32, ptr %36, i32 %mul.i.i
  %39 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.i.i, align 4
  call void %32(ptr noundef %ah, i32 noundef %34, i32 noundef %40) #5
  %inc.i.i = add nuw i32 %reg_writes.0.i, 1
  %rem.i.i = and i32 %inc.i.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp6.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp6.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %41 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus_ops.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp7.not.i.i = icmp eq i32 %44, 2
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then8.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748) #5
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then8.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %46 = ptrtoint ptr %ia_rows.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ia_rows.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %47
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.body13.i.i_crit_edge

for.inc.i.i.do.body13.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

do.body13.i.i:                                    ; preds = %for.inc.i.i.do.body13.i.i_crit_edge, %do.end.i.i.do.body13.i.i_crit_edge
  %write_flush.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  %48 = ptrtoint ptr %write_flush.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_flush.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %49, null
  br i1 %tobool15.not.i.i, label %do.body13.i.i.ar5008_hw_force_bias.exit_crit_edge, label %if.then16.i.i

do.body13.i.i.ar5008_hw_force_bias.exit_crit_edge: ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar5008_hw_force_bias.exit

if.then16.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %49(ptr noundef %ah) #5
  br label %ar5008_hw_force_bias.exit

ar5008_hw_force_bias.exit:                        ; preds = %if.then16.i.i, %do.body13.i.i.ar5008_hw_force_bias.exit_crit_edge, %if.end88.thread.ar5008_hw_force_bias.exit_crit_edge, %if.end88.ar5008_hw_force_bias.exit_crit_edge, %if.then77, %if.else69, %if.then67, %if.then43
  %aModeRefSel.0151 = phi i32 [ 0, %if.end88.thread.ar5008_hw_force_bias.exit_crit_edge ], [ 0, %if.end88.ar5008_hw_force_bias.exit_crit_edge ], [ 0, %do.body13.i.i.ar5008_hw_force_bias.exit_crit_edge ], [ 0, %if.then16.i.i ], [ %call82, %if.then77 ], [ %call70, %if.else69 ], [ %call68, %if.then67 ], [ %call49, %if.then43 ]
  %bModeSynth.2149 = phi i32 [ %bModeSynth.0, %if.end88.thread.ar5008_hw_force_bias.exit_crit_edge ], [ %bModeSynth.0, %if.end88.ar5008_hw_force_bias.exit_crit_edge ], [ %bModeSynth.0, %do.body13.i.i.ar5008_hw_force_bias.exit_crit_edge ], [ %bModeSynth.0, %if.then16.i.i ], [ 0, %if.then77 ], [ 0, %if.else69 ], [ 0, %if.then67 ], [ 0, %if.then43 ]
  %channelSel.2147 = phi i32 [ %call23, %if.end88.thread.ar5008_hw_force_bias.exit_crit_edge ], [ %call23, %if.end88.ar5008_hw_force_bias.exit_crit_edge ], [ %call23, %do.body13.i.i.ar5008_hw_force_bias.exit_crit_edge ], [ %call23, %if.then16.i.i ], [ %call81, %if.then77 ], [ %call60, %if.else69 ], [ %call60, %if.then67 ], [ %call48, %if.then43 ]
  %shl89 = shl i32 %channelSel.2147, 8
  %shl90 = shl i32 %aModeRefSel.0151, 2
  %or91 = or i32 %shl90, %bModeSynth.2149
  %or93 = or i32 %or91, %shl89
  %or95 = or i32 %or93, 33
  %write97 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %50 = ptrtoint ptr %write97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write97, align 4
  call void %51(ptr noundef %ah, i32 noundef %or95, i32 noundef 39132) #5
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %52 = ptrtoint ptr %curchan to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %chan, ptr %curchan, align 4
  br label %cleanup98

cleanup98:                                        ; preds = %ar5008_hw_force_bias.exit, %if.else83, %cleanup
  %retval.1 = phi i32 [ 0, %ar5008_hw_force_bias.exit ], [ -22, %cleanup ], [ -22, %if.else83 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_spur_mitigate(ptr noundef %ah, ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel = getelementptr inbounds %struct.eeprom_ops, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %get_spur_channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_spur_channel, align 4
  %call = tail call zeroext i16 %6(ptr noundef %ah, i16 noundef zeroext 0, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call)
  %cmp7 = icmp eq i16 %call, -32768
  br i1 %cmp7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %7 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel.1 = getelementptr inbounds %struct.eeprom_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %get_spur_channel.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_spur_channel.1, align 4
  %call.1 = tail call zeroext i16 %10(ptr noundef %ah, i16 noundef zeroext 1, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call.1)
  %cmp7.1 = icmp eq i16 %call.1, -32768
  br i1 %cmp7.1, label %for.cond.cleanup_crit_edge, label %if.end.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  %conv6.1 = zext i16 %call.1 to i32
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %channel, align 4
  %conv9.1 = zext i16 %12 to i32
  %mul.neg.1 = mul nsw i32 %conv9.1, -10
  %sub.1 = add nsw i32 %mul.neg.1, %conv6.1
  %13 = add nsw i32 %sub.1, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 189, i32 %13)
  %14 = icmp ult i32 %13, 189
  br i1 %14, label %if.end.1.if.end19_crit_edge, label %for.cond.1

if.end.1.if.end19_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.cond.1:                                       ; preds = %if.end.1
  %15 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel.2 = getelementptr inbounds %struct.eeprom_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %get_spur_channel.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_spur_channel.2, align 4
  %call.2 = tail call zeroext i16 %18(ptr noundef %ah, i16 noundef zeroext 2, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call.2)
  %cmp7.2 = icmp eq i16 %call.2, -32768
  br i1 %cmp7.2, label %for.cond.1.cleanup_crit_edge, label %if.end.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  %conv6.2 = zext i16 %call.2 to i32
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %channel, align 4
  %conv9.2 = zext i16 %20 to i32
  %mul.neg.2 = mul nsw i32 %conv9.2, -10
  %sub.2 = add nsw i32 %mul.neg.2, %conv6.2
  %21 = add nsw i32 %sub.2, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 189, i32 %21)
  %22 = icmp ult i32 %21, 189
  br i1 %22, label %if.end.2.if.end19_crit_edge, label %for.cond.2

if.end.2.if.end19_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.cond.2:                                       ; preds = %if.end.2
  %23 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel.3 = getelementptr inbounds %struct.eeprom_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %get_spur_channel.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_spur_channel.3, align 4
  %call.3 = tail call zeroext i16 %26(ptr noundef %ah, i16 noundef zeroext 3, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call.3)
  %cmp7.3 = icmp eq i16 %call.3, -32768
  br i1 %cmp7.3, label %for.cond.2.cleanup_crit_edge, label %if.end.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3:                                         ; preds = %for.cond.2
  %conv6.3 = zext i16 %call.3 to i32
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %channel, align 4
  %conv9.3 = zext i16 %28 to i32
  %mul.neg.3 = mul nsw i32 %conv9.3, -10
  %sub.3 = add nsw i32 %mul.neg.3, %conv6.3
  %29 = add nsw i32 %sub.3, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 189, i32 %29)
  %30 = icmp ult i32 %29, 189
  br i1 %30, label %if.end.3.if.end19_crit_edge, label %for.cond.3

if.end.3.if.end19_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.cond.3:                                       ; preds = %if.end.3
  %31 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eep_ops, align 4
  %get_spur_channel.4 = getelementptr inbounds %struct.eeprom_ops, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %get_spur_channel.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_spur_channel.4, align 4
  %call.4 = tail call zeroext i16 %34(ptr noundef %ah, i16 noundef zeroext 4, i1 noundef zeroext %tobool.not) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %call.4)
  %cmp7.4 = icmp eq i16 %call.4, -32768
  br i1 %cmp7.4, label %for.cond.3.cleanup_crit_edge, label %if.end.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4:                                         ; preds = %for.cond.3
  %conv6.4 = zext i16 %call.4 to i32
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %channel, align 4
  %conv9.4 = zext i16 %36 to i32
  %mul.neg.4 = mul nsw i32 %conv9.4, -10
  %sub.4 = add nsw i32 %mul.neg.4, %conv6.4
  %37 = add nsw i32 %sub.4, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 189, i32 %37)
  %38 = icmp ult i32 %37, 189
  br i1 %38, label %if.end.4.if.end19_crit_edge, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.if.end19_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end:                                           ; preds = %entry
  %conv6 = zext i16 %call to i32
  %39 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %channel, align 4
  %conv9 = zext i16 %40 to i32
  %mul.neg = mul nsw i32 %conv9, -10
  %sub = add nsw i32 %mul.neg, %conv6
  %41 = add nsw i32 %sub, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 189, i32 %41)
  %42 = icmp ult i32 %41, 189
  br i1 %42, label %if.end.if.end19_crit_edge, label %for.cond

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %if.end.if.end19_crit_edge, %if.end.4.if.end19_crit_edge, %if.end.3.if.end19_crit_edge, %if.end.2.if.end19_crit_edge, %if.end.1.if.end19_crit_edge
  %sub.lcssa = phi i32 [ %sub, %if.end.if.end19_crit_edge ], [ %sub.1, %if.end.1.if.end19_crit_edge ], [ %sub.2, %if.end.2.if.end19_crit_edge ], [ %sub.3, %if.end.3.if.end19_crit_edge ], [ %sub.4, %if.end.4.if.end19_crit_edge ]
  %mul20 = shl nsw i32 %sub.lcssa, 5
  %43 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ah, align 4
  %call21 = tail call i32 %44(ptr noundef %ah, i32 noundef 39200) #5
  %or = or i32 %call21, -268435456
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %45 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write, align 4
  tail call void %46(ptr noundef %ah, i32 noundef %or, i32 noundef 39200) #5
  %47 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write, align 4
  tail call void %48(ptr noundef %ah, i32 noundef 67108648, i32 noundef 39244) #5
  %mul25 = shl nsw i32 %sub.lcssa, 19
  %div = sdiv i32 %mul25, 100
  %and26 = and i32 %div, 1048575
  %49 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %channelFlags, align 2
  %51 = and i16 %50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool30.not = icmp eq i16 %51, 0
  %cond = select i1 %tobool30.not, i32 440, i32 400
  %mul34 = shl nsw i32 %sub.lcssa, 11
  %div35 = sdiv i32 %mul34, %cond
  %and36 = shl i32 %div35, 20
  %shl = and i32 %and36, 1072693248
  %or38 = or i32 %and26, %shl
  %or41 = or i32 %or38, 1073741824
  %52 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write, align 4
  tail call void %53(ptr noundef %ah, i32 noundef %or41, i32 noundef 39328) #5
  tail call void @ar5008_hw_cmn_spur_mitigate(ptr noundef %ah, ptr undef, i32 noundef %mul20)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar5008_hw_set_rf_regs(ptr noundef %ah, ptr nocapture noundef readonly %chan, i16 noundef zeroext %modesIndex) #0 align 64 {
entry:
  %regWrites = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regWrites) #5
  %0 = ptrtoint ptr %regWrites to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %regWrites, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %2)
  %cmp = icmp ugt i32 %2, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %3 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eep_ops, align 4
  %get_eeprom_rev = getelementptr inbounds %struct.eeprom_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %get_eeprom_rev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_eeprom_rev, align 4
  %call = tail call i32 %6(ptr noundef %ah) #5
  %ia_rows = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 87, i32 1
  %7 = ptrtoint ptr %ia_rows to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ia_rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp181.not = icmp eq i32 %8, 0
  br i1 %cmp181.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %iniBank6 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 87
  %ia_columns = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 87, i32 2
  %conv = zext i16 %modesIndex to i32
  %analogBank6Data = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %iniBank6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iniBank6, align 4
  %11 = ptrtoint ptr %ia_columns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ia_columns, align 4
  %mul = mul i32 %12, %i.082
  %add = add i32 %mul, %conv
  %arrayidx = getelementptr i32, ptr %10, i32 %add
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %analogBank6Data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %analogBank6Data, align 4
  %arrayidx4 = getelementptr i32, ptr %16, i32 %i.082
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %arrayidx4, align 4
  %inc = add nuw i32 %i.082, 1
  %18 = ptrtoint ptr %ia_rows to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ia_rows, align 4
  %cmp1 = icmp ult i32 %inc, %19
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp5 = icmp ugt i32 %call, 1
  br i1 %cmp5, label %if.then7, label %for.end.if.end26_crit_edge

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then7:                                         ; preds = %for.end
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %20 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %channelFlags, align 2
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not = icmp eq i16 %22, 0
  %23 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eep_ops, align 4
  %get_eeprom = getelementptr inbounds %struct.eeprom_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %get_eeprom to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_eeprom, align 4
  br i1 %tobool.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 %26(ptr noundef %ah, i32 noundef 11) #5
  %27 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eep_ops, align 4
  %get_eeprom13 = getelementptr inbounds %struct.eeprom_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %get_eeprom13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_eeprom13, align 4
  %call14 = tail call i32 %30(ptr noundef %ah, i32 noundef 12) #5
  %analogBank6Data15 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 64
  %31 = ptrtoint ptr %analogBank6Data15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %analogBank6Data15, align 4
  %call.i = tail call i32 @ath9k_hw_reverse_bits(i32 noundef %call11, i32 noundef 3) #5
  %arrayidx.peel.i = getelementptr i32, ptr %32, i32 24
  %33 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.peel.i, align 4
  %and.peel.i = and i32 %34, -113
  %shl8.peel.i = shl i32 %call.i, 4
  %and11.peel.i = and i32 %shl8.peel.i, 112
  %or.peel.i = or i32 %and.peel.i, %and11.peel.i
  store i32 %or.peel.i, ptr %arrayidx.peel.i, align 4
  %35 = ptrtoint ptr %analogBank6Data15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %analogBank6Data15, align 4
  %call.i62 = tail call i32 @ath9k_hw_reverse_bits(i32 noundef %call14, i32 noundef 3) #5
  %arrayidx.peel.i63 = getelementptr i32, ptr %36, i32 24
  %37 = ptrtoint ptr %arrayidx.peel.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.peel.i63, align 4
  %and.peel.i64 = and i32 %38, -15
  %shl8.peel.i65 = shl i32 %call.i62, 1
  %and11.peel.i66 = and i32 %shl8.peel.i65, 14
  %or.peel.i67 = or i32 %and.peel.i64, %and11.peel.i66
  store i32 %or.peel.i67, ptr %arrayidx.peel.i63, align 4
  br label %if.end26

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 %26(ptr noundef %ah, i32 noundef 9) #5
  %39 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eep_ops, align 4
  %get_eeprom21 = getelementptr inbounds %struct.eeprom_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %get_eeprom21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_eeprom21, align 4
  %call22 = tail call i32 %42(ptr noundef %ah, i32 noundef 10) #5
  %analogBank6Data23 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 64
  %43 = ptrtoint ptr %analogBank6Data23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %analogBank6Data23, align 4
  %call.i68 = tail call i32 @ath9k_hw_reverse_bits(i32 noundef %call19, i32 noundef 3) #5
  %arrayidx.peel.i69 = getelementptr i32, ptr %44, i32 25
  %45 = ptrtoint ptr %arrayidx.peel.i69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.peel.i69, align 4
  %and.peel.i70 = and i32 %46, -29
  %shl8.peel.i71 = shl i32 %call.i68, 2
  %and11.peel.i72 = and i32 %shl8.peel.i71, 28
  %or.peel.i73 = or i32 %and.peel.i70, %and11.peel.i72
  store i32 %or.peel.i73, ptr %arrayidx.peel.i69, align 4
  %47 = ptrtoint ptr %analogBank6Data23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %analogBank6Data23, align 4
  %call.i74 = tail call i32 @ath9k_hw_reverse_bits(i32 noundef %call22, i32 noundef 3) #5
  %arrayidx.peel.i75 = getelementptr i32, ptr %48, i32 24
  %49 = ptrtoint ptr %arrayidx.peel.i75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.peel.i75, align 4
  %and.peel.i76 = and i32 %50, -129
  %shl8.peel.i77 = shl i32 %call.i74, 7
  %and11.peel.i78 = and i32 %shl8.peel.i77, 128
  %or.peel.i79 = or i32 %and.peel.i76, %and11.peel.i78
  store i32 %or.peel.i79, ptr %arrayidx.peel.i75, align 4
  %shr.peel.i = lshr i32 %call.i74, 1
  %arrayidx.i = getelementptr i32, ptr %48, i32 25
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %52, -4
  %and11.i = and i32 %shr.peel.i, 3
  %or.i = or i32 %and.i, %and11.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then9, %for.end.if.end26_crit_edge
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef nonnull @bank0, i32 noundef 1, ptr noundef nonnull %regWrites) #5
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef nonnull @bank1, i32 noundef 1, ptr noundef nonnull %regWrites) #5
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef nonnull @bank2, i32 noundef 1, ptr noundef nonnull %regWrites) #5
  %conv27 = zext i16 %modesIndex to i32
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef nonnull @bank3, i32 noundef %conv27, ptr noundef nonnull %regWrites) #5
  %iniBank6.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 87
  %analogBank6Data.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 64
  %53 = ptrtoint ptr %analogBank6Data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %analogBank6Data.i, align 4
  %enable_write_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %55 = ptrtoint ptr %enable_write_buffer.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %enable_write_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %if.end26.do.end.i_crit_edge, label %if.then.i

if.end26.do.end.i_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  call void %56(ptr noundef %ah) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end26.do.end.i_crit_edge
  %57 = ptrtoint ptr %ia_rows to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ia_rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp38.not.i = icmp eq i32 %58, 0
  br i1 %cmp38.not.i, label %do.end.i.do.body13.i_crit_edge, label %for.body.lr.ph.i

do.end.i.do.body13.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %ia_columns.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 87, i32 2
  %bus_ops.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %r.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc12.i, %for.inc.i.for.body.i_crit_edge ]
  %59 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i, align 4
  %arrayidx.i80 = getelementptr i32, ptr %54, i32 %r.039.i
  %61 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i80, align 4
  %63 = ptrtoint ptr %iniBank6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iniBank6.i, align 4
  %65 = ptrtoint ptr %ia_columns.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ia_columns.i, align 4
  %mul.i = mul i32 %66, %r.039.i
  %arrayidx4.i = getelementptr i32, ptr %64, i32 %mul.i
  %67 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx4.i, align 4
  call void %60(ptr noundef %ah, i32 noundef %62, i32 noundef %68) #5
  %69 = ptrtoint ptr %regWrites to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %regWrites, align 4
  %inc.i = add i32 %70, 1
  store i32 %inc.i, ptr %regWrites, align 4
  %rem.i = and i32 %inc.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp6.i = icmp eq i32 %rem.i, 0
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %71 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus_ops.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp7.not.i = icmp eq i32 %74, 2
  br i1 %cmp7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then8.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc12.i = add nuw i32 %r.039.i, 1
  %76 = ptrtoint ptr %ia_rows to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ia_rows, align 4
  %cmp.i = icmp ult i32 %inc12.i, %77
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body13.i_crit_edge

for.inc.i.do.body13.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body13.i:                                      ; preds = %for.inc.i.do.body13.i_crit_edge, %do.end.i.do.body13.i_crit_edge
  %write_flush.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  %78 = ptrtoint ptr %write_flush.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_flush.i, align 4
  %tobool15.not.i = icmp eq ptr %79, null
  br i1 %tobool15.not.i, label %do.body13.i.ar5008_write_bank6.exit_crit_edge, label %if.then16.i

do.body13.i.ar5008_write_bank6.exit_crit_edge:    ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar5008_write_bank6.exit

if.then16.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %79(ptr noundef %ah) #5
  br label %ar5008_write_bank6.exit

ar5008_write_bank6.exit:                          ; preds = %if.then16.i, %do.body13.i.ar5008_write_bank6.exit_crit_edge
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef nonnull @bank7, i32 noundef 1, ptr noundef nonnull %regWrites) #5
  br label %cleanup

cleanup:                                          ; preds = %ar5008_write_bank6.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regWrites) #5
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_set_channel_regs(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %1)
  %cmp = icmp ugt i32 %1, 191
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %call = tail call i32 %3(ptr noundef %ah, i32 noundef 38916) #5
  %and = and i32 %call, 2048
  %phi.bo = or i32 %and, 960
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enableDacFifo.0 = phi i32 [ %phi.bo, %if.then ], [ 960, %entry.if.end_crit_edge ]
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %channelFlags, align 2
  %conv = zext i16 %5 to i32
  %and1 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %and6 = and i32 %conv, 16
  %6 = or i32 %enableDacFifo.0, %and6
  %spec.select = or i32 %6, 4
  %phymode.0 = select i1 %tobool.not, i32 %enableDacFifo.0, i32 %spec.select
  %enable_write_buffer = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %7 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable_write_buffer, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.end.do.end_crit_edge, label %if.then14

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %8(ptr noundef %ah) #5
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end.do.end_crit_edge
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  tail call void %10(ptr noundef %ah, i32 noundef %phymode.0, i32 noundef 38916) #5
  tail call void @ath9k_hw_set11nmac2040(ptr noundef %ah, ptr noundef %chan) #5
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  tail call void %12(ptr noundef %ah, i32 noundef 1638400, i32 noundef 100) #5
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  tail call void %14(ptr noundef %ah, i32 noundef 983040, i32 noundef 108) #5
  %write_flush = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  %15 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_flush, align 4
  %tobool25.not = icmp eq ptr %16, null
  br i1 %tobool25.not, label %do.end.do.end31_crit_edge, label %if.then26

do.end.do.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %16(ptr noundef %ah) #5
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.end.do.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_init_bb(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39188) #5
  %and = and i32 %call, 16383
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  tail call void %3(ptr noundef %ah, i32 noundef 1, i32 noundef 38940) #5
  tail call void @ath9k_hw_synth_delay(ptr noundef %ah, ptr noundef %chan, i32 noundef %and) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar5008_hw_process_ini(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  %regWrites = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regWrites) #5
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
  %freqIndex.0 = select i1 %tobool.not, i32 2, i32 1
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %3 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write, align 4
  tail call void %4(ptr noundef %ah, i32 noundef 7, i32 noundef 38912) #5
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  tail call void %6(ptr noundef %ah, i32 noundef 1, i32 noundef 38960) #5
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %7 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eep_ops, align 4
  %set_addac = getelementptr inbounds %struct.eeprom_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %set_addac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_addac, align 4
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %entry.if.end19_crit_edge, label %if.then16

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %10(ptr noundef %ah, ptr noundef %chan) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %entry.if.end19_crit_edge
  %iniAddac = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 88
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniAddac, i32 noundef 1, ptr noundef nonnull %regWrites) #5
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  call void %12(ptr noundef %ah, i32 noundef 0, i32 noundef 38960) #5
  %enable_write_buffer = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %13 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enable_write_buffer, align 4
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %if.end19.do.end_crit_edge, label %if.then24

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void %14(ptr noundef %ah) #5
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.end19.do.end_crit_edge
  %ia_rows = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 84, i32 1
  %15 = ptrtoint ptr %ia_rows to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ia_rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp352.not = icmp eq i32 %16, 0
  br i1 %cmp352.not, label %do.end.do.body74_crit_edge, label %for.body.lr.ph

do.end.do.body74_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

for.body.lr.ph:                                   ; preds = %do.end
  %iniModes = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 84
  %ia_columns = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 84, i32 2
  %need_an_top2_fixup = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 16
  %analog_shiftreg = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 4
  %bus_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body

for.body:                                         ; preds = %do.end72.for.body_crit_edge, %for.body.lr.ph
  %i.0353 = phi i32 [ 0, %for.body.lr.ph ], [ %inc73, %do.end72.for.body_crit_edge ]
  %17 = ptrtoint ptr %iniModes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iniModes, align 4
  %19 = ptrtoint ptr %ia_columns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ia_columns, align 4
  %mul = mul i32 %20, %i.0353
  %arrayidx = getelementptr i32, ptr %18, i32 %mul
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add36 = add i32 %mul, %modesIndex.0
  %arrayidx37 = getelementptr i32, ptr %18, i32 %add36
  %23 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30868, i32 %22)
  %cmp38 = icmp eq i32 %22, 30868
  br i1 %cmp38, label %land.lhs.true, label %for.body.if.end44_crit_edge

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %need_an_top2_fixup to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %need_an_top2_fixup, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool40.not = icmp eq i8 %26, 0
  %and43 = and i32 %24, -4194305
  %spec.select = select i1 %tobool40.not, i32 %24, i32 %and43
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true, %for.body.if.end44_crit_edge
  %val.0 = phi i32 [ %24, %for.body.if.end44_crit_edge ], [ %spec.select, %land.lhs.true ]
  %27 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write, align 4
  call void %28(ptr noundef %ah, i32 noundef %val.0, i32 noundef %22) #5
  %29 = add i32 %22, -30720
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %29)
  %30 = icmp ult i32 %29, 160
  br i1 %30, label %land.lhs.true52, label %if.end44.do.body60_crit_edge

if.end44.do.body60_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

land.lhs.true52:                                  ; preds = %if.end44
  %31 = ptrtoint ptr %analog_shiftreg to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %analog_shiftreg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool54.not = icmp eq i8 %32, 0
  br i1 %tobool54.not, label %land.lhs.true52.do.body60_crit_edge, label %land.lhs.true55

land.lhs.true52.do.body60_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %33 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus_ops, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp56.not = icmp eq i32 %36, 2
  br i1 %cmp56.not, label %land.lhs.true55.do.body60_crit_edge, label %if.then58

land.lhs.true55.do.body60_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

if.then58:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 21474800) #5
  br label %do.body60

do.body60:                                        ; preds = %if.then58, %land.lhs.true55.do.body60_crit_edge, %land.lhs.true52.do.body60_crit_edge, %if.end44.do.body60_crit_edge
  %38 = ptrtoint ptr %regWrites to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regWrites, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %regWrites, align 4
  %40 = and i32 %inc, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp61 = icmp eq i32 %40, 0
  br i1 %cmp61, label %land.lhs.true63, label %do.body60.do.end72_crit_edge

do.body60.do.end72_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72

land.lhs.true63:                                  ; preds = %do.body60
  %41 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus_ops, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp67.not = icmp eq i32 %44, 2
  br i1 %cmp67.not, label %land.lhs.true63.do.end72_crit_edge, label %if.then69

land.lhs.true63.do.end72_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72

if.then69:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748) #5
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %land.lhs.true63.do.end72_crit_edge, %do.body60.do.end72_crit_edge
  %inc73 = add nuw i32 %i.0353, 1
  %46 = ptrtoint ptr %ia_rows to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ia_rows, align 4
  %cmp = icmp ult i32 %inc73, %47
  br i1 %cmp, label %do.end72.for.body_crit_edge, label %do.end72.do.body74_crit_edge

do.end72.do.body74_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

do.end72.for.body_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body74:                                        ; preds = %do.end72.do.body74_crit_edge, %do.end.do.body74_crit_edge
  %write_flush = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  %48 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_flush, align 4
  %tobool76.not = icmp eq ptr %49, null
  br i1 %tobool76.not, label %do.body74.do.end82_crit_edge, label %if.then77

do.body74.do.end82_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

if.then77:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  call void %49(ptr noundef %ah) #5
  br label %do.end82

do.end82:                                         ; preds = %if.then77, %do.body74.do.end82_crit_edge
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %50 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %51)
  %cmp83 = icmp eq i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %51)
  %cmp87 = icmp ugt i32 %51, 383
  %or.cond322 = or i1 %cmp83, %cmp87
  br i1 %or.cond322, label %if.then89, label %do.end82.if.end90_crit_edge

do.end82.if.end90_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then89:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  %iniModesRxGain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 93
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniModesRxGain, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #5
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %do.end82.if.end90_crit_edge
  %52 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %53)
  %cmp93 = icmp eq i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %53)
  %cmp98 = icmp ugt i32 %53, 191
  %or.cond323 = or i1 %cmp93, %cmp98
  br i1 %or.cond323, label %if.end106, label %if.end90.do.body123_crit_edge

if.end90.do.body123_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body123

if.end106:                                        ; preds = %if.end90
  %iniModesTxGain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 95
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniModesTxGain, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #5
  %54 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %.pr)
  %cmp109 = icmp eq i32 %.pr, 320
  br i1 %cmp109, label %land.lhs.true111, label %if.end106.do.body123_crit_edge

if.end106.do.body123_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body123

land.lhs.true111:                                 ; preds = %if.end106
  %macRev = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %55 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %macRev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp114 = icmp eq i16 %56, 0
  br i1 %cmp114, label %if.then116, label %land.lhs.true111.do.body123_crit_edge

land.lhs.true111.do.body123_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body123

if.then116:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #7
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %57 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmw, align 4
  %call118 = call i32 %58(ptr noundef %ah, i32 noundef 39184, i32 noundef 1, i32 noundef 0) #5
  %59 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmw, align 4
  %call121 = call i32 %60(ptr noundef %ah, i32 noundef 38952, i32 noundef 167772160, i32 noundef -16777216) #5
  br label %do.body123

do.body123:                                       ; preds = %if.then116, %land.lhs.true111.do.body123_crit_edge, %if.end106.do.body123_crit_edge, %if.end90.do.body123_crit_edge
  %61 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %enable_write_buffer, align 4
  %tobool126.not = icmp eq ptr %62, null
  br i1 %tobool126.not, label %do.body123.do.end132_crit_edge, label %if.then127

do.body123.do.end132_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end132

if.then127:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  call void %62(ptr noundef %ah) #5
  br label %do.end132

do.end132:                                        ; preds = %if.then127, %do.body123.do.end132_crit_edge
  %ia_rows134 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 85, i32 1
  %63 = ptrtoint ptr %ia_rows134 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ia_rows134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp135354.not = icmp eq i32 %64, 0
  br i1 %cmp135354.not, label %do.end132.do.body191_crit_edge, label %for.body137.lr.ph

do.end132.do.body191_crit_edge:                   ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body191

for.body137.lr.ph:                                ; preds = %do.end132
  %iniCommon = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 85
  %ia_columns142 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 85, i32 2
  %analog_shiftreg163 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 4
  %bus_ops167 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  br label %for.body137

for.body137:                                      ; preds = %do.end187.for.body137_crit_edge, %for.body137.lr.ph
  %i.1355 = phi i32 [ 0, %for.body137.lr.ph ], [ %inc189, %do.end187.for.body137_crit_edge ]
  %65 = ptrtoint ptr %iniCommon to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iniCommon, align 4
  %67 = ptrtoint ptr %ia_columns142 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ia_columns142, align 4
  %mul143 = mul i32 %68, %i.1355
  %arrayidx145 = getelementptr i32, ptr %66, i32 %mul143
  %69 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx145, align 4
  %add152 = add i32 %mul143, 1
  %arrayidx153 = getelementptr i32, ptr %66, i32 %add152
  %71 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx153, align 4
  %73 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write, align 4
  call void %74(ptr noundef %ah, i32 noundef %72, i32 noundef %70) #5
  %75 = add i32 %70, -30720
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %75)
  %76 = icmp ult i32 %75, 160
  br i1 %76, label %land.lhs.true161, label %for.body137.do.body173_crit_edge

for.body137.do.body173_crit_edge:                 ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body173

land.lhs.true161:                                 ; preds = %for.body137
  %77 = ptrtoint ptr %analog_shiftreg163 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %analog_shiftreg163, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool165.not = icmp eq i8 %78, 0
  br i1 %tobool165.not, label %land.lhs.true161.do.body173_crit_edge, label %land.lhs.true166

land.lhs.true161.do.body173_crit_edge:            ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body173

land.lhs.true166:                                 ; preds = %land.lhs.true161
  %79 = ptrtoint ptr %bus_ops167 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus_ops167, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp169.not = icmp eq i32 %82, 2
  br i1 %cmp169.not, label %land.lhs.true166.do.body173_crit_edge, label %if.then171

land.lhs.true166.do.body173_crit_edge:            ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body173

if.then171:                                       ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 21474800) #5
  br label %do.body173

do.body173:                                       ; preds = %if.then171, %land.lhs.true166.do.body173_crit_edge, %land.lhs.true161.do.body173_crit_edge, %for.body137.do.body173_crit_edge
  %84 = ptrtoint ptr %regWrites to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %regWrites, align 4
  %inc174 = add i32 %85, 1
  store i32 %inc174, ptr %regWrites, align 4
  %86 = and i32 %inc174, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp176 = icmp eq i32 %86, 0
  br i1 %cmp176, label %land.lhs.true178, label %do.body173.do.end187_crit_edge

do.body173.do.end187_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end187

land.lhs.true178:                                 ; preds = %do.body173
  %87 = ptrtoint ptr %bus_ops167 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus_ops167, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp182.not = icmp eq i32 %90, 2
  br i1 %cmp182.not, label %land.lhs.true178.do.end187_crit_edge, label %if.then184

land.lhs.true178.do.end187_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end187

if.then184:                                       ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748) #5
  br label %do.end187

do.end187:                                        ; preds = %if.then184, %land.lhs.true178.do.end187_crit_edge, %do.body173.do.end187_crit_edge
  %inc189 = add nuw i32 %i.1355, 1
  %92 = ptrtoint ptr %ia_rows134 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ia_rows134, align 4
  %cmp135 = icmp ult i32 %inc189, %93
  br i1 %cmp135, label %do.end187.for.body137_crit_edge, label %do.end187.do.body191_crit_edge

do.end187.do.body191_crit_edge:                   ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body191

do.end187.for.body137_crit_edge:                  ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body137

do.body191:                                       ; preds = %do.end187.do.body191_crit_edge, %do.end132.do.body191_crit_edge
  %94 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_flush, align 4
  %tobool194.not = icmp eq ptr %95, null
  br i1 %tobool194.not, label %do.body191.do.end200_crit_edge, label %if.then195

do.body191.do.end200_crit_edge:                   ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end200

if.then195:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #7
  call void %95(ptr noundef %ah) #5
  br label %do.end200

do.end200:                                        ; preds = %if.then195, %do.body191.do.end200_crit_edge
  %iniBB_RfGain = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 86
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniBB_RfGain, i32 noundef %freqIndex.0, ptr noundef nonnull %regWrites) #5
  %96 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %channelFlags, align 2
  %98 = and i16 %97, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool204.not = icmp eq i16 %98, 0
  br i1 %tobool204.not, label %do.end200.if.end209_crit_edge, label %land.lhs.true205

do.end200.if.end209_crit_edge:                    ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end209

land.lhs.true205:                                 ; preds = %do.end200
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %99 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %caps, align 4
  %and206 = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %land.lhs.true205.if.end209_crit_edge, label %if.then208

land.lhs.true205.if.end209_crit_edge:             ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end209

if.then208:                                       ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #7
  %iniModesFastClock = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 91
  call void @ath9k_hw_write_array(ptr noundef %ah, ptr noundef %iniModesFastClock, i32 noundef %modesIndex.0, ptr noundef nonnull %regWrites) #5
  br label %if.end209

if.end209:                                        ; preds = %if.then208, %land.lhs.true205.if.end209_crit_edge, %do.end200.if.end209_crit_edge
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %101 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmw.i, align 4
  %call.i = call i32 %102(ptr noundef %ah, i32 noundef 32840, i32 noundef 33554464, i32 noundef 0) #5
  %103 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %104)
  %cmp.i = icmp ugt i32 %104, 127
  br i1 %cmp.i, label %if.end15.i, label %if.end209.if.end20.i_crit_edge

if.end209.if.end20.i_crit_edge:                   ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.end15.i:                                       ; preds = %if.end209
  %105 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ah, align 4
  %call2.i = call i32 %106(ptr noundef %ah, i32 noundef 33604) #5
  %107 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %108)
  %cmp5.i = icmp eq i32 %108, 320
  %spec.select.v.i = select i1 %cmp5.i, i32 -65, i32 -1048641
  %spec.select.i = and i32 %spec.select.v.i, %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %108)
  %cmp10.i = icmp ugt i32 %108, 383
  %and12.i = and i32 %spec.select.i, -33554625
  %val.1.i = select i1 %cmp10.i, i32 %and12.i, i32 %spec.select.i
  %or.i = or i32 %val.1.i, 128
  %109 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write, align 4
  call void %110(ptr noundef %ah, i32 noundef %or.i, i32 noundef 33604) #5
  %111 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr.i = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %.pr.i)
  %cmp18.i = icmp ugt i32 %.pr.i, 127
  br i1 %cmp18.i, label %if.end15.i.ar5008_hw_override_ini.exit_crit_edge, label %if.end15.i.if.end20.i_crit_edge

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.end15.i.ar5008_hw_override_ini.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar5008_hw_override_ini.exit

if.end20.i:                                       ; preds = %if.end15.i.if.end20.i_crit_edge, %if.end209.if.end20.i_crit_edge
  %112 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write, align 4
  call void %113(ptr noundef %ah, i32 noundef 17, i32 noundef 41516) #5
  %114 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %macVersion, align 4
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values)
  switch i32 %115, label %if.end20.i.ar5008_hw_override_ini.exit_crit_edge [
    i32 20, label %if.end20.i.if.then29.i_crit_edge
    i32 64, label %if.end20.i.if.then29.i_crit_edge356
  ]

if.end20.i.if.then29.i_crit_edge356:              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i

if.end20.i.if.then29.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29.i

if.end20.i.ar5008_hw_override_ini.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar5008_hw_override_ini.exit

if.then29.i:                                      ; preds = %if.end20.i.if.then29.i_crit_edge, %if.end20.i.if.then29.i_crit_edge356
  %117 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ah, align 4
  %call32.i = call i32 %118(ptr noundef %ah, i32 noundef 39404) #5
  %and33.i = and i32 %call32.i, -67043329
  %119 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write, align 4
  call void %120(ptr noundef %ah, i32 noundef %and33.i, i32 noundef 39404) #5
  %121 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pr350 = load i32, ptr %macVersion, align 4
  br label %ar5008_hw_override_ini.exit

ar5008_hw_override_ini.exit:                      ; preds = %if.then29.i, %if.end20.i.ar5008_hw_override_ini.exit_crit_edge, %if.end15.i.ar5008_hw_override_ini.exit_crit_edge
  %122 = phi i32 [ %.pr.i, %if.end15.i.ar5008_hw_override_ini.exit_crit_edge ], [ %115, %if.end20.i.ar5008_hw_override_ini.exit_crit_edge ], [ %.pr350, %if.then29.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %122)
  %cmp.i328 = icmp ugt i32 %122, 191
  br i1 %cmp.i328, label %if.then.i, label %ar5008_hw_override_ini.exit.if.end.i_crit_edge

ar5008_hw_override_ini.exit.if.end.i_crit_edge:   ; preds = %ar5008_hw_override_ini.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %ar5008_hw_override_ini.exit
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ah, align 4
  %call.i329 = call i32 %124(ptr noundef %ah, i32 noundef 38916) #5
  %and.i = and i32 %call.i329, 2048
  %phi.bo.i = or i32 %and.i, 960
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %ar5008_hw_override_ini.exit.if.end.i_crit_edge
  %enableDacFifo.0.i = phi i32 [ %phi.bo.i, %if.then.i ], [ 960, %ar5008_hw_override_ini.exit.if.end.i_crit_edge ]
  %125 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %channelFlags, align 2
  %conv.i = zext i16 %126 to i32
  %and1.i = and i32 %conv.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %and6.i = and i32 %conv.i, 16
  %127 = or i32 %enableDacFifo.0.i, %and6.i
  %spec.select.i330 = or i32 %127, 4
  %phymode.0.i = select i1 %tobool.not.i, i32 %enableDacFifo.0.i, i32 %spec.select.i330
  %128 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %enable_write_buffer, align 4
  %tobool13.not.i = icmp eq ptr %129, null
  br i1 %tobool13.not.i, label %if.end.i.do.end.i_crit_edge, label %if.then14.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %129(ptr noundef %ah) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %if.end.i.do.end.i_crit_edge
  %130 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write, align 4
  call void %131(ptr noundef %ah, i32 noundef %phymode.0.i, i32 noundef 38916) #5
  call void @ath9k_hw_set11nmac2040(ptr noundef %ah, ptr noundef %chan) #5
  %132 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write, align 4
  call void %133(ptr noundef %ah, i32 noundef 1638400, i32 noundef 100) #5
  %134 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write, align 4
  call void %135(ptr noundef %ah, i32 noundef 983040, i32 noundef 108) #5
  %136 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write_flush, align 4
  %tobool25.not.i = icmp eq ptr %137, null
  br i1 %tobool25.not.i, label %do.end.i.ar5008_hw_set_channel_regs.exit_crit_edge, label %if.then26.i

do.end.i.ar5008_hw_set_channel_regs.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar5008_hw_set_channel_regs.exit

if.then26.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %137(ptr noundef %ah) #5
  br label %ar5008_hw_set_channel_regs.exit

ar5008_hw_set_channel_regs.exit:                  ; preds = %if.then26.i, %do.end.i.ar5008_hw_set_channel_regs.exit_crit_edge
  %rxchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %138 = ptrtoint ptr %rxchainmask.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %rxchainmask.i, align 1
  %conv.i332 = zext i8 %139 to i32
  %txchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %140 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %txchainmask.i, align 4
  %conv1.i = zext i8 %141 to i32
  %142 = zext i8 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %139, label %do.body17.i [
    i8 5, label %sw.bb.i
    i8 3, label %ar5008_hw_set_channel_regs.exit.sw.bb2.i_crit_edge
    i8 1, label %ar5008_hw_set_channel_regs.exit.do.body.i_crit_edge
    i8 2, label %ar5008_hw_set_channel_regs.exit.do.body.i_crit_edge357
    i8 7, label %ar5008_hw_set_channel_regs.exit.do.body.i_crit_edge358
  ]

ar5008_hw_set_channel_regs.exit.do.body.i_crit_edge358: ; preds = %ar5008_hw_set_channel_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

ar5008_hw_set_channel_regs.exit.do.body.i_crit_edge357: ; preds = %ar5008_hw_set_channel_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

ar5008_hw_set_channel_regs.exit.do.body.i_crit_edge: ; preds = %ar5008_hw_set_channel_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

ar5008_hw_set_channel_regs.exit.sw.bb2.i_crit_edge: ; preds = %ar5008_hw_set_channel_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %ar5008_hw_set_channel_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %143 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmw.i, align 4
  %call.i334 = call i32 %144(ptr noundef %ah, i32 noundef 41576, i32 noundef 64, i32 noundef 0) #5
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %ar5008_hw_set_channel_regs.exit.sw.bb2.i_crit_edge
  %145 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp.i336 = icmp eq i32 %146, 0
  br i1 %cmp.i336, label %if.then.i338, label %sw.bb2.i.do.body.i_crit_edge

sw.bb2.i.do.body.i_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then.i338:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write, align 4
  call void %148(ptr noundef %ah, i32 noundef 7, i32 noundef 39332) #5
  %149 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write, align 4
  call void %150(ptr noundef %ah, i32 noundef 7, i32 noundef 41884) #5
  br label %sw.epilog.i

do.body.i:                                        ; preds = %sw.bb2.i.do.body.i_crit_edge, %ar5008_hw_set_channel_regs.exit.do.body.i_crit_edge, %ar5008_hw_set_channel_regs.exit.do.body.i_crit_edge357, %ar5008_hw_set_channel_regs.exit.do.body.i_crit_edge358
  %151 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %enable_write_buffer, align 4
  %tobool.not.i340 = icmp eq ptr %152, null
  br i1 %tobool.not.i340, label %do.body.i.do.end.i341_crit_edge, label %if.then9.i

do.body.i.do.end.i341_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i341

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %152(ptr noundef %ah) #5
  br label %do.end.i341

do.end.i341:                                      ; preds = %if.then9.i, %do.body.i.do.end.i341_crit_edge
  %153 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write, align 4
  call void %154(ptr noundef %ah, i32 noundef %conv.i332, i32 noundef 39332) #5
  %155 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write, align 4
  call void %156(ptr noundef %ah, i32 noundef %conv.i332, i32 noundef 41884) #5
  br label %sw.epilog.i

do.body17.i:                                      ; preds = %ar5008_hw_set_channel_regs.exit
  %157 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %enable_write_buffer, align 4
  %tobool20.not.i = icmp eq ptr %158, null
  br i1 %tobool20.not.i, label %do.body17.i.sw.epilog.i_crit_edge, label %if.then21.i

do.body17.i.sw.epilog.i_crit_edge:                ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.then21.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %158(ptr noundef %ah) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then21.i, %do.body17.i.sw.epilog.i_crit_edge, %do.end.i341, %if.then.i338
  %159 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write, align 4
  call void %160(ptr noundef %ah, i32 noundef %conv1.i, i32 noundef 33580) #5
  %161 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write_flush, align 4
  %tobool31.not.i = icmp eq ptr %162, null
  br i1 %tobool31.not.i, label %sw.epilog.i.do.end37.i_crit_edge, label %if.then32.i

sw.epilog.i.do.end37.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37.i

if.then32.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %162(ptr noundef %ah) #5
  br label %do.end37.i

do.end37.i:                                       ; preds = %if.then32.i, %sw.epilog.i.do.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %141)
  %cmp38.i = icmp eq i8 %141, 5
  br i1 %cmp38.i, label %if.then40.i, label %do.end37.i.if.end44.i_crit_edge

do.end37.i.if.end44.i_crit_edge:                  ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.then40.i:                                      ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  %163 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rmw.i, align 4
  %call43.i = call i32 %164(ptr noundef %ah, i32 noundef 41576, i32 noundef 64, i32 noundef 0) #5
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %do.end37.i.if.end44.i_crit_edge
  %165 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %166)
  %cmp47.i = icmp eq i32 %166, 20
  br i1 %cmp47.i, label %if.then49.i, label %if.end44.i.ar5008_hw_init_chain_masks.exit_crit_edge

if.end44.i.ar5008_hw_init_chain_masks.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar5008_hw_init_chain_masks.exit

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write, align 4
  %169 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ah, align 4
  %call53.i = call i32 %170(ptr noundef %ah, i32 noundef 41576) #5
  %or.i343 = or i32 %call53.i, 1
  call void %168(ptr noundef %ah, i32 noundef %or.i343, i32 noundef 41576) #5
  br label %ar5008_hw_init_chain_masks.exit

ar5008_hw_init_chain_masks.exit:                  ; preds = %if.then49.i, %if.end44.i.ar5008_hw_init_chain_masks.exit_crit_edge
  %olc_init.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 13
  %171 = ptrtoint ptr %olc_init.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %olc_init.i, align 4
  %tobool.not.i344 = icmp eq ptr %172, null
  br i1 %tobool.not.i344, label %ar5008_hw_init_chain_masks.exit.ath9k_olc_init.exit_crit_edge, label %if.end.i345

ar5008_hw_init_chain_masks.exit.ath9k_olc_init.exit_crit_edge: ; preds = %ar5008_hw_init_chain_masks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_olc_init.exit

if.end.i345:                                      ; preds = %ar5008_hw_init_chain_masks.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void %172(ptr noundef %ah) #5
  br label %ath9k_olc_init.exit

ath9k_olc_init.exit:                              ; preds = %if.end.i345, %ar5008_hw_init_chain_masks.exit.ath9k_olc_init.exit_crit_edge
  call void @ath9k_hw_apply_txpower(ptr noundef %ah, ptr noundef %chan, i1 noundef zeroext false) #5
  %set_rf_regs.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 9
  %173 = ptrtoint ptr %set_rf_regs.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %set_rf_regs.i, align 4
  %tobool.not.i346 = icmp eq ptr %174, null
  br i1 %tobool.not.i346, label %ath9k_olc_init.exit.cleanup_crit_edge, label %ath9k_hw_set_rf_regs.exit

ath9k_olc_init.exit.cleanup_crit_edge:            ; preds = %ath9k_olc_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ath9k_hw_set_rf_regs.exit:                        ; preds = %ath9k_olc_init.exit
  %conv210 = trunc i32 %freqIndex.0 to i16
  %call3.i = call zeroext i1 %174(ptr noundef %ah, ptr noundef %chan, i16 noundef zeroext %conv210) #5
  br i1 %call3.i, label %ath9k_hw_set_rf_regs.exit.cleanup_crit_edge, label %if.then212

ath9k_hw_set_rf_regs.exit.cleanup_crit_edge:      ; preds = %ath9k_hw_set_rf_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then212:                                       ; preds = %ath9k_hw_set_rf_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then212, %ath9k_hw_set_rf_regs.exit.cleanup_crit_edge, %ath9k_olc_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then212 ], [ 0, %ath9k_hw_set_rf_regs.exit.cleanup_crit_edge ], [ 0, %ath9k_olc_init.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regWrites) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_set_rfmode(ptr noundef %ah, ptr noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %chan, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %3 = shl nuw nsw i16 %2, 2
  %4 = xor i16 %3, 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %6)
  %cmp4 = icmp ugt i32 %6, 127
  %7 = shl i16 %1, 1
  %8 = and i16 %7, 2
  %9 = or i16 %4, %8
  %or1233 = xor i16 %9, 2
  %rfMode.1.v = select i1 %cmp4, i16 %4, i16 %or1233
  %rfMode.1 = zext i16 %rfMode.1.v to i32
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %land.lhs.true

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps, align 4
  %and18 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or21 = or i32 %rfMode.1, 260
  %spec.select = select i1 %tobool19.not, i32 %rfMode.1, i32 %or21
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.end.if.end22_crit_edge
  %rfMode.2 = phi i32 [ %rfMode.1, %if.end.if.end22_crit_edge ], [ %spec.select, %land.lhs.true ]
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  tail call void %13(ptr noundef %ah, i32 noundef %rfMode.2, i32 noundef 41472) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_mark_phy_inactive(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef 0, i32 noundef 38940) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_set_delta_slope(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  %ds_coef_exp = alloca i32, align 4
  %ds_coef_man = alloca i32, align 4
  %centers = alloca %struct.chan_centers, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ds_coef_exp) #5
  %0 = ptrtoint ptr %ds_coef_exp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ds_coef_exp, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ds_coef_man) #5
  %1 = ptrtoint ptr %ds_coef_man to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ds_coef_man, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #5
  %2 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %centers, align 2, !annotation !65
  %3 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !65
  %5 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !65
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
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #5
  %9 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %centers, align 2
  %conv8 = zext i16 %10 to i32
  %div = udiv i32 %clockMhzScaled.0, %conv8
  call void @ath9k_hw_get_delta_slope_vals(ptr noundef %ah, i32 noundef %div, ptr noundef nonnull %ds_coef_man, ptr noundef nonnull %ds_coef_exp) #5
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %11 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmw, align 4
  %13 = ptrtoint ptr %ds_coef_man to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ds_coef_man, align 4
  %shl = shl i32 %14, 17
  %call = call i32 %12(ptr noundef %ah, i32 noundef 38932, i32 noundef %shl, i32 noundef -131072) #5
  %15 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmw, align 4
  %17 = ptrtoint ptr %ds_coef_exp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ds_coef_exp, align 4
  %shl12 = shl i32 %18, 13
  %and13 = and i32 %shl12, 122880
  %call14 = call i32 %16(ptr noundef %ah, i32 noundef 38932, i32 noundef %and13, i32 noundef 122880) #5
  %mul = mul i32 %div, 9
  %div15 = udiv i32 %mul, 10
  call void @ath9k_hw_get_delta_slope_vals(ptr noundef %ah, i32 noundef %div15, ptr noundef nonnull %ds_coef_man, ptr noundef nonnull %ds_coef_exp) #5
  %19 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmw, align 4
  %21 = ptrtoint ptr %ds_coef_man to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ds_coef_man, align 4
  %shl18 = shl i32 %22, 4
  %and19 = and i32 %shl18, 524272
  %call20 = call i32 %20(ptr noundef %ah, i32 noundef 39376, i32 noundef %and19, i32 noundef 524272) #5
  %23 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmw, align 4
  %25 = ptrtoint ptr %ds_coef_exp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ds_coef_exp, align 4
  %and24 = and i32 %26, 15
  %call25 = call i32 %24(ptr noundef %ah, i32 noundef 39376, i32 noundef %and24, i32 noundef 15) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ds_coef_man) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ds_coef_exp) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar5008_hw_rfbus_req(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %ah, i32 noundef 1, i32 noundef 39292) #5
  %call = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef 39968, i32 noundef 1, i32 noundef 1, i32 noundef 100000) #5
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_rfbus_done(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39188) #5
  %and = and i32 %call, 16383
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %2 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curchan, align 4
  tail call void @ath9k_hw_synth_delay(ptr noundef %ah, ptr noundef %3, i32 noundef %and) #5
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  tail call void %5(ptr noundef %ah, i32 noundef 0, i32 noundef 39292) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_restore_chainmask(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %0 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rxchainmask, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 5, label %entry.if.then_crit_edge
    i8 3, label %entry.if.then_crit_edge13
  ]

entry.if.then_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge13
  %conv = zext i8 %1 to i32
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %3 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write, align 4
  tail call void %4(ptr noundef %ah, i32 noundef %conv, i32 noundef 39332) #5
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  tail call void %6(ptr noundef %ah, i32 noundef %conv, i32 noundef 41884) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_do_getnf(ptr noundef %ah, ptr nocapture noundef writeonly %nfarray) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39012) #5
  %2 = shl i32 %call, 4
  %conv = ashr i32 %2, 23
  %conv3 = trunc i32 %conv to i16
  %3 = ptrtoint ptr %nfarray to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv3, ptr %nfarray, align 2
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %call6 = tail call i32 %5(ptr noundef %ah, i32 noundef 43108) #5
  %6 = shl i32 %call6, 4
  %conv9 = ashr i32 %6, 23
  %conv12 = trunc i32 %conv9 to i16
  %arrayidx13 = getelementptr i16, ptr %nfarray, i32 1
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv12, ptr %arrayidx13, align 2
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call16 = tail call i32 %9(ptr noundef %ah, i32 noundef 47204) #5
  %10 = shl i32 %call16, 4
  %conv19 = ashr i32 %10, 23
  %conv22 = trunc i32 %conv19 to i16
  %arrayidx23 = getelementptr i16, ptr %nfarray, i32 2
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv22, ptr %arrayidx23, align 2
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %12 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %curchan, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %channelFlags, align 2
  %16 = and i16 %15, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ah, align 4
  %call28 = tail call i32 %18(ptr noundef %ah, i32 noundef 39356) #5
  %shr30 = ashr i32 %call28, 23
  %conv34 = trunc i32 %shr30 to i16
  %arrayidx35 = getelementptr i16, ptr %nfarray, i32 3
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv34, ptr %arrayidx35, align 2
  %20 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ah, align 4
  %call38 = tail call i32 %21(ptr noundef %ah, i32 noundef 43452) #5
  %shr40 = ashr i32 %call38, 23
  %conv44 = trunc i32 %shr40 to i16
  %arrayidx45 = getelementptr i16, ptr %nfarray, i32 4
  %22 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv44, ptr %arrayidx45, align 2
  %23 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ah, align 4
  %call48 = tail call i32 %24(ptr noundef %ah, i32 noundef 47548) #5
  %shr50 = ashr i32 %call48, 23
  %conv54 = trunc i32 %shr50 to i16
  %arrayidx55 = getelementptr i16, ptr %nfarray, i32 5
  %25 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv54, ptr %arrayidx55, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_set_radar_params(ptr noundef %ah, ptr noundef readonly %conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %conf, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39252, i32 noundef 0, i32 noundef 1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %fir_power = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 7
  %2 = ptrtoint ptr %fir_power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fir_power, align 4
  %shl = shl i32 %3, 24
  %radar_rssi = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 5
  %4 = ptrtoint ptr %radar_rssi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %radar_rssi, align 4
  %shl2 = shl i32 %5, 18
  %and3 = and i32 %shl2, 16515072
  %or1 = or i32 %and3, %shl
  %pulse_height = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 2
  %6 = ptrtoint ptr %pulse_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pulse_height, align 4
  %shl5 = shl i32 %7, 12
  %and6 = and i32 %shl5, 258048
  %or4 = or i32 %or1, %and6
  %pulse_rssi = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 3
  %8 = ptrtoint ptr %pulse_rssi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pulse_rssi, align 4
  %shl8 = shl i32 %9, 6
  %and9 = and i32 %shl8, 4032
  %or7 = or i32 %or4, %and9
  %10 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %conf, align 4
  %shl11 = shl i32 %11, 1
  %and12 = and i32 %shl11, 62
  %or10 = or i32 %or7, %and12
  %or13 = or i32 %or10, -2147483647
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %call15 = tail call i32 %13(ptr noundef %ah, i32 noundef 39256) #5
  %and16 = and i32 %call15, -4186112
  %pulse_maxlen = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 4
  %14 = ptrtoint ptr %pulse_maxlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pulse_maxlen, align 4
  %and20 = and i32 %15, 255
  %pulse_inband_step = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 1
  %16 = ptrtoint ptr %pulse_inband_step to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pulse_inband_step, align 4
  %shl22 = shl i32 %17, 8
  %and23 = and i32 %shl22, 7936
  %radar_inband = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 6
  %18 = ptrtoint ptr %radar_inband to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %radar_inband, align 4
  %shl25 = shl i32 %19, 16
  %and26 = and i32 %shl25, 4128768
  %or18 = or i32 %and16, %and20
  %or21 = or i32 %or18, %and23
  %or24 = or i32 %or21, %and26
  %or27 = or i32 %or24, 49152
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  tail call void %21(ptr noundef %ah, i32 noundef %or13, i32 noundef 39252) #5
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  tail call void %23(ptr noundef %ah, i32 noundef %or27, i32 noundef 39256) #5
  %ext_channel = getelementptr inbounds %struct.ath_hw_radar_conf, ptr %conf, i32 0, i32 8
  %24 = ptrtoint ptr %ext_channel to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ext_channel, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool31.not = icmp eq i8 %25, 0
  %rmw37 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %26 = ptrtoint ptr %rmw37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw37, align 4
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 %27(ptr noundef %ah, i32 noundef 39232, i32 noundef 16384, i32 noundef 0) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call i32 %27(ptr noundef %ah, i32 noundef 39232, i32 noundef 0, i32 noundef 16384) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then32, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar5008_hw_ani_control_new(ptr noundef %ah, i32 noundef %cmd, i32 noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and, label %do.body303 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb154
    i32 4, label %sw.bb217
    i32 8, label %do.end290
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %param)
  %tobool = icmp ne i32 %param, 0
  br i1 %tobool, label %cond.true69, label %sw.bb.cond.end74_crit_edge

sw.bb.cond.end74_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end74

cond.true69:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %iniDef = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11
  %5 = ptrtoint ptr %iniDef to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %iniDef, align 4
  %conv = zext i16 %6 to i32
  %phi.bo = shl nuw nsw i32 %conv, 14
  %phi.bo463 = and i32 %phi.bo, 2080768
  %m2ThreshLow7 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 1
  %7 = ptrtoint ptr %m2ThreshLow7 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %m2ThreshLow7, align 2
  %conv8 = zext i16 %8 to i32
  %phi.bo464 = shl i32 %conv8, 21
  %phi.bo465 = and i32 %phi.bo464, 266338304
  %m1Thresh15 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 2
  %9 = ptrtoint ptr %m1Thresh15 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %m1Thresh15, align 4
  %conv16 = zext i16 %10 to i32
  %phi.bo466 = shl i32 %conv16, 17
  %phi.bo467 = and i32 %phi.bo466, 16646144
  %m2Thresh23 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 3
  %11 = ptrtoint ptr %m2Thresh23 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %m2Thresh23, align 2
  %conv24 = zext i16 %12 to i32
  %phi.bo468 = shl i32 %conv24, 24
  %phi.bo469 = and i32 %phi.bo468, 2130706432
  %m2CountThr31 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 4
  %13 = ptrtoint ptr %m2CountThr31 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %m2CountThr31, align 4
  %15 = and i16 %14, 31
  %phi.bo470 = zext i16 %15 to i32
  %m2CountThrLow39 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 5
  %16 = ptrtoint ptr %m2CountThrLow39 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %m2CountThrLow39, align 2
  %conv40 = zext i16 %17 to i32
  %phi.bo471 = shl nuw nsw i32 %conv40, 8
  %phi.bo472 = and i32 %phi.bo471, 16128
  %m1ThreshLowExt47 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 6
  %18 = ptrtoint ptr %m1ThreshLowExt47 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %m1ThreshLowExt47, align 4
  %conv48 = zext i16 %19 to i32
  %phi.bo473 = shl nuw nsw i32 %conv48, 14
  %phi.bo474 = and i32 %phi.bo473, 2080768
  %m2ThreshLowExt55 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 7
  %20 = ptrtoint ptr %m2ThreshLowExt55 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %m2ThreshLowExt55, align 2
  %conv56 = zext i16 %21 to i32
  %phi.bo475 = shl i32 %conv56, 21
  %phi.bo476 = and i32 %phi.bo475, 266338304
  %m1ThreshExt63 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 8
  %22 = ptrtoint ptr %m1ThreshExt63 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %m1ThreshExt63, align 4
  %24 = and i16 %23, 127
  %phi.bo477 = zext i16 %24 to i32
  %m2ThreshExt71 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 9
  %25 = ptrtoint ptr %m2ThreshExt71 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %m2ThreshExt71, align 2
  %conv72 = zext i16 %26 to i32
  %phi.bo478 = shl nuw nsw i32 %conv72, 7
  %phi.bo479 = and i32 %phi.bo478, 16256
  br label %cond.end74

cond.end74:                                       ; preds = %cond.true69, %sw.bb.cond.end74_crit_edge
  %cond67613 = phi i32 [ %phi.bo477, %cond.true69 ], [ 127, %sw.bb.cond.end74_crit_edge ]
  %cond51562572611 = phi i32 [ %phi.bo474, %cond.true69 ], [ 2080768, %sw.bb.cond.end74_crit_edge ]
  %cond35523531560574609 = phi i32 [ %phi.bo470, %cond.true69 ], [ 31, %sw.bb.cond.end74_crit_edge ]
  %cond19496502521533558576607 = phi i32 [ %phi.bo467, %cond.true69 ], [ 16646144, %sw.bb.cond.end74_crit_edge ]
  %cond3481485494504519535556578605 = phi i32 [ %phi.bo463, %cond.true69 ], [ 2080768, %sw.bb.cond.end74_crit_edge ]
  %cond11487492506517537554580603 = phi i32 [ %phi.bo465, %cond.true69 ], [ 266338304, %sw.bb.cond.end74_crit_edge ]
  %cond27508515539552582601 = phi i32 [ %phi.bo469, %cond.true69 ], [ 2130706432, %sw.bb.cond.end74_crit_edge ]
  %cond43541550584599 = phi i32 [ %phi.bo472, %cond.true69 ], [ 16128, %sw.bb.cond.end74_crit_edge ]
  %cond59586597 = phi i32 [ %phi.bo476, %cond.true69 ], [ 266338304, %sw.bb.cond.end74_crit_edge ]
  %cond75 = phi i32 [ %phi.bo479, %cond.true69 ], [ 16256, %sw.bb.cond.end74_crit_edge ]
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %27 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmw, align 4
  %call77 = tail call i32 %28(ptr noundef %ah, i32 noundef 39020, i32 noundef %cond3481485494504519535556578605, i32 noundef 2080768) #5
  %29 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw, align 4
  %call82 = tail call i32 %30(ptr noundef %ah, i32 noundef 39020, i32 noundef %cond11487492506517537554580603, i32 noundef 266338304) #5
  %31 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmw, align 4
  %call87 = tail call i32 %32(ptr noundef %ah, i32 noundef 39016, i32 noundef %cond19496502521533558576607, i32 noundef 16646144) #5
  %33 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw, align 4
  %call92 = tail call i32 %34(ptr noundef %ah, i32 noundef 39016, i32 noundef %cond27508515539552582601, i32 noundef 2130706432) #5
  %35 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmw, align 4
  %call97 = tail call i32 %36(ptr noundef %ah, i32 noundef 39016, i32 noundef %cond35523531560574609, i32 noundef 31) #5
  %37 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmw, align 4
  %call102 = tail call i32 %38(ptr noundef %ah, i32 noundef 39020, i32 noundef %cond43541550584599, i32 noundef 16128) #5
  %39 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmw, align 4
  %call107 = tail call i32 %40(ptr noundef %ah, i32 noundef 39360, i32 noundef %cond51562572611, i32 noundef 2080768) #5
  %41 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw, align 4
  %call112 = tail call i32 %42(ptr noundef %ah, i32 noundef 39360, i32 noundef %cond59586597, i32 noundef 266338304) #5
  %43 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmw, align 4
  %call117 = tail call i32 %44(ptr noundef %ah, i32 noundef 39360, i32 noundef %cond67613, i32 noundef 127) #5
  %45 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmw, align 4
  %call122 = tail call i32 %46(ptr noundef %ah, i32 noundef 39360, i32 noundef %cond75, i32 noundef 16256) #5
  %47 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmw, align 4
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #7
  %call126 = tail call i32 %48(ptr noundef %ah, i32 noundef 39020, i32 noundef 1, i32 noundef 0) #5
  br label %if.end

if.else:                                          ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #7
  %call129 = tail call i32 %48(ptr noundef %ah, i32 noundef 39020, i32 noundef 0, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ofdmWeakSigDetect = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 7
  %49 = ptrtoint ptr %ofdmWeakSigDetect to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ofdmWeakSigDetect, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool130.not = icmp eq i8 %50, 0
  %51 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %51)
  %cmp.not = icmp eq i8 %50, %51
  br i1 %cmp.not, label %if.end.do.body311_crit_edge, label %do.body

if.end.do.body311_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body311

do.body:                                          ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_mask, align 4
  %and134 = and i32 %53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %do.body.do.end_crit_edge, label %if.then136

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then136:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %channel, align 4
  %conv137 = zext i16 %55 to i32
  %cond141 = select i1 %tobool130.not, ptr @.str.7, ptr @.str.6
  %cond143 = select i1 %tobool, ptr @.str.6, ptr @.str.7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %conv137, ptr noundef nonnull %cond141, ptr noundef nonnull %cond143) #5
  br label %do.end

do.end:                                           ; preds = %if.then136, %do.body.do.end_crit_edge
  %ast_ani_ofdmoff = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 3
  %ast_ani_ofdmon = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 2
  %ast_ani_ofdmoff.sink615 = select i1 %tobool, ptr %ast_ani_ofdmon, ptr %ast_ani_ofdmoff
  %56 = ptrtoint ptr %ast_ani_ofdmoff.sink615 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ast_ani_ofdmoff.sink615, align 4
  %inc149 = add i32 %57, 1
  store i32 %inc149, ptr %ast_ani_ofdmoff.sink615, align 4
  %58 = ptrtoint ptr %ofdmWeakSigDetect to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %51, ptr %ofdmWeakSigDetect, align 1
  br label %do.body311

sw.bb154:                                         ; preds = %entry
  %mul = shl i32 %param, 1
  %rmw156 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %59 = ptrtoint ptr %rmw156 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmw156, align 4
  %shl157 = shl i32 %param, 13
  %and158 = and i32 %shl157, 253952
  %call159 = tail call i32 %60(ptr noundef %ah, i32 noundef 39000, i32 noundef %and158, i32 noundef 258048) #5
  %61 = ptrtoint ptr %rmw156 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmw156, align 4
  %shl162 = shl i32 %param, 7
  %and163 = and i32 %shl162, 3968
  %call164 = tail call i32 %62(ptr noundef %ah, i32 noundef 38976, i32 noundef %and163, i32 noundef 4032) #5
  %firstepLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 6
  %63 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %firstepLevel, align 2
  %conv165 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv165, i32 %param)
  %cmp166.not = icmp eq i32 %conv165, %param
  br i1 %cmp166.not, label %sw.bb154.do.body311_crit_edge, label %do.body169

sw.bb154.do.body311_crit_edge:                    ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body311

do.body169:                                       ; preds = %sw.bb154
  %debug_mask170 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %debug_mask170 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %debug_mask170, align 4
  %and171 = and i32 %66, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %do.body169.do.body183_crit_edge, label %if.then173

do.body169.do.body183_crit_edge:                  ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body183

if.then173:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  %channel174 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %channel174 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %channel174, align 4
  %conv175 = zext i16 %68 to i32
  %firstep = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 10
  %69 = ptrtoint ptr %firstep to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %firstep, align 4
  %conv179 = zext i16 %70 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.8, i32 noundef %conv175, i32 noundef %conv165, i32 noundef %param, i32 noundef 2, i32 noundef %mul, i32 noundef %conv179) #5
  br label %do.body183

do.body183:                                       ; preds = %if.then173, %do.body169.do.body183_crit_edge
  %71 = ptrtoint ptr %debug_mask170 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %debug_mask170, align 4
  %and185 = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %do.body183.do.end196_crit_edge, label %if.then187

do.body183.do.end196_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end196

if.then187:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #7
  %channel188 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %channel188 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %channel188, align 4
  %conv189 = zext i16 %74 to i32
  %75 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %firstepLevel, align 2
  %conv191 = zext i8 %76 to i32
  %firstepLow = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 11
  %77 = ptrtoint ptr %firstepLow to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %firstepLow, align 2
  %conv193 = zext i16 %78 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %conv189, i32 noundef %conv191, i32 noundef %param, i32 noundef 2, i32 noundef %mul, i32 noundef %conv193) #5
  br label %do.end196

do.end196:                                        ; preds = %if.then187, %do.body183.do.end196_crit_edge
  %79 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %firstepLevel, align 2
  %conv198 = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv198, i32 %param)
  %cmp199 = icmp ult i32 %conv198, %param
  br i1 %cmp199, label %if.then201, label %if.else204

if.then201:                                       ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #7
  %ast_ani_stepup = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 6
  br label %if.end213.sink.split

if.else204:                                       ; preds = %do.end196
  call void @__sanitizer_cov_trace_cmp4(i32 %conv198, i32 %param)
  %cmp207 = icmp ugt i32 %conv198, %param
  br i1 %cmp207, label %if.then209, label %if.else204.if.end213_crit_edge

if.else204.if.end213_crit_edge:                   ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end213

if.then209:                                       ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #7
  %ast_ani_stepdown = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 7
  br label %if.end213.sink.split

if.end213.sink.split:                             ; preds = %if.then209, %if.then201
  %ast_ani_stepdown.sink616 = phi ptr [ %ast_ani_stepdown, %if.then209 ], [ %ast_ani_stepup, %if.then201 ]
  %81 = ptrtoint ptr %ast_ani_stepdown.sink616 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ast_ani_stepdown.sink616, align 4
  %inc211 = add i32 %82, 1
  store i32 %inc211, ptr %ast_ani_stepdown.sink616, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.end213.sink.split, %if.else204.if.end213_crit_edge
  %conv214 = trunc i32 %param to i8
  %83 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv214, ptr %firstepLevel, align 2
  br label %do.body311

sw.bb217:                                         ; preds = %entry
  %add = shl i32 %param, 1
  %mul219 = add i32 %add, 2
  %rmw221 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %84 = ptrtoint ptr %rmw221 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmw221, align 4
  %shl222 = shl i32 %mul219, 1
  %and223 = and i32 %shl222, 252
  %call224 = tail call i32 %85(ptr noundef %ah, i32 noundef 39204, i32 noundef %and223, i32 noundef 254) #5
  %86 = ptrtoint ptr %rmw221 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rmw221, align 4
  %sub = shl i32 %param, 10
  %shl227 = and i32 %sub, 64512
  %and228 = or i32 %shl227, 512
  %call229 = tail call i32 %87(ptr noundef %ah, i32 noundef 39356, i32 noundef %and228, i32 noundef 65024) #5
  %spurImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 5
  %88 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %spurImmunityLevel, align 1
  %conv230 = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv230, i32 %param)
  %cmp231.not = icmp eq i32 %conv230, %param
  br i1 %cmp231.not, label %sw.bb217.do.body311_crit_edge, label %do.body234

sw.bb217.do.body311_crit_edge:                    ; preds = %sw.bb217
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body311

do.body234:                                       ; preds = %sw.bb217
  %debug_mask235 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %90 = ptrtoint ptr %debug_mask235 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %debug_mask235, align 4
  %and236 = and i32 %91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %do.body234.do.body248_crit_edge, label %if.then238

do.body234.do.body248_crit_edge:                  ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body248

if.then238:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #7
  %channel239 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %channel239 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %channel239, align 4
  %conv240 = zext i16 %93 to i32
  %cycpwrThr1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 12
  %94 = ptrtoint ptr %cycpwrThr1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %cycpwrThr1, align 4
  %conv244 = zext i16 %95 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef %conv240, i32 noundef %conv230, i32 noundef %param, i32 noundef 3, i32 noundef %mul219, i32 noundef %conv244) #5
  br label %do.body248

do.body248:                                       ; preds = %if.then238, %do.body234.do.body248_crit_edge
  %96 = ptrtoint ptr %debug_mask235 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %debug_mask235, align 4
  %and250 = and i32 %97, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %do.body248.do.end261_crit_edge, label %if.then252

do.body248.do.end261_crit_edge:                   ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end261

if.then252:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #7
  %channel253 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %98 = ptrtoint ptr %channel253 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %channel253, align 4
  %conv254 = zext i16 %99 to i32
  %100 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %spurImmunityLevel, align 1
  %conv256 = zext i8 %101 to i32
  %cycpwrThr1Ext = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11, i32 13
  %102 = ptrtoint ptr %cycpwrThr1Ext to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %cycpwrThr1Ext, align 2
  %conv258 = zext i16 %103 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.11, i32 noundef %conv254, i32 noundef %conv256, i32 noundef %param, i32 noundef 3, i32 noundef %mul219, i32 noundef %conv258) #5
  br label %do.end261

do.end261:                                        ; preds = %if.then252, %do.body248.do.end261_crit_edge
  %104 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %spurImmunityLevel, align 1
  %conv263 = zext i8 %105 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv263, i32 %param)
  %cmp264 = icmp ult i32 %conv263, %param
  br i1 %cmp264, label %if.then266, label %if.else269

if.then266:                                       ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #7
  %stats267 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33
  br label %if.end278.sink.split

if.else269:                                       ; preds = %do.end261
  call void @__sanitizer_cov_trace_cmp4(i32 %conv263, i32 %param)
  %cmp272 = icmp ugt i32 %conv263, %param
  br i1 %cmp272, label %if.then274, label %if.else269.if.end278_crit_edge

if.else269.if.end278_crit_edge:                   ; preds = %if.else269
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end278

if.then274:                                       ; preds = %if.else269
  call void @__sanitizer_cov_trace_pc() #7
  %ast_ani_spurdown = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 1
  br label %if.end278.sink.split

if.end278.sink.split:                             ; preds = %if.then274, %if.then266
  %ast_ani_spurdown.sink617 = phi ptr [ %ast_ani_spurdown, %if.then274 ], [ %stats267, %if.then266 ]
  %106 = ptrtoint ptr %ast_ani_spurdown.sink617 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ast_ani_spurdown.sink617, align 4
  %inc276 = add i32 %107, 1
  store i32 %inc276, ptr %ast_ani_spurdown.sink617, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.end278.sink.split, %if.else269.if.end278_crit_edge
  %conv279 = trunc i32 %param to i8
  %108 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv279, ptr %spurImmunityLevel, align 1
  br label %do.body311

do.end290:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1118, i32 noundef 9, ptr noundef null) #5
  br label %do.body311

do.body303:                                       ; preds = %entry
  %debug_mask304 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %109 = ptrtoint ptr %debug_mask304 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %debug_mask304, align 4
  %and305 = and i32 %110, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %do.body303.cleanup_crit_edge, label %if.then307

do.body303.cleanup_crit_edge:                     ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then307:                                       ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.13, i32 noundef %cmd) #5
  br label %cleanup

do.body311:                                       ; preds = %do.end290, %if.end278, %sw.bb217.do.body311_crit_edge, %if.end213, %sw.bb154.do.body311_crit_edge, %do.end, %if.end.do.body311_crit_edge
  %debug_mask312 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %111 = ptrtoint ptr %debug_mask312 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %debug_mask312, align 4
  %and313 = and i32 %112, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  br i1 %tobool314.not, label %do.body311.cleanup_crit_edge, label %if.then315

do.body311.cleanup_crit_edge:                     ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then315:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  %spurImmunityLevel316 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 5
  %113 = ptrtoint ptr %spurImmunityLevel316 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %spurImmunityLevel316, align 1
  %conv317 = zext i8 %114 to i32
  %ofdmWeakSigDetect318 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 7
  %115 = ptrtoint ptr %ofdmWeakSigDetect318 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ofdmWeakSigDetect318, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool319.not = icmp eq i8 %116, 0
  %cond321 = select i1 %tobool319.not, ptr @.str.7, ptr @.str.6
  %firstepLevel322 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 6
  %117 = ptrtoint ptr %firstepLevel322 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %firstepLevel322, align 2
  %conv323 = zext i8 %118 to i32
  %mrcCCK = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 4
  %119 = ptrtoint ptr %mrcCCK to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %mrcCCK, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool325.not = icmp eq i8 %120, 0
  %cond326 = select i1 %tobool325.not, ptr @.str.7, ptr @.str.6
  %listenTime = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 8
  %121 = ptrtoint ptr %listenTime to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %listenTime, align 4
  %ofdmPhyErrCount = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 9
  %123 = ptrtoint ptr %ofdmPhyErrCount to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ofdmPhyErrCount, align 4
  %cckPhyErrCount = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 10
  %125 = ptrtoint ptr %cckPhyErrCount to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cckPhyErrCount, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.14, i32 noundef %conv317, ptr noundef nonnull %cond321, i32 noundef %conv323, ptr noundef nonnull %cond326, i32 noundef %122, i32 noundef %124, i32 noundef %126) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then315, %do.body311.cleanup_crit_edge, %if.then307, %do.body303.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then307 ], [ false, %do.body303.cleanup_crit_edge ], [ true, %if.then315 ], [ true, %do.body311.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5008_hw_ani_cache_ini_regs(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.15, i32 noundef %5, i32 noundef %conv, i32 noundef %9, i32 noundef %conv3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %iniDef1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 11
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %call4 = tail call i32 %13(ptr noundef %ah, i32 noundef 39016) #5
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
  %call15 = tail call i32 %21(ptr noundef %ah, i32 noundef 39020) #5
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
  %call27 = tail call i32 %30(ptr noundef %ah, i32 noundef 39360) #5
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
  %call42 = tail call i32 %40(ptr noundef %ah, i32 noundef 39000) #5
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
  %call48 = tail call i32 %44(ptr noundef %ah, i32 noundef 38976) #5
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
  %call54 = tail call i32 %49(ptr noundef %ah, i32 noundef 39204) #5
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
  %call60 = tail call i32 %54(ptr noundef %ah, i32 noundef 39356) #5
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
  store i8 0, ptr %mrcCCK, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ar9160_hw_compute_pll_control(ptr nocapture noundef readnone %ah, ptr noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.if.else19_crit_edge, label %land.lhs.true

entry.if.else19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else19

land.lhs.true:                                    ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  %3 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  %spec.select = select i1 %tobool7.not, i32 5120, i32 37888
  %pll.0.ph = select i1 %tobool1.not, i32 %spec.select, i32 21504
  %4 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool16.not = icmp eq i16 %4, 0
  br i1 %tobool16.not, label %land.lhs.true.if.else19_crit_edge, label %if.then17

land.lhs.true.if.else19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else19

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %or18 = or i32 %pll.0.ph, 80
  br label %if.end21

if.else19:                                        ; preds = %land.lhs.true.if.else19_crit_edge, %entry.if.else19_crit_edge
  %pll.033 = phi i32 [ %pll.0.ph, %land.lhs.true.if.else19_crit_edge ], [ 5120, %entry.if.else19_crit_edge ]
  %or20 = or i32 %pll.033, 88
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %pll.1 = phi i32 [ %or18, %if.then17 ], [ %or20, %if.else19 ]
  ret i32 %pll.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ar5008_hw_compute_pll_control(ptr nocapture noundef readnone %ah, ptr noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.if.else19_crit_edge, label %land.lhs.true

entry.if.else19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else19

land.lhs.true:                                    ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  %3 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  %spec.select = select i1 %tobool7.not, i32 224, i32 736
  %pll.0.ph = select i1 %tobool1.not, i32 %spec.select, i32 480
  %4 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool16.not = icmp eq i16 %4, 0
  br i1 %tobool16.not, label %land.lhs.true.if.else19_crit_edge, label %if.then17

land.lhs.true.if.else19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else19

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %or18 = or i32 %pll.0.ph, 10
  br label %if.end21

if.else19:                                        ; preds = %land.lhs.true.if.else19_crit_edge, %entry.if.else19_crit_edge
  %pll.033 = phi i32 [ %pll.0.ph, %land.lhs.true.if.else19_crit_edge ], [ 224, %entry.if.else19_crit_edge ]
  %or20 = or i32 %pll.033, 11
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %pll.1 = phi i32 [ %or18, %if.then17 ], [ %or20, %if.else19 ]
  ret i32 %pll.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_channel_centers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_reverse_bits(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_write_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set11nmac2040(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_synth_delay(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_apply_txpower(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_delta_slope_vals(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #4

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !{null, !1, !"pilot_mask_reg", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 285, i32 19}
!2 = distinct !{null, !3, !"chan_mask_reg", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 289, i32 19}
!4 = distinct !{null, !5, !"inc", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 293, i32 19}
!6 = !{ptr @ar5008_hw_attach_phy_ops.ar5416_cca_regs, !7, !"ar5416_cca_regs", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1346, i32 19}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 226, i32 4}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 186, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bank0, !15, !"bank0", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 83, i32 36}
!16 = !{ptr @ar5416Bank0, !17, !"ar5416Bank0", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 53, i32 18}
!18 = !{ptr @bank1, !19, !"bank1", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 84, i32 36}
!20 = !{ptr @ar5416Bank1, !21, !"ar5416Bank1", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 59, i32 18}
!22 = !{ptr @bank2, !23, !"bank2", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 85, i32 36}
!24 = !{ptr @ar5416Bank2, !25, !"ar5416Bank2", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 65, i32 18}
!26 = !{ptr @bank3, !27, !"bank3", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 86, i32 36}
!28 = !{ptr @ar5416Bank3, !29, !"ar5416Bank3", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 71, i32 18}
!30 = !{ptr @bank7, !31, !"bank7", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 87, i32 36}
!32 = !{ptr @ar5416Bank7, !33, !"ar5416Bank7", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 76, i32 18}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 819, i32 3}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1030, i32 4}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1054, i32 4}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1062, i32 4}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1089, i32 4}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1097, i32 4}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1118, i32 3}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1121, i32 3}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1125, i32 2}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/ar5008_phy.c", i32 1179, i32 2}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i8 0, i8 2}
