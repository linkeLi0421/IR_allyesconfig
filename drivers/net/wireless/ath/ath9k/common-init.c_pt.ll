; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/common-init.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/common-init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath9k_cmn_init_channels_rates\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_init_channels_rates\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_init_channels_rates\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_init_channels_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_init_channels_rates\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_init_channels_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_setup_ht_cap\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_setup_ht_cap\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_setup_ht_cap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_setup_ht_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_setup_ht_cap\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_setup_ht_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath9k_cmn_reload_chainmask\22, \22a\22\09"
module asm "\09.weak\09__crc_ath9k_cmn_reload_chainmask\09\09\09\09"
module asm "\09.long\09__crc_ath9k_cmn_reload_chainmask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath9k_cmn_reload_chainmask:\09\09\09\09\09"
module asm "\09.asciz \09\22ath9k_cmn_reload_chainmask\22\09\09\09\09\09"
module asm "__kstrtabns_ath9k_cmn_reload_chainmask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.129, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.130, %union.anon.131, %union.anon.132, %union.anon.133, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%union.anon.129 = type { %struct.ar5416_eeprom_def }
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
%union.anon.130 = type { [3 x i32] }
%union.anon.131 = type { [3 x i32] }
%union.anon.132 = type { [3 x i32] }
%union.anon.133 = type { [3 x i32] }
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

@ath9k_2ghz_chantable = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 0, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 1, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 2, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 3, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 4, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 5, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 6, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 7, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 8, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 9, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 10, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 11, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 12, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 13, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@ath9k_legacy_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 27, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 26, i16 30 }, %struct.ieee80211_rate { i32 1, i16 55, i16 25, i16 29 }, %struct.ieee80211_rate { i32 1, i16 110, i16 24, i16 28 }, %struct.ieee80211_rate { i32 96, i16 60, i16 11, i16 0 }, %struct.ieee80211_rate { i32 96, i16 90, i16 15, i16 0 }, %struct.ieee80211_rate { i32 96, i16 120, i16 10, i16 0 }, %struct.ieee80211_rate { i32 96, i16 180, i16 14, i16 0 }, %struct.ieee80211_rate { i32 96, i16 240, i16 9, i16 0 }, %struct.ieee80211_rate { i32 96, i16 360, i16 13, i16 0 }, %struct.ieee80211_rate { i32 96, i16 480, i16 8, i16 0 }, %struct.ieee80211_rate { i32 96, i16 540, i16 12, i16 0 }], [48 x i8] zeroinitializer }, align 32
@ath9k_5ghz_chantable = internal constant { [24 x %struct.ieee80211_channel], [320 x i8] } { [24 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 1, i32 5180, i16 0, i16 14, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5200, i16 0, i16 15, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5220, i16 0, i16 16, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5240, i16 0, i16 17, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5260, i16 0, i16 18, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5280, i16 0, i16 19, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5300, i16 0, i16 20, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5320, i16 0, i16 21, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5500, i16 0, i16 22, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5520, i16 0, i16 23, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5540, i16 0, i16 24, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5560, i16 0, i16 25, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5580, i16 0, i16 26, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5600, i16 0, i16 27, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5620, i16 0, i16 28, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5640, i16 0, i16 29, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5660, i16 0, i16 30, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5680, i16 0, i16 31, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5700, i16 0, i16 32, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5745, i16 0, i16 33, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5765, i16 0, i16 34, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5785, i16 0, i16 35, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5805, i16 0, i16 36, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5825, i16 0, i16 37, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [320 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_init_channels_rates = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_init_channels_rates = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_init_channels_rates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_init_channels_rates to i32), ptr @__kstrtab_ath9k_cmn_init_channels_rates, ptr @__kstrtabns_ath9k_cmn_init_channels_rates }, section "___ksymtab+ath9k_cmn_init_channels_rates", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TX streams %d, RX streams: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_ath9k_cmn_setup_ht_cap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_setup_ht_cap = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_setup_ht_cap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_setup_ht_cap to i32), ptr @__kstrtab_ath9k_cmn_setup_ht_cap, ptr @__kstrtabns_ath9k_cmn_setup_ht_cap }, section "___ksymtab+ath9k_cmn_setup_ht_cap", align 4
@__kstrtab_ath9k_cmn_reload_chainmask = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath9k_cmn_reload_chainmask = external dso_local constant [0 x i8], align 1
@__ksymtab_ath9k_cmn_reload_chainmask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath9k_cmn_reload_chainmask to i32), ptr @__kstrtab_ath9k_cmn_reload_chainmask, ptr @__kstrtabns_ath9k_cmn_reload_chainmask }, section "___ksymtab+ath9k_cmn_reload_chainmask", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"ath9k_2ghz_chantable\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 39, i32 39 }
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"ath9k_legacy_rates\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 102, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"ath9k_5ghz_chantable\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 60, i32 39 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [48 x i8] c"../drivers/net/wireless/ath/ath9k/common-init.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 214, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ath9k_cmn_init_channels_rates, ptr @__ksymtab_ath9k_cmn_reload_chainmask, ptr @__ksymtab_ath9k_cmn_setup_ht_cap, ptr @ath9k_2ghz_chantable, ptr @ath9k_legacy_rates, ptr @ath9k_5ghz_chantable, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_2ghz_chantable to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_legacy_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_5ghz_chantable to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_cmn_init_channels_rates(ptr nocapture noundef %common) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 784, i32 noundef 3520) #3
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %6 = call ptr @memcpy(ptr %call.i, ptr @ath9k_2ghz_chantable, i32 784)
  %sbands = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 31
  %7 = ptrtoint ptr %sbands to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %sbands, align 4
  %band = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 31, i32 0, i32 2
  %8 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %band, align 4
  %n_channels = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 31, i32 0, i32 3
  %9 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 14, ptr %n_channels, align 4
  %bitrates = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 31, i32 0, i32 1
  %10 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ath9k_legacy_rates, ptr %bitrates, align 4
  %n_bitrates = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 31, i32 0, i32 4
  %11 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %n_bitrates, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 4
  %and16 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %if.then18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then18:                                        ; preds = %if.end13
  %dev19 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev19, align 4
  %call.i59 = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 1344, i32 noundef 3520) #3
  %tobool21.not = icmp eq ptr %call.i59, null
  br i1 %tobool21.not, label %if.then18.cleanup_crit_edge, label %if.end23

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  %16 = call ptr @memcpy(ptr %call.i59, ptr @ath9k_5ghz_chantable, i32 1344)
  %arrayidx25 = getelementptr %struct.ath_common, ptr %common, i32 0, i32 31, i32 1
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i59, ptr %arrayidx25, align 4
  %band29 = getelementptr %struct.ath_common, ptr %common, i32 0, i32 31, i32 1, i32 2
  %18 = ptrtoint ptr %band29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %band29, align 4
  %n_channels32 = getelementptr %struct.ath_common, ptr %common, i32 0, i32 31, i32 1, i32 3
  %19 = ptrtoint ptr %n_channels32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 24, ptr %n_channels32, align 4
  %bitrates35 = getelementptr %struct.ath_common, ptr %common, i32 0, i32 31, i32 1, i32 1
  %20 = ptrtoint ptr %bitrates35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @ath9k_legacy_rates, i32 0, i32 4), ptr %bitrates35, align 4
  %n_bitrates38 = getelementptr %struct.ath_common, ptr %common, i32 0, i32 31, i32 1, i32 4
  %21 = ptrtoint ptr %n_bitrates38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %n_bitrates38, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.then18.cleanup_crit_edge ], [ 0, %if.end23 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_setup_ht_cap(ptr noundef %ah, ptr nocapture noundef %ht_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 1
  %0 = ptrtoint ptr %ht_supported to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ht_supported, align 2
  %1 = ptrtoint ptr %ht_info to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 4174, ptr %ht_info, align 2
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i16 4174, i16 4175
  %4 = ptrtoint ptr %ht_info to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %spec.store.select, ptr %ht_info, align 2
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps, align 4
  %and5 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %entry.if.end12_crit_edge, label %if.then7

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = or i16 %spec.store.select, 32
  %8 = ptrtoint ptr %ht_info to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %ht_info, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %entry.if.end12_crit_edge
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 2
  %9 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %ampdu_factor, align 1
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 3
  %10 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %ampdu_density, align 2
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %macVersion, align 4
  %13 = add i32 %12, -320
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 26)
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.else34 [
    i32 0, label %if.end12.if.end43_crit_edge
    i32 3, label %if.end12.if.end43_crit_edge134
    i32 4, label %if.end12.if.end43_crit_edge135
    i32 6, label %if.end12.if.end43_crit_edge136
    i32 5, label %if.then33
  ]

if.end12.if.end43_crit_edge136:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

if.end12.if.end43_crit_edge135:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

if.end12.if.end43_crit_edge134:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

if.end12.if.end43_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

if.then33:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

if.else34:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %12)
  %cmp37 = icmp ugt i32 %12, 447
  %. = select i1 %cmp37, i32 3, i32 2
  br label %if.end43

if.end43:                                         ; preds = %if.else34, %if.then33, %if.end12.if.end43_crit_edge, %if.end12.if.end43_crit_edge134, %if.end12.if.end43_crit_edge135, %if.end12.if.end43_crit_edge136
  %cmp49 = phi i1 [ true, %if.then33 ], [ false, %if.end12.if.end43_crit_edge ], [ false, %if.end12.if.end43_crit_edge134 ], [ false, %if.end12.if.end43_crit_edge135 ], [ false, %if.end12.if.end43_crit_edge136 ], [ true, %if.else34 ]
  %max_streams.0 = phi i32 [ 2, %if.then33 ], [ 1, %if.end12.if.end43_crit_edge ], [ 1, %if.end12.if.end43_crit_edge134 ], [ 1, %if.end12.if.end43_crit_edge135 ], [ 1, %if.end12.if.end43_crit_edge136 ], [ %., %if.else34 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %12)
  %cmp46 = icmp ugt i32 %12, 127
  br i1 %cmp46, label %if.then48, label %if.end43.if.end61_crit_edge

if.end43.if.end61_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.then48:                                        ; preds = %if.end43
  br i1 %cmp49, label %if.then51, label %if.then48.if.end56_crit_edge

if.then48.if.end56_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %ht_info to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ht_info, align 2
  %18 = or i16 %17, 128
  store i16 %18, ptr %ht_info, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then48.if.end56_crit_edge
  %19 = ptrtoint ptr %ht_info to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ht_info, align 2
  %21 = or i16 %20, 256
  store i16 %21, ptr %ht_info, align 2
  br label %if.end61

if.end61:                                         ; preds = %if.end56, %if.end43.if.end61_crit_edge
  %mcs = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4
  %22 = call ptr @memset(ptr %mcs, i32 0, i32 16)
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %23 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %txchainmask, align 4
  %conv62 = zext i8 %24 to i32
  %call63 = tail call i32 @ath9k_cmn_count_streams(i32 noundef %conv62, i32 noundef %max_streams.0) #3
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %25 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rxchainmask, align 1
  %conv65 = zext i8 %26 to i32
  %call66 = tail call i32 @ath9k_cmn_count_streams(i32 noundef %conv65, i32 noundef %max_streams.0) #3
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_mask, align 4
  %and68 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %.pre = and i32 %call63, 255
  %.pre133 = and i32 %call66, 255
  br i1 %tobool69.not, label %if.end61.do.end_crit_edge, label %if.then70

if.end61.do.end_crit_edge:                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %.pre, i32 noundef %.pre133) #3
  br label %do.end

do.end:                                           ; preds = %if.then70, %if.end61.do.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %.pre133)
  %cmp76.not = icmp eq i32 %.pre, %.pre133
  br i1 %cmp76.not, label %do.end.if.end89_crit_edge, label %if.then78

do.end.if.end89_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end89

if.then78:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %tx_params = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %tx_params to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_params, align 1
  %conv74.tr = trunc i32 %call63 to i8
  %31 = shl i8 %conv74.tr, 2
  %32 = add i8 %31, -4
  %33 = or i8 %32, %30
  %conv88 = or i8 %33, 2
  store i8 %conv88, ptr %tx_params, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.then78, %do.end.if.end89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre133)
  %cmp91131.not = icmp eq i32 %.pre133, 0
  br i1 %cmp91131.not, label %if.end89.for.end_crit_edge, label %for.body.preheader

if.end89.for.end_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.preheader:                               ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #5
  %34 = call ptr @memset(ptr %mcs, i32 255, i32 %.pre133)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.end89.for.end_crit_edge
  %tx_params95 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_info, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %tx_params95 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_params95, align 1
  %37 = or i8 %36, 1
  store i8 %37, ptr %tx_params95, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_cmn_count_streams(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_cmn_reload_chainmask(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %ht_cap = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 31, i32 0, i32 5
  tail call void @ath9k_cmn_setup_ht_cap(ptr noundef %ah, ptr noundef %ht_cap)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and9 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %ht_cap14 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 31, i32 1, i32 5
  tail call void @ath9k_cmn_setup_ht_cap(ptr noundef %ah, ptr noundef %ht_cap14)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_ath9k_cmn_init_channels_rates, !1, !"__ksymtab_ath9k_cmn_init_channels_rates", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/common-init.c", i32 170, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/common-init.c", i32 214, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_ath9k_cmn_setup_ht_cap, !6, !"__ksymtab_ath9k_cmn_setup_ht_cap", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/common-init.c", i32 228, i32 1}
!7 = !{ptr @__ksymtab_ath9k_cmn_reload_chainmask, !8, !"__ksymtab_ath9k_cmn_reload_chainmask", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/common-init.c", i32 244, i32 1}
!9 = !{ptr @ath9k_2ghz_chantable, !10, !"ath9k_2ghz_chantable", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/common-init.c", i32 39, i32 39}
!11 = !{ptr @ath9k_legacy_rates, !12, !"ath9k_legacy_rates", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/common-init.c", i32 102, i32 30}
!13 = !{ptr @ath9k_5ghz_chantable, !14, !"ath9k_5ghz_chantable", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/common-init.c", i32 60, i32 39}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
