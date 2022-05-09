; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ani.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ani.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath9k_hw_ani_monitor\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_ani_monitor\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_ani_monitor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_ani_monitor:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_ani_monitor\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_ani_monitor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_hw_disable_mib_counters\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_hw_disable_mib_counters\09\09\09\09"
module asm "\09.long\09__crc_ath9k_hw_disable_mib_counters\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_hw_disable_mib_counters:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_hw_disable_mib_counters\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_hw_disable_mib_counters:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ani_ofdm_level_entry = type { i32, i32, i32 }
%struct.ani_cck_level_entry = type { i32, i32 }
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

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Restore defaults: opmode %u chan %d Mhz is_scanning=%d ofdm:%d cck:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Restore history: opmode %u chan %d Mhz is_scanning=%d ofdm:%d cck:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"listenTime=%d OFDM:%d errs=%d/s CCK:%d errs=%d/s ofdm_turn=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_hw_ani_monitor = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_ani_monitor = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_ani_monitor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_ani_monitor to i32), ptr @__kstrtab_ath9k_hw_ani_monitor, ptr @__kstrtabns_ath9k_hw_ani_monitor }, section "___ksymtab+ath9k_hw_ani_monitor", align 4
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enable MIB counters\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disable MIB counters\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_hw_disable_mib_counters = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_hw_disable_mib_counters = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_hw_disable_mib_counters = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_hw_disable_mib_counters to i32), ptr @__kstrtab_ath9k_hw_disable_mib_counters, ptr @__kstrtabns_ath9k_hw_disable_mib_counters }, section "___ksymtab+ath9k_hw_disable_mib_counters", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Initialize ANI\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"**** ofdmlevel %d=>%d, rssi=%d[lo=%d hi=%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@ofdm_level_table = internal constant { [10 x %struct.ani_ofdm_level_entry], [40 x i8] } { [10 x %struct.ani_ofdm_level_entry] [%struct.ani_ofdm_level_entry { i32 0, i32 0, i32 1 }, %struct.ani_ofdm_level_entry { i32 1, i32 1, i32 1 }, %struct.ani_ofdm_level_entry { i32 2, i32 2, i32 1 }, %struct.ani_ofdm_level_entry { i32 3, i32 2, i32 1 }, %struct.ani_ofdm_level_entry { i32 4, i32 3, i32 1 }, %struct.ani_ofdm_level_entry { i32 5, i32 4, i32 1 }, %struct.ani_ofdm_level_entry { i32 6, i32 5, i32 1 }, %struct.ani_ofdm_level_entry { i32 7, i32 6, i32 1 }, %struct.ani_ofdm_level_entry { i32 7, i32 7, i32 1 }, %struct.ani_ofdm_level_entry { i32 7, i32 8, i32 0 }], [40 x i8] zeroinitializer }, align 32
@cck_level_table = internal constant { [9 x %struct.ani_cck_level_entry], [56 x i8] } { [9 x %struct.ani_cck_level_entry] [%struct.ani_cck_level_entry { i32 0, i32 1 }, %struct.ani_cck_level_entry { i32 1, i32 1 }, %struct.ani_cck_level_entry { i32 2, i32 1 }, %struct.ani_cck_level_entry { i32 3, i32 1 }, %struct.ani_cck_level_entry { i32 4, i32 0 }, %struct.ani_cck_level_entry { i32 5, i32 0 }, %struct.ani_cck_level_entry { i32 6, i32 0 }, %struct.ani_cck_level_entry { i32 7, i32 0 }, %struct.ani_cck_level_entry { i32 8, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"**** ccklevel %d=>%d, rssi=%d[lo=%d hi=%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@__const.ath9k_hw_update_mibstats.addr = private unnamed_addr constant [5 x i32] [i32 32904, i32 32908, i32 32912, i32 32916, i32 32920], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 576, i64 704, i64 1536]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 340, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 355, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 415, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 445, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 467, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 482, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 158, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"ofdm_level_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 39, i32 42 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"cck_level_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 85, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath9k/ani.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 237, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_ath9k_hw_ani_monitor, ptr @__ksymtab_ath9k_hw_disable_mib_counters, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ofdm_level_table, ptr @cck_level_table, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdm_level_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cck_level_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_ani_reset(ptr noundef %ah, i1 noundef zeroext %is_scanning) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %0 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curchan, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %ani = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71
  %cmp = icmp eq ptr %ani, null
  br i1 %cmp, label %do.body4, label %do.end10, !prof !34

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ani.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 319, 0\0A.popsection", ""() #4, !srcloc !35
  unreachable

do.end10:                                         ; preds = %do.body
  %ast_ani_reset = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 10
  %2 = ptrtoint ptr %ast_ani_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ast_ani_reset, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %ast_ani_reset, align 4
  %ofdmNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 1
  %4 = ptrtoint ptr %ofdmNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ofdmNoiseImmunityLevel, align 1
  %conv = zext i8 %5 to i32
  %6 = tail call i8 @llvm.umax.i8(i8 %5, i8 3)
  %cckNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %7 = ptrtoint ptr %cckNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cckNoiseImmunityLevel, align 2
  %conv13 = zext i8 %8 to i32
  %9 = tail call i8 @llvm.umax.i8(i8 %8, i8 2)
  br i1 %is_scanning, label %do.end10.if.then28_crit_edge, label %lor.lhs.false

do.end10.if.then28_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

lor.lhs.false:                                    ; preds = %do.end10
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 28
  %10 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opmode, align 4
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.body54, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %do.end10.if.then28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp31.not = icmp eq i8 %5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp36.not = icmp eq i8 %8, 2
  %or.cond = select i1 %cmp31.not, i1 %cmp36.not, i1 false
  br i1 %or.cond, label %if.then28.if.end71_crit_edge, label %do.body39

if.then28.if.end71_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

do.body39:                                        ; preds = %if.then28
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %do.body39.if.end71_crit_edge, label %if.then41

do.body39.if.end71_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then41:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  %opmode42 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 28
  %14 = ptrtoint ptr %opmode42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opmode42, align 4
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %channel, align 4
  %conv43 = zext i16 %17 to i32
  %conv45 = zext i1 %is_scanning to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %15, i32 noundef %conv43, i32 noundef %conv45, i32 noundef %conv, i32 noundef %conv13) #4
  br label %if.end71

do.body54:                                        ; preds = %lor.lhs.false
  %debug_mask55 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %debug_mask55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask55, align 4
  %and56 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body54.if.end71_crit_edge, label %if.then58

do.body54.if.end71_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then58:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #6
  %channel60 = getelementptr inbounds %struct.ath9k_channel, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %channel60 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %channel60, align 4
  %conv61 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %11, i32 noundef %conv61, i32 noundef 0, i32 noundef %conv, i32 noundef %conv13) #4
  br label %if.end71

if.end71:                                         ; preds = %if.then58, %do.body54.if.end71_crit_edge, %if.then41, %do.body39.if.end71_crit_edge, %if.then28.if.end71_crit_edge
  %ofdm_nil.0.shrunk = phi i8 [ %6, %if.then58 ], [ %6, %do.body54.if.end71_crit_edge ], [ 3, %if.then41 ], [ 3, %do.body39.if.end71_crit_edge ], [ %6, %if.then28.if.end71_crit_edge ]
  %cck_nil.0.shrunk = phi i8 [ %9, %if.then58 ], [ %9, %do.body54.if.end71_crit_edge ], [ 2, %if.then41 ], [ 2, %do.body39.if.end71_crit_edge ], [ %9, %if.then28.if.end71_crit_edge ]
  tail call fastcc void @ath9k_hw_set_ofdm_nil(ptr noundef %ah, i8 noundef zeroext %ofdm_nil.0.shrunk, i1 noundef zeroext %is_scanning)
  tail call fastcc void @ath9k_hw_set_cck_nil(ptr noundef %ah, i8 noundef zeroext %cck_nil.0.shrunk, i1 noundef zeroext %is_scanning)
  tail call fastcc void @ath9k_ani_restart(ptr noundef %ah)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_hw_set_ofdm_nil(ptr noundef %ah, i8 noundef zeroext %immunityLevel, i1 noundef zeroext %scan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %ofdmNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 1
  %2 = ptrtoint ptr %ofdmNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ofdmNoiseImmunityLevel, align 1
  %conv = zext i8 %3 to i32
  %conv1 = zext i8 %immunityLevel to i32
  %avgbrssi = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 12
  %4 = ptrtoint ptr %avgbrssi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avgbrssi, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv1, i32 noundef %5, i32 noundef 7, i32 noundef 40) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  br i1 %scan, label %do.end.if.end11_crit_edge, label %if.then9

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %7)
  %cmp = icmp eq i32 %7, 20
  %8 = tail call i8 @llvm.umax.i8(i8 %immunityLevel, i8 3)
  %spec.select = select i1 %cmp, i8 %8, i8 %immunityLevel
  %ofdmNoiseImmunityLevel10 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 1
  %9 = ptrtoint ptr %ofdmNoiseImmunityLevel10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %ofdmNoiseImmunityLevel10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end.if.end11_crit_edge
  %ofdmNoiseImmunityLevel12 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 1
  %10 = ptrtoint ptr %ofdmNoiseImmunityLevel12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ofdmNoiseImmunityLevel12, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr [10 x %struct.ani_ofdm_level_entry], ptr @ofdm_level_table, i32 0, i32 %idxprom
  %cckNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %12 = ptrtoint ptr %cckNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cckNoiseImmunityLevel, align 2
  %idxprom13 = zext i8 %13 to i32
  %arrayidx14 = getelementptr [9 x %struct.ani_cck_level_entry], ptr @cck_level_table, i32 0, i32 %idxprom13
  %spurImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 5
  %14 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %spurImmunityLevel, align 1
  %conv15 = zext i8 %15 to i32
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv15)
  %cmp16.not = icmp eq i32 %17, %conv15
  br i1 %cmp16.not, label %if.end11.if.end21_crit_edge, label %if.then18

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %ani_control.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 21
  %18 = ptrtoint ptr %ani_control.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ani_control.i, align 4
  %call1.i = tail call zeroext i1 %19(ptr noundef %ah, i32 noundef 4, i32 noundef %17) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end11.if.end21_crit_edge
  %firstepLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 6
  %20 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %firstepLevel, align 2
  %conv22 = zext i8 %21 to i32
  %fir_step_level = getelementptr [10 x %struct.ani_ofdm_level_entry], ptr @ofdm_level_table, i32 0, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %fir_step_level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fir_step_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv22)
  %cmp23.not = icmp eq i32 %23, %conv22
  br i1 %cmp23.not, label %if.end21.if.end33_crit_edge, label %land.lhs.true25

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

land.lhs.true25:                                  ; preds = %if.end21
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp28.not = icmp slt i32 %23, %25
  br i1 %cmp28.not, label %land.lhs.true25.if.end33_crit_edge, label %if.then30

land.lhs.true25.if.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  %ani_control.i135 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 21
  %26 = ptrtoint ptr %ani_control.i135 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ani_control.i135, align 4
  %call1.i136 = tail call zeroext i1 %27(ptr noundef %ah, i32 noundef 2, i32 noundef %23) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true25.if.end33_crit_edge, %if.end21.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %11)
  %tobool34 = icmp ne i8 %11, 9
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 28
  %28 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp36 = icmp eq i32 %29, 2
  br i1 %cmp36, label %land.lhs.true38, label %if.else.thread

land.lhs.true38:                                  ; preds = %if.end33
  %avgbrssi40 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 12
  %30 = ptrtoint ptr %avgbrssi40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %avgbrssi40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %31)
  %cmp41 = icmp ult i32 %31, 41
  br i1 %cmp41, label %land.lhs.true38.if.end66_crit_edge, label %if.else

land.lhs.true38.if.end66_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true38
  %32 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %33)
  %cmp46 = icmp ugt i32 %33, 447
  br i1 %cmp46, label %if.else.if.end66_crit_edge, label %if.else.land.lhs.true58_crit_edge

if.else.land.lhs.true58_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true58

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.else.thread:                                   ; preds = %if.end33
  %34 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %35)
  %cmp46139 = icmp ugt i32 %35, 447
  br i1 %cmp46139, label %if.else.thread.if.end66_crit_edge, label %if.else.thread.land.lhs.true58_crit_edge

if.else.thread.land.lhs.true58_crit_edge:         ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true58

if.else.thread.if.end66_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

land.lhs.true58:                                  ; preds = %if.else.thread.land.lhs.true58_crit_edge, %if.else.land.lhs.true58_crit_edge
  %36 = ptrtoint ptr %ofdmNoiseImmunityLevel12 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ofdmNoiseImmunityLevel12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %37)
  %cmp61 = icmp ult i8 %37, 8
  %spec.select134 = select i1 %cmp61, i1 %tobool34, i1 false
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true58, %if.else.thread.if.end66_crit_edge, %if.else.if.end66_crit_edge, %land.lhs.true38.if.end66_crit_edge
  %weak_sig.0.shrunk = phi i1 [ %tobool34, %if.else.if.end66_crit_edge ], [ true, %land.lhs.true38.if.end66_crit_edge ], [ %spec.select134, %land.lhs.true58 ], [ true, %if.else.thread.if.end66_crit_edge ]
  %ofdmWeakSigDetect = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 7
  %38 = ptrtoint ptr %ofdmWeakSigDetect to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ofdmWeakSigDetect, align 1, !range !36
  %40 = zext i1 %weak_sig.0.shrunk to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %40)
  %cmp71.not = icmp eq i8 %39, %40
  br i1 %cmp71.not, label %if.end66.if.end77_crit_edge, label %if.then73

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %conv70 = zext i1 %weak_sig.0.shrunk to i32
  %ani_control.i137 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 21
  %41 = ptrtoint ptr %ani_control.i137 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ani_control.i137, align 4
  %call1.i138 = tail call zeroext i1 %42(ptr noundef %ah, i32 noundef 1, i32 noundef %conv70) #4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end66.if.end77_crit_edge
  %43 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %44)
  %cmp80 = icmp ugt i32 %44, 447
  br i1 %cmp80, label %if.end83, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %ofdmNoiseImmunityLevel12 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ofdmNoiseImmunityLevel12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp86 = icmp ugt i8 %46, 2
  %ofdm_trig_high = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 6
  %. = select i1 %cmp86, i32 3500, i32 1000
  %.145 = select i1 %cmp86, i32 900, i32 400
  %47 = ptrtoint ptr %ofdm_trig_high to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %., ptr %ofdm_trig_high, align 4
  %ofdm_trig_low = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 5
  %48 = ptrtoint ptr %ofdm_trig_low to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.145, ptr %ofdm_trig_low, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end77.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_hw_set_cck_nil(ptr noundef %ah, i8 noundef zeroext %immunityLevel, i1 noundef zeroext %scan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %cckNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %2 = ptrtoint ptr %cckNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cckNoiseImmunityLevel, align 2
  %conv = zext i8 %3 to i32
  %conv1 = zext i8 %immunityLevel to i32
  %avgbrssi = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 12
  %4 = ptrtoint ptr %avgbrssi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avgbrssi, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv1, i32 noundef %5, i32 noundef 7, i32 noundef 40) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %7)
  %cmp = icmp eq i32 %7, 20
  %8 = tail call i8 @llvm.umax.i8(i8 %immunityLevel, i8 2)
  %spec.select = select i1 %cmp, i8 %8, i8 %immunityLevel
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 28
  %9 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp8 = icmp eq i32 %10, 2
  br i1 %cmp8, label %land.lhs.true10, label %do.end.if.end20_crit_edge

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

land.lhs.true10:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %avgbrssi12 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 12
  %11 = ptrtoint ptr %avgbrssi12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %avgbrssi12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp13 = icmp ult i32 %12, 8
  %13 = tail call i8 @llvm.umin.i8(i8 %spec.select, i8 6)
  %spec.select97 = select i1 %cmp13, i8 %13, i8 %spec.select
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true10, %do.end.if.end20_crit_edge
  %immunityLevel.addr.1 = phi i8 [ %spec.select, %do.end.if.end20_crit_edge ], [ %spec.select97, %land.lhs.true10 ]
  br i1 %scan, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %cckNoiseImmunityLevel23 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %14 = ptrtoint ptr %cckNoiseImmunityLevel23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %immunityLevel.addr.1, ptr %cckNoiseImmunityLevel23, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %cckNoiseImmunityLevel25 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %15 = ptrtoint ptr %cckNoiseImmunityLevel25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cckNoiseImmunityLevel25, align 2
  %idxprom26 = zext i8 %16 to i32
  %arrayidx27 = getelementptr [9 x %struct.ani_cck_level_entry], ptr @cck_level_table, i32 0, i32 %idxprom26
  %firstepLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 6
  %17 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %firstepLevel, align 2
  %conv28 = zext i8 %18 to i32
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv28)
  %cmp29.not = icmp eq i32 %20, %conv28
  br i1 %cmp29.not, label %if.end24.if.end39_crit_edge, label %land.lhs.true31

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

land.lhs.true31:                                  ; preds = %if.end24
  %ofdmNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 1
  %21 = ptrtoint ptr %ofdmNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ofdmNoiseImmunityLevel, align 1
  %idxprom = zext i8 %22 to i32
  %fir_step_level33 = getelementptr [10 x %struct.ani_ofdm_level_entry], ptr @ofdm_level_table, i32 0, i32 %idxprom, i32 1
  %23 = ptrtoint ptr %fir_step_level33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fir_step_level33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp34.not = icmp slt i32 %20, %24
  br i1 %cmp34.not, label %land.lhs.true31.if.end39_crit_edge, label %if.then36

land.lhs.true31.if.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then36:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #6
  %ani_control.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 21
  %25 = ptrtoint ptr %ani_control.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ani_control.i, align 4
  %call1.i = tail call zeroext i1 %26(ptr noundef %ah, i32 noundef 2, i32 noundef %20) #4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %land.lhs.true31.if.end39_crit_edge, %if.end24.if.end39_crit_edge
  %27 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %macVersion, align 4
  %.fr = freeze i32 %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %.fr)
  %cmp42 = icmp ult i32 %.fr, 448
  br i1 %cmp42, label %if.end39.cleanup_crit_edge, label %switch.early.test

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.early.test:                                ; preds = %if.end39
  %29 = zext i32 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.fr, label %if.end59 [
    i32 1536, label %switch.early.test.cleanup_crit_edge
    i32 704, label %switch.early.test.cleanup_crit_edge102
    i32 576, label %switch.early.test.cleanup_crit_edge103
  ]

switch.early.test.cleanup_crit_edge103:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.early.test.cleanup_crit_edge102:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end59:                                         ; preds = %switch.early.test
  %mrcCCK = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 4
  %30 = ptrtoint ptr %mrcCCK to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mrcCCK, align 4
  %conv60 = zext i8 %31 to i32
  %mrc_cck_on = getelementptr [9 x %struct.ani_cck_level_entry], ptr @cck_level_table, i32 0, i32 %idxprom26, i32 1
  %32 = ptrtoint ptr %mrc_cck_on to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mrc_cck_on, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv60)
  %cmp61.not = icmp eq i32 %33, %conv60
  br i1 %cmp61.not, label %if.end59.cleanup_crit_edge, label %if.then63

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %ani_control.i100 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 21
  %34 = ptrtoint ptr %ani_control.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ani_control.i100, align 4
  %call1.i101 = tail call zeroext i1 %35(ptr noundef %ah, i32 noundef 8, i32 noundef %33) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end59.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge102, %switch.early.test.cleanup_crit_edge103, %if.end39.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_ani_restart(ptr noundef %ah) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [5 x i32], align 4
  %data.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %listenTime = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 8
  %0 = ptrtoint ptr %listenTime to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %listenTime, align 4
  %enable_write_buffer = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %1 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enable_write_buffer, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %2(ptr noundef %ah) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %3 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write, align 4
  tail call void %4(ptr noundef %ah, i32 noundef 0, i32 noundef 33068) #4
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  tail call void %6(ptr noundef %ah, i32 noundef 0, i32 noundef 33076) #4
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  tail call void %8(ptr noundef %ah, i32 noundef 131072, i32 noundef 33072) #4
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  tail call void %10(ptr noundef %ah, i32 noundef 33554432, i32 noundef 33080) #4
  %write_flush = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  %11 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_flush, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %do.end.do.end18_crit_edge, label %if.then13

do.end.do.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end18

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %12(ptr noundef %ah) #4
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.end.do.end18_crit_edge
  %ast_mibstats = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %addr.i) #4
  %13 = call ptr @memcpy(ptr %addr.i, ptr @__const.ath9k_hw_update_mibstats.addr, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data.i) #4
  %14 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 1
  %15 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 2
  %16 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 3
  %17 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 4
  %multi_read.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 1
  %18 = call ptr @memset(ptr %data.i, i32 255, i32 20)
  %19 = ptrtoint ptr %multi_read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %multi_read.i, align 4
  call void %20(ptr noundef %ah, ptr noundef nonnull %addr.i, ptr noundef nonnull %data.i, i16 noundef zeroext 5) #4
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data.i, align 4
  %rts_good.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 2
  %23 = ptrtoint ptr %rts_good.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rts_good.i, align 4
  %add.i = add i32 %24, %22
  store i32 %add.i, ptr %rts_good.i, align 4
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %14, align 4
  %rts_bad.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 1
  %27 = ptrtoint ptr %rts_bad.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rts_bad.i, align 4
  %add4.i = add i32 %28, %26
  store i32 %add4.i, ptr %rts_bad.i, align 4
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %15, align 4
  %31 = ptrtoint ptr %ast_mibstats to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ast_mibstats, align 4
  %add6.i = add i32 %32, %30
  store i32 %add6.i, ptr %ast_mibstats, align 4
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %16, align 4
  %fcs_bad.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 3
  %35 = ptrtoint ptr %fcs_bad.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fcs_bad.i, align 4
  %add8.i = add i32 %36, %34
  store i32 %add8.i, ptr %fcs_bad.i, align 4
  %37 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %17, align 4
  %beacons.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 4
  %39 = ptrtoint ptr %beacons.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %beacons.i, align 4
  %add10.i = add i32 %40, %38
  store i32 %add10.i, ptr %beacons.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %addr.i) #4
  %ofdmPhyErrCount = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 9
  %41 = ptrtoint ptr %ofdmPhyErrCount to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ofdmPhyErrCount, align 4
  %cckPhyErrCount = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 10
  %42 = ptrtoint ptr %cckPhyErrCount to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %cckPhyErrCount, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_ani_monitor(ptr noundef %ah, ptr nocapture readnone %chan) #0 align 64 {
entry:
  %addr.i.i = alloca [5 x i32], align 4
  %data.i.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void @ath_hw_cycle_counters_update(ptr noundef %common.i) #4
  %call1.i = tail call i32 @ath_hw_get_listen_time(ptr noundef %common.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 1
  br i1 %cmp.i, label %ath9k_hw_ani_read_counters.exit, label %if.end

ath9k_hw_ani_read_counters.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ast_ani_lneg_or_lzero.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 11
  %0 = ptrtoint ptr %ast_ani_lneg_or_lzero.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ast_ani_lneg_or_lzero.i, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %ast_ani_lneg_or_lzero.i, align 4
  tail call fastcc void @ath9k_ani_restart(ptr noundef %ah) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %listenTime2.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 8
  %2 = ptrtoint ptr %listenTime2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %listenTime2.i, align 4
  %add.i = add i32 %3, %call1.i
  store i32 %add.i, ptr %listenTime2.i, align 4
  %ast_mibstats.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %addr.i.i) #4
  %4 = call ptr @memcpy(ptr %addr.i.i, ptr @__const.ath9k_hw_update_mibstats.addr, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data.i.i) #4
  %5 = getelementptr inbounds [5 x i32], ptr %data.i.i, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i32], ptr %data.i.i, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i32], ptr %data.i.i, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i32], ptr %data.i.i, i32 0, i32 4
  %multi_read.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 1
  %9 = call ptr @memset(ptr %data.i.i, i32 255, i32 20)
  %10 = ptrtoint ptr %multi_read.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %multi_read.i.i, align 4
  call void %11(ptr noundef %ah, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %data.i.i, i16 noundef zeroext 5) #4
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.i.i, align 4
  %rts_good.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 2
  %14 = ptrtoint ptr %rts_good.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rts_good.i.i, align 4
  %add.i.i = add i32 %15, %13
  store i32 %add.i.i, ptr %rts_good.i.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %rts_bad.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 1
  %18 = ptrtoint ptr %rts_bad.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rts_bad.i.i, align 4
  %add4.i.i = add i32 %19, %17
  store i32 %add4.i.i, ptr %rts_bad.i.i, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %6, align 4
  %22 = ptrtoint ptr %ast_mibstats.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ast_mibstats.i, align 4
  %add6.i.i = add i32 %23, %21
  store i32 %add6.i.i, ptr %ast_mibstats.i, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %fcs_bad.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 3
  %26 = ptrtoint ptr %fcs_bad.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fcs_bad.i.i, align 4
  %add8.i.i = add i32 %27, %25
  store i32 %add8.i.i, ptr %fcs_bad.i.i, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %8, align 4
  %beacons.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 4
  %30 = ptrtoint ptr %beacons.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %beacons.i.i, align 4
  %add10.i.i = add i32 %31, %29
  store i32 %add10.i.i, ptr %beacons.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data.i.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %addr.i.i) #4
  %32 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ah, align 4
  %call4.i = call i32 %33(ptr noundef %ah, i32 noundef 33068) #4
  %34 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ah, align 4
  %call7.i = call i32 %35(ptr noundef %ah, i32 noundef 33076) #4
  %ofdmPhyErrCount.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 9
  %36 = ptrtoint ptr %ofdmPhyErrCount.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ofdmPhyErrCount.i, align 4
  %sub.i = sub i32 %call4.i, %37
  %ast_ani_ofdmerrs.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 8
  %38 = ptrtoint ptr %ast_ani_ofdmerrs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ast_ani_ofdmerrs.i, align 4
  %add9.i = add i32 %sub.i, %39
  store i32 %add9.i, ptr %ast_ani_ofdmerrs.i, align 4
  store i32 %call4.i, ptr %ofdmPhyErrCount.i, align 4
  %cckPhyErrCount.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 10
  %40 = ptrtoint ptr %cckPhyErrCount.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cckPhyErrCount.i, align 4
  %sub11.i = sub i32 %call7.i, %41
  %ast_ani_cckerrs.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 9
  %42 = ptrtoint ptr %ast_ani_cckerrs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ast_ani_cckerrs.i, align 4
  %add13.i = add i32 %sub11.i, %43
  store i32 %add13.i, ptr %ast_ani_cckerrs.i, align 4
  store i32 %call7.i, ptr %cckPhyErrCount.i, align 4
  %mul = mul i32 %call4.i, 1000
  %44 = ptrtoint ptr %listenTime2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %listenTime2.i, align 4
  %div = udiv i32 %mul, %45
  %mul2 = mul i32 %call7.i, 1000
  %div4 = udiv i32 %mul2, %45
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug_mask, align 4
  %and = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.then5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %ofdmNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 1
  %48 = ptrtoint ptr %ofdmNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ofdmNoiseImmunityLevel, align 1
  %conv = zext i8 %49 to i32
  %cckNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %50 = ptrtoint ptr %cckNoiseImmunityLevel to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cckNoiseImmunityLevel, align 2
  %conv7 = zext i8 %51 to i32
  %ofdmsTurn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 3
  %52 = ptrtoint ptr %ofdmsTurn to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ofdmsTurn, align 1, !range !36
  %54 = zext i8 %53 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %45, i32 noundef %conv, i32 noundef %div, i32 noundef %conv7, i32 noundef %div4, i32 noundef %54) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end.do.end_crit_edge
  %55 = ptrtoint ptr %listenTime2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %listenTime2.i, align 4
  %aniperiod = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 68
  %57 = ptrtoint ptr %aniperiod to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %aniperiod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp = icmp ugt i32 %56, %58
  br i1 %cmp, label %if.then13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13:                                        ; preds = %do.end
  %cck_trig_low = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 8
  %59 = ptrtoint ptr %cck_trig_low to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cck_trig_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div4, i32 %60)
  %cmp14 = icmp ult i32 %div4, %60
  br i1 %cmp14, label %land.lhs.true, label %if.then13.if.else_crit_edge

if.then13.if.else_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.then13
  %ofdm_trig_low = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 5
  %61 = ptrtoint ptr %ofdm_trig_low to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ofdm_trig_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %62)
  %cmp17 = icmp ult i32 %div, %62
  br i1 %cmp17, label %if.then19, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then19:                                        ; preds = %land.lhs.true
  %ofdmNoiseImmunityLevel.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 1
  %63 = ptrtoint ptr %ofdmNoiseImmunityLevel.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ofdmNoiseImmunityLevel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp.not.i = icmp eq i8 %64, 0
  br i1 %cmp.not.i, label %if.then19.if.end.i72_crit_edge, label %land.lhs.true.i

if.then19.if.end.i72_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i72

land.lhs.true.i:                                  ; preds = %if.then19
  %ofdmsTurn.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 3
  %65 = ptrtoint ptr %ofdmsTurn.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ofdmsTurn.i, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then.i71_crit_edge

land.lhs.true.i.if.then.i71_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i71

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %cckNoiseImmunityLevel.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %67 = ptrtoint ptr %cckNoiseImmunityLevel.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cckNoiseImmunityLevel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp4.i = icmp eq i8 %68, 0
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then.i71_crit_edge, label %lor.lhs.false.i.if.end.i72_crit_edge

lor.lhs.false.i.if.end.i72_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i72

lor.lhs.false.i.if.then.i71_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i71

if.then.i71:                                      ; preds = %lor.lhs.false.i.if.then.i71_crit_edge, %land.lhs.true.i.if.then.i71_crit_edge
  %sub.i70 = add i8 %64, -1
  call fastcc void @ath9k_hw_set_ofdm_nil(ptr noundef %ah, i8 noundef zeroext %sub.i70, i1 noundef zeroext false) #4
  br label %ath9k_hw_ani_lower_immunity.exit

if.end.i72:                                       ; preds = %lor.lhs.false.i.if.end.i72_crit_edge, %if.then19.if.end.i72_crit_edge
  %cckNoiseImmunityLevel9.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %69 = ptrtoint ptr %cckNoiseImmunityLevel9.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cckNoiseImmunityLevel9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp11.not.i = icmp eq i8 %70, 0
  br i1 %cmp11.not.i, label %if.end.i72.ath9k_hw_ani_lower_immunity.exit_crit_edge, label %if.then13.i

if.end.i72.ath9k_hw_ani_lower_immunity.exit_crit_edge: ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_hw_ani_lower_immunity.exit

if.then13.i:                                      ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #6
  %sub16.i = add i8 %70, -1
  call fastcc void @ath9k_hw_set_cck_nil(ptr noundef %ah, i8 noundef zeroext %sub16.i, i1 noundef zeroext false) #4
  br label %ath9k_hw_ani_lower_immunity.exit

ath9k_hw_ani_lower_immunity.exit:                 ; preds = %if.then13.i, %if.end.i72.ath9k_hw_ani_lower_immunity.exit_crit_edge, %if.then.i71
  %ofdmsTurn20 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 3
  %71 = ptrtoint ptr %ofdmsTurn20 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ofdmsTurn20, align 1, !range !36
  %73 = xor i8 %72, 1
  store i8 %73, ptr %ofdmsTurn20, align 1
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then13.if.else_crit_edge
  %ofdm_trig_high = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 6
  %74 = ptrtoint ptr %ofdm_trig_high to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ofdm_trig_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %75)
  %cmp24 = icmp ugt i32 %div, %75
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else
  %ofdmNoiseImmunityLevel.i73 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 1
  %76 = ptrtoint ptr %ofdmNoiseImmunityLevel.i73 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ofdmNoiseImmunityLevel.i73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %77)
  %cmp.i74 = icmp ult i8 %77, 9
  br i1 %cmp.i74, label %if.then.i76, label %if.then26.ath9k_hw_ani_ofdm_err_trigger.exit_crit_edge

if.then26.ath9k_hw_ani_ofdm_err_trigger.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_hw_ani_ofdm_err_trigger.exit

if.then.i76:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %add.i75 = add nuw nsw i8 %77, 1
  call fastcc void @ath9k_hw_set_ofdm_nil(ptr noundef %ah, i8 noundef zeroext %add.i75, i1 noundef zeroext false) #4
  br label %ath9k_hw_ani_ofdm_err_trigger.exit

ath9k_hw_ani_ofdm_err_trigger.exit:               ; preds = %if.then.i76, %if.then26.ath9k_hw_ani_ofdm_err_trigger.exit_crit_edge
  %ofdmsTurn27 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 3
  %78 = ptrtoint ptr %ofdmsTurn27 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %ofdmsTurn27, align 1
  br label %if.end37

if.else28:                                        ; preds = %if.else
  %cck_trig_high = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 7
  %79 = ptrtoint ptr %cck_trig_high to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cck_trig_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div4, i32 %80)
  %cmp30 = icmp ugt i32 %div4, %80
  br i1 %cmp30, label %if.then32, label %if.else28.cleanup_crit_edge

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then32:                                        ; preds = %if.else28
  %cckNoiseImmunityLevel.i78 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %81 = ptrtoint ptr %cckNoiseImmunityLevel.i78 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cckNoiseImmunityLevel.i78, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %82)
  %cmp.i79 = icmp ult i8 %82, 8
  br i1 %cmp.i79, label %if.then.i81, label %if.then32.ath9k_hw_ani_cck_err_trigger.exit_crit_edge

if.then32.ath9k_hw_ani_cck_err_trigger.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_hw_ani_cck_err_trigger.exit

if.then.i81:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  %add.i80 = add nuw nsw i8 %82, 1
  call fastcc void @ath9k_hw_set_cck_nil(ptr noundef %ah, i8 noundef zeroext %add.i80, i1 noundef zeroext false) #4
  br label %ath9k_hw_ani_cck_err_trigger.exit

ath9k_hw_ani_cck_err_trigger.exit:                ; preds = %if.then.i81, %if.then32.ath9k_hw_ani_cck_err_trigger.exit_crit_edge
  %ofdmsTurn33 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 3
  %83 = ptrtoint ptr %ofdmsTurn33 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %ofdmsTurn33, align 1
  br label %if.end37

if.end37:                                         ; preds = %ath9k_hw_ani_cck_err_trigger.exit, %ath9k_hw_ani_ofdm_err_trigger.exit, %ath9k_hw_ani_lower_immunity.exit
  call fastcc void @ath9k_ani_restart(ptr noundef %ah)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.else28.cleanup_crit_edge, %do.end.cleanup_crit_edge, %ath9k_hw_ani_read_counters.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_enable_mib_counters(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [5 x i32], align 4
  %data.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %ast_mibstats = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %addr.i) #4
  %2 = call ptr @memcpy(ptr %addr.i, ptr @__const.ath9k_hw_update_mibstats.addr, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data.i) #4
  %3 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 1
  %4 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 2
  %5 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 3
  %6 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 4
  %multi_read.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 1
  %7 = call ptr @memset(ptr %data.i, i32 255, i32 20)
  %8 = ptrtoint ptr %multi_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %multi_read.i, align 4
  call void %9(ptr noundef %ah, ptr noundef nonnull %addr.i, ptr noundef nonnull %data.i, i16 noundef zeroext 5) #4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.i, align 4
  %rts_good.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 2
  %12 = ptrtoint ptr %rts_good.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rts_good.i, align 4
  %add.i = add i32 %13, %11
  store i32 %add.i, ptr %rts_good.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %rts_bad.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 1
  %16 = ptrtoint ptr %rts_bad.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rts_bad.i, align 4
  %add4.i = add i32 %17, %15
  store i32 %add4.i, ptr %rts_bad.i, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  %20 = ptrtoint ptr %ast_mibstats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ast_mibstats, align 4
  %add6.i = add i32 %21, %19
  store i32 %add6.i, ptr %ast_mibstats, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %5, align 4
  %fcs_bad.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 3
  %24 = ptrtoint ptr %fcs_bad.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fcs_bad.i, align 4
  %add8.i = add i32 %25, %23
  store i32 %add8.i, ptr %fcs_bad.i, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %6, align 4
  %beacons.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 4
  %28 = ptrtoint ptr %beacons.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %beacons.i, align 4
  %add10.i = add i32 %29, %27
  store i32 %add10.i, ptr %beacons.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %addr.i) #4
  %enable_write_buffer = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %30 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enable_write_buffer, align 4
  %tobool2.not = icmp eq ptr %31, null
  br i1 %tobool2.not, label %do.end.do.end8_crit_edge, label %if.then3

do.end.do.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  call void %31(ptr noundef %ah) #4
  br label %do.end8

do.end8:                                          ; preds = %if.then3, %do.end.do.end8_crit_edge
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %32 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write, align 4
  call void %33(ptr noundef %ah, i32 noundef 0, i32 noundef 33060) #4
  %34 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write, align 4
  call void %35(ptr noundef %ah, i32 noundef 0, i32 noundef 33064) #4
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  call void %37(ptr noundef %ah, i32 noundef 0, i32 noundef 64) #4
  %38 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write, align 4
  call void %39(ptr noundef %ah, i32 noundef 131072, i32 noundef 33072) #4
  %40 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write, align 4
  call void %41(ptr noundef %ah, i32 noundef 33554432, i32 noundef 33080) #4
  %write_flush = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  %42 = ptrtoint ptr %write_flush to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_flush, align 4
  %tobool20.not = icmp eq ptr %43, null
  br i1 %tobool20.not, label %do.end8.do.end26_crit_edge, label %if.then21

do.end8.do.end26_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end26

if.then21:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void %43(ptr noundef %ah) #4
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.end8.do.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_disable_mib_counters(ptr noundef %ah) #0 align 64 {
entry:
  %addr.i = alloca [5 x i32], align 4
  %data.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  tail call void %3(ptr noundef %ah, i32 noundef 2, i32 noundef 64) #4
  %ast_mibstats = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %addr.i) #4
  %4 = call ptr @memcpy(ptr %addr.i, ptr @__const.ath9k_hw_update_mibstats.addr, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data.i) #4
  %5 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i32], ptr %data.i, i32 0, i32 4
  %multi_read.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 1
  %9 = call ptr @memset(ptr %data.i, i32 255, i32 20)
  %10 = ptrtoint ptr %multi_read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %multi_read.i, align 4
  call void %11(ptr noundef %ah, ptr noundef nonnull %addr.i, ptr noundef nonnull %data.i, i16 noundef zeroext 5) #4
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.i, align 4
  %rts_good.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 2
  %14 = ptrtoint ptr %rts_good.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rts_good.i, align 4
  %add.i = add i32 %15, %13
  store i32 %add.i, ptr %rts_good.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %rts_bad.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 1
  %18 = ptrtoint ptr %rts_bad.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rts_bad.i, align 4
  %add4.i = add i32 %19, %17
  store i32 %add4.i, ptr %rts_bad.i, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %6, align 4
  %22 = ptrtoint ptr %ast_mibstats to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ast_mibstats, align 4
  %add6.i = add i32 %23, %21
  store i32 %add6.i, ptr %ast_mibstats, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %fcs_bad.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 3
  %26 = ptrtoint ptr %fcs_bad.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fcs_bad.i, align 4
  %add8.i = add i32 %27, %25
  store i32 %add8.i, ptr %fcs_bad.i, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %8, align 4
  %beacons.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 33, i32 13, i32 4
  %30 = ptrtoint ptr %beacons.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %beacons.i, align 4
  %add10.i = add i32 %31, %29
  store i32 %add10.i, ptr %beacons.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %addr.i) #4
  %32 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write, align 4
  call void %33(ptr noundef %ah, i32 noundef 4, i32 noundef 64) #4
  %34 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write, align 4
  call void %35(ptr noundef %ah, i32 noundef 0, i32 noundef 33060) #4
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  call void %37(ptr noundef %ah, i32 noundef 0, i32 noundef 33064) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hw_ani_init(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %3)
  %cmp = icmp ugt i32 %3, 447
  br i1 %cmp, label %do.end.if.end14_crit_edge, label %if.else

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.else, %do.end.if.end14_crit_edge
  %.sink43 = phi i32 [ 500, %if.else ], [ 3500, %do.end.if.end14_crit_edge ]
  %.sink42 = phi i32 [ 200, %if.else ], [ 400, %do.end.if.end14_crit_edge ]
  %.sink41 = phi i32 [ 200, %if.else ], [ 600, %do.end.if.end14_crit_edge ]
  %.sink = phi i32 [ 100, %if.else ], [ 300, %do.end.if.end14_crit_edge ]
  %4 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink43, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink42, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink41, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 4
  %spurImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 5
  %12 = ptrtoint ptr %spurImmunityLevel to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %spurImmunityLevel, align 1
  %firstepLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 6
  %13 = ptrtoint ptr %firstepLevel to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %firstepLevel, align 2
  %conv = zext i1 %cmp to i8
  %mrcCCK = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 4
  %14 = ptrtoint ptr %mrcCCK to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %mrcCCK, align 4
  %ofdmsTurn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 3
  %15 = ptrtoint ptr %ofdmsTurn to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ofdmsTurn, align 1
  %ofdmWeakSigDetect = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 7
  %16 = ptrtoint ptr %ofdmWeakSigDetect to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %ofdmWeakSigDetect, align 1
  %cckNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 2
  %17 = ptrtoint ptr %cckNoiseImmunityLevel to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %cckNoiseImmunityLevel, align 2
  %ofdmNoiseImmunityLevel = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 71, i32 1
  %18 = ptrtoint ptr %ofdmNoiseImmunityLevel to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %ofdmNoiseImmunityLevel, align 1
  %aniperiod = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 68
  %19 = ptrtoint ptr %aniperiod to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 300, ptr %aniperiod, align 4
  %ani_poll_interval = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 5, i32 14
  %20 = ptrtoint ptr %ani_poll_interval to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1000, ptr %ani_poll_interval, align 4
  tail call fastcc void @ath9k_ani_restart(ptr noundef %ah)
  tail call void @ath9k_enable_mib_counters(ptr noundef %ah)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_cycle_counters_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_hw_get_listen_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 340, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 355, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 415, i32 2}
!7 = !{ptr @__ksymtab_ath9k_hw_ani_monitor, !8, !"__ksymtab_ath9k_hw_ani_monitor", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 439, i32 1}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 445, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 467, i32 2}
!13 = !{ptr @__ksymtab_ath9k_hw_disable_mib_counters, !14, !"__ksymtab_ath9k_hw_disable_mib_counters", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 475, i32 1}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 482, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 158, i32 2}
!19 = !{ptr @ofdm_level_table, !20, !"ofdm_level_table", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 39, i32 42}
!21 = !{ptr @cck_level_table, !22, !"cck_level_table", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 85, i32 41}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/ani.c", i32 237, i32 2}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2157660667, i64 2157661168, i64 2157660704, i64 2157660760, i64 2157660794, i64 2157660818, i64 2157660859, i64 2157660880, i64 2157660908, i64 2157660942}
!36 = !{i8 0, i8 2}
